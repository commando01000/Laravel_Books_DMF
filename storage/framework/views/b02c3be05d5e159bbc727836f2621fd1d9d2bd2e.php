<?php $__env->startSection('pageHeading'); ?>
  <?php echo e(__('Curriculum')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <!--====== CURRICULUM PART START ======-->
  <section class="course-video-section">
    <div class="course-navigation">
      <div class="navigation-container d-flex align-items-center justify-content-between">
        <div class="course-nav-left d-flex justify-content-between align-items-center">
          <a href="<?php echo e(route('user.my_courses')); ?>" class="prev"><i class="far fa-angle-left"></i><?php echo e(__('Back')); ?></a>
          <a href="#" class="course-nav-btn"><i class="far fa-bars"></i></a>
        </div>

        <div class="course-nav-right">
          <?php if($certificateStatus == 1): ?>
            <a href="<?php echo e(route('user.my_course.get_certificate', ['id' => request()->route('id')])); ?>" class="certificate">
              <i class="far fa-diploma"></i><?php echo e(__('Certificate')); ?>

            </a>
          <?php endif; ?>
        </div>
      </div>
    </div>

    <div class="course-videos-area">
      <div class="container-fluid p-0">
        <div class="course-wrapper-video d-flex">
          <div class="course-videos-sidebar">
            <div class="course-video-nav mt-15">
              <?php $__currentLoopData = $modules; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $module): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="course-section">
                  <h5 class="heading"><?php echo e($module->title); ?></h5>

                  <?php $lessons = $module->lessons; ?>

                  <ul class="list">
                    <?php $__currentLoopData = $lessons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lesson): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <?php
                        $lessonPeriod = $lesson->duration;
                        $lessonDuration = \Carbon\Carbon::parse($lessonPeriod);
                      ?>

                      <li><a href="<?php echo e(route('user.my_course.curriculum', ['id' => request()->route('id'), 'lesson_id' => $lesson->id])); ?>" class="<?php echo e(request()->input('lesson_id') == $lesson->id ? 'active' : ''); ?> <?php echo e($lesson->lesson_complete()->where('user_id', Auth::guard('web')->user()->id)->count() > 0 ? 'lesson-complete' : ''); ?>" id="lesson-<?php echo e($lesson->id); ?>"><span><?php echo e($lesson->title); ?> <?php echo e('(' . $lessonDuration->format('i') . ':'); ?><?php echo e($lessonDuration->format('s') . ')'); ?></span></a></li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                  </ul>
                </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
          </div>

          <div class="course-videos-wrapper">
            <div class="title mb-20">
              <h4><?php echo e($courseTitle ?? ''); ?></h4>
            </div>
            <?php if(!empty($lessonContents)): ?>
              <?php $__currentLoopData = $lessonContents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lessonContent): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php $contentType = $lessonContent->type; ?>

                <?php switch($contentType):
                  case ('video'): ?>
                    <?php
                      $videoCompleted = $lessonContent->lesson_content_complete()->count();
                    ?>

                    <div class="video-box">
                      <video class="video-js vjs-16-9" controls preload="none" data-setup="{}" onplay="videoCompletion(this.id, <?php echo e($lessonContent->id); ?>)">
                        <source src="<?php echo e(asset('assets/video/' . $lessonContent->video_unique_name)); ?>" type="video/mp4">
                      </video>
                    </div>
                    <?php break; ?>
                  <?php case ('file'): ?>
                    <div class="download-box">
                      <h4><?php echo e($lessonContent->file_original_name); ?></h4>
                      <form class="d-inline-block" action="<?php echo e(route('user.my_course.curriculum.download_file', ['id' => $lessonContent->id])); ?>" method="POST">
                        <?php echo csrf_field(); ?>
                        <button type="submit"><span><i class="fal fa-download"></i></span><?php echo e(__('Download')); ?></button>
                      </form>
                    </div>
                    <?php break; ?>
                  <?php case ('text'): ?>
                    <div class="content-box">
                      <?php echo replaceBaseUrl($lessonContent->text, 'summernote'); ?>

                    </div>
                    <?php break; ?>
                  <?php case ('code'): ?>
                    <div class="content-box text-left" dir="ltr">
                      <pre class="mb-0"><code><?php echo e($lessonContent->code); ?></code></pre>
                    </div>
                    <?php break; ?>
                  <?php case ('quiz'): ?>
                    <div class="quiz-content-box" id="quiz-content" data-content_id="<?php echo e($lessonContent->id); ?>" data-completion_status="<?php echo e($lessonContent->completion_status); ?>">
                      <span class="span"><?php echo e(__('Quiz')); ?></span>

                      <?php $__currentLoopData = $quizzes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $quiz): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="quiz-box" <?php if(!$loop->first): ?> style="display: none;" <?php endif; ?>>
                          <span class="count"><?php echo e($loop->iteration . '/' . count($quizzes)); ?></span>
                          <h4><?php echo e($quiz->question); ?></h4>
                          <input type="hidden" value="<?php echo e($quiz->id); ?>" class="quiz-id">

                          <p class="mb-3 text-left" id="<?php echo e('quiz-status-' . $quiz->id); ?>"></p>

                          <?php $answers = json_decode($quiz->answers); ?>

                          <div class="quiz-option">
                            <ul>
                              <?php $__currentLoopData = $answers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $answer): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <li class="quiz-answer <?php echo e('quiz-option-' . $quiz->id); ?>" data-ans="<?php echo e($answer->option); ?>"><?php echo e($answer->option); ?></li>
                              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                          </div>
                        </div>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                      <div id="quiz-complete" class="dis-none">
                        <div id="quiz-complete-icon">
                          <i class="fas fa-check-circle text-success"></i>
                        </div>
                        <p><?php echo e(__('You scored')); ?> <span id="correct-ans-count"></span>/<?php echo e(count($quizzes)); ?> (<span id="result-percentage"></span>%)</p>
                        <a href="<?php echo e(url()->current() . '?lesson_id=' . request()->input('lesson_id') . '&quiz=retake'); ?>"><?php echo e(__('Retake Quiz')); ?></a>
                      </div>

                      <button class="btn btn-sm btn-info dis-none" id="check-btn"><?php echo e(__('Check')); ?></button>
                      <button class="btn btn-sm btn-primary dis-none" id="next-btn"><?php echo e(__('Next')); ?></button>
                    </div>
                    <?php break; ?>
                  <?php default: ?>
                    
                <?php endswitch; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
          </div>

          <a id="scroll-to-quiz" href="#quiz-content"></a>
        </div>
      </div>
    </div>
  </section>
  <!--====== CURRICULUM PART END ======-->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
  <script>
    "use strict";
    const checkAnsUrl = "<?php echo e(route('user.my_course.curriculum.check_ans')); ?>";
    const quizStatus = "<?php echo e(request()->input('quiz')); ?>";
    const numOfQuiz = <?php echo e(!empty($quizzes) ? count($quizzes) : 0); ?>;
    const courseId = <?php echo e(request()->route('id')); ?>;
    const lessonId = <?php echo e(request()->input('lesson_id')); ?>;
    const quizScoreUrl = "<?php echo e(route('user.my_course.curriculum.store_quiz_score')); ?>";
    const contentCompletionUrl = "<?php echo e(route('user.my_course.curriculum.content_completion')); ?>";
    const certificateStatus = <?php echo e($certificateStatus); ?>;
  </script>

  <script type="text/javascript" src="<?php echo e(asset('assets/js/lesson-content.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/user/course-curriculum.blade.php ENDPATH**/ ?>