<?php $__env->startSection('content'); ?>
  <div class="page-header">
    <h4 class="page-title"><?php echo e(__('Edit Quiz')); ?></h4>
    <ul class="breadcrumbs">
      <li class="nav-home">
        <a href="<?php echo e(route('admin.dashboard')); ?>">
          <i class="flaticon-home"></i>
        </a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(__('Course Management')); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(__('Course')); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(__('Module')); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(__('Lesson')); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(strlen($lesson->title) > 20 ? mb_substr($lesson->title, 0, 20, 'UTF-8') . '...' : $lesson->title); ?></a>
      </li>
      <li class="separator">
        <i class="flaticon-right-arrow"></i>
      </li>
      <li class="nav-item">
        <a href="#"><?php echo e(__('Edit Quiz')); ?></a>
      </li>
    </ul>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <div class="card-title d-inline-block"><?php echo e(__('Edit Quiz')); ?></div>
        </div>

        <div class="card-body">
          <div class="row">
            <div class="col-lg-8 offset-lg-2">
              <form id="ajaxEditForm" action="<?php echo e(route('admin.course_management.lesson.update_quiz', ['id' => $quiz->id])); ?>" method="POST">
                
                <?php echo csrf_field(); ?>
                <div class="row">
                  <div class="col">
                    <div class="form-group">
                      <label><?php echo e(__('Question') . '*'); ?></label>
                      <input class="form-control" type="text" name="question" placeholder="Enter Question" value="<?php echo e($quiz->question); ?>">
                      <p class="mt-1 mb-0 text-danger em" id="editErr_question"></p>
                    </div>
                  </div>
                </div>

                <div id="app">
                  <div class="row">
                    <div class="col">
                      <div class="form-group">
                        <label><?php echo e(__('Answer') . '*'); ?></label><br>
                        <button class="btn btn-sm btn-primary" type="button" v-on:click="addAns()"><?php echo e(__('Add Answer')); ?></button>
                        <p class="mt-1 mb-0 text-danger em" id="editErr_answer"></p>
                      </div>
                    </div>
                  </div>

                  <div class="row" v-for="(answer, index) in answers" v-bind:key="answer.uniqId">
                    <div class="col-lg-2">
                      <div class="form-group">
                        <label for=""><?php echo e(__('Right Answer')); ?></label><br>
                        <input type="checkbox" name="right_answers[]" v-bind:value="index" v-model="answer.rightAnswer">
                      </div>
                    </div>

                    <div class="col-lg-8">
                      <div class="form-group">
                        <label for=""><?php echo e(__('Option')); ?></label>
                        <input type="text" class="form-control" name="options[]" placeholder="Enter Option" v-model="answer.option">
                      </div>
                    </div>

                    <div class="col-lg-2">
                      <button class="btn btn-danger mt-4 ml-2" v-on:click="removeAns(index)"><i class="fas fa-times"></i></button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <div class="card-footer">
          <div class="row">
            <div class="col-12 text-center">
              <button type="submit" class="btn btn-success" id="updateBtn">
                <?php echo e(__('Update')); ?>

              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
  <script src="<?php echo e(asset('assets/js/vue-js.min.js')); ?>"></script>
  <script src="<?php echo e(asset('assets/js/axios-0.21.0.min.js')); ?>"></script>

  <script>
    "use strict";
    new Vue({
      el: '#app',
      data: {
        answers: []
      },
      created() {
        axios
          .get("<?php echo e(route('admin.course_management.lesson.get_ans', ['id' => $quiz->id])); ?>")
          .then(response => {
            const ansArr = response.data.answers;

            for (let i = 0; i < ansArr.length; i++) { 
              this.answers.push(ansArr[i]); 
            }
          });
      },
      methods: {
        addAns() {
          // creating & pushing some random value into the 'answers' array to increase it's range
          let firstValue = Math.floor(Math.random() * 11);
          let secondValue = Math.floor(Math.random() * 1000000);
          let finalValue = firstValue + secondValue;

          this.answers.push({ 'uniqId': finalValue });
        },
        removeAns(index) {
          this.answers.splice(index, 1);
        }
      }
    });
  </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/backend/curriculum/lesson-quiz/edit.blade.php ENDPATH**/ ?>