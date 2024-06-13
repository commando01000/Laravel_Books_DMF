<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| User Interface Routes
|--------------------------------------------------------------------------
*/
Route::post('/push-notification/store-endpoint', 'FrontEnd\PushNotificationController@store');

Route::get('/change-language', 'Controller@changeLanguage')->name('change_language');

Route::post('/store-subscriber', 'Controller@storeSubscriber')->name('store_subscriber');

Route::middleware('change.lang')->group(function () {
  Route::get('/', 'FrontEnd\HomeController@index')->name('index');

  Route::get('/courses', 'FrontEnd\Curriculum\CourseController@courses')->name('courses');

  Route::get('/course/{slug}', 'FrontEnd\Curriculum\CourseController@details')->name('course_details');
});

Route::post('/course-enrolment/apply-coupon', 'FrontEnd\Curriculum\CourseController@applyCoupon');

Route::post('/course-enrolment/{id}', 'FrontEnd\Curriculum\EnrolmentController@enrol')->name('course-enrolment');

Route::get('/course-enrolment/paypal/notify', 'FrontEnd\PaymentGateway\PayPalController@notify')->name('course_enrolment.paypal.notify');

Route::get('/course-enrolment/instamojo/notify', 'FrontEnd\PaymentGateway\InstamojoController@notify')->name('course_enrolment.instamojo.notify');

Route::get('/course-enrolment/paystack/notify', 'FrontEnd\PaymentGateway\PaystackController@notify')->name('course_enrolment.paystack.notify');

Route::get('/course-enrolment/flutterwave/notify', 'FrontEnd\PaymentGateway\FlutterwaveController@notify')->name('course_enrolment.flutterwave.notify');

Route::post('/course-enrolment/razorpay/notify', 'FrontEnd\PaymentGateway\RazorpayController@notify')->name('course_enrolment.razorpay.notify');

Route::get('/course-enrolment/mercadopago/notify', 'FrontEnd\PaymentGateway\MercadoPagoController@notify')->name('course_enrolment.mercadopago.notify');

Route::get('/course-enrolment/mollie/notify', 'FrontEnd\PaymentGateway\MollieController@notify')->name('course_enrolment.mollie.notify');

Route::post('/course-enrolment/paytm/notify', 'FrontEnd\PaymentGateway\PaytmController@notify')->name('course_enrolment.paytm.notify');

Route::middleware('change.lang')->group(function () {
  Route::get('/course-enrolment/{id}/complete/{via?}', 'FrontEnd\Curriculum\EnrolmentController@complete')->name('course_enrolment.complete');

  Route::get('/course-enrolment/{id}/cancel', 'FrontEnd\Curriculum\EnrolmentController@cancel')->name('course_enrolment.cancel');
});

Route::post('/course/{id}/store-feedback', 'FrontEnd\Curriculum\CourseController@storeFeedback')->name('course.store_feedback');

Route::middleware('change.lang')->group(function () {
  Route::get('/instructors', 'FrontEnd\InstructorController@instructors')->name('instructors');

  Route::get('/blog', 'FrontEnd\BlogController@blogs')->name('blogs');

  Route::get('/blog/{slug}', 'FrontEnd\BlogController@details')->name('blog_details');

  Route::get('/faq', 'FrontEnd\FaqController@faqs')->name('faqs');

  Route::get('/contact', 'FrontEnd\ContactController@contact')->name('contact');
});

Route::post('/contact/send-mail', 'FrontEnd\ContactController@sendMail')->name('contact.send_mail');

Route::post('/advertisement/{id}/total-view', 'Controller@countAdView');

Route::prefix('/user')->middleware(['guest:web', 'change.lang'])->group(function () {
  // user redirect to login page route
  Route::get('/login', 'FrontEnd\UserController@login')->name('user.login');

  // user login submit route
  Route::post('/login-submit', 'FrontEnd\UserController@loginSubmit')->name('user.login_submit')->withoutMiddleware('change.lang');

  // user forget password route
  Route::get('/forget-password', 'FrontEnd\UserController@forgetPassword')->name('user.forget_password');

  // send mail to user for forget password route
  Route::post('/send-forget-password-mail', 'FrontEnd\UserController@sendMail')->name('user.send_forget_password_mail')->withoutMiddleware('change.lang');

  // reset password route
  Route::get('/reset-password', 'FrontEnd\UserController@resetPassword');

  // user reset password submit route
  Route::post('/reset-password-submit', 'FrontEnd\UserController@resetPasswordSubmit')->name('user.reset_password_submit')->withoutMiddleware('change.lang');

  // user redirect to signup page route
  Route::get('/signup', 'FrontEnd\UserController@signup')->name('user.signup');

  // user signup submit route
  Route::post('/signup-submit', 'FrontEnd\UserController@signupSubmit')->name('user.signup_submit')->withoutMiddleware('change.lang');

  // signup verify route
  Route::get('/signup-verify/{token}', 'FrontEnd\UserController@signupVerify')->withoutMiddleware('change.lang');
});

