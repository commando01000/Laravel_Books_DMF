<div class="header-top">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-8 col-md-8 col-sm-5">
        <div class="header-logo d-flex align-items-center justify-content-center justify-content-sm-start">
          <div class="logo">
            <?php if(!is_null($websiteInfo)): ?>
              <a href="<?php echo e(route('index')); ?>">
                <img data-src="<?php echo e(asset('assets/img/' . $websiteInfo->logo)); ?>" class="lazy" alt="website logo">
              </a>
            <?php endif; ?>
          </div>

          <form class="d-none d-md-inline-block" action="<?php echo e(route('courses')); ?>" method="GET">
            <div class="input-box">
              <i class="fal fa-search"></i>
              <input type="text" name="keyword" placeholder="<?php echo e(__('Search Course Here')); ?>">
            </div>
          </form>
        </div>
      </div>

      <div class="col-lg-4 col-md-4 col-sm-7">
        <div class="header-btns d-flex align-items-center justify-content-center justify-content-sm-end">
          <ul>
            <?php if(auth()->guard('web')->guest()): ?>
              <li><a href="<?php echo e(route('user.login')); ?>"><i class="fal fa-sign-in-alt"></i> <?php echo e(__('Login')); ?></a></li>
              <li><a href="<?php echo e(route('user.signup')); ?>"><i class="fal fa-user-plus"></i> <?php echo e(__('Signup')); ?></a></li>
            <?php endif; ?>

            <?php if(auth()->guard('web')->check()): ?>
              <?php $authUserInfo = Auth::guard('web')->user(); ?>

              <li><a href="<?php echo e(route('user.dashboard')); ?>"><i class="fal fa-user"></i> <?php echo e($authUserInfo->username); ?></a></li>
              <li><a href="<?php echo e(route('user.logout')); ?>"><i class="fal fa-sign-out-alt"></i> <?php echo e(__('Logout')); ?></a></li>
            <?php endif; ?>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
<?php /**PATH D:\company\public_html\resources\views/frontend/partials/header/header-top-v1.blade.php ENDPATH**/ ?>