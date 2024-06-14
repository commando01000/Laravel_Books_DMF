<?php $__env->startSection('pageHeading'); ?>
  <?php if(!empty($pageHeading)): ?>
    <?php echo e($pageHeading->instructors_page_title ?? 'Instructors' ?? 'Instructors'); ?>

  <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('metaKeywords'); ?>
  <?php if(!empty($seoInfo)): ?>
    <?php echo e($seoInfo->meta_keyword_instructors); ?>

  <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('metaDescription'); ?>
  <?php if(!empty($seoInfo)): ?>
    <?php echo e($seoInfo->meta_description_instructors); ?>

  <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('style'); ?>
  <link rel="stylesheet" href="<?php echo e(asset('assets/css/summernote-content.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <?php if ($__env->exists('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => $pageHeading->instructors_page_title ?? 'Instructors'])) echo $__env->make('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => $pageHeading->instructors_page_title ?? 'Instructors'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!--====== INSTRUCTORS PART START ======-->
  <section class="speakers-area pt-90 pb-90">
    <div class="container">
      <div class="row">
        <?php if(count($instructors) == 0): ?>
          <div class="col">
            <h3 class="text-center"><?php echo e(__('No Instructor Found') . '!'); ?></h3>
          </div>
        <?php else: ?>
          <?php $__currentLoopData = $instructors; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $instructor): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-3 col-md-4 col-sm-6">
              <div class="single-speakers mt-30">
                <div class="speakers-thumb">
                  <img data-src="<?php echo e(asset('assets/img/instructors/' . $instructor->image)); ?>" class="lazy" alt="image">
                  <a href="#" data-toggle="modal" data-target="<?php echo e('#staticBackdrop-' . $instructor->id); ?>"><i class="fas fa-plus"></i></a>
                </div>
                <div class="speakers-content text-center">
                  <span><?php echo e($instructor->occupation); ?></span>
                  <h4 class="title"><?php echo e($instructor->name); ?></h4>
                </div>
              </div>
            </div>

            <!-- Modal -->
            <div class="modal fade instructor-modal" id="<?php echo e('staticBackdrop-' . $instructor->id); ?>" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel"><?php echo e(__('Information of') . ' ' . $instructor->name); ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <div class="summernote-content">
                      <?php echo replaceBaseUrl($instructor->description, 'summernote'); ?>

                    </div>

                    <?php $socials = $instructor->socials; ?>

                    <?php if(count($socials) > 0): ?>
                      <h5 class="my-3"><?php echo e(__('Follow Me') . ':'); ?></h5>
                      <div class="btn-group" role="group" aria-label="Social Links">
                        <?php $__currentLoopData = $socials; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $social): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                          <a href="<?php echo e($social->url); ?>" class="btn social-link-btn mr-2" target="_blank"><i class="<?php echo e($social->icon); ?>"></i></a>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </div>
                    <?php endif; ?>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"><?php echo e(__('Close')); ?></button>
                  </div>
                </div>
              </div>
            </div>
          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>
      </div>

      <?php if(!empty(showAd(3))): ?>
        <div class="text-center mt-30">
          <?php echo showAd(3); ?>

        </div>
      <?php endif; ?>
    </div>
  </section>
  <!--====== INSTRUCTORS PART END ======-->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\company\public_html\resources\views/frontend/instructors.blade.php ENDPATH**/ ?>