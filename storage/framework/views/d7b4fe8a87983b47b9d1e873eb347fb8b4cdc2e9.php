<?php $__env->startSection('pageHeading'); ?>
  <?php echo e(__('My Courses')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <?php if ($__env->exists('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => __('My Courses')])) echo $__env->make('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => __('My Courses')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!-- Start User Enrolled Course Section -->
  <section class="user-dashboard">
    <div class="container">
      <div class="row">
        <?php if ($__env->exists('frontend.user.side-navbar')) echo $__env->make('frontend.user.side-navbar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <div class="col-lg-9">
          <div class="row">
            <div class="col-lg-12">
              <div class="account-info">
                <div class="title">
                  <h4><?php echo e(__('All Courses')); ?></h4>
                </div>

                <div class="main-info">
                  <div class="main-table">
                    <?php if(count($enrolments) == 0): ?>
                      <h5 class="text-center mt-3"><?php echo e(__('No Course Found') . '!'); ?></h5>
                    <?php else: ?>
                      <div class="table-responsive">
                        <table id="user-dataTable" class="dataTables_wrapper dt-responsive table-striped dt-bootstrap4">
                          <thead>
                            <tr>
                              <th><?php echo e(__('Course')); ?></th>
                              <th><?php echo e(__('Duration')); ?></th>
                              <th><?php echo e(__('Price')); ?></th>
                              <th><?php echo e(__('Action')); ?></th>
                            </tr>
                          </thead>
                          <tbody>
                            <?php $__currentLoopData = $enrolments; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $enrolment): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <tr>
                                <td>
                                  <a target="_blank" href="<?php echo e(route('course_details', ['slug' => $enrolment->slug])); ?>">
                                    <?php echo e($enrolment->title); ?>

                                  </a>
                                </td>

                                <?php
                                  $period = $enrolment->course->duration;
                                  $array = explode(':', $period);
                                  $hour = $array[0];
                                  $courseDuration = \Carbon\Carbon::parse($period);
                                ?>

                                <td class="pl-3"><?php echo e($hour == '00' ? '00' : $courseDuration->format('h')); ?>h <?php echo e($courseDuration->format('i')); ?>m</td>
                                <td>
                                  <?php if(!is_null($enrolment->course_price)): ?>
                                    <?php echo e($enrolment->currency_symbol_position == 'left' ? $enrolment->currency_symbol : ''); ?><?php echo e($enrolment->course_price); ?><?php echo e($enrolment->currency_symbol_position == 'right' ? $enrolment->currency_symbol : ''); ?>

                                  <?php else: ?>
                                    <span class="<?php echo e($currentLanguageInfo->direction == 1 ? 'mr-2' : 'ml-1'); ?>"><?php echo e(__('Free')); ?></span>
                                  <?php endif; ?>
                                </td>

                                <td>
                                  <a href="<?php echo e(route('user.my_course.curriculum', ['id' => $enrolment->course_id, 'lesson_id' => $enrolment->lesson_id])); ?>" class="btn">
                                    <?php echo e(__('Curriculum')); ?>

                                  </a>
                                </td>
                              </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                          </tbody>
                        </table>
                      </div>
                    <?php endif; ?>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End User Enrolled Course Section -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/user/my-courses.blade.php ENDPATH**/ ?>