<div class="modal fade" id="lessonEditModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><?php echo e(__('Edit Lesson')); ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <form id="lessonEditForm" class="modal-form" action="<?php echo e(route('admin.course_management.module.update_lesson')); ?>" method="post">
          
          <?php echo csrf_field(); ?>
          <input type="hidden" id="lesson_id" name="id">

          <div class="form-group">
            <label for=""><?php echo e(__('Title') . '*'); ?></label>
            <input type="text" id="lesson_title" class="form-control" name="title" placeholder="Enter Lesson Title">
            <p id="lessonEdit_error_title" class="mt-1 mb-0 text-danger em"></p>
          </div>

          <div class="form-group">
            <label for=""><?php echo e(__('Status') . '*'); ?></label>
            <select name="status" class="form-control" id="lesson_status">
              <option disabled><?php echo e(__('Select Lesson Status')); ?></option>
              <option value="draft"><?php echo e(__('Draft')); ?></option>
              <option value="published"><?php echo e(__('Published')); ?></option>
            </select>
            <p id="lessonEdit_error_status" class="mt-1 mb-0 text-danger em"></p>
          </div>

          <div class="form-group">
            <label for=""><?php echo e(__('Serial Number') . '*'); ?></label>
            <input type="number" id="lesson_serial_number" class="form-control ltr" name="serial_number" placeholder="Enter Lesson Serial Number">
            <p id="lessonEdit_error_serial_number" class="mt-1 mb-0 text-danger em"></p>
            <p class="text-warning mt-2 mb-0">
              <small><?php echo e(__('The higher the serial number is, the later the lesson will be shown.')); ?></small>
            </p>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">
          <?php echo e(__('Close')); ?>

        </button>
        <button id="lessonUpdateBtn" type="button" class="btn btn-primary btn-sm">
          <?php echo e(__('Update')); ?>

        </button>
      </div>
    </div>
  </div>
</div>
<?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/lesson/edit.blade.php ENDPATH**/ ?>