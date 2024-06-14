<!DOCTYPE html>
<html lang="en">
  <head>
    
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    
    <title>Certificate <?php echo e('| ' . config('app.name')); ?></title>

    
    <link rel="shortcut icon" type="image/png" href="<?php echo e(asset('assets/img/' . $websiteInfo->favicon)); ?>">

    
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/all.min.css')); ?>">

    
    <link rel="stylesheet" href="<?php echo e(asset('assets/css/bootstrap.min.css')); ?>">

    <link rel="stylesheet" href="<?php echo e(asset('assets/css/certificate.css')); ?>">
  </head>

  <body>
    <div class="container" id="certificate-container">
      <div class="certificate-main" id="course-certificate">
        <div class="certificate-wrapper text-center" style="background-image: url(<?php echo e(asset('assets/img/banner.jpg')); ?>);">
          <div class="certificate-top-content text-center">
            <img src="<?php echo e(asset('assets/img/design-01.png')); ?>" class="img-1" alt="design">
            <h1><?php echo e($certificateTitle); ?></h1>
            <img src="<?php echo e(asset('assets/img/design-02.png')); ?>" class="img-2" alt="design">
          </div>

          <div class="main-content">
            <p><?php echo nl2br($certificateText); ?></p>
          </div>

          <div class="user-box">
            <h4><?php echo e($instructorInfo->name); ?></h4>
            <h5><?php echo e($instructorInfo->name . ', ' . $instructorInfo->occupation); ?></h5>
          </div>

          <div class="bottom-shape">
            <img src="<?php echo e(asset('assets/img/design-02.png')); ?>" alt="design">
          </div>
        </div>
      </div>

      <div class="text-center">
        <button class="btn btn-primary" id="print-btn">
          <i class="far fa-print"></i> <?php echo e(__('Print')); ?>

        </button>
      </div>
    </div>

    <script type="text/javascript" src="<?php echo e(asset('assets/js/jquery-1.12.4.min.js')); ?>"></script>

    <script type="text/javascript" src="<?php echo e(asset('assets/js/printThis.min.js')); ?>"></script>

    <script>
      $(document).ready(function () {
        'use strict';

        $('#print-btn').on('click', function () {
          $('#course-certificate').printThis({
            importCSS: true,
            importStyle: true,
            loadCSS: "<?php echo e(asset('assets/css/certificate.css')); ?>"
          });
        });
      });
    </script>
  </body>
</html>
<?php /**PATH /var/www/anngo-hub.org/public_html/resources/views/frontend/user/course-certificate.blade.php ENDPATH**/ ?>