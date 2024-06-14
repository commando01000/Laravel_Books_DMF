<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><?php echo e(__('Edit Testimonial')); ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <form id="ajaxEditForm" class="modal-form" action="<?php echo e(route('admin.home_page.update_testimonial')); ?>" method="post" enctype="multipart/form-data">
          
          <?php echo csrf_field(); ?>
          
          <input type="hidden" id="in_id" name="id">

          <div class="form-group">
            <label for=""><?php echo e(__('Image') . '*'); ?></label>
            <br>
            <div class="thumb-preview">
              <img src="" alt="client" class="in_image uploaded-img">
            </div>

            <div class="mt-3">
              <div role="button" class="btn btn-primary btn-sm upload-btn">
                <?php echo e(__('Choose Image')); ?>

                <input type="file" class="img-input" name="image">
              </div>
            </div>
            <p class="mt-1 mb-0 text-danger" id="editErr_image"></p>
          </div>

          <div class="form-group">
            <label for=""><?php echo e(__('Name') . '*'); ?></label>
            <input type="text" class="form-control" name="name" placeholder="Enter Client Name" id="in_name">
            <p id="editErr_name" class="mt-1 mb-0 text-danger em"></p>
          </div>

          <div class="form-group">
            <label for=""><?php echo e(__('Occupation') . '*'); ?></label>
            <input type="text" class="form-control" name="occupation" placeholder="Enter Client Occupation" id="in_occupation">
            <p id="editErr_occupation" class="mt-1 mb-0 text-danger em"></p>
          </div>

          <div class="form-group">
            <label for=""><?php echo e(__('Comment') . '*'); ?></label>
            <textarea class="form-control" name="comment" placeholder="Enter Client Comment" rows="5" id="in_comment"></textarea>
            <p id="editErr_comment" class="mt-1 mb-0 text-danger em"></p>
          </div>

          <div class="form-group">
            <label for=""><?php echo e(__('Serial Number') . '*'); ?></label>
            <input type="number" class="form-control ltr" name="serial_number" placeholder="Enter Serial Number" id="in_serial_number">
            <p id="editErr_serial_number" class="mt-1 mb-0 text-danger em"></p>
            <p class="text-warning mt-2 mb-0">
              <small><?php echo e(__('The higher the serial number is, the later the testimonial will be shown.')); ?></small>
            </p>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">
          <?php echo e(__('Close')); ?>

        </button>
        <button id="updateBtn" type="button" class="btn btn-primary btn-sm">
          <?php echo e(__('Update')); ?>

        </button>
      </div>
    </div>
  </div>
</div>
<?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/home-page/testimonial-section/edit.blade.php ENDPATH**/ ?>