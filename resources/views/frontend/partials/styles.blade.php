{{-- animate css --}}
<link rel="stylesheet" href="{{ asset('assets/css/animate.min.css') }}">

{{-- fontawesome css --}}
<link rel="stylesheet" href="{{ asset('assets/css/all.min.css') }}">

{{-- flaticon css --}}
<link rel="stylesheet" href="{{ asset('assets/css/flaticon.css') }}">

{{-- bootstrap css --}}
<link rel="stylesheet" href="{{ asset('assets/css/bootstrap.min.css') }}">

{{-- magnific-popup css --}}
<link rel="stylesheet" href="{{ asset('assets/css/magnific-popup.css') }}">

{{-- owl-carousel css --}}
<link rel="stylesheet" href="{{ asset('assets/css/owl-carousel.min.css') }}">

{{-- nice-select css --}}
<link rel="stylesheet" href="{{ asset('assets/css/nice-select.css') }}">

{{-- slick css --}}
<link rel="stylesheet" href="{{ asset('assets/css/slick.css') }}">

{{-- toastr css --}}
<link rel="stylesheet" href="{{ asset('assets/css/toastr.min.css') }}">

{{-- datatables css --}}
<link rel="stylesheet" href="{{ asset('assets/css/datatables-1.10.23.min.css') }}">

{{-- datatables bootstrap css --}}
<link rel="stylesheet" href="{{ asset('assets/css/datatables.bootstrap4.min.css') }}">

{{-- monokai css --}}
<link rel="stylesheet" href="{{ asset('assets/css/monokai-sublime.css') }}">

{{-- jQuery-ui css --}}
<link rel="stylesheet" href="{{ asset('assets/css/jquery-ui.min.css') }}">

@if (request()->routeIs('user.my_course.curriculum') || request()->routeIs('admin.course_management.course.curriculum'))
  {{-- video css --}}
  <link rel="stylesheet" href="{{ asset('assets/css/video.min.css') }}">
@endif

{{-- default css --}}
<link rel="stylesheet" href="{{ asset('assets/css/default.min.css') }}">

{{-- main css --}}
<link rel="stylesheet" href="{{ asset('assets/css/main.css') }}">

{{-- responsive css --}}
<link rel="stylesheet" href="{{ asset('assets/css/responsive.css') }}">

{{-- summernote-content css --}}
<link rel="stylesheet" href="{{ asset('assets/css/summernote-content.css') }}">

@if ($currentLanguageInfo->direction == 1)
  {{-- right-to-left css --}}
  <link rel="stylesheet" href="{{ asset('assets/css/rtl.css') }}">

  {{-- right-to-left-responsive css --}}
  <link rel="stylesheet" href="{{ asset('assets/css/rtl-responsive.css') }}">
@endif

<style>
  body{
    text-align: right;
  }
</style>
