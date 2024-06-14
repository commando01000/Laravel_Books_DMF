<div class="js-cookie-consent cookie-consent">
  <div class="container">
    <div class="cookie-container">
      <span class="cookie-consent__message">
        <?php echo nl2br(replaceBaseUrl($cookieAlertInfo->cookie_alert_text, 'summernote')); ?>

      </span>

      <button class="js-cookie-consent-agree cookie-consent__agree">
        <?php echo e($cookieAlertInfo->cookie_alert_btn_text); ?>

      </button>
    </div>
  </div>
</div>
<?php /**PATH D:\company\public_html\resources\views/vendor/cookie-consent/dialogContents.blade.php ENDPATH**/ ?>