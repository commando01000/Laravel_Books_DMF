<div class="header-navigation">
  <div class="container-fluid">
    <div class="site-menu d-flex align-items-center justify-content-between">
      <div class="logo">
        <?php if(!is_null($websiteInfo)): ?>
          <a href="<?php echo e(route('index')); ?>">
            <img data-src="<?php echo e(asset('assets/img/' . $websiteInfo->logo)); ?>" class="lazy" alt="website logo">
          </a>
        <?php endif; ?>
      </div>

      <div class="primary-menu">
        <div class="nav-menu">
          <!-- Navbar Close Icon -->
          <div class="navbar-close">
            <div class="cross-wrap"><i class="far fa-times"></i></div>
          </div>

          <!-- Nav Menu -->
          <nav class="main-menu">
            <ul>
              <?php $menuDatas = json_decode($menuInfos); ?>

              <?php $__currentLoopData = $menuDatas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menuData): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php $href = get_href($menuData); ?>

                <?php if(!property_exists($menuData, 'children')): ?>
                  <li class="menu-item">
                    <a href="<?php echo e($href); ?>"><?php echo e($menuData->text); ?></a>
                  </li>
                <?php else: ?>
                  <li class="menu-item menu-item-has-children">
                    <a class="page-scroll" href="<?php echo e($href); ?>"><?php echo e($menuData->text); ?></a>
                    <ul class="sub-menu">
                      <?php $childMenuDatas = $menuData->children; ?>

                      <?php $__currentLoopData = $childMenuDatas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $childMenuData): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php $child_href = get_href($childMenuData); ?>

                        <li>
                          <a href="<?php echo e($child_href); ?>"><?php echo e($childMenuData->text); ?></a>
                        </li>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                  </li>
                <?php endif; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </ul>
          </nav>
        </div>
      </div>

      <div class="navbar-item d-flex align-items-center justify-content-between">
        <div class="menu-btns">
          <ul>
            <?php if(auth()->guard('web')->guest()): ?>
              <li><a href="<?php echo e(route('user.login')); ?>"><i class="fal fa-sign-in-alt"></i> <span><?php echo e(__('Login')); ?></span></a></li>
              <li><a href="<?php echo e(route('user.signup')); ?>"><i class="fal fa-user-plus"></i> <span><?php echo e(__('Signup')); ?></span></a></li>
            <?php endif; ?>

            <?php if(auth()->guard('web')->check()): ?>
              <?php $authUserInfo = Auth::guard('web')->user(); ?>

              <li><a href="<?php echo e(route('user.dashboard')); ?>"><i class="fal fa-user"></i> <span><?php echo e($authUserInfo->username); ?></span></a></li>
              <li><a href="<?php echo e(route('user.logout')); ?>"><i class="fal fa-sign-out-alt"></i> <span><?php echo e(__('Logout')); ?></span></a></li>
            <?php endif; ?>

            <li>
              <div class="navbar-toggler">
                <span></span><span></span><span></span>
              </div>
            </li>
          </ul>
        </div>

        <div class="menu-dropdown">
          <form action="<?php echo e(route('change_language')); ?>" method="GET">
            <select class="wide" name="lang_code" onchange="this.form.submit()">
              <?php $__currentLoopData = $allLanguageInfos; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $languageInfo): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <option value="<?php echo e($languageInfo->code); ?>" <?php echo e($languageInfo->code == $currentLanguageInfo->code ? 'selected' : ''); ?>>
                  <?php echo e($languageInfo->name); ?>

                </option>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </select>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/partials/header/header-nav-v2.blade.php ENDPATH**/ ?>