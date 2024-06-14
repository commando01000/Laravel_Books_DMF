<?php $__env->startSection('pageHeading'); ?>
  <?php if(!empty($pageHeading)): ?>
    <?php echo e($pageHeading->faq_page_title ?? 'F.A.Q'); ?>

  <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('metaKeywords'); ?>
  <?php if(!empty($seoInfo)): ?>
    <?php echo e($seoInfo->meta_keyword_faq); ?>

  <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('metaDescription'); ?>
  <?php if(!empty($seoInfo)): ?>
    <?php echo e($seoInfo->meta_description_faq); ?>

  <?php endif; ?>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <?php if ($__env->exists('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => $pageHeading->faq_page_title ?? 'F.A.Q'])) echo $__env->make('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => $pageHeading->faq_page_title ?? 'F.A.Q'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!--====== FAQ PART START ======-->
  <section class="faq-area pb-120">
    <div class="container">
      <div class="row">
        <div class="col">
          <?php if(count($faqs) == 0): ?>
            <h3 class="text-center"><?php echo e(__('No FAQ Found') . '!'); ?></h3>
          <?php else: ?>
            <div class="faq-accordion">
              <div class="accordion" id="accordionExample">
                <?php $__currentLoopData = $faqs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $faq): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <div class="card">
                    <div class="card-header" id="<?php echo e('heading-' . $faq->id); ?>">
                      <a class="<?php echo e($loop->first ? '' : 'collapsed'); ?>" href="" data-toggle="collapse" data-target="<?php echo e('#collapse-' . $faq->id); ?>" aria-expanded="<?php echo e($loop->first ? 'true' : 'false'); ?>" aria-controls="<?php echo e('collapse-' . $faq->id); ?>">
                        <?php echo e($faq->question); ?>

                      </a>
                    </div>

                    <div id="<?php echo e('collapse-' . $faq->id); ?>" class="collapse <?php echo e($loop->first ? 'show' : ''); ?>" aria-labelledby="<?php echo e('heading-' . $faq->id); ?>" data-parent="#accordionExample">
                      <div class="card-body">
                        <p><?php echo e($faq->answer); ?></p>
                      </div>
                    </div>
                  </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </div>
            </div>
          <?php endif; ?>
        </div>
      </div>

      <?php if(!empty(showAd(3))): ?>
        <div class="text-center mt-30">
          <?php echo showAd(3); ?>

        </div>
      <?php endif; ?>
    </div>
  </section>
  <!--====== FAQ PART END ======-->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/faqs.blade.php ENDPATH**/ ?>