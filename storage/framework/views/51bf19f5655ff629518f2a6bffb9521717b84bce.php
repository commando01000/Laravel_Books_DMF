<?php $__env->startSection('content'); ?>
  <div class="page-header">
    <h4 class="page-title"><?php echo e(__('Add Quiz')); ?></h4>
    <ul class="breadcrumbs">
      <li class="nav-home">
        <a href="<?php echo e(route('admin.dashboard')); ?>">
          <i class="flaticon-home"></i>
        </a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(__('Course Management')); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="<?php echo e(route('admin.course_management.courses', ['language' => $defaultLang->code])); ?>"><?php echo e(__('Courses')); ?></a>
      </li>
      <?php if(!empty($courseInfo)): ?>
        <li class="separator">
          <i class="flaticon-right-arrow"></i>
        </li>
        <li class="nav-item">
          <a href="#"><?php echo e(strlen($courseInfo->title) > 35 ? mb_substr($courseInfo->title, 0, 35, 'UTF-8') . '...' : $courseInfo->title); ?></a>
        </li>
      <?php endif; ?>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="<?php echo e(route('admin.course_management.course.modules', ['id' => $courseInfo->course_id, 'language' => $defaultLang->code])); ?>"><?php echo e(__('Modules')); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e($module->title); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(strlen($lesson->title) > 20 ? mb_substr($lesson->title, 0, 20, 'UTF-8') . '...' : $lesson->title); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(__('Add Quiz')); ?></a>
      </li>
    </ul>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <div class="row">
            <div class="col-lg-8">
              <div class="card-title d-inline-block">
                <?php echo e(__('Add Quiz')); ?>

              </div>
            </div>

            <div class="col-lg-4 mt-2 mt-lg-0">
              <a class="btn btn-info btn-sm float-right" href="<?php echo e(route('admin.course_management.lesson.contents', ['id' => $lesson->id, 'course' => request()->input('course'), 'language' => $defaultLang->code])); ?>">
                <span class="btn-label">
                  <i class="fas fa-backward" ></i>
                </span>
                <?php echo e(__('Back')); ?>

              </a>
            </div>
          </div>
        </div>

        <div class="card-body">
          <div class="row">
            <div class="col-lg-8 offset-lg-2">
              <form id="ajaxForm" action="<?php echo e(route('admin.course_management.lesson.store_quiz', ['id' => $lesson->id])); ?>" method="POST">
                <?php echo csrf_field(); ?>
                <div class="row">
                  <div class="col">
                    <div class="form-group">
                      <label><?php echo e(__('Question') . '*'); ?></label>
                      <input class="form-control <?php echo e($courseInfo->language->direction == 1 ? 'rtl' : ''); ?>" type="text" name="question" placeholder="Enter Question">
                      <p class="mt-1 mb-0 text-danger em" id="err_question"></p>
                    </div>
                  </div>
                </div>

                <div id="app">
                  <div class="row">
                    <div class="col">
                      <div class="form-group">
                        <label><?php echo e(__('Answer') . '*'); ?></label><br>
                        <button class="btn btn-sm btn-primary" type="button" v-on:click="addAns()"><?php echo e(__('Add Answer')); ?></button>
                        <p class="mt-1 mb-0 text-danger em" id="err_answer"></p>
                      </div>
                    </div>
                  </div>

                  <div class="row" v-for="(answer, index) in answers" v-bind:key="answer.uniqId">
                    <div class="col-lg-2">
                      <div class="form-group">
                        <label for=""><?php echo e(__('Right Answer')); ?></label><br>
                        <input type="checkbox" name="right_answers[]" v-bind:value="index">
                      </div>
                    </div>

                    <div class="col-lg-8">
                      <div class="form-group">
                        <label for=""><?php echo e(__('Option')); ?></label>
                        <input type="text" class="form-control <?php echo e($courseInfo->language->direction == 1 ? 'rtl' : ''); ?>" name="options[]" placeholder="Enter Option">
                      </div>
                    </div>

                    <div class="col-lg-2">
                      <button class="btn btn-danger mt-4 ml-2" v-on:click="removeAns(index)"><i class="fas fa-times"></i></button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div class="card-footer">
          <div class="row">
            <div class="col-12 text-center">
              <button type="submit" class="btn btn-success" id="submitBtn">
                <?php echo e(__('Save')); ?>

              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
  <script src="<?php echo e(asset('assets/js/vue-js.min.js')); ?>"></script>
  <script src="<?php echo e(asset('assets/js/admin-quiz.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/lesson-quiz/create.blade.php ENDPATH**/ ?>