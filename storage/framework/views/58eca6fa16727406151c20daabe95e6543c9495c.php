<!--====== PAGE TITLE PART START ======-->
<div class="page-title bg_cover pt-190 pb-195 lazy" <?php if(!empty($breadcrumb)): ?> data-bg="<?php echo e(asset('assets/img/' . $breadcrumb)); ?>" <?php endif; ?>>
  <div class="container-fluid">
    <div class="row h-100">
      <div class="col-lg-12">
        <div class="page-title-item w-100 h-100">
          <h3 class="title w-100 h-100"><?php echo e(!empty($title) ? $title : ''); ?></h3>
          <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="<?php echo e(route('index')); ?>"><?php echo e(__('Home')); ?></a></li>
              <li class="breadcrumb-item active" aria-current="page"><?php echo e(!empty($title) ? $title : ''); ?></li>
            </ol>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<!--====== PAGE TITLE PART END ======-->
<?php /**PATH G:\xampp\htdocs\anngo-hub.org\public_html\resources\views/frontend/partials/breadcrumb.blade.php ENDPATH**/ ?>