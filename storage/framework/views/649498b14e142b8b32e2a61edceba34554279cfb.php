<div class="col-lg-3">
  <div class="user-sidebar">
    <ul class="links">
      <li>
        <a href="<?php echo e(route('user.dashboard')); ?>" class="<?php echo e(request()->routeIs('user.dashboard') ? 'active' : ''); ?>">
          <?php echo e(__('Dashboard')); ?>

        </a>
      </li>

      <li>
        <a href="<?php echo e(route('user.my_courses')); ?>" class="<?php echo e(request()->routeIs('user.my_courses') ? 'active' : ''); ?>">
          <?php echo e(__('My Courses')); ?>

        </a>
      </li>

      <li>
        <a href="<?php echo e(route('user.purchase_history')); ?>" target="_blank">
          <?php echo e(__('Purchase History')); ?>

        </a>
      </li>

      <li>
        <a href="<?php echo e(route('user.edit_profile')); ?>" class="<?php echo e(request()->routeIs('user.edit_profile') ? 'active' : ''); ?>">
          <?php echo e(__('Edit Profile')); ?>

        </a>
      </li>

      <li>
        <a href="<?php echo e(route('user.change_password')); ?>" class="<?php echo e(request()->routeIs('user.change_password') ? 'active' : ''); ?>">
          <?php echo e(__('Change Password')); ?>

        </a>
      </li>

      <li>
        <a href="<?php echo e(route('user.logout')); ?>">
          <?php echo e(__('Logout')); ?>

        </a>
      </li>
    </ul>
  </div>
</div>
<?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/user/side-navbar.blade.php ENDPATH**/ ?>