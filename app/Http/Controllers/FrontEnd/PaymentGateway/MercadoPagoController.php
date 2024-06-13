<?php

namespace App\Http\Controllers\FrontEnd\PaymentGateway;

use App\Http\Controllers\Controller;
use App\Http\Controllers\FrontEnd\Curriculum\EnrolmentController;
use App\Models\PaymentGateway\OnlineGateway;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MercadoPagoController extends Controller
{
  private $token, $sandbox_status;

  public function __construct()
  {
    $data = OnlineGateway::whereKeyword('mercadopago')->first();
    $mercadopagoData = json_decode($data->information, true);

    $this->token = $mercadopagoData['token'];
    $this->sandbox_status = $mercadopagoData['sandbox_status'];
  }

  public function enrolmentProcess(Request $request, $courseId)
  {
    $enrol = new EnrolmentController();

    // do calculation
    $calculatedData = $enrol->calculation($request, $courseId);

    $allowedCurrencies = array('ARS', 'BOB', 'BRL', 'CLF', 'CLP', 'COP', 'CRC', 'CUC', 'CUP', 'DOP', 'EUR', 'GTQ', 'HNL', 'MXN', 'NIO', 'PAB', 'PEN', 'PYG', 'USD', 'UYU', 'VEF', 'VES');

    $currencyInfo = $this->getCurrencyInfo();

    // checking whether the base currency is allowed or not
    if (!in_array($currencyInfo->base_currency_text, $allowedCurrencies)) {
      return redirect()->back()->with('error', 'Invalid currency for mercadopago payment.');
    }

    $arrData = array(
      'courseId' => $courseId,
      'coursePrice' => $calculatedData['coursePrice'],
      'discount' => $calculatedData['discount'],
      'grandTotal' => $calculatedData['grandTotal'],
      'currencyText' => $currencyInfo->base_currency_text,
      'currencyTextPosition' => $currencyInfo->base_currency_text_position,
      'currencySymbol' => $currencyInfo->base_currency_symbol,
      'currencySymbolPosition' => $currencyInfo->base_currency_symbol_position,
      'paymentMethod' => 'MercadoPago',
      'gatewayType' => 'online',
      'paymentStatus' => 'completed'
    );

    $title = 'Course Enrolment';
    $notifyURL = route('course_enrolment.mercadopago.notify');
    $cancelURL = route('course_enrolment.cancel', ['id' => $courseId]);

    $curl = curl_init();

    $preferenceData = [
      'items' => [
        [
          'id' => uniqid(),
          'title' => $title,
          'description' => $title . ' via MercadoPago',
          'quantity' => 1,
          'currency' => $currencyInfo->base_currency_text,
          'unit_price' => $calculatedData['grandTotal']
        ]
      ],
      'payer' => [
        'email' => Auth::guard('web')->user()->email
      ],
      'back_urls' => [
        'success' => $notifyURL,
        'pending' => '',
        'failure' => $cancelURL
      ],
      'notification_url' => '',
      'auto_return' => 'approved'
    ];

    $httpHeader = ['Content-Type: application/json'];

    $url = 'https://api.mercadopago.com/checkout/preferences?access_token=' . $this->token;

    $curlOPT = [
      CURLOPT_URL             => $url,
      CURLOPT_CUSTOMREQUEST   => 'POST',
      CURLOPT_POSTFIELDS      => json_encode($preferenceData, true),
      CURLOPT_HTTP_VERSION    => CURL_HTTP_VERSION_1_1,
      CURLOPT_RETURNTRANSFER  => true,
      CURLOPT_TIMEOUT         => 30,
      CURLOPT_HTTPHEADER      => $httpHeader
    ];

    curl_setopt_array($curl, $curlOPT);

    $response = curl_exec($curl);
    $responseInfo = json_decode($response, true);

    curl_close($curl);

    // put some data in session before redirect to mercadopago url
    session()->put('courseId', $courseId);
    session()->put('arrData', $arrData);

    if ($this->sandbox_status == 1) {
      return redirect($responseInfo['sandbox_init_point']);
    } else {
      return redirect($responseInfo['init_point']);
    }
  }

  public function notify(Request $request)
  {
    // get the information from session
    $courseId = session()->get('courseId');
    $arrData = session()->get('arrData');

    if ($request['status'] == 'approved') {
      $enrol = new EnrolmentController();

      // store the course enrolment information in database
      $enrolmentInfo = $enrol->storeData($arrData);

      // generate an invoice in pdf format
      $invoice = $enrol->generateInvoice($enrolmentInfo, $courseId);

      // then, update the invoice field info in database
      $enrolmentInfo->update(['invoice' => $invoice]);

      // send a mail to the customer with the invoice
      $enrol->sendMail($enrolmentInfo);

      // remove all session data
      session()->forget('courseId');
      session()->forget('arrData');

      return redirect()->route('course_enrolment.complete', ['id' => $courseId]);
    } else {
      // remove all session data
      session()->forget('courseId');
      session()->forget('arrData');

      return redirect()->route('course_enrolment.cancel', ['id' => $courseId]);
    }
  }
}
