<?php $__env->startSection('pageHeading'); ?>
    <?php echo e($pageInfo->title); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('metaKeywords'); ?>
    <?php echo e($pageInfo->meta_keywords); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('metaDescription'); ?>
    <?php echo e($pageInfo->meta_description); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('style'); ?>
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/summernote-content.css')); ?>">
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
    <?php if ($__env->exists('frontend.partials.breadcrumb', [
        'breadcrumb' => $bgImg->breadcrumb,
        'title' => $pageInfo->title,
    ])) echo $__env->make('frontend.partials.breadcrumb', [
        'breadcrumb' => $bgImg->breadcrumb,
        'title' => $pageInfo->title,
    ], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <!--====== PAGE CONTENT PART START ======-->
    <section class="custom-page-area pt-100 pb-90">
        <div class="container">
            <div class="row mt-10 gap-4"> 
              
                
                <?php if(0 != 0): ?>
                    <div class="col-lg-12">
                        <h3 class="text-center mt-30"><?php echo e(__('No Books Found') . '!'); ?></h3>
                    </div>
                <?php else: ?>
                    
                    <div class="col-lg-4 col-md-6 col-sm-8">
                        <div class="card shadow-sm h-100 overflow-hidden">
                            <div class="single-books mt-30">
                                <div class="books-thumb">
                                    

                                    
                                </div>

                                <div class="books-content">
                                    
                                    <div class="books-info d-flex justify-content-between">
                                        <div class="item">
                                            
                                        </div>

                                        <div class="price">
                                            
                                        </div>
                                    </div>
                                    <ul class="d-flex justify-content-center">
                                        
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-8">
                      <div class="card shadow-sm h-100 overflow-hidden">
                          <div class="single-books mt-30">
                              <div class="books-thumb">
                                  

                                  
                              </div>

                              <div class="books-content">
                                  
                                  <div class="books-info d-flex justify-content-between">
                                      <div class="item">
                                          
                                      </div>

                                      <div class="price">
                                          
                                      </div>
                                  </div>
                                  <ul class="d-flex justify-content-center">
                                      
                                  </ul>
                              </div>
                          </div>
                      </div>

                  </div>
                    
                <?php endif; ?>
            </div>

            <?php if(!empty(showAd(3))): ?>
                <div class="text-center mt-30">
                    <?php echo showAd(3); ?>

                </div>
            <?php endif; ?>
        </div>
    </section>
    <!--====== PAGE CONTENT PART END ======-->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH G:\xampp\htdocs\anngo-hub.org\public_html\resources\views/frontend/custom-page.blade.php ENDPATH**/ ?>