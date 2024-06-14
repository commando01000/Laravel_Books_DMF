<!DOCTYPE html>
<html lang="{{ $currentLanguageInfo->code }}" @if ($currentLanguageInfo->direction == 1) dir="rtl" @endif>
  <head>
    {{-- required meta tags --}}
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Kufi+Arabic:wght@100..900&display=swap" rel="stylesheet">
    {{-- csrf-token for ajax request --}}
    <meta name="csrf-token" content="{{ csrf_token() }}">

    {{-- title --}}
    <title>@yield('pageHeading') {{ '| ' . config('app.name') }}</title>

    <meta name="keywords" content="@yield('metaKeywords')">
    <meta name="description" content="@yield('metaDescription')">

    {{-- fav icon --}}
    <link rel="shortcut icon" type="image/png" href="{{ asset('assets/img/' . $websiteInfo->favicon) }}">

    {{-- include styles --}}
    @includeIf('frontend.partials.styles')

    {{-- include website color --}}
    @includeIf('frontend.partials.website-color')

    {{-- additional style --}}
    @yield('style')
    <style>
      body {
        font-family: "Noto Kufi Arabic", sans-serif;
        font-optical-sizing: auto;
        font-weight: <weight>;
        font-style: normal;
      }
    </style>
  </head>

  <body>
    {{-- preloader start --}}
    <div id="preloader">
      <div id="status">
        <div class="spinner">
          <div class="rect1"></div>
          <div class="rect2"></div>
          <div class="rect3"></div>
          <div class="rect4"></div>
          <div class="rect5"></div>
        </div>
      </div>
    </div>
    {{-- preloader end --}}

    {{-- header start --}}
    @if (!request()->routeIs('user.my_course.curriculum') && !request()->routeIs('admin.course_management.course.curriculum'))
      @if ($basicInfo->theme_version == 1)
        <header class="header-area header-area-one">
          {{-- include header-top --}}
          @includeIf('frontend.partials.header.header-top-v1')

          {{-- include header-nav --}}
          @includeIf('frontend.partials.header.header-nav-v1')
        </header>
      @elseif ($basicInfo->theme_version == 2)
        <header class="header-area header-area-two">
          {{-- include header-nav --}}
          @includeIf('frontend.partials.header.header-nav-v2')
        </header>
      @else
        <header class="header-area header-area-three">
          {{-- include header-top --}}
          @includeIf('frontend.partials.header.header-top-v3')

          {{-- include header-nav --}}
          @includeIf('frontend.partials.header.header-nav-v3')
        </header>
      @endif
    @endif
    {{-- header end --}}

    @yield('content')

    {{-- back to top start --}}
    <div class="back-to-top">
      <a href="#">
        <i class="fal fa-chevron-double-up"></i>
      </a>
    </div>
    {{-- back to top end --}}

    {{-- announcement popup --}}
    @includeIf('frontend.partials.popups')

    {{-- cookie alert --}}
    @if (!is_null($cookieAlertInfo) && $cookieAlertInfo->cookie_alert_status == 1)
      @includeIf('cookie-consent::index')
    @endif

    {{-- include footer --}}
    @if (!request()->routeIs('user.my_course.curriculum') && !request()->routeIs('admin.course_management.course.curriculum'))
      @if ($basicInfo->theme_version == 1 || $basicInfo->theme_version == 3)
        @includeIf('frontend.partials.footer.footer')
      @else
        @includeIf('frontend.partials.footer.footer-v2')
      @endif
    @endif

    {{-- include scripts --}}
    @includeIf('frontend.partials.scripts')

    {{-- additional script --}}
    @yield('script')
  </body>
</html>
