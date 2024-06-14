<div class="modal fade" id="addFileModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"><?php echo e(__('Add File')); ?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <form id="file-dropzone" enctype="multipart/form-data" class="dropzone mt-2 mb-0">
          <?php echo csrf_field(); ?>
          <div class="fallback"></div>
        </form>
        <p class="em text-danger mt-3 mb-0" id="err_file"></p>

        <form action="<?php echo e(route('admin.course_management.lesson.store_file', ['id' => $lesson->id])); ?>" class="d-none" method="POST" id="fileForm">
          <?php echo csrf_field(); ?>
          <div id="file-original-name"></div>
          <div id="file-unique-name"></div>
        </form>
        <p class="text-warning mb-0">Only .txt, .doc, .docx, .pdf & .zip files are allowed</p>
        <p class="em text-danger mt-3 mb-0" id="err_file_content"></p>
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">
          <?php echo e(__('Close')); ?>

        </button>
        <button type="button" class="btn btn-sm btn-primary" id="fileSubmitBtn">
          <?php echo e(__('Save')); ?>

        </button>
      </div>
    </div>
  </div>
</div>
<?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/lesson-content/file.blade.php ENDPATH**/ ?>