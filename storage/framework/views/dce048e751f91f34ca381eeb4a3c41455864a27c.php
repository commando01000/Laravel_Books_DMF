<?php $__env->startSection('pageHeading'); ?>
  <?php echo e(__('Edit Profile')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <?php if ($__env->exists('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => __('Edit Profile')])) echo $__env->make('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => __('Edit Profile')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!-- Start User Edit-Profile Section -->
  <section class="user-dashboard">
    <div class="container">
      <div class="row">
        <?php if ($__env->exists('frontend.user.side-navbar')) echo $__env->make('frontend.user.side-navbar', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

        <div class="col-lg-9">
          <div class="row">
            <div class="col-lg-12">
              <div class="user-profile-details">
                <div class="account-info">
                  <div class="title">
                    <h4><?php echo e(__('Edit Your Profile')); ?></h4>
                  </div>

                  <div class="edit-info-area">
                    <form action="<?php echo e(route('user.update_profile')); ?>" method="POST" enctype="multipart/form-data">
                      <?php echo csrf_field(); ?>
                      <div class="upload-img">
                        <div class="img-box">
                          <img data-src="<?php echo e(is_null($authUser->image) ? asset('assets/img/profile.jpg') : asset('assets/img/users/' . $authUser->image)); ?>" alt="user image" class="user-photo lazy">
                        </div>

                        <div class="file-upload-area">
                          <div class="upload-file">
                            <input type="file" accept=".jpg, .jpeg, .png" name="image" class="upload">
                            <span><?php echo e(__('Upload')); ?></span>
                          </div>
                        </div>
                      </div>
                      <?php $__errorArgs = ['image'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                        <p class="mb-3 text-danger"><?php echo e($message); ?></p>
                      <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>

                      <div class="row">
                        <div class="col-lg-6">
                          <input type="text" class="form_control" placeholder="<?php echo e(__('First Name')); ?>" name="first_name" value="<?php echo e($authUser->first_name); ?>">
                          <?php $__errorArgs = ['first_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="mb-3 text-danger"><?php echo e($message); ?></p>
                          <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        <div class="col-lg-6">
                          <input type="text" class="form_control" placeholder="<?php echo e(__('Last Name')); ?>" name="last_name" value="<?php echo e($authUser->last_name); ?>">
                          <?php $__errorArgs = ['last_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="mb-3 text-danger"><?php echo e($message); ?></p>
                          <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        <div class="col-lg-6">
                          <input type="email" class="form_control" placeholder="<?php echo e(__('Email')); ?>" value="<?php echo e($authUser->email); ?>" readonly>
                        </div>

                        <div class="col-lg-6">
                          <input type="text" class="form_control" placeholder="<?php echo e(__('Contact Number')); ?>" name="contact_number" value="<?php echo e($authUser->contact_number); ?>">
                          <?php $__errorArgs = ['contact_number'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="mb-3 text-danger"><?php echo e($message); ?></p>
                          <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        <div class="col-lg-6">
                          <textarea class="form_control" placeholder="<?php echo e(__('Address')); ?>" name="address"><?php echo e($authUser->address); ?></textarea>
                          <?php $__errorArgs = ['address'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="mb-3 text-danger"><?php echo e($message); ?></p>
                          <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        <div class="col-lg-6">
                          <input type="text" class="form_control" placeholder="<?php echo e(__('City')); ?>" name="city" value="<?php echo e($authUser->city); ?>">
                          <?php $__errorArgs = ['city'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="mb-3 text-danger"><?php echo e($message); ?></p>
                          <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        <div class="col-lg-6">
                          <input type="text" class="form_control" placeholder="<?php echo e(__('State')); ?>" name="state" value="<?php echo e($authUser->state); ?>">
                        </div>

                        <div class="col-lg-6">
                          <input type="text" class="form_control" placeholder="<?php echo e(__('Country')); ?>" name="country" value="<?php echo e($authUser->country); ?>">
                          <?php $__errorArgs = ['country'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                            <p class="mb-3 text-danger"><?php echo e($message); ?></p>
                          <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                        </div>

                        <div class="col-lg-12">
                          <div class="form-button">
                            <button class="btn form-btn"><?php echo e(__('Submit')); ?></button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End User Edit-Profile Section -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/user/edit-profile.blade.php ENDPATH**/ ?>