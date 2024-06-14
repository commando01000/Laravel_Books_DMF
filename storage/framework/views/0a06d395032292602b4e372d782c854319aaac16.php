<?php $__env->startSection('pageHeading'); ?>
  <?php echo e(__('Purchase History')); ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
  <?php if ($__env->exists('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => __('Purchase History')])) echo $__env->make('frontend.partials.breadcrumb', ['breadcrumb' => $bgImg->breadcrumb, 'title' => __('Purchase History')], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <!-- Start Purchase History Section -->
  <section class="user-dashboard">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <div class="row">
            <div class="col-lg-12">
              <div class="account-info">
                <div class="title">
                  <h4><?php echo e(__('Purchase History')); ?></h4>
                </div>

                <div class="main-info">
                  <div class="main-table">
                    <?php if(count($allPurchase) == 0): ?>
                      <h5 class="text-center mt-3"><?php echo e(__('No Information Found') . '!'); ?></h5>
                    <?php else: ?>
                      <div class="table-responsive">
                        <table id="user-dataTable" class="dataTables_wrapper dt-responsive table-striped dt-bootstrap4">
                          <thead>
                            <tr>
                              <th><?php echo e(__('Order ID')); ?></th>
                              <th><?php echo e(__('Date')); ?></th>
                              <th><?php echo e(__('Course')); ?></th>
                              <th><?php echo e(__('Price')); ?></th>
                              <th><?php echo e(__('Paid via')); ?></th>
                              <th><?php echo e(__('Payment Status')); ?></th>
                              <th><?php echo e(__('Invoice')); ?></th>
                            </tr>
                          </thead>
                          <tbody>
                            <?php $__currentLoopData = $allPurchase; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $purchase): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <tr>
                                <td><?php echo e('#' . $purchase->order_id); ?></td>

                                <td><?php echo e(date_format($purchase->created_at, 'M d, Y')); ?></td>

                                <td>
                                  <a target="_blank" href="<?php echo e(route('course_details', ['slug' => $purchase->slug])); ?>">
                                    <?php echo e(strlen($purchase->title) > 30 ? mb_substr($purchase->title, 0, 30, 'UTF-8') . '...' : $purchase->title); ?>

                                  </a>
                                </td>

                                <td>
                                  <?php if(!is_null($purchase->course_price)): ?>
                                    <?php echo e($purchase->currency_symbol_position == 'left' ? $purchase->currency_symbol : ''); ?><?php echo e($purchase->course_price); ?><?php echo e($purchase->currency_symbol_position == 'right' ? $purchase->currency_symbol : ''); ?>

                                  <?php else: ?>
                                    <span class="<?php echo e($currentLanguageInfo->direction == 1 ? 'mr-2' : 'ml-1'); ?>"><?php echo e(__('Free')); ?></span>
                                  <?php endif; ?>
                                </td>

                                <td class="<?php echo e($currentLanguageInfo->direction == 1 ? 'pr-4' : 'pl-3'); ?>">
                                  <?php if(is_null($purchase->payment_method)): ?>
                                    <?php echo e(__('None')); ?>

                                  <?php else: ?>
                                    <?php echo e($purchase->payment_method); ?>

                                  <?php endif; ?>
                                </td>

                                <td>
                                  <?php if($purchase->payment_status == 'completed'): ?>
                                    <span class="completed <?php echo e($currentLanguageInfo->direction == 1 ? 'mr-2' : 'ml-2'); ?>"><?php echo e(__('Completed')); ?></span>
                                  <?php elseif($purchase->payment_status == 'pending'): ?>
                                    <span class="pending <?php echo e($currentLanguageInfo->direction == 1 ? 'mr-2' : 'ml-2'); ?>"><?php echo e(__('Pending')); ?></span>
                                  <?php else: ?>
                                    <span class="rejected <?php echo e($currentLanguageInfo->direction == 1 ? 'mr-2' : 'ml-2'); ?>"><?php echo e(__('Rejected')); ?></span>
                                  <?php endif; ?>
                                </td>

                                <td>
                                  <?php if(is_null($purchase->invoice)): ?>
                                    <?php echo e(__('Invoice Unavailable')); ?>

                                  <?php else: ?>
                                    <a href="<?php echo e(asset('assets/file/invoices/' . $purchase->invoice)); ?>" class="btn" target="_blank">
                                      <?php echo e(__('Show')); ?>

                                    </a>
                                  <?php endif; ?>
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
  <!-- End Purchase History Section -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/user/purchase-history.blade.php ENDPATH**/ ?>