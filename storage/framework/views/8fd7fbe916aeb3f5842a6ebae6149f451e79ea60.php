<?php $__env->startSection('content'); ?>
  <div class="page-header">
    <h4 class="page-title"><?php echo e(__('Edit Course')); ?></h4>
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
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(__('Edit Course')); ?></a>
      </li>
    </ul>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <div class="card-title d-inline-block"><?php echo e(__('Edit Course')); ?></div>
          <a class="btn btn-info btn-sm float-right d-inline-block" href="<?php echo e(route('admin.course_management.courses', ['language' => $defaultLang->code])); ?>">
            <span class="btn-label">
              <i class="fas fa-backward" ></i>
            </span>
            <?php echo e(__('Back')); ?>

          </a>
        </div>

        <div class="card-body">
          <div class="row">
            <div class="col-lg-8 offset-lg-2">
              <div class="alert alert-danger pb-1 dis-none" id="courseErrors">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <ul></ul>
              </div>

              <form id="courseForm" action="<?php echo e(route('admin.course_management.update_course', ['id' => $course->id])); ?>" method="POST" enctype="multipart/form-data">
                
                <?php echo csrf_field(); ?>
                <div class="form-group">
                  <label for=""><?php echo e(__('Thumbnail Image') . '*'); ?></label>
                  <br>
                  <div class="thumb-preview">
                    <img src="<?php echo e(asset('assets/img/courses/thumbnails/' . $course->thumbnail_image)); ?>" alt="thumbnail image" class="uploaded-thumb-img">
                  </div>

                  <div class="mt-3">
                    <div role="button" class="btn btn-primary btn-sm upload-btn">
                      <?php echo e(__('Choose Image')); ?>

                      <input type="file" class="thumb-img-input" name="thumbnail_image">
                    </div>
                  </div>
                </div>

                <div class="form-group mt-1">
                  <label for=""><?php echo e(__('Introduction Video') . '*'); ?></label>
                  <input type="url" class="form-control" name="video_link" placeholder="Enter Video Link" value="<?php echo e($course->video_link); ?>">
                </div>

                <div class="form-group mt-1">
                  <label for=""><?php echo e(__('Cover Image') . '*'); ?></label>
                  <br>
                  <div class="thumb-preview">
                    <img src="<?php echo e(asset('assets/img/courses/covers/' . $course->cover_image)); ?>" alt="cover image" class="uploaded-cover-img">
                  </div>

                  <div class="mt-3">
                    <div role="button" class="btn btn-primary btn-sm upload-btn">
                      <?php echo e(__('Choose Image')); ?>

                      <input type="file" class="cover-img-input" name="cover_image">
                    </div>
                  </div>
                </div>

                <div class="form-group mt-1">
                  <label for=""><?php echo e(__('Pricing Type') . '*'); ?></label>
                  <div class="selectgroup w-100">
                    <label class="selectgroup-item">
                      <input type="radio" name="pricing_type" value="free" class="selectgroup-input" <?php echo e($course->pricing_type == 'free' ? 'checked' : ''); ?>>
                      <span class="selectgroup-button"><?php echo e(__('Free')); ?></span>
                    </label>

                    <label class="selectgroup-item">
                      <input type="radio" name="pricing_type" value="premium" class="selectgroup-input" <?php echo e($course->pricing_type == 'premium' ? 'checked' : ''); ?>>
                      <span class="selectgroup-button"><?php echo e(__('Premium')); ?></span>
                    </label>
                  </div>
                </div>

                <div class="row <?php echo e($course->pricing_type == 'free' ? 'd-none' : ''); ?>" id="price-input">
                  <div class="col-lg-6">
                    <div class="form-group">
                      <label><?php echo e(__('Current Price') . '*'); ?></label>
                      <input type="number" step="0.01" name="current_price" placeholder="Enter Current Price" class="form-control" value="<?php echo e($course->current_price); ?>">
                    </div>
                  </div>

                  <div class="col-lg-6">
                    <div class="form-group">
                      <label><?php echo e(__('Previous Price')); ?></label>
                      <input type="number" step="0.01" name="previous_price" placeholder="Enter Previous Price" class="form-control" value="<?php echo e($course->previous_price); ?>">
                    </div>
                  </div>
                </div>

                <div id="accordion" class="mt-3">
                  <?php $__currentLoopData = $languages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php
                      $courseData = $language->courseInformation()->where('course_id', $course->id)->first();
                    ?>

                    <div class="version">
                      <div class="version-header" id="heading<?php echo e($language->id); ?>">
                        <h5 class="mb-0">
                          <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapse<?php echo e($language->id); ?>" aria-expanded="<?php echo e($language->is_default == 1 ? 'true' : 'false'); ?>" aria-controls="collapse<?php echo e($language->id); ?>">
                            <?php echo e($language->name . __(' Language')); ?> <?php echo e($language->is_default == 1 ? '(Default)' : ''); ?>

                          </button>
                        </h5>
                      </div>

                      <div id="collapse<?php echo e($language->id); ?>" class="collapse <?php echo e($language->is_default == 1 ? 'show' : ''); ?>" aria-labelledby="heading<?php echo e($language->id); ?>" data-parent="#accordion">
                        <div class="version-body">
                          <div class="row">
                            <div class="col-lg-6">
                              <div class="form-group <?php echo e($language->direction == 1 ? 'rtl text-right' : ''); ?>">
                                <label><?php echo e(__('Title') . '*'); ?></label>
                                <input type="text" class="form-control" name="<?php echo e($language->code); ?>_title" placeholder="Enter Title" value="<?php echo e(is_null($courseData) ? '' : $courseData->title); ?>">
                              </div>
                            </div>

                            <div class="col-lg-6">
                              <div class="form-group <?php echo e($language->direction == 1 ? 'rtl text-right' : ''); ?>">
                                <?php
                                  $categories = DB::table('course_categories')
                                    ->where('language_id', $language->id)
                                    ->where('status', 1)
                                    ->orderByDesc('id')
                                    ->get();
                                ?>

                                <label for=""><?php echo e(__('Category') . '*'); ?></label>
                                <select name="<?php echo e($language->code); ?>_category_id" class="form-control">
                                  <?php if(is_null($categories)): ?>
                                    <option selected disabled><?php echo e(__('Select Category')); ?></option>
                                  <?php else: ?>
                                    <option disabled selected><?php echo e(__('Select Category')); ?></option>

                                    <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                      <option value="<?php echo e($category->id); ?>" <?php echo e(!empty($courseData) && $courseData->course_category_id == $category->id ? 'selected' : ''); ?>>
                                        <?php echo e($category->name); ?>

                                      </option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                  <?php endif; ?>
                                </select>
                              </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col">
                              <div class="form-group <?php echo e($language->direction == 1 ? 'rtl text-right' : ''); ?>">
                                <?php
                                  $instructors = DB::table('instructors')
                                    ->where('language_id', $language->id)
                                    ->orderByDesc('id')
                                    ->get();
                                ?>

                                <label for=""><?php echo e(__('Instructor') . '*'); ?></label>
                                <select name="<?php echo e($language->code); ?>_instructor_id" class="form-control mb-2">
                                  <?php if(is_null($instructors)): ?>
                                    <option selected disabled><?php echo e(__('Select Instructor')); ?></option>
                                  <?php else: ?>
                                    <option disabled selected><?php echo e(__('Select Instructor')); ?></option>

                                    <?php $__currentLoopData = $instructors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $instructor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                      <option value="<?php echo e($instructor->id); ?>" <?php echo e(!empty($courseData) && $courseData->instructor_id == $instructor->id ? 'selected' : ''); ?>>
                                        <?php echo e($instructor->name); ?>

                                      </option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                  <?php endif; ?>
                                </select>

                                <a href="<?php echo e(route('admin.instructors', ['language' => $defaultLang->code])); ?>" target="_blank" id="instructor-link" class="text-warning">
                                  <?php echo e(__('Click this link to add a new instructor') . '.'); ?>

                                </a>
                              </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col">
                              <div class="form-group <?php echo e($language->direction == 1 ? 'rtl text-right' : ''); ?>">
                                <label><?php echo e(__('Features') . '*'); ?></label>
                                <textarea class="form-control" name="<?php echo e($language->code); ?>_features" placeholder="Enter Course Features" rows="7"><?php echo e(is_null($courseData) ? '' : $courseData->features); ?></textarea>
                                <p class="text-warning mt-1 mb-0">
                                  <?php echo e(__('To seperate the features, enter a new line after each feature.')); ?>

                                </p>
                              </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col">
                              <div class="form-group <?php echo e($language->direction == 1 ? 'rtl text-right' : ''); ?>">
                                <label><?php echo e(__('Description') . '*'); ?></label>
                                <textarea class="form-control summernote" name="<?php echo e($language->code); ?>_description" placeholder="Enter Course Description" data-height="300"><?php echo e(is_null($courseData) ? '' : replaceBaseUrl($courseData->description, 'summernote')); ?></textarea>
                              </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col">
                              <div class="form-group <?php echo e($language->direction == 1 ? 'rtl text-right' : ''); ?>">
                                <label><?php echo e(__('Meta Keywords')); ?></label>
                                <input class="form-control" name="<?php echo e($language->code); ?>_meta_keywords" placeholder="Enter Meta Keywords" data-role="tagsinput" value="<?php echo e(is_null($courseData) ? '' : $courseData->meta_keywords); ?>">
                              </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col">
                              <div class="form-group <?php echo e($language->direction == 1 ? 'rtl text-right' : ''); ?>">
                                <label><?php echo e(__('Meta Description')); ?></label>
                                <textarea class="form-control" name="<?php echo e($language->code); ?>_meta_description" rows="5" placeholder="Enter Meta Description"><?php echo e(is_null($courseData) ? '' : $courseData->meta_description); ?></textarea>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div class="card-footer">
          <div class="row">
            <div class="col-12 text-center">
              <button type="submit" form="courseForm" class="btn btn-success">
                <?php echo e(__('Update')); ?>

              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
  <script type="text/javascript" src="<?php echo e(asset('assets/js/admin-partial.js')); ?>"></script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/course/edit.blade.php ENDPATH**/ ?>