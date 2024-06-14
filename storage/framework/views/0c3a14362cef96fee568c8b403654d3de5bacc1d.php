<?php $__env->startSection('pageHeading'); ?>
  <?php echo e(__('Dashboard')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <?php if ($__env->exists('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => __('Dashboard')])) echo $__env->make('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => __('Dashboard')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!-- Start User Dashboard Section -->
  <section class="user-dashboard">
    <div class="container">
      <div class="row">
        <?php if ($__env->exists('frontend.user.side-navbar')) echo $__env->make('frontend.user.side-navbar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <div class="col-lg-9">
          <div class="row mb-5">
            <div class="col-lg-12">
              <div class="user-profile-details">
                <div class="account-info">
                  <div class="title">
                    <h4><?php echo e(__('Account Information')); ?></h4>
                  </div>

                  <div class="main-info">
                    <ul class="list">
                      <?php if($authUser->first_name != null && $authUser->last_name != null): ?>
                        <li><span><?php echo e(__('Name') . ':'); ?></span></li>
                      <?php endif; ?>

                      <li><span><?php echo e(__('Username') . ':'); ?></span></li>

                      <li><span><?php echo e(__('Email') . ':'); ?></span></li>

                      <?php if($authUser->contact_number != null): ?>
                        <li><span><?php echo e(__('Phone') . ':'); ?></span></li>
                      <?php endif; ?>

                      <?php if($authUser->address != null): ?>
                        <li><span><?php echo e(__('Address') . ':'); ?></span></li>
                      <?php endif; ?>

                      <?php if($authUser->city != null): ?>
                        <li><span><?php echo e(__('City') . ':'); ?></span></li>
                      <?php endif; ?>

                      <?php if($authUser->state != null): ?>
                        <li><span><?php echo e(__('State') . ':'); ?></span></li>
                      <?php endif; ?>

                      <?php if($authUser->country != null): ?>
                        <li><span><?php echo e(__('Country') . ':'); ?></span></li>
                      <?php endif; ?>
                    </ul>

                    <ul class="list">
                      <?php if($authUser->first_name != null && $authUser->last_name != null): ?>
                        <li><?php echo e($authUser->first_name . ' ' . $authUser->last_name); ?></li>
                      <?php endif; ?>

                      <li><?php echo e($authUser->username); ?></li>

                      <li><?php echo e($authUser->email); ?></li>

                      <?php if($authUser->contact_number != null): ?>
                        <li><?php echo e($authUser->contact_number); ?></li>
                      <?php endif; ?>

                      <?php if($authUser->address != null): ?>
                        <li><?php echo e($authUser->address); ?></li>
                      <?php endif; ?>

                      <?php if($authUser->city != null): ?>
                        <li><?php echo e($authUser->city); ?></li>
                      <?php endif; ?>

                      <?php if($authUser->state != null): ?>
                        <li><?php echo e($authUser->state); ?></li>
                      <?php endif; ?>

                      <?php if($authUser->country != null): ?>
                        <li><?php echo e($authUser->country); ?></li>
                      <?php endif; ?>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End User Dashboard Section -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/user/dashboard.blade.php ENDPATH**/ ?>