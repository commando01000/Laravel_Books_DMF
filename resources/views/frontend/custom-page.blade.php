@extends('frontend.layout')

@section('pageHeading')
    {{ $pageInfo->title }}
@endsection

@section('metaKeywords')
    {{ $pageInfo->meta_keywords }}
@endsection

@section('metaDescription')
    {{ $pageInfo->meta_description }}
@endsection

@section('style')
    <link rel="stylesheet" href="{{ asset('assets/css/summernote-content.css') }}">
@endsection

@section('content')
    @includeIf('frontend.partials.breadcrumb', [
        'breadcrumb' => $bgImg->breadcrumb,
        'title' => $pageInfo->title,
    ])

    <!--====== PAGE CONTENT PART START ======-->
    <section class="custom-page-area pt-100 pb-90">
        <div class="container">
            <div class="row mt-10 gap-4"> 
              {{-- Mohamed Salama Will Continue From Here and Supraa will 
              add more design after the content is added ! --}}
                {{-- @if (count($Books) == 0) check if there is any books --}}
                @if (0 != 0)
                    <div class="col-lg-12">
                        <h3 class="text-center mt-30">{{ __('No Books Found') . '!' }}</h3>
                    </div>
                @else
                    {{-- @foreach ($Books as $book) --}}
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="card shadow-sm h-100 overflow-hidden">
                            <div class="single-books mt-30">
                                <div class="books-thumb">
                                    {{-- <a class="d-block"
                                            href="{{ route('course_details', ['slug' => $book->slug]) }}"><img
                                                data-src="{{ asset('assets/img/courses/thumbnails/' . $book->thumbnail_image) }}"
                                                class="lazy crsImage" alt="image"></a> --}}

                                    {{-- <div class="books-thumb-title">
                                            <a class="category"
                                                href="{{ route('courses', ['category' => $book->categorySlug]) }}">{{ $book->categoryName }}</a>
                                        </div> --}}
                                </div>

                                <div class="books-content">
                                    {{-- <a href="{{ route('course_details', ['slug' => $book->slug]) }}">
                                            <h4 class="title">
                                                {{ strlen($book->title) > 45 ? mb_substr($book->title, 0, 45, 'UTF-8') . '...' : $book->title }}
                                            </h4>
                                        </a> --}}
                                    <div class="books-info d-flex justify-content-between">
                                        <div class="item">
                                            {{-- <p>{{ strlen($course->instructorName) > 10 ? mb_substr($course->instructorName, 0, 10, 'utf-8') . '...' : $course->instructorName }}
                                                </p> --}}
                                        </div>

                                        <div class="price">
                                            {{-- @if ($course->pricing_type == 'premium')
                                                    <span>{{ $currencyInfo->base_currency_symbol_position == 'left' ? $currencyInfo->base_currency_symbol : '' }}{{ $course->current_price }}{{ $currencyInfo->base_currency_symbol_position == 'right' ? $currencyInfo->base_currency_symbol : '' }}</span>

                                                    @if (!is_null($course->previous_price))
                                                        <span
                                                            class="pre-price">{{ $currencyInfo->base_currency_symbol_position == 'left' ? $currencyInfo->base_currency_symbol : '' }}{{ $course->previous_price }}{{ $currencyInfo->base_currency_symbol_position == 'right' ? $currencyInfo->base_currency_symbol : '' }}</span>
                                                    @endif
                                                @else
                                                    <span>{{ __('Free') }}</span>
                                                @endif --}}
                                        </div>
                                    </div>
                                    <ul class="d-flex justify-content-center">
                                        {{-- <li><i class="fal fa-users"></i>
                                                {{ $course->enrolmentCount . ' ' . __('Students') }}</li>

                                            @php
                                                $period = $course->duration;
                                                $array = explode(':', $period);
                                                $hour = $array[0];
                                                $courseDuration = \Carbon\Carbon::parse($period);
                                            @endphp

                                            <li><i class="fal fa-clock"></i>
                                                {{ $hour == '00' ? '00' : $courseDuration->format('h') }}h
                                                {{ $courseDuration->format('i') }}m</li> --}}
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                      <div class="card shadow-sm h-100 overflow-hidden">
                          <div class="single-books mt-30">
                              <div class="books-thumb">
                                  {{-- <a class="d-block"
                                          href="{{ route('course_details', ['slug' => $book->slug]) }}"><img
                                              data-src="{{ asset('assets/img/courses/thumbnails/' . $book->thumbnail_image) }}"
                                              class="lazy crsImage" alt="image"></a> --}}

                                  {{-- <div class="books-thumb-title">
                                          <a class="category"
                                              href="{{ route('courses', ['category' => $book->categorySlug]) }}">{{ $book->categoryName }}</a>
                                      </div> --}}
                              </div>

                              <div class="books-content">
                                  {{-- <a href="{{ route('course_details', ['slug' => $book->slug]) }}">
                                          <h4 class="title">
                                              {{ strlen($book->title) > 45 ? mb_substr($book->title, 0, 45, 'UTF-8') . '...' : $book->title }}
                                          </h4>
                                      </a> --}}
                                  <div class="books-info d-flex justify-content-between">
                                      <div class="item">
                                          {{-- <p>{{ strlen($course->instructorName) > 10 ? mb_substr($course->instructorName, 0, 10, 'utf-8') . '...' : $course->instructorName }}
                                              </p> --}}
                                      </div>

                                      <div class="price">
                                          {{-- @if ($course->pricing_type == 'premium')
                                                  <span>{{ $currencyInfo->base_currency_symbol_position == 'left' ? $currencyInfo->base_currency_symbol : '' }}{{ $course->current_price }}{{ $currencyInfo->base_currency_symbol_position == 'right' ? $currencyInfo->base_currency_symbol : '' }}</span>

                                                  @if (!is_null($course->previous_price))
                                                      <span
                                                          class="pre-price">{{ $currencyInfo->base_currency_symbol_position == 'left' ? $currencyInfo->base_currency_symbol : '' }}{{ $course->previous_price }}{{ $currencyInfo->base_currency_symbol_position == 'right' ? $currencyInfo->base_currency_symbol : '' }}</span>
                                                  @endif
                                              @else
                                                  <span>{{ __('Free') }}</span>
                                              @endif --}}
                                      </div>
                                  </div>
                                  <ul class="d-flex justify-content-center">
                                      {{-- <li><i class="fal fa-users"></i>
                                              {{ $course->enrolmentCount . ' ' . __('Students') }}</li>

                                          @php
                                              $period = $course->duration;
                                              $array = explode(':', $period);
                                              $hour = $array[0];
                                              $courseDuration = \Carbon\Carbon::parse($period);
                                          @endphp

                                          <li><i class="fal fa-clock"></i>
                                              {{ $hour == '00' ? '00' : $courseDuration->format('h') }}h
                                              {{ $courseDuration->format('i') }}m</li> --}}
                                  </ul>
                              </div>
                          </div>
                      </div>
                  </div>
                    {{-- @endforeach --}}
                @endif
            </div>

            @if (!empty(showAd(3)))
                <div class="text-center mt-30">
                    {!! showAd(3) !!}
                </div>
            @endif
        </div>
    </section>
    <!--====== PAGE CONTENT PART END ======-->
@endsection
