<?php

namespace App\Http\Controllers\FrontEnd\PaymentGateway;

use App\Http\Controllers\Controller;
use App\Http\Controllers\FrontEnd\Curriculum\EnrolmentController;
use App\Models\PaymentGateway\OnlineGateway;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FlutterwaveController extends Controller
{
  private $public_key, $secret_key;

  public function __construct()
  {
    $data = OnlineGateway::whereKeyword('flutterwave')->first();
    $flutterwaveData = json_decode($data->information, true);

    $this->public_key = $flutterwaveData['public_key'];
    $this->secret_key = $flutterwaveData['secret_key'];
  }

  public function enrolmentProcess(Request $request, $courseId)
  {
    $enrol = new EnrolmentController();

    // do calculation
    $calculatedData = $enrol->calculation($request, $courseId);

    $allowedCurrencies = array('BIF', 'CAD', 'CDF', 'CVE', 'EUR', 'GBP', 'GHS', 'GMD', 'GNF', 'KES', 'LRD', 'MWK', 'MZN', 'NGN', 'RWF', 'SLL', 'STD', 'TZS', 'UGX', 'USD', 'XAF', 'XOF', 'ZMK', 'ZMW', 'ZWD');

    $currencyInfo = $this->getCurrencyInfo();

    // checking whether the base currency is allowed or not
    if (!in_array($currencyInfo->base_currency_text, $allowedCurrencies)) {
      return redirect()->back()->with('error', 'Invalid currency for flutterwave payment.')->withInput();
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
      'paymentMethod' => 'Flutterwave',
      'gatewayType' => 'online',
      'paymentStatus' => 'completed'
    );

    $title = 'Course Enrolment';
    $notifyURL = route('course_enrolment.flutterwave.notify');

    // send payment to flutterwave for processing
    $curl = curl_init();

    curl_setopt_array($curl, array(
      CURLOPT_URL => 'https://api.flutterwave.com/v3/payments',
      CURLOPT_RETURNTRANSFER => true,
      CURLOPT_ENCODING => '',
      CURLOPT_MAXREDIRS => 10,
      CURLOPT_TIMEOUT => 0,
      CURLOPT_FOLLOWLOCATION => true,
      CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
      CURLOPT_CUSTOMREQUEST => 'POST',
      CURLOPT_POSTFIELDS => json_encode([
        'tx_ref' => 'FLW | ' . time(),
        'amount' => $calculatedData['grandTotal'],
        'currency' => $currencyInfo->base_currency_text,
        'redirect_url' => $notifyURL,
        'payment_options' => 'card,banktransfer',
        'customer' => [
          'email' => Auth::guard('web')->user()->email,
          'phone_number' => Auth::guard('web')->user()->contact_number,
          'name' => Auth::guard('web')->user()->first_name . ' ' . Auth::guard('web')->user()->last_name
        ],
        'customizations' => [
          'title' => $title,
          'description' => $title . ' via Flutterwave.'
        ]
      ]),
      CURLOPT_HTTPHEADER => array(
        'authorization: Bearer ' . $this->secret_key,
        'content-type: application/json'
      )
    ));

    $response = curl_exec($curl);

    curl_close($curl);

    $responseData = json_decode($response, true);

    // put some data in session before redirect to flutterwave url
    session()->put('courseId', $courseId);
    session()->put('arrData', $arrData);

    // redirect to payment
    if ($responseData['status'] === 'success') {
      return redirect($responseData['data']['link']);
    } else {
      return redirect()->back()->with('error', 'Error: ' . $responseData['message'])->withInput();
    }
  }

  public function notify(Request $request)
  {
    // get the information from session
    $courseId = session()->get('courseId');
    $arrData = session()->get('arrData');

    $urlInfo = $request->all();

    if ($urlInfo['status'] == 'successful') {
      $txId = $urlInfo['transaction_id'];

      $curl = curl_init();

      curl_setopt_array($curl, array(
        CURLOPT_URL => "https://api.flutterwave.com/v3/transactions/{$txId}/verify",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'GET',
        CURLOPT_HTTPHEADER => array(
          'authorization: Bearer ' . $this->secret_key,
          'content-type: application/json'
        )
      ));

      $response = curl_exec($curl);

      curl_close($curl);

      $responseData = json_decode($response, true);

      if ($responseData['status'] === 'success') {
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
    } else {
      // remove all session data
      session()->forget('courseId');
      session()->forget('arrData');

      return redirect()->route('course_enrolment.cancel', ['id' => $courseId]);
    }
  }
}
