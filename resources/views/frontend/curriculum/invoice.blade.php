<!DOCTYPE html>
<html>
  <head lang="{{ $currentLanguageInfo->code }}" @if ($currentLanguageInfo->direction == 1) dir="rtl" @endif>
    {{-- required meta tags --}}
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    {{-- title --}}
    <title>{{ 'Invoice | ' . config('app.name') }}</title>

    {{-- fav icon --}}
    <link rel="shortcut icon" type="image/png" href="{{ asset('assets/img/' . $websiteInfo->favicon) }}">

    {{-- styles --}}
    <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">
  </head>

  <body>
    <div class="my-5">
      <div style="padding: 0px 50px;">
        <div>
          <div class="logo text-center" style="margin-bottom: 30px;">
            <img src="{{ asset('assets/img/' . $websiteInfo->logo) }}" alt="website logo">
          </div>

          <h2 class="text-center pt-2">
            {{ __('ENROLMENT INVOICE') }}
          </h2>
        </div>

        @php
          $position = $enrolmentInfo->currency_text_position;
          $currency = $enrolmentInfo->currency_text;
        @endphp

        <div style="margin-top: 40px;">
          {{-- enrolment details start --}}
          <div style="width: 50%; float: left;">
            <h4 style="margin-bottom: 20px;">
              <strong>{{ __('Enrolment Details') }}</strong>
            </h4>

            <p>
              <strong>{{ __('Order ID') . ': ' }}</strong>{{ '#' . $enrolmentInfo->order_id }}
            </p>

            <p>
              <strong>{{ __('Enrolment Date') . ': ' }}</strong>{{ date_format($enrolmentInfo->created_at, 'M d, Y') }}
            </p>

            <p>
              <strong>{{ __('Course') . ': ' }}</strong>{{ $courseInfo->title }}
            </p>

            <p>
              <strong>{{ __('Course Price') . ': ' }}</strong>{{ $position == 'left' ? $currency . ' ' : '' }}{{ is_null($enrolmentInfo->course_price) ? '0.00' : number_format($enrolmentInfo->course_price, 2) }}{{ $position == 'right' ? ' ' . $currency : '' }}
            </p>

            <p>
              <strong>{{ __('Discount') . ': ' }}</strong>{{ $position == 'left' ? $currency . ' ' : '' }}{{ is_null($enrolmentInfo->discount) ? '0.00' : number_format($enrolmentInfo->discount, 2) }}{{ $position == 'right' ? ' ' . $currency : '' }}
            </p>

            <p>
              <strong>{{ __('Grand Total') . ': ' }}</strong>{{ $position == 'left' ? $currency . ' ' : '' }}{{ is_null($enrolmentInfo->grand_total) ? '0.00' : number_format($enrolmentInfo->grand_total, 2) }}{{ $position == 'right' ? ' ' . $currency : '' }}
            </p>

            <p>
              <strong>{{ __('Payment Method') . ': ' }}</strong>{{ is_null($enrolmentInfo->payment_method) ? '-' : $enrolmentInfo->payment_method }}
            </p>

            <p>
              <strong>{{ __('Payment Status') . ': ' }}</strong>@if ($enrolmentInfo->payment_status == 'completed') {{ __('Completed') }} @elseif ($enrolmentInfo->payment_status == 'pending') {{ __('Pending') }} @elseif ($enrolmentInfo->payment_status == 'rejected') {{ __('Rejected') }} @else - @endif
            </p>
          </div>
          {{-- enrolment details start --}}

          {{-- billing details start --}}
          <div style="width: 50%; float: left;">
            <h4 style="margin-bottom: 20px;">
              <strong>{{ __('Billing Details') }}</strong>
            </h4>

            <p>
              <strong>{{ __('Name') . ': ' }}</strong>{{ $enrolmentInfo->billing_first_name . ' ' . $enrolmentInfo->billing_last_name }}
            </p>

            <p>
              <strong>{{ __('Email') . ': ' }}</strong>{{ $enrolmentInfo->billing_email }}
            </p>

            <p>
              <strong>{{ __('Contact Number') . ': ' }}</strong>{{ $enrolmentInfo->billing_contact_number }}
            </p>

            <p>
              <strong>{{ __('Address') . ': ' }}</strong>{{ $enrolmentInfo->billing_address }}
            </p>

            <p>
              <strong>{{ __('City') . ': ' }}</strong>{{ $enrolmentInfo->billing_city }}
            </p>

            <p>
              <strong>{{ __('State') . ': ' }}</strong>{{ is_null($enrolmentInfo->billing_state) ? '-' : $enrolmentInfo->billing_state }}
            </p>

            <p>
              <strong>{{ __('Country') . ': ' }}</strong>{{ $enrolmentInfo->billing_country }}
            </p>
          </div>
          {{-- billing details end --}}
        </div>
      </div>
    </div>
  </body>
</html>
