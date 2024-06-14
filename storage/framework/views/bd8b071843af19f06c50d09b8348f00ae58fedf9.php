<div class="modal fade" id="editTextModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><?php echo e(__('Edit Text')); ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <form action="<?php echo e(route('admin.course_management.lesson.update_text')); ?>" method="POST" id="editTextForm">
          
          <?php echo csrf_field(); ?>
          <input type="hidden" id="in_id" name="id">

          <div class="form-group <?php echo e($language->direction == 1 ? 'rtl text-right' : ''); ?>">
            <textarea name="text" class="form-control summernote" placeholder="Enter Text" data-height="300" id="in_text"></textarea>
            <p class="em text-danger mt-2 mb-0" id="editErr_text"></p>
          </div>
        </form>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">
          <?php echo e(__('Close')); ?>

        </button>
        <button type="button" class="btn btn-sm btn-primary" id="textUpdateBtn">
          <?php echo e(__('Update')); ?>

        </button>
      </div>
    </div>
  </div>
</div>
<?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/lesson-content/edit-text.blade.php ENDPATH**/ ?>