<div class="modal fade" id="viewLessonModal-<?php echo e($module->id); ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">
          <?php echo e(__('Lessons of') . ' ' . $module->title . ' (' . $language->name . ' ' . __('Language') . ')'); ?>

        </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <?php $lessons = $module->lesson()->orderBy('serial_number', 'ASC')->get(); ?>

      <div class="modal-body">
        <?php if(count($lessons) == 0): ?>
          <h3 class="text-center"><?php echo e(__('No Lesson Found') . '!'); ?></h3>
        <?php else: ?>
          

          <table class="table table-striped">
            <tr>
              <th><?php echo e(__('Title')); ?></th>
              <th><?php echo e(__('Status')); ?></th>
              <td><?php echo e(__('Serial Number')); ?></td>
              <td><?php echo e(__('Actions')); ?></td>
            </tr>
            <tbody>
              <?php $__currentLoopData = $lessons; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lesson): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                  <td width="20%"><?php echo e($lesson->title); ?></td>
                  <td>
                    <?php if($lesson->status == 'draft'): ?>
                      <span class="badge badge-warning"><?php echo e(ucfirst($lesson->status)); ?></span>
                    <?php else: ?>
                      <span class="badge badge-primary"><?php echo e(ucfirst($lesson->status)); ?></span>
                    <?php endif; ?>
                  </td>
                  <td>
                    <?php echo e($lesson->serial_number); ?>

                  </td>
                  <td>
                    <a href="#" class="btn btn-sm btn-secondary mr-1 lessonEditBtn" data-id="<?php echo e($lesson->id); ?>" data-title="<?php echo e($lesson->title); ?>" data-status="<?php echo e($lesson->status); ?>" data-serial_number="<?php echo e($lesson->serial_number); ?>" data-module_id="<?php echo e($lesson->module_id); ?>">
                      <span class="btn-label">
                        <i class="fas fa-edit"></i>
                      </span>
                      <?php echo e(__('Edit')); ?>

                    </a>
  
                    <a href="<?php echo e(route('admin.course_management.lesson.contents', ['id' => $lesson->id, 'course' => request()->route('id'), 'language' => $language->code])); ?>" class="btn btn-sm btn-info mr-1">
                      <span class="btn-label">
                        <i class="fas fa-info-circle"></i>
                      </span>
                      <?php echo e(__('Contents')); ?>

                    </a>
  
                    <form class="lessonDeleteForm d-inline-block" action="<?php echo e(route('admin.course_management.module.delete_lesson', ['id' => $lesson->id])); ?>" method="post">
                      
                      <?php echo csrf_field(); ?>
                      <button type="submit" class="btn btn-sm btn-danger lessonDeleteBtn">
                        <span class="btn-label">
                          <i class="fas fa-trash"></i>
                        </span>
                        <?php echo e(__('Delete')); ?>

                      </button>
                    </form>
                  </td>
                </tr>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </tbody>
          </table>
        <?php endif; ?>
      </div>
    </div>
  </div>
</div><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/lesson/index.blade.php ENDPATH**/ ?>