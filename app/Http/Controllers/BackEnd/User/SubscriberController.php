<?php

namespace App\Http\Controllers\BackEnd\User;

use App\Http\Controllers\Controller;
use App\Models\Subscriber;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\PHPMailer;

class SubscriberController extends Controller
{
  public function index(Request $request)
  {
    $searchKey = null;

    if ($request->filled('email')) {
      $searchKey = $request['email'];
    }

    $subscribers = Subscriber::when($searchKey, function ($query, $searchKey) {
      return $query->where('email_id', 'like', '%' . $searchKey . '%');
    })
      ->orderBy('id', 'desc')
      ->paginate(10);

    return view('backend.end-user.subscriber.index', compact('subscribers'));
  }

  public function destroy($id)
  {
    try {
      Subscriber::findOrFail($id)->delete();

      return redirect()->back()->with('success', 'Email id deleted successfully!');
    } catch (ModelNotFoundException $e) {
      return redirect()->back()->with('warning', 'Sorry, model not found!');
    }
  }

  public function bulkDestroy(Request $request)
  {
    $ids = $request->ids;

    try {
      foreach ($ids as $id) {
        Subscriber::findOrFail($id)->delete();
      }

      session()->flash('success', 'Email ids deleted successfully!');

      return response()->json(['status' => 'success'], 200);
    } catch (ModelNotFoundException $e) {
      session()->flash('warning', 'Sorry, model not found!');

      return response()->json(['status' => 'success'], 200);
    }
  }

  public function writeEmail()
  {
    return view('backend.end-user.subscriber.write-email');
  }

  public function sendEmail(Request $request)
  {
    $subscribers = Subscriber::all();

    if (count($subscribers) == 0) {
      session()->flash('warning', 'No subscriber found!');

      return redirect()->back();
    }

    $rules = [
      'subject' => 'required',
      'message' => 'required'
    ];

    $validator = Validator::make($request->all(), $rules);

    if ($validator->fails()) {
      return redirect()->back()->withErrors($validator->errors());
    }

    $info = DB::table('basic_settings')
      ->select('smtp_status', 'smtp_host', 'smtp_port', 'encryption', 'smtp_username', 'smtp_password', 'from_mail', 'from_name')
      ->first();

    $subject = $request->subject;
    $message = $request->message;

    foreach ($subscribers as $subscriber) {
      // initialize a new mail
      $mail = new PHPMailer(true);
      $mail->CharSet = 'UTF-8';
      $mail->Encoding = 'base64';

      // if smtp status == 1, then set some value for PHPMailer
      if ($info->smtp_status == 1) {
        $mail->isSMTP();
        $mail->Host       = $info->smtp_host;
        $mail->SMTPAuth   = true;
        $mail->Username   = $info->smtp_username;
        $mail->Password   = $info->smtp_password;

        if ($info->encryption == 'TLS') {
          $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        }

        $mail->Port       = $info->smtp_port;
      }

      // finally add other informations and send the mail
      try {
        $mail->setFrom($info->from_mail, $info->from_name);
        $mail->addAddress($subscriber->email_id);

        $mail->isHTML(true);
        $mail->Subject = $subject;
        $mail->Body = $message;

        $mail->send();
      } catch (Exception $e) {
        session()->flash('warning', 'Mail could not be sent. Mailer Error: ' . $mail->ErrorInfo);

        return redirect()->back();
      }
    }

    session()->flash('success', 'Mail has sent to all the subscribers.');

    return redirect()->back();
  }
}