Route::prefix('/user')->middleware(['auth:web', 'account.status', 'change.lang'])->group(function () {
  // user redirect to dashboard route
  Route::get('/dashboard', 'FrontEnd\UserController@redirectToDashboard')->name('user.dashboard');

  // all enrolment courses route
  Route::get('/my-courses', 'FrontEnd\UserController@myCourses')->name('user.my_courses');

  // course curriculum route
  Route::get('/my-course/{id}/curriculum', 'FrontEnd\UserController@curriculum')->name('user.my_course.curriculum');

  // download lesson file route
  Route::post('/my-course/curriculum/{id}/download-file', 'FrontEnd\UserController@downloadFile')->name('user.my_course.curriculum.download_file')->withoutMiddleware('change.lang');

  // check quiz's answer route
  Route::get('/my-course/curriculum/check-answer', 'FrontEnd\UserController@checkAns')->name('user.my_course.curriculum.check_ans')->withoutMiddleware('change.lang');

  // store quiz's score route
  Route::post('/my-course/curriculum/store-quiz-score', 'FrontEnd\UserController@storeQuizScore')->name('user.my_course.curriculum.store_quiz_score')->withoutMiddleware('change.lang');

  // lesson-content completion route
  Route::post('/my-course/curriculum/content-completion', 'FrontEnd\UserController@contentCompletion')->name('user.my_course.curriculum.content_completion')->withoutMiddleware('change.lang');

  // get course certificate route
  Route::get('/my-course/{id}/get-certificate', 'FrontEnd\UserController@getCertificate')->name('user.my_course.get_certificate')->middleware('certificate.status');

  // purchase history route
  Route::get('/purchase-history', 'FrontEnd\UserController@purchaseHistory')->name('user.purchase_history');

  // edit profile route
  Route::get('/edit-profile', 'FrontEnd\UserController@editProfile')->name('user.edit_profile');

  // update profile route
  Route::post('/update-profile', 'FrontEnd\UserController@updateProfile')->name('user.update_profile')->withoutMiddleware('change.lang');

  // change password route
  Route::get('/change-password', 'FrontEnd\UserController@changePassword')->name('user.change_password');

  // update password route
  Route::post('/update-password', 'FrontEnd\UserController@updatePassword')->name('user.update_password')->withoutMiddleware('change.lang');

  // user logout attempt route
  Route::get('/logout', 'FrontEnd\UserController@logoutSubmit')->name('user.logout')->withoutMiddleware('change.lang');
});

// service unavailable route
Route::get('/service-unavailable', 'Controller@serviceUnavailable')->name('service_unavailable')->middleware('exists.down');

/*
|--------------------------------------------------------------------------
| Admin Panel Routes
|--------------------------------------------------------------------------
*/
Route::prefix('/admin')->middleware('guest:admin')->group(function () {
  // admin redirect to login page route
  Route::get('/', 'BackEnd\AdminController@login')->name('admin.login');

  // admin login attempt route
  Route::post('/auth', 'BackEnd\AdminController@authentication')->name('admin.auth');

  // admin forget password route
  Route::get('/forget-password', 'BackEnd\AdminController@forgetPassword')->name('admin.forget_password');

  // send mail to admin for forget password route
  Route::post('/mail-for-forget-password', 'BackEnd\AdminController@sendMail')->name('admin.mail_for_forget_password');
});

