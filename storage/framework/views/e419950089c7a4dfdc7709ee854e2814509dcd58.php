<?php $__env->startSection('content'); ?>
  <div class="page-header">
    <h4 class="page-title"><?php echo e(__('Contents')); ?></h4>
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
    </ul>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <div class="row">
            <div class="col-lg-4">
              <div class="card-title d-inline-block">
                <?php echo e(__('Contents') . ' (' . $language->name . ' ' . __('Language') . ')'); ?>

              </div>
            </div>

            <div class="col-lg-8 mt-2 mt-lg-0">
              <a href="<?php echo e(route('admin.course_management.course.modules', ['id' => request()->input('course'), 'language' => $language->code])); ?>" class="btn btn-info btn-sm float-lg-right float-left"><i class="fas fa-backward"></i> <?php echo e(__('Back')); ?></a>

              <a href="<?php echo e(route('admin.course_management.lesson.create_quiz', ['id' => $lesson->id, 'course' => request()->input('course')])); ?>" class="btn btn-primary btn-sm float-lg-right float-left mr-2"><i class="fas fa-plus"></i> <?php echo e(__('Add Quiz')); ?></a>

              <a href="#" data-toggle="modal" data-target="#addCodeModal" class="btn btn-primary btn-sm float-lg-right float-left mr-2"><i class="fas fa-plus"></i> <?php echo e(__('Add Code')); ?></a>

              <a href="#" data-toggle="modal" data-target="#addTextModal" class="btn btn-primary btn-sm float-lg-right float-left mr-2"><i class="fas fa-plus"></i> <?php echo e(__('Add Text')); ?></a>

              <a href="#" data-toggle="modal" data-target="#addFileModal" class="btn btn-primary btn-sm float-lg-right float-left mr-2"><i class="fas fa-plus"></i> <?php echo e(__('Add File')); ?></a>

              <a href="#" data-toggle="modal" data-target="#addVideoModal" class="btn btn-primary btn-sm float-lg-right float-left mr-2"><i class="fas fa-plus"></i> <?php echo e(__('Add Video')); ?></a>
            </div>
          </div>
        </div>

        <div class="card-body">
          <div class="row">
            <div class="col">
              <?php if(count($contents) == 0): ?>
                <h3 class="text-center mb-0"><?php echo e(__('No Content Found') . '!'); ?></h3>
              <?php else: ?>
                <div class="alert alert-warning text-center mb-0" role="alert">
                  <strong class="text-dark"><?php echo e(__('Drag & drop to sort the contents of this lesson.')); ?></strong>
                </div>
              <?php endif; ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php if(count($contents) > 0): ?>
    <div id="sort-content">
      <?php $__currentLoopData = $contents; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $content): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <div class="row">
          <div class="col">
            <div class="card ui-state-default" data-id="<?php echo e($content->id); ?>">
              <div class="card-header">
                <div class="row">
                  <div class="col-lg-8">
                    <?php if($content->type == 'video'): ?>
                      <div class="card-title"><?php echo e($content->video_original_name); ?></div>
                    <?php elseif($content->type == 'file'): ?>
                      <div class="card-title"><?php echo e($content->file_original_name); ?></div>
                    <?php elseif($content->type == 'text'): ?>
                      <div class="card-title"><?php echo e(__('Text')); ?></div>
                    <?php elseif($content->type == 'code'): ?>
                      <div class="card-title"><?php echo e(__('Code')); ?></div>
                    <?php elseif($content->type == 'quiz'): ?>
                      <div class="card-title"><?php echo e(__('Quiz')); ?></div>
                    <?php endif; ?>
                  </div>

                  <div class="col-lg-4">
                    <?php if($content->type != 'quiz'): ?>
                      <form class="deleteForm" action="<?php echo e(route('admin.course_management.lesson.delete_content', ['id' => $content->id])); ?>" method="POST">
                        
                        <?php echo csrf_field(); ?>
                        <button type="submit" class="btn btn-sm btn-danger float-right deleteBtn">
                          <span class="btn-label">
                            <i class="fas fa-trash"></i>
                          </span>
                          <?php echo e(__('Delete')); ?>

                        </button>
                      </form>
                    <?php endif; ?>

                    <?php if($content->type == 'file'): ?>
                      <form action="<?php echo e(route('admin.course_management.lesson.download_file', ['id' => $content->id])); ?>" method="GET">
                        <button type="submit" class="btn btn-sm btn-success float-right mr-2">
                          <span class="btn-label">
                            <i class="fas fa-download"></i>
                          </span>
                          <?php echo e(__('Download')); ?>

                        </button>
                      </form>
                    <?php endif; ?>

                    <?php if($content->type == 'text' || $content->type == 'code'): ?>
                      <a href="#" class="btn btn-sm btn-secondary float-right mr-2 editBtn text-light" data-toggle="modal" data-target="<?php echo e($content->type == 'text' ? '#editTextModal' : '#editCodeModal'); ?>" <?php if($content->type == 'text'): ?> data-id="<?php echo e($content->id); ?>" <?php else: ?> data-content_id="<?php echo e($content->id); ?>" <?php endif; ?> <?php if($content->type == 'text'): ?> data-text="<?php echo e($content->text); ?>" <?php else: ?> data-code="<?php echo e($content->code); ?>" <?php endif; ?>>
                        <span class="btn-label">
                          <i class="fas fa-edit"></i>
                        </span>
                        <?php echo e(__('Edit')); ?>

                      </a>
                    <?php endif; ?>

                    <?php if($content->type == 'quiz'): ?>
                      <a href="<?php echo e(route('admin.course_management.lesson.manage_quiz', ['id' => $lesson->id, 'course' => request()->input('course'), 'language' => $language->code])); ?>" class="btn btn-sm btn-info float-right text-light">
                        <span class="btn-label">
                          <i class="fas fa-cog"></i>
                        </span>
                        <?php echo e(__('Manage')); ?>

                      </a>
                    <?php endif; ?>
                  </div>
                </div>
              </div>

              <?php if($content->type == 'video' || $content->type == 'text' || $content->type == 'code'): ?>
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <?php if($content->type == 'video'): ?>
                        <video width="400" controls>
                          <source src="<?php echo e(asset('assets/video/' . $content->video_unique_name)); ?>" type="video/mp4">
                          <?php echo e(__('Your browser does not support HTML video.')); ?>

                        </video>
                      <?php elseif($content->type == 'text'): ?>
                        <div class="<?php echo e($language->direction == 1 ? 'rtl' : ''); ?>">
                          <?php echo replaceBaseUrl($content->text, 'summernote'); ?>

                        </div>
                      <?php elseif($content->type == 'code'): ?>

                      <?php
                          $code = $content->code;
                      ?>
                      <pre class="mb-0"><code><?php echo e($code); ?></code></pre>
                      <?php endif; ?>
                    </div>
                  </div>
                </div>
              <?php endif; ?>
            </div>
          </div>
        </div>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
  <?php endif; ?>

  
  <?php echo $__env->make('backend.curriculum.lesson-content.video', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  
  <?php echo $__env->make('backend.curriculum.lesson-content.file', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  
  <?php echo $__env->make('backend.curriculum.lesson-content.create-text', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  
  <?php echo $__env->make('backend.curriculum.lesson-content.edit-text', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  
  <?php echo $__env->make('backend.curriculum.lesson-content.create-code', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  
  <?php echo $__env->make('backend.curriculum.lesson-content.edit-code', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
  <script>
    "use strict";
    const vidUpUrl = "<?php echo e(route('admin.course_management.lesson.upload_video')); ?>";
    const vidRmvUrl = "<?php echo e(route('admin.course_management.lesson.remove_video')); ?>";

    const fileUpUrl = "<?php echo e(route('admin.course_management.lesson.upload_file')); ?>";
    const fileRmvUrl = "<?php echo e(route('admin.course_management.lesson.remove_file')); ?>";

    const sortContentUrl = "<?php echo e(route('admin.course_management.lesson.sort_contents')); ?>";
  </script>

  <script type="text/javascript" src="<?php echo e(asset('assets/js/dropzone-video-upload.js')); ?>"></script>
  <script type="text/javascript" src="<?php echo e(asset('assets/js/dropzone-file-upload.js')); ?>"></script>
  <script type="text/javascript" src="<?php echo e(asset('assets/js/admin-partial.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/lesson-content/index.blade.php ENDPATH**/ ?>