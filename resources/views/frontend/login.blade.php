@extends('frontend.layout')

@section('pageHeading')
  @if (!empty($pageHeading))
    {{ $pageHeading->login_page_title ?? 'Login' }}
  @endif
@endsection

@section('metaKeywords')
  @if (!empty($seoInfo))
    {{ $seoInfo->meta_keyword_login }}
  @endif
@endsection

@section('metaDescription')
  @if (!empty($seoInfo))
    {{ $seoInfo->meta_description_login }}
  @endif
@endsection

@section('content')
  @includeIf('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => $pageHeading->login_page_title ?? 'Login'])

  <!--====== User Login Part Start ======-->
  <div class="user-area-section pt-120 pb-120">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="user-form">
            <form action="{{ route('user.login_submit') }}" method="POST">
              @csrf
              <div class="form_group">
                <label>{{ __('Email Address') . '*' }}</label>
                <input type="email" class="form_control" name="email" value="{{ old('email') }}">
                @error('email')
                  <p class="text-danger mb-3">{{ $message }}</p>
                @enderror
              </div>

              <div class="form_group">
                <label>{{ __('Password') . '*' }}</label>
                <input type="password" class="form_control" name="password" value="{{ old('password') }}">
                @error('password')
                  <p class="text-danger mb-4">{{ $message }}</p>
                @enderror
              </div>

              @if ($recaptchaInfo->google_recaptcha_status == 1)
                <div class="form_group mt-2 mb-4">
                  {!! NoCaptcha::renderJs() !!}
                  {!! NoCaptcha::display() !!}

                  @error('g-recaptcha-response')
                    <p class="mt-3 text-danger">{{ $message }}</p>
                  @enderror
                </div>
              @endif

              <div class="form_group d-flex justify-content-between align-items-center">
                <button type="submit" class="main-btn">{{ __('Login') }}</button>
                <a href="{{ route('user.forget_password') }}">{{ __('Lost your password') . '?' }}</a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--====== User Login Part End ======-->
@endsection
