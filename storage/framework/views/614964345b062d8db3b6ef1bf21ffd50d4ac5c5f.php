<div class="modal fade" id="editCodeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><?php echo e(__('Edit Code')); ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <form action="<?php echo e(route('admin.course_management.lesson.update_code')); ?>" method="POST" id="editCodeForm">
          <?php echo csrf_field(); ?>
          <input type="hidden" id="in_content_id" name="id">

          <div class="form-group">
            <textarea name="code" class="form-control" placeholder="Enter Code" rows="15" id="in_code"></textarea>
            <p class="em text-danger mt-2 mb-0" id="editErr_code"></p>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">
          <?php echo e(__('Close')); ?>

        </button>
        <button type="button" class="btn btn-sm btn-primary" id="codeUpdateBtn">
          <?php echo e(__('Update')); ?>

        </button>
      </div>
    </div>
  </div>
</div>
<?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/lesson-content/edit-code.blade.php ENDPATH**/ ?>