Route::prefix('/admin')->middleware('auth:admin')->group(function () {
  // admin redirect to dashboard route
  Route::get('/dashboard', 'BackEnd\AdminController@redirectToDashboard')->name('admin.dashboard');

  // change admin-panel theme (dark/light) route
  Route::post('/change-theme', 'BackEnd\AdminController@changeTheme')->name('admin.change_theme');

  // admin profile settings route start
  Route::get('/edit-profile', 'BackEnd\AdminController@editProfile')->name('admin.edit_profile');

  Route::post('/update-profile', 'BackEnd\AdminController@updateProfile')->name('admin.update_profile');

  Route::get('/change-password', 'BackEnd\AdminController@changePassword')->name('admin.change_password');

  Route::post('/update-password', 'BackEnd\AdminController@updatePassword')->name('admin.update_password');
  // admin profile settings route end

  // admin logout attempt route
  Route::get('/logout', 'BackEnd\AdminController@logout')->name('admin.logout');


  // admin management route start
  Route::prefix('/admin-management')->middleware('permission:Admin Management')->group(function () {
    Route::get('/role-permissions', 'BackEnd\Administrator\RolePermissionController@index')->name('admin.admin_management.role_permissions');

    Route::post('/store-role', 'BackEnd\Administrator\RolePermissionController@store')->name('admin.admin_management.store_role');

    Route::get('/role/{id}/permissions', 'BackEnd\Administrator\RolePermissionController@permissions')->name('admin.admin_management.role.permissions');

    Route::post('/role/{id}/update-permissions', 'BackEnd\Administrator\RolePermissionController@updatePermissions')->name('admin.admin_management.role.update_permissions');

    Route::post('/update-role', 'BackEnd\Administrator\RolePermissionController@update')->name('admin.admin_management.update_role');

    Route::post('/delete-role/{id}', 'BackEnd\Administrator\RolePermissionController@destroy')->name('admin.admin_management.delete_role');

    Route::get('/registered-admins', 'BackEnd\Administrator\SiteAdminController@index')->name('admin.admin_management.registered_admins');

    Route::post('/store-admin', 'BackEnd\Administrator\SiteAdminController@store')->name('admin.admin_management.store_admin');

    Route::post('/admin/{id}/update-status', 'BackEnd\Administrator\SiteAdminController@updateStatus')->name('admin.admin_management.admin.update_status');

    Route::post('/update-admin', 'BackEnd\Administrator\SiteAdminController@update')->name('admin.admin_management.update_admin');

    Route::post('/delete-admin/{id}', 'BackEnd\Administrator\SiteAdminController@destroy')->name('admin.admin_management.delete_admin');
  });
  // admin management route end


  // language management route start
  Route::prefix('/language-management')->middleware('permission:Language Management')->group(function () {
    Route::get('', 'BackEnd\LanguageController@index')->name('admin.language_management');

    Route::post('/store-language', 'BackEnd\LanguageController@store')->name('admin.language_management.store_language');

    Route::post('/{id}/make-default-language', 'BackEnd\LanguageController@makeDefault')->name('admin.language_management.make_default_language');

    Route::post('/update-language', 'BackEnd\LanguageController@update')->name('admin.language_management.update_language');

    Route::get('/{id}/edit-keyword', 'BackEnd\LanguageController@editKeyword')->name('admin.language_management.edit_keyword');

    Route::post('/{id}/update-keyword', 'BackEnd\LanguageController@updateKeyword')->name('admin.language_management.update_keyword');

    Route::post('/{id}/delete-language', 'BackEnd\LanguageController@destroy')->name('admin.language_management.delete_language');

    Route::get('/{id}/check-rtl', 'BackEnd\LanguageController@checkRTL');
  });
  // language management route end


  Route::prefix('/basic-settings')->middleware('permission:Basic Settings')->group(function () {
    // basic settings favicon route
    Route::get('/favicon', 'BackEnd\BasicSettings\BasicController@favicon')->name('admin.basic_settings.favicon');

    Route::post('/update-favicon', 'BackEnd\BasicSettings\BasicController@updateFavicon')->name('admin.basic_settings.update_favicon');

    // basic settings logo route
    Route::get('/logo', 'BackEnd\BasicSettings\BasicController@logo')->name('admin.basic_settings.logo');

    Route::post('/update-logo', 'BackEnd\BasicSettings\BasicController@updateLogo')->name('admin.basic_settings.update_logo');

    // basic settings information route
    Route::get('/information', 'BackEnd\BasicSettings\BasicController@information')->name('admin.basic_settings.information');

    Route::post('/update-info', 'BackEnd\BasicSettings\BasicController@updateInfo')->name('admin.basic_settings.update_info');

    // basic settings (theme & home) route
    Route::get('/theme-and-home', 'BackEnd\BasicSettings\BasicController@themeAndHome')->name('admin.basic_settings.theme_and_home');

    Route::post('/update-theme-and-home', 'BackEnd\BasicSettings\BasicController@updateThemeAndHome')->name('admin.basic_settings.update_theme_and_home');

    // basic settings currency route
    Route::get('/currency', 'BackEnd\BasicSettings\BasicController@currency')->name('admin.basic_settings.currency');

    Route::post('/update-currency', 'BackEnd\BasicSettings\BasicController@updateCurrency')->name('admin.basic_settings.update_currency');

    // basic settings appearance route
    Route::get('/appearance', 'BackEnd\BasicSettings\BasicController@appearance')->name('admin.basic_settings.appearance');

    Route::post('/update-appearance', 'BackEnd\BasicSettings\BasicController@updateAppearance')->name('admin.basic_settings.update_appearance');

    // basic settings mail route start
    Route::get('/mail-from-admin', 'BackEnd\BasicSettings\BasicController@mailFromAdmin')->name('admin.basic_settings.mail_from_admin');

    Route::post('/update-mail-from-admin', 'BackEnd\BasicSettings\BasicController@updateMailFromAdmin')->name('admin.basic_settings.update_mail_from_admin');

    Route::get('/mail-to-admin', 'BackEnd\BasicSettings\BasicController@mailToAdmin')->name('admin.basic_settings.mail_to_admin');

    Route::post('/update-mail-to-admin', 'BackEnd\BasicSettings\BasicController@updateMailToAdmin')->name('admin.basic_settings.update_mail_to_admin');

    Route::get('/mail-templates', 'BackEnd\BasicSettings\MailTemplateController@index')->name('admin.basic_settings.mail_templates');

    Route::get('/edit-mail-template/{id}', 'BackEnd\BasicSettings\MailTemplateController@edit')->name('admin.basic_settings.edit_mail_template');

    Route::post('/update-mail-template/{id}', 'BackEnd\BasicSettings\MailTemplateController@update')->name('admin.basic_settings.update_mail_template');
    // basic settings mail route end

    // basic settings breadcrumb route
    Route::get('/breadcrumb', 'BackEnd\BasicSettings\BasicController@breadcrumb')->name('admin.basic_settings.breadcrumb');

    Route::post('/update-breadcrumb', 'BackEnd\BasicSettings\BasicController@updateBreadcrumb')->name('admin.basic_settings.update_breadcrumb');

    // basic settings page-headings route
    Route::get('/page-headings', 'BackEnd\BasicSettings\PageHeadingController@pageHeadings')->name('admin.basic_settings.page_headings');

    Route::post('/update-page-headings', 'BackEnd\BasicSettings\PageHeadingController@updatePageHeadings')->name('admin.basic_settings.update_page_headings');

    // basic settings plugins route start
    Route::get('/plugins', 'BackEnd\BasicSettings\BasicController@plugins')->name('admin.basic_settings.plugins');

    Route::post('/update-recaptcha', 'BackEnd\BasicSettings\BasicController@updateRecaptcha')->name('admin.basic_settings.update_recaptcha');

    Route::post('/update-disqus', 'BackEnd\BasicSettings\BasicController@updateDisqus')->name('admin.basic_settings.update_disqus');

    Route::post('/update-whatsapp', 'BackEnd\BasicSettings\BasicController@updateWhatsApp')->name('admin.basic_settings.update_whatsapp');
    // basic settings plugins route end

    // basic settings seo route
    Route::get('/seo', 'BackEnd\BasicSettings\SEOController@index')->name('admin.basic_settings.seo');

    Route::post('/update-seo', 'BackEnd\BasicSettings\SEOController@update')->name('admin.basic_settings.update_seo');

    // basic settings maintenance-mode route
    Route::get('/maintenance-mode', 'BackEnd\BasicSettings\BasicController@maintenance')->name('admin.basic_settings.maintenance_mode');

    Route::post('/update-maintenance-mode', 'BackEnd\BasicSettings\BasicController@updateMaintenance')->name('admin.basic_settings.update_maintenance_mode');

    // basic settings cookie-alert route
    Route::get('/cookie-alert', 'BackEnd\BasicSettings\CookieAlertController@cookieAlert')->name('admin.basic_settings.cookie_alert');

    Route::post('/update-cookie-alert', 'BackEnd\BasicSettings\CookieAlertController@updateCookieAlert')->name('admin.basic_settings.update_cookie_alert');

    // basic settings footer-logo route
    Route::get('/footer-logo', 'BackEnd\BasicSettings\BasicController@footerLogo')->name('admin.basic_settings.footer_logo');

    Route::post('/update-footer-logo', 'BackEnd\BasicSettings\BasicController@updateFooterLogo')->name('admin.basic_settings.update_footer_logo');

    // basic-settings social-media route
    Route::get('/social-medias', 'BackEnd\BasicSettings\SocialMediaController@index')->name('admin.basic_settings.social_medias');

    Route::post('/store-social-media', 'BackEnd\BasicSettings\SocialMediaController@store')->name('admin.basic_settings.store_social_media');

    Route::put('/update-social-media', 'BackEnd\BasicSettings\SocialMediaController@update')->name('admin.basic_settings.update_social_media');

    Route::post('/delete-social-media/{id}', 'BackEnd\BasicSettings\SocialMediaController@destroy')->name('admin.basic_settings.delete_social_media');
  });


  // announcement-popup route start
  Route::prefix('/announcement-popups')->middleware('permission:Announcement Popups')->group(function () {
    Route::get('', 'BackEnd\PopupController@index')->name('admin.announcement_popups');

    Route::get('/select-popup-type', 'BackEnd\PopupController@popupType')->name('admin.announcement_popups.select_popup_type');

    Route::get('/create-popup/{type}', 'BackEnd\PopupController@create')->name('admin.announcement_popups.create_popup');

    Route::post('/store-popup', 'BackEnd\PopupController@store')->name('admin.announcement_popups.store_popup');

    Route::post('/popup/{id}/update-status', 'BackEnd\PopupController@updateStatus')->name('admin.announcement_popups.update_popup_status');

    Route::get('/edit-popup/{id}', 'BackEnd\PopupController@edit')->name('admin.announcement_popups.edit_popup');

    Route::post('/update-popup/{id}', 'BackEnd\PopupController@update')->name('admin.announcement_popups.update_popup');

    Route::post('/delete-popup/{id}', 'BackEnd\PopupController@destroy')->name('admin.announcement_popups.delete_popup');

    Route::post('/bulk-delete-popup', 'BackEnd\PopupController@bulkDestroy')->name('admin.announcement_popups.bulk_delete_popup');
  });
  // announcement-popup route end


  // menu-builder route start
  Route::prefix('/menu-builder')->middleware('permission:Menu Builder')->group(function () {
    Route::get('', 'BackEnd\MenuBuilderController@index')->name('admin.menu_builder');

    Route::post('/update-menus', 'BackEnd\MenuBuilderController@update')->name('admin.menu_builder.update_menus');
  });
  // menu-builder route end


  // home-page route start
  Route::prefix('/home-page')->middleware('permission:Home Page')->group(function () {
    // hero section
    Route::get('/hero-section', 'BackEnd\HomePage\HeroController@index')->name('admin.home_page.hero_section');

    Route::post('/update-hero-section', 'BackEnd\HomePage\HeroController@update')->name('admin.home_page.update_hero_section');

    // section title
    Route::get('/section-titles', 'BackEnd\HomePage\SectionTitleController@index')->name('admin.home_page.section_titles');

    Route::post('/update-section-titles', 'BackEnd\HomePage\SectionTitleController@update')->name('admin.home_page.update_section_title');

    // call to action section
    Route::get('/action-section', 'BackEnd\HomePage\ActionController@index')->name('admin.home_page.action_section');

    Route::post('/update-action-section', 'BackEnd\HomePage\ActionController@update')->name('admin.home_page.update_action_section');

    // features section
    Route::get('/features-section', 'BackEnd\HomePage\FeatureController@index')->name('admin.home_page.features_section');

    Route::post('/update-feature-section-image', 'BackEnd\HomePage\FeatureController@updateImage')->name('admin.home_page.update_feature_section_image');

    Route::post('/store-feature', 'BackEnd\HomePage\FeatureController@store')->name('admin.home_page.store_feature');

    Route::put('/update-feature', 'BackEnd\HomePage\FeatureController@update')->name('admin.home_page.update_feature');

    Route::post('/delete-feature/{id}', 'BackEnd\HomePage\FeatureController@destroy')->name('admin.home_page.delete_feature');

    Route::post('/bulk-delete-feature', 'BackEnd\HomePage\FeatureController@bulkDestroy')->name('admin.home_page.bulk_delete_feature');

    // video section
    Route::get('/video-section', 'BackEnd\HomePage\VideoController@index')->name('admin.home_page.video_section');

    Route::post('/update-video-section', 'BackEnd\HomePage\VideoController@update')->name('admin.home_page.update_video_section');

    // fun facts section
    Route::get('/fun-facts-section', 'BackEnd\HomePage\FunFactController@index')->name('admin.home_page.fun_facts_section');

    Route::post('/update-fun-facts-section', 'BackEnd\HomePage\FunFactController@updateSection')->name('admin.home_page.update_fun_facts_section');

    Route::post('/store-counter-info', 'BackEnd\HomePage\FunFactController@store')->name('admin.home_page.store_counter_info');

    Route::put('/update-counter-info', 'BackEnd\HomePage\FunFactController@update')->name('admin.home_page.update_counter_info');

    Route::post('/delete-counter-info/{id}', 'BackEnd\HomePage\FunFactController@destroy')->name('admin.home_page.delete_counter_info');

    Route::post('/bulk-delete-counter-info', 'BackEnd\HomePage\FunFactController@bulkDestroy')->name('admin.home_page.bulk_delete_counter_info');

    // testimonials section
    Route::get('/testimonials-section', 'BackEnd\HomePage\TestimonialController@index')->name('admin.home_page.testimonials_section');

    Route::post('/update-testimonial-section-image', 'BackEnd\HomePage\TestimonialController@updateImage')->name('admin.home_page.update_testimonial_section_image');

    Route::post('/store-testimonial', 'BackEnd\HomePage\TestimonialController@store')->name('admin.home_page.store_testimonial');

    Route::post('/update-testimonial', 'BackEnd\HomePage\TestimonialController@update')->name('admin.home_page.update_testimonial');

    Route::post('/delete-testimonial/{id}', 'BackEnd\HomePage\TestimonialController@destroy')->name('admin.home_page.delete_testimonial');

    Route::post('/bulk-delete-testimonial', 'BackEnd\HomePage\TestimonialController@bulkDestroy')->name('admin.home_page.bulk_delete_testimonial');

    // newsletter section
    Route::get('/newsletter-section', 'BackEnd\HomePage\NewsletterController@index')->name('admin.home_page.newsletter_section');

    Route::post('/update-newsletter-section', 'BackEnd\HomePage\NewsletterController@update')->name('admin.home_page.update_newsletter_section');

    // about-us section
    Route::get('/about-us-section', 'BackEnd\HomePage\AboutUsController@index')->name('admin.home_page.about_us_section');

    Route::post('/update-about-us-section', 'BackEnd\HomePage\AboutUsController@update')->name('admin.home_page.update_about_us_section');

    // course-categories section
    Route::get('/course-categories-section', 'BackEnd\HomePage\CourseCategoryController@index')->name('admin.home_page.course_categories_section');

    Route::post('/update-course-category-section-image', 'BackEnd\HomePage\CourseCategoryController@updateImage')->name('admin.home_page.update_course_category_section_image');

    // section customization
    Route::get('/section-customization', 'BackEnd\HomePage\SectionController@index')->name('admin.home_page.section_customization');

    Route::post('/update-section-status', 'BackEnd\HomePage\SectionController@update')->name('admin.home_page.update_section_status');
  });
  // home-page route end


  // instructor route start
  Route::middleware('permission:Instructors')->group(function () {
    Route::get('/instructors', 'BackEnd\Teacher\InstructorController@index')->name('admin.instructors');

    Route::get('/create-instructor', 'BackEnd\Teacher\InstructorController@create')->name('admin.create_instructor');

    Route::post('/store-instructor', 'BackEnd\Teacher\InstructorController@store')->name('admin.store_instructor');

    Route::post('/instructor/{id}/update-featured', 'BackEnd\Teacher\InstructorController@updateFeatured')->name('admin.instructor.update_featured');

    Route::get('/edit-instructor/{id}', 'BackEnd\Teacher\InstructorController@edit')->name('admin.edit_instructor');

    Route::post('/update-instructor/{id}', 'BackEnd\Teacher\InstructorController@update')->name('admin.update_instructor');

    Route::prefix('/instructor')->group(function () {
      Route::get('/{id}/social-links', 'BackEnd\Teacher\SocialLinkController@links')->name('admin.instructor.social_links');

      Route::post('/{id}/store-social-link', 'BackEnd\Teacher\SocialLinkController@storeLink')->name('admin.instructor.store_social_link');

      Route::get('/{instructor_id}/edit-social-link/{id}', 'BackEnd\Teacher\SocialLinkController@editLink')->name('admin.instructor.edit_social_link');

      Route::post('/update-social-link/{id}', 'BackEnd\Teacher\SocialLinkController@updateLink')->name('admin.instructor.update_social_link');

      Route::post('/delete-social-link/{id}', 'BackEnd\Teacher\SocialLinkController@destroyLink')->name('admin.instructor.delete_social_link');
    });

    Route::post('/delete-instructor/{id}', 'BackEnd\Teacher\InstructorController@destroy')->name('admin.delete_instructor');

    Route::post('/bulk-delete-instructor', 'BackEnd\Teacher\InstructorController@bulkDestroy')->name('admin.bulk_delete_instructor');
  });
  // instructor route end


  // course route start
  Route::prefix('/course-management')->middleware('permission:Course Management')->group(function () {

    Route::get('/categories', 'BackEnd\Curriculum\CategoryController@index')->name('admin.course_management.categories');

    Route::post('/store-category', 'BackEnd\Curriculum\CategoryController@store')->name('admin.course_management.store_category');

    Route::post('/category/{id}/update-featured', 'BackEnd\Curriculum\CategoryController@updateFeatured')->name('admin.course_management.category.update_featured');

    Route::put('/update-category', 'BackEnd\Curriculum\CategoryController@update')->name('admin.course_management.update_category');

    Route::post('/delete-category/{id}', 'BackEnd\Curriculum\CategoryController@destroy')->name('admin.course_management.delete_category');

    Route::post('/bulk-delete-category', 'BackEnd\Curriculum\CategoryController@bulkDestroy')->name('admin.course_management.bulk_delete_category');

    Route::get('/courses', 'BackEnd\Curriculum\CourseController@index')->name('admin.course_management.courses');

    Route::get('/create-course', 'BackEnd\Curriculum\CourseController@create')->name('admin.course_management.create_course');

    Route::post('/store-course', 'BackEnd\Curriculum\CourseController@store')->name('admin.course_management.store_course');
    
    Route::post('/course/{id}/update-status', 'BackEnd\Curriculum\CourseController@updateStatus')->name('admin.course_management.course.update_status');

    Route::post('/course/{id}/update-featured', 'BackEnd\Curriculum\CourseController@updateFeatured')->name('admin.course_management.course.update_featured');

    Route::get('/edit-course/{id}', 'BackEnd\Curriculum\CourseController@edit')->name('admin.course_management.edit_course');

    Route::post('/update-course/{id}', 'BackEnd\Curriculum\CourseController@update')->name('admin.course_management.update_course');

    Route::prefix('/course')->group(function () {
      Route::get('/{id}/modules', 'BackEnd\Curriculum\ModuleController@index')->name('admin.course_management.course.modules');

      Route::post('/{id}/store-module', 'BackEnd\Curriculum\ModuleController@store')->name('admin.course_management.course.store_module');

      Route::post('/update-module', 'BackEnd\Curriculum\ModuleController@update')->name('admin.course_management.course.update_module');

      Route::post('/delete-module/{id}', 'BackEnd\Curriculum\ModuleController@destroy')->name('admin.course_management.course.delete_module');

      Route::post('/bulk-delete-module', 'BackEnd\Curriculum\ModuleController@bulkDestroy')->name('admin.course_management.course.bulk_delete_module');
    });

    Route::prefix('/module')->group(function () {
      Route::post('/{id}/store-lesson', 'BackEnd\Curriculum\LessonController@store')->name('admin.course_management.module.store_lesson');

      Route::post('/update-lesson', 'BackEnd\Curriculum\LessonController@update')->name('admin.course_management.module.update_lesson');
    });

    Route::prefix('/lesson')->group(function () {
      Route::get('/{id}/contents', 'BackEnd\Curriculum\LessonContentController@contents')->name('admin.course_management.lesson.contents');

      Route::post('/upload-video', 'BackEnd\Curriculum\LessonContentController@uploadVideo')->name('admin.course_management.lesson.upload_video');

      Route::post('/remove-video', 'BackEnd\Curriculum\LessonContentController@removeVideo')->name('admin.course_management.lesson.remove_video');

      Route::post('/{id}/store-video', 'BackEnd\Curriculum\LessonContentController@storeVideo')->name('admin.course_management.lesson.store_video');

      Route::post('/upload-file', 'BackEnd\Curriculum\LessonContentController@uploadFile')->name('admin.course_management.lesson.upload_file');

      Route::post('/remove-file', 'BackEnd\Curriculum\LessonContentController@removeFile')->name('admin.course_management.lesson.remove_file');

      Route::post('/{id}/store-file', 'BackEnd\Curriculum\LessonContentController@storeFile')->name('admin.course_management.lesson.store_file');

      Route::get('/download-file/{id}', 'BackEnd\Curriculum\LessonContentController@downloadFile')->name('admin.course_management.lesson.download_file');

      Route::post('/{id}/store-text', 'BackEnd\Curriculum\LessonContentController@storeText')->name('admin.course_management.lesson.store_text');

      Route::post('/update-text', 'BackEnd\Curriculum\LessonContentController@updateText')->name('admin.course_management.lesson.update_text');

      Route::post('/{id}/store-code', 'BackEnd\Curriculum\LessonContentController@storeCode')->name('admin.course_management.lesson.store_code');

      Route::post('/update-code', 'BackEnd\Curriculum\LessonContentController@updateCode')->name('admin.course_management.lesson.update_code');

      Route::post('/delete-content/{id}', 'BackEnd\Curriculum\LessonContentController@destroyContent')->name('admin.course_management.lesson.delete_content');

      Route::get('/{id}/create-quiz', 'BackEnd\Curriculum\LessonQuizController@create')->name('admin.course_management.lesson.create_quiz');

      Route::post('/{id}/store-quiz', 'BackEnd\Curriculum\LessonQuizController@store')->name('admin.course_management.lesson.store_quiz');

      Route::get('/{id}/manage-quiz', 'BackEnd\Curriculum\LessonQuizController@index')->name('admin.course_management.lesson.manage_quiz');

      Route::get('/{lessonId}/edit-quiz/{quizId}', 'BackEnd\Curriculum\LessonQuizController@edit')->name('admin.course_management.lesson.edit_quiz');

      Route::get('/get-ans/{id}', 'BackEnd\Curriculum\LessonQuizController@getAns')->name('admin.course_management.lesson.get_ans');

      Route::post('/update-quiz/{id}', 'BackEnd\Curriculum\LessonQuizController@update')->name('admin.course_management.lesson.update_quiz');

      Route::post('/delete-quiz/{id}', 'BackEnd\Curriculum\LessonQuizController@destroy')->name('admin.course_management.lesson.delete_quiz');

      Route::post('/sort-contents', 'BackEnd\Curriculum\LessonContentController@sort')->name('admin.course_management.lesson.sort_contents');
    });

    Route::post('/module/delete-lesson/{id}', 'BackEnd\Curriculum\LessonController@destroy')->name('admin.course_management.module.delete_lesson');

    Route::prefix('/course')->group(function () {
      Route::get('/{id}/faqs', 'BackEnd\Curriculum\CourseFaqController@index')->name('admin.course_management.course.faqs');

      Route::post('/{id}/store-faq', 'BackEnd\Curriculum\CourseFaqController@store')->name('admin.course_management.course.store_faq');

      Route::post('/update-faq', 'BackEnd\Curriculum\CourseFaqController@update')->name('admin.course_management.course.update_faq');

      Route::post('/delete-faq/{id}', 'BackEnd\Curriculum\CourseFaqController@destroy')->name('admin.course_management.course.delete_faq');

      Route::post('/bulk-delete-faq', 'BackEnd\Curriculum\CourseFaqController@bulkDestroy')->name('admin.course_management.course.bulk_delete_faq');

      Route::get('/{id}/thanks-page', 'BackEnd\Curriculum\CourseController@thanksPage')->name('admin.course_management.course.thanks_page');

      Route::post('/{id}/update-thanks-page', 'BackEnd\Curriculum\CourseController@updateThanksPage')->name('admin.course_management.course.update_thanks_page');

      Route::get('/{id}/certificate-settings', 'BackEnd\Curriculum\CourseController@certificateSettings')->name('admin.course_management.course.certificate_settings');

      Route::post('/{id}/update-certificate-settings', 'BackEnd\Curriculum\CourseController@updateCertificateSettings')->name('admin.course_management.course.update_certificate_settings');

      Route::get('/{id}/curriculum', 'BackEnd\Curriculum\CourseController@curriculum')->name('admin.course_management.course.curriculum');

      Route::get('/{id}/certificate', 'BackEnd\Curriculum\CourseController@showCertificate')->name('admin.course_management.course.certificate');
    });

    Route::post('/delete-course/{id}', 'BackEnd\Curriculum\CourseController@destroy')->name('admin.course_management.delete_course');

    Route::post('/bulk-delete-course', 'BackEnd\Curriculum\CourseController@bulkDestroy')->name('admin.course_management.bulk_delete_course');

    Route::get('/coupons', 'BackEnd\Curriculum\CouponController@index')->name('admin.course_management.coupons');

    Route::post('/store-coupon', 'BackEnd\Curriculum\CouponController@store')->name('admin.course_management.store_coupon');

    Route::post('/update-coupon', 'BackEnd\Curriculum\CouponController@update')->name('admin.course_management.update_coupon');

    Route::post('/delete-coupon/{id}', 'BackEnd\Curriculum\CouponController@destroy')->name('admin.course_management.delete_coupon');
  });
  // course route end


  // course enrolment route start
  Route::middleware('permission:Course Enrolments')->group(function () {
    Route::get('/course-enrolments', 'BackEnd\Curriculum\EnrolmentController@index')->name('admin.course_enrolments');

    Route::prefix('/course-enrolment')->group(function () {
      Route::post('/{id}/update-payment-status', 'BackEnd\Curriculum\EnrolmentController@updatePaymentStatus')->name('admin.course_enrolment.update_payment_status');

      Route::get('/{id}/details', 'BackEnd\Curriculum\EnrolmentController@show')->name('admin.course_enrolment.details');

      Route::post('/{id}/delete', 'BackEnd\Curriculum\EnrolmentController@destroy')->name('admin.course_enrolment.delete');
    });

    Route::get('/course-enrolments/report', 'BackEnd\Curriculum\EnrolmentController@report')->name('admin.course_enrolments.report');

    Route::get('/course-enrolments/export', 'BackEnd\Curriculum\EnrolmentController@export')->name('admin.course_enrolments.export');

    Route::post('/course-enrolments/bulk-delete', 'BackEnd\Curriculum\EnrolmentController@bulkDestroy')->name('admin.course_enrolments.bulk_delete');
  });
  // course enrolment route end


  // payment-gateway route start
  Route::prefix('/payment-gateways')->middleware('permission:Payment Gateways')->group(function () {
    Route::get('/online-gateways', 'BackEnd\PaymentGateway\OnlineGatewayController@index')->name('admin.payment_gateways.online_gateways');

    Route::post('/update-paypal-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updatePayPalInfo')->name('admin.payment_gateways.update_paypal_info');

    Route::post('/update-instamojo-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updateInstamojoInfo')->name('admin.payment_gateways.update_instamojo_info');

    Route::post('/update-paystack-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updatePaystackInfo')->name('admin.payment_gateways.update_paystack_info');

    Route::post('/update-flutterwave-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updateFlutterwaveInfo')->name('admin.payment_gateways.update_flutterwave_info');

    Route::post('/update-razorpay-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updateRazorpayInfo')->name('admin.payment_gateways.update_razorpay_info');

    Route::post('/update-mercadopago-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updateMercadoPagoInfo')->name('admin.payment_gateways.update_mercadopago_info');

    Route::post('/update-mollie-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updateMollieInfo')->name('admin.payment_gateways.update_mollie_info');

    Route::post('/update-stripe-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updateStripeInfo')->name('admin.payment_gateways.update_stripe_info');

    Route::post('/update-paytm-info', 'BackEnd\PaymentGateway\OnlineGatewayController@updatePaytmInfo')->name('admin.payment_gateways.update_paytm_info');

    Route::get('/offline-gateways', 'BackEnd\PaymentGateway\OfflineGatewayController@index')->name('admin.payment_gateways.offline_gateways');

    Route::post('/store-offline-gateway', 'BackEnd\PaymentGateway\OfflineGatewayController@store')->name('admin.payment_gateways.store_offline_gateway');

    Route::post('/update-status/{id}', 'BackEnd\PaymentGateway\OfflineGatewayController@updateStatus')->name('admin.payment_gateways.update_status');

    Route::post('/update-offline-gateway', 'BackEnd\PaymentGateway\OfflineGatewayController@update')->name('admin.payment_gateways.update_offline_gateway');

    Route::post('/delete-offline-gateway/{id}', 'BackEnd\PaymentGateway\OfflineGatewayController@destroy')->name('admin.payment_gateways.delete_offline_gateway');
  });
  // payment-gateway route end


  // blog route start
  Route::prefix('/blog-management')->middleware('permission:Blog Management')->group(function () {
    Route::get('/categories', 'BackEnd\Journal\CategoryController@index')->name('admin.blog_management.categories');

    Route::post('/store-category', 'BackEnd\Journal\CategoryController@store')->name('admin.blog_management.store_category');

    Route::put('/update-category', 'BackEnd\Journal\CategoryController@update')->name('admin.blog_management.update_category');

    Route::post('/delete-category/{id}', 'BackEnd\Journal\CategoryController@destroy')->name('admin.blog_management.delete_category');

    Route::post('/bulk-delete-category', 'BackEnd\Journal\CategoryController@bulkDestroy')->name('admin.blog_management.bulk_delete_category');

    Route::get('/blogs', 'BackEnd\Journal\BlogController@index')->name('admin.blog_management.blogs');

    Route::get('/create-blog', 'BackEnd\Journal\BlogController@create')->name('admin.blog_management.create_blog');

    Route::post('/store-blog', 'BackEnd\Journal\BlogController@store')->name('admin.blog_management.store_blog');

    Route::get('/edit-blog/{id}', 'BackEnd\Journal\BlogController@edit')->name('admin.blog_management.edit_blog');

    Route::post('/update-blog/{id}', 'BackEnd\Journal\BlogController@update')->name('admin.blog_management.update_blog');

    Route::post('/delete-blog/{id}', 'BackEnd\Journal\BlogController@destroy')->name('admin.blog_management.delete_blog');

    Route::post('/bulk-delete-blog', 'BackEnd\Journal\BlogController@bulkDestroy')->name('admin.blog_management.bulk_delete_blog');
  });
  // blog route end


  // faq route start
  Route::prefix('/faq-management')->middleware('permission:FAQ Management')->group(function () {
    Route::get('', 'BackEnd\FaqController@index')->name('admin.faq_management');

    Route::post('/store-faq', 'BackEnd\FaqController@store')->name('admin.faq_management.store_faq');

    Route::post('/update-faq', 'BackEnd\FaqController@update')->name('admin.faq_management.update_faq');

    Route::post('/delete-faq/{id}', 'BackEnd\FaqController@destroy')->name('admin.faq_management.delete_faq');

    Route::post('/bulk-delete-faq', 'BackEnd\FaqController@bulkDestroy')->name('admin.faq_management.bulk_delete_faq');
  });
  // faq route end


  // custom-pages route start
  Route::prefix('/custom-pages')->middleware('permission:Custom Pages')->group(function () {
    Route::get('', 'BackEnd\CustomPageController@index')->name('admin.custom_pages');

    Route::get('/create-page', 'BackEnd\CustomPageController@create')->name('admin.custom_pages.create_page');

    Route::post('/store-page', 'BackEnd\CustomPageController@store')->name('admin.custom_pages.store_page');

    Route::get('/edit-page/{id}', 'BackEnd\CustomPageController@edit')->name('admin.custom_pages.edit_page');

    Route::post('/update-page/{id}', 'BackEnd\CustomPageController@update')->name('admin.custom_pages.update_page');

    Route::post('/delete-page/{id}', 'BackEnd\CustomPageController@destroy')->name('admin.custom_pages.delete_page');

    Route::post('/bulk-delete-page', 'BackEnd\CustomPageController@bulkDestroy')->name('admin.custom_pages.bulk_delete_page');
  });
  // custom-pages route end


  // advertise route start
  Route::prefix('/advertise')->middleware('permission:Advertise')->group(function () {
    Route::get('/settings', 'BackEnd\BasicSettings\BasicController@advertiseSettings')->name('admin.advertise.settings');

    Route::post('/update-settings', 'BackEnd\BasicSettings\BasicController@updateAdvertiseSettings')->name('admin.advertise.update_settings');

    Route::get('/advertisements', 'BackEnd\AdvertisementController@index')->name('admin.advertise.advertisements');

    Route::post('/store-advertisement', 'BackEnd\AdvertisementController@store')->name('admin.advertise.store_advertisement');

    Route::post('/update-advertisement', 'BackEnd\AdvertisementController@update')->name('admin.advertise.update_advertisement');

    Route::post('/delete-advertisement/{id}', 'BackEnd\AdvertisementController@destroy')->name('admin.advertise.delete_advertisement');

    Route::post('/bulk-delete-advertisement', 'BackEnd\AdvertisementController@bulkDestroy')->name('admin.advertise.bulk_delete_advertisement');
  });
  // advertise route end


  // footer route start
  Route::prefix('/footer')->middleware('permission:Footer')->group(function () {
    Route::get('/content', 'BackEnd\Footer\ContentController@index')->name('admin.footer.content');

    Route::post('/update-content', 'BackEnd\Footer\ContentController@update')->name('admin.footer.update_content');

    Route::get('/quick-links', 'BackEnd\Footer\QuickLinkController@index')->name('admin.footer.quick_links');

    Route::post('/create-quick-link', 'BackEnd\Footer\QuickLinkController@store')->name('admin.footer.create_quick_link');

    Route::post('/update-quick-link', 'BackEnd\Footer\QuickLinkController@update')->name('admin.footer.update_quick_link');

    Route::post('/delete-quick-link/{id}', 'BackEnd\Footer\QuickLinkController@destroy')->name('admin.footer.delete_quick_link');
  });
  // footer route end


  // user management route start
  Route::prefix('/user-management')->middleware('permission:User Management')->group(function () {
    Route::get('/registered-users', 'BackEnd\User\UserController@index')->name('admin.user_management.registered_users');

    Route::prefix('/user/{id}')->group(function () {
      Route::post('/update-email-status', 'BackEnd\User\UserController@updateEmailStatus')->name('admin.user_management.user.update_email_status');

      Route::post('/update-account-status', 'BackEnd\User\UserController@updateAccountStatus')->name('admin.user_management.user.update_account_status');

      Route::get('/details', 'BackEnd\User\UserController@show')->name('admin.user_management.user_details');

      Route::get('/change-password', 'BackEnd\User\UserController@changePassword')->name('admin.user_management.user.change_password');

      Route::post('/update-password', 'BackEnd\User\UserController@updatePassword')->name('admin.user_management.user.update_password');

      Route::post('/delete', 'BackEnd\User\UserController@destroy')->name('admin.user_management.user.delete');
    });

    Route::post('/bulk-delete-user', 'BackEnd\User\UserController@bulkDestroy')->name('admin.user_management.bulk_delete_user');

    Route::get('/subscribers', 'BackEnd\User\SubscriberController@index')->name('admin.user_management.subscribers');

    Route::post('/subscriber/{id}/delete', 'BackEnd\User\SubscriberController@destroy')->name('admin.user_management.subscriber.delete');

    Route::post('/bulk-delete-subscriber', 'BackEnd\User\SubscriberController@bulkDestroy')->name('admin.user_management.bulk_delete_subscriber');

    Route::get('/mail-for-subscribers', 'BackEnd\User\SubscriberController@writeEmail')->name('admin.user_management.mail_for_subscribers');

    Route::post('/subscribers/send-email', 'BackEnd\User\SubscriberController@sendEmail')->name('admin.user_management.subscribers.send_email');

    Route::prefix('/push-notification')->group(function () {
      Route::get('/settings', 'BackEnd\User\PushNotificationController@settings')->name('admin.user_management.push_notification.settings');

      Route::post('/update-settings', 'BackEnd\User\PushNotificationController@updateSettings')->name('admin.user_management.push_notification.update_settings');

      Route::get('/notification-for-visitors', 'BackEnd\User\PushNotificationController@writeNotification')->name('admin.user_management.push_notification.notification_for_visitors');

      Route::post('/send-notification', 'BackEnd\User\PushNotificationController@sendNotification')->name('admin.user_management.push_notification.send_notification');
    });
  });
  // user management route end


  // upload image in summernote route
  Route::prefix('/summernote')->group(function () {
    Route::post('/upload-image', 'BackEnd\SummernoteController@upload');

    Route::post('/remove-image', 'BackEnd\SummernoteController@remove');
  });
});

/*
|--------------------------------------------------------------------------
| Custom Page Route For UI
|--------------------------------------------------------------------------
*/
Route::get('/{slug}', 'FrontEnd\PageController@page')->name('dynamic_page')->middleware('change.lang');

// fallback route
Route::fallback(function () {
  //
})->middleware('change.lang');
