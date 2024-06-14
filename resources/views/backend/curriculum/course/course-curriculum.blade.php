@extends('frontend.layout')

@section('pageHeading')
  {{ __('Curriculum') }}
@endsection

@section('content')
  <!--====== CURRICULUM PART START ======-->
  <section class="course-video-section">
    <div class="course-navigation">
      <div class="navigation-container d-flex align-items-center justify-content-between">
        <div class="course-nav-left d-flex justify-content-between align-items-center">
          <a href="{{ route('admin.course_management.courses', ['language' => request()->input('language')]) }}" class="prev">
            <i class="far fa-angle-left"></i>{{ __('Back') }}
          </a>
          <a href="#" class="course-nav-btn"><i class="far fa-bars"></i></a>
        </div>

        <div class="course-nav-right">
          @if ($certificateStatus == 1)
            <a href="{{ route('admin.course_management.course.certificate', ['id' => request()->route('id'), 'language' => request()->input('language')]) }}" class="certificate">
              <i class="far fa-diploma"></i>{{ __('Certificate') }}
            </a>
          @endif
        </div>
      </div>
    </div>

    <div class="course-videos-area">
      <div class="container-fluid p-0">
        <div class="course-wrapper-video d-flex">
          <div class="course-videos-sidebar">
            <div class="course-video-nav mt-15">
              @foreach ($modules as $key => $module)
                <div class="course-section">
                  <h5 class="heading">{{ $module->title }}</h5>

                  @php $lessons = $module->lessons; @endphp

                  <ul class="list">
                    @foreach ($lessons as $lesson)
                      @php
                        $lessonPeriod = $lesson->duration;
                        $lessonDuration = \Carbon\Carbon::parse($lessonPeriod);
                      @endphp

                      <li>
                        <a href="{{ route('admin.course_management.course.curriculum', ['id' => request()->route('id'), 'lesson_id' => $lesson->id, 'language' => request()->input('language')]) }}" class="{{ request()->input('lesson_id') == $lesson->id ? 'active' : '' }}">
                          <span>{{ $lesson->title }} {{ '(' . $lessonDuration->format('i') . ':' }}{{ $lessonDuration->format('s') . ')' }}</span>
                        </a>
                      </li>
                    @endforeach
                  </ul>
                </div>
              @endforeach
            </div>
          </div>

          <div class="course-videos-wrapper">
            <div class="title mb-20">
              <h4>{{ $courseTitle ?? '' }}</h4>
            </div>

            @if (!empty($lessonContents))
              @foreach ($lessonContents as $lessonContent)
                @php $contentType = $lessonContent->type; @endphp

                @switch($contentType)
                  @case('video')
                    <div class="video-box">
                      <video class="video-js vjs-16-9" controls preload="none" data-setup="{}">
                        <source src="{{ asset('assets/video/' . $lessonContent->video_unique_name) }}" type="video/mp4">
                      </video>
                    </div>
                    @break
                  @case('file')
                    <div class="download-box">
                      <h4>{{ $lessonContent->file_original_name }}</h4>
                      <button type="submit"><span><i class="fal fa-download"></i></span>{{ __('Download') }}</button>
                    </div>
                    @break
                  @case('text')
                    <div class="content-box">
                      {!! replaceBaseUrl($lessonContent->text, 'summernote') !!}
                    </div>
                    @break
                  @case('code')
                    <div class="content-box text-left" dir="ltr">
                      <pre class="mb-0"><code>{{$lessonContent->code}}</code></pre>
                    </div>
                    @break
                  @case('quiz')
                    <div class="quiz-content-box" id="quiz-content">
                      <span class="span">{{ __('Quiz') }}</span>

                      @foreach ($quizzes as $quiz)
                        <div class="quiz-box" @if (!$loop->first) style="display: none;" @endif>
                          <span class="count">{{ $loop->iteration . '/' . count($quizzes) }}</span>
                          <h4>{{ $quiz->question }}</h4>

                          @php $answers = json_decode($quiz->answers); @endphp

                          <div class="quiz-option">
                            <ul>
                              @foreach ($answers as $answer)
                                <li class="quiz-answer">{{ $answer->option }}</li>
                              @endforeach
                            </ul>
                          </div>
                        </div>
                      @endforeach
                    </div>
                    @break
                  @default
                    {{-- do nothing --}}
                @endswitch
              @endforeach
            @endif
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--====== CURRICULUM PART END ======-->
@endsection
