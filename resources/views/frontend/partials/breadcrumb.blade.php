<!--====== PAGE TITLE PART START ======-->
<div class="page-title bg_cover pt-190 pb-195 lazy" @if (!empty($breadcrumb)) data-bg="{{ asset('assets/img/' . $breadcrumb) }}" @endif>
  <div class="container-fluid">
    <div class="row h-100">
      <div class="col-lg-12">
        <div class="page-title-item w-100 h-100">
          <h3 class="title w-100 h-100">{{ !empty($title) ? $title : '' }}</h3>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="{{ route('index') }}">{{ __('Home') }}</a></li>
              <li class="breadcrumb-item active" aria-current="page">{{ !empty($title) ? $title : '' }}</li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<!--====== PAGE TITLE PART END ======-->
