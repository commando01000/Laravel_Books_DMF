@php
  $primaryColor = $basicInfo->primary_color;
  $secondaryColor = $basicInfo->secondary_color;
  $footerBackgroundColor = $footerInfo->footer_background_color;
  $copyrightBackgroundColor = $footerInfo->copyright_background_color;
  $breadcrumbOverlayColor = $basicInfo->breadcrumb_overlay_color;
  $breadcrumbOverlayOpacity = $basicInfo->breadcrumb_overlay_opacity;

  // check, whether color has '#' or not, will return 0 or 1
  function checkColorCode($color)
  {
    return preg_match('/^#[a-f0-9]{6}/i', $color);
  }

  // if, primary color value does not contain '#', then add '#' before color value
  if (isset($primaryColor) && checkColorCode($primaryColor) == 0) {
    $primaryColor = '#' . $primaryColor;
  }

  // if, secondary color value does not contain '#', then add '#' before color value
  if (isset($secondaryColor) && checkColorCode($secondaryColor) == 0) {
    $secondaryColor = '#' . $secondaryColor;
  }

  // if, footer background color value does not contain '#', then add '#' before color value
  if (isset($footerBackgroundColor) && checkColorCode($footerBackgroundColor) == 0) {
    $footerBackgroundColor = '#' . $footerBackgroundColor;
  }

  // if, copyright background color value does not contain '#', then add '#' before color value
  if (isset($copyrightBackgroundColor) && checkColorCode($copyrightBackgroundColor) == 0) {
    $copyrightBackgroundColor = '#' . $copyrightBackgroundColor;
  }

  // if, breadcrumb overlay color value does not contain '#', then add '#' before color value
  if (isset($breadcrumbOverlayColor) && checkColorCode($breadcrumbOverlayColor) == 0) {
    $breadcrumbOverlayColor = '#' . $breadcrumbOverlayColor;
  }
@endphp

<style>
  .spinner>div {
    background-color: {{ $primaryColor }};
  }

  .page-item.active .page-link {
    background-color: {{ $primaryColor }};
  }

  .header-area .header-top .header-logo form .input-box i {
    color: {{ $primaryColor }};
  }

  nav .pagination li a:hover {
    background: {{ $secondaryColor }};
    border-color: {{ $secondaryColor }};
  }

  .header-area .header-top .header-btns ul li a i {
    color: {{ $primaryColor }};
  }

  .header-navigation .main-menu ul>li.menu-item>a:before {
    background-color: {{ $secondaryColor }};
  }

  .header-navigation .main-menu ul li:hover>a,
  .header-navigation .main-menu ul li.active>a {
    color: {{ $secondaryColor }};
  }

  .header-navigation .main-menu ul li .sub-menu li a:hover {
    background-color: {{ $secondaryColor }};
  }

  .navbar-item .menu-icon ul li a:hover {
    color: {{ $secondaryColor }};
  }

  .banner-area .banner-content ul li a {
    background: {{ $primaryColor }};
    border: {{ '2px solid ' . $primaryColor }};
  }

  .banner-area .banner-content ul li a.main-btn-2:hover {
    background: {{ $primaryColor }};
    border-color: {{ $primaryColor }};
  }

  .dream-course-area .dream-course-content .dream-course-title span {
    color: {{ $primaryColor }};
  }

  .dream-course-area .dream-course-content .dream-course-search .input-box i {
    color: {{ $secondaryColor }};
  }

  .dream-course-area .dream-course-content .dream-course-search .dream-course-btn button {
    background: {{ $primaryColor }};
  }

  .services-area .services-border .single-services:hover::before {
    background: {{ $primaryColor }};
  }

  .offer-area .offer-content ul li a {
    border-color: {{ $primaryColor }};
    background-color: {{ $primaryColor }};
  }

  .offer-area .offer-content ul li a:hover {
    border-color: {{ $secondaryColor }};
    background-color: {{ $secondaryColor }};
  }

  .offer-area .offer-content ul li a.main-btn-2 {
    border-color: {{ $secondaryColor }};
    background-color: {{ $secondaryColor }};
  }

  .offer-area .offer-content ul li a.main-btn-2:hover {
    border-color: {{ $primaryColor }};
    background-color: {{ $primaryColor }};
  }

  .single-courses .courses-thumb .corses-thumb-title a.category {
    color: {{ $secondaryColor . ' !important' }};
  }

  .single-courses:hover .courses-content .title {
    color: {{ $secondaryColor }};
  }

  .single-courses .courses-content .courses-info .item p {
    color: {{ $primaryColor }};
  }

  .play-area .play-thumb::before {
    border-top: {{ '138px solid ' . $primaryColor }};
  }

  .play-area .play-thumb::after {
    border-top: {{ '70px solid ' . $secondaryColor }};
  }

  .testimonials-area .testimonials-content i {
    background: {{ $primaryColor }};
  }

  .testimonials-area .testimonials-active .slick-arrow.prev:hover {
    border-right-color: #e9ecff;
    border-left-color: {{ $primaryColor }};
  }

  .testimonials-area .testimonials-active .slick-arrow:hover {
    border-color: {{ $primaryColor }};
    border-left-color: #e9ecff;
  }

  .testimonials-area .testimonials-content>span {
    color: {{ $secondaryColor }};
  }

  .community-area .community-content .input-box button {
    background: {{ $primaryColor }};
  }

  .footer-area .footer-item .footer-list-area .footer-list ul li a:hover {
    color: {{ $secondaryColor }};
  }

  .footer-instagram .blog-info h6 a:hover {
    color: {{ $secondaryColor }};
  }

  .back-to-top a {
    background: {{ $secondaryColor }};
  }

  button.cookie-consent__agree {
    background-color: {{ $primaryColor }};
  }

  .course-grid-area .course-grid .course-grid-top .course-filter .nice-select span {
    color: {{ $primaryColor }};
  }

  .course-grid-area .course-grid .course-grid-top .course-filter .nice-select::after {
    border-bottom: {{ '2px solid ' . $primaryColor }};
    border-right: {{ '2px solid ' . $primaryColor }};
  }

  .course-grid-area .course-grid .course-grid-top .course-filter .input-box i {
    color: {{ $secondaryColor }};
  }

  .course-grid-area .single-courses .courses-thumb .corses-thumb-title span {
    color: {{ $secondaryColor }};
  }

  .course-grid-area .single-courses:hover .courses-content .title {
    color: {{ $secondaryColor }};
  }

  .course-grid-area .single-courses .courses-content .courses-info .item p {
    color: {{ $primaryColor }};
  }

  .radio_common-2 li input[type="radio"]:checked+label span {
    border-color: {{ $primaryColor }};
    background: {{ $primaryColor }};
  }

  .radio_common-2 li input[type="radio"]:checked+label {
    color: {{ $primaryColor }};
  }

  .course-price-filter .ui-widget-content .ui-slider-handle {
    background-color: {{ $primaryColor }};
  }

  .course-price-filter .ui-slider-horizontal .ui-slider-range {
    background-color: {{ $primaryColor }};
  }

  .course-title-area::before {
    background-color: {{ $primaryColor . 'E6' }};
  }

  .course-details-area .course-details-sidebar .course-sidebar-thumb a {
    background: {{ $primaryColor }};
  }

  .course-details-area .course-details-sidebar .course-sidebar-price .title {
    color: {{ $secondaryColor }};
  }

  #coupon-btn {
    background-color: {{ $primaryColor }};
    border-color: {{ $primaryColor }};
    color: #fff;
  }

  .course-details-area .course-details-sidebar .course-sidebar-btns #enrol-btn {
    background: {{ $primaryColor }};
    border: {{ '2px solid ' . $primaryColor }};
  }

  .course-details-area .course-details-sidebar .course-sidebar-share {
    background: {{ $primaryColor }};
  }

  .course-details-area .course-details-sidebar .course-sidebar-share a:hover {
    background-color: {{ $secondaryColor }};
  }

  .single-courses .courses-thumb .corses-thumb-title.item-2 span {
    color: {{ $secondaryColor }};
  }

  .course-accordian .card .card-header .title[aria-expanded=true] {
    background-color: {{ $primaryColor }};
  }

  .course-accordian .card {
    border: {{ '1px solid ' . $primaryColor . ' !important' }};
  }

  .curriculum-accordion .card .card-header .title {
    background-color: {{ $primaryColor }};
  }

  .course-details-items .instructor-box .info ul.social-link li a {
    background-color: {{ $primaryColor }};
  }

  .course-details-items .instructor-box .info ul.social-link li a:hover {
    background-color: {{ $secondaryColor }};
  }

  .main-btn {
    border: {{ '1px solid ' . $primaryColor }};
    background-color: {{ $primaryColor }};
  }

  .main-btn:hover {
    color: {{ $secondaryColor }};
    border-color: {{ $secondaryColor }};
  }

  .speakers-area .single-speakers .speakers-thumb a {
    background: {{ $primaryColor }};
    color: #fff;
  }

  .speakers-area .single-speakers .speakers-content span {
    color: {{ $secondaryColor }};
  }

  .social-link-btn {
    color: #fff;
    background-color: {{ $primaryColor }};
    border-color: {{ $primaryColor }};
  }

  .social-link-btn:hover {
    color: #fff;
  }

  .blog-standard-area .blog-standard .single-blog-grid .blog-content span {
    background: {{ $primaryColor }};
  }

  .blog-standard-area .blog-sidebar .blog-side-about .about-title .title::before {
    background: {{ $primaryColor }};
  }

  .blog-standard-area .blog-sidebar .blog-side-about .about-title .title::after {
    background: {{ $primaryColor }};
  }

  .blog-standard-area .blog-sidebar .blog-side-about .blog-Search-content .input-box button {
    background: {{ $primaryColor }};
  }

  .blog-standard-area .blog-sidebar .blog-side-about .blog-categories-content ul li.active a {
    background: {{ $primaryColor . 'D9' }};
  }

  .blog-standard-area .blog-sidebar .blog-side-about .blog-categories-content ul li.active a span {
    background: {{ $primaryColor }};
  }

  .blog-standard-area .blog-sidebar .blog-side-about .blog-categories-content ul li a {
    background: {{ $secondaryColor . 'D9' }};
  }

  .blog-standard-area .blog-sidebar .blog-side-about .blog-categories-content ul li a span {
    background: {{ $secondaryColor }};
  }

  .blog-dteails-content .blog-details-top>span {
    background: {{ $primaryColor }};
  }

  .blog-dteails-content .blog-details-bar .blog-social ul li a:hover {
    color: {{ $secondaryColor }};
  }

  .faq-area .faq-accordion .accordion .card .card-header a::before {
    color: {{ $primaryColor }};
  }

  .faq-area .faq-accordion .accordion .card .card-header a.collapsed::before {
    color: {{ $primaryColor }};
  }

  .contact-action-area .contact-action-item .contact-form-btn {
    background: {{ $primaryColor }};
  }

  .user-sidebar .links li a.active,
  .user-sidebar .links li:hover>a {
    color: {{ $primaryColor }};
  }

  .main-table .dataTables_wrapper td a.btn {
    border: {{ '1px solid ' . $primaryColor }};
  }

  .main-table .dataTables_wrapper td a.btn:hover {
    background: {{ $primaryColor }};
  }

  .paginate_button.active .page-link {
    background-color: {{ $primaryColor }};
  }

  .course-nav-left a.prev:hover,
  .course-nav-right a.certificate:hover {
    background-color: {{ $primaryColor }};
    color: #fff;
  }

  .course-videos-area .course-videos-sidebar .course-video-nav .course-section ul.list li a:hover,
  .course-videos-area .course-videos-sidebar .course-video-nav .course-section ul.list li a.active {
    background-color: {{ $primaryColor . '66' }};
  }

  .course-videos-area .course-videos-sidebar::-webkit-scrollbar-thumb {
    background: {{ $primaryColor . '66' }};
  }

  .video-js .vjs-big-play-button {
    background-color: {{ $primaryColor . '66' }};
  }

  .download-box button {
    color: {{ $primaryColor }};
  }

  #quiz-complete a {
    background: {{ $secondaryColor }};
  }

  .user-dashboard .user-profile-details .edit-info-area .file-upload-area .upload-file span {
    background-color: {{ $primaryColor }};
  }

  .user-dashboard .user-profile-details .edit-info-area .btn {
    background-color: {{ $primaryColor }};
  }

  .single-courses .courses-content .courses-info span {
    color: {{ $primaryColor }};
    background: {{ $primaryColor . '1A' }};
  }

  .single-courses .courses-content .courses-info .price span.pre-price {
    background: {{ $secondaryColor . '1A' }};
    color: {{ $secondaryColor }};
  }

  .course-details-area .course-details-items .course-thumb .tab-btns ul li a i,
  .course-details-area .course-details-items .course-thumb .tab-btns ul li:nth-child(2) a i,
  .course-details-area .course-details-items .course-thumb .tab-btns ul li:nth-child(3) a i,
  .course-details-area .course-details-items .course-thumb .tab-btns ul li:nth-child(4) a i {
    color: {{ $primaryColor }};
  }

  .course-details-area .course-details-items .course-thumb .tab-btns ul li a.active {
    color: {{ $secondaryColor }};
  }

  .course-details-area .course-details-items .course-thumb .tab-btns ul li a.active i {
    color: {{ $secondaryColor . ' !important' }};
  }

  .course-details-area .course-details-items .course-thumb .tab-btns ul li a.active::before {
    background: {{ $secondaryColor }};
  }

  .course-details-area .trending-course>.title i {
    color: {{ $secondaryColor }};
  }

  .contact-info-area .contact-info-content .single-contact-info .info-icon i,
  .contact-info-area .contact-info-content .single-contact-info.item-2 .info-icon i,
  .contact-info-area .contact-info-content .single-contact-info.item-3 .info-icon i {
    background: {{ $primaryColor }};
    box-shadow: {{ '0px 8px 16px 0px ' . $primaryColor . '4D' }};
  }

  .advance-courses-area .courses-active .slick-arrow:hover {
    background: {{ $secondaryColor }};
    border-color: {{ $secondaryColor }};
    box-shadow: {{ '0px 8px 16px 0px ' . $secondaryColor . '33' }};
  }

  .header-area-two .header-navigation:before {
    background: {{ $primaryColor }};
  }

  .sub-items-area .sub-item {
    background: {{ $primaryColor }};
  }

  .sub-items-area .sub-item .input-box button {
    background: {{ $secondaryColor }};
    color: #fff;
  }

  .offer-2-area .offer-content ul li a {
    background: {{ $primaryColor }};
    border: {{ '2px solid ' . $primaryColor }};
    color: #fff;
  }

  .offer-2-area .offer-content ul li a:hover {
    border-color: {{ $secondaryColor }};
    background-color: {{ $secondaryColor }};
  }

  .offer-2-area .offer-content ul li a.main-btn-2 {
    border-color: {{ $secondaryColor }};
    background-color: {{ $secondaryColor }};
  }

  .offer-2-area .offer-content ul li a.main-btn-2:hover {
    background: {{ $primaryColor }};
    border-color: {{ $primaryColor }};
    color: #fff;
  }

  .mentors-area .single-mentors .mentors-content span {
    color: {{ $primaryColor }};
  }

  .testimonials-2-area .single-testimonials .testimonials-content i {
    background: {{ $primaryColor }};
    box-shadow: {{ '0px 8px 16px 0px ' . $primaryColor . '33' }};
  }

  .testimonials-2-area .testimonials-2-active .slick-dots li.slick-active button {
    background: {{ $primaryColor }};
  }

  .footer-area {
    background: {{ $footerBackgroundColor }};
  }

  .footer-area.footer-area-2 {
    background: {{ $footerBackgroundColor }};
  }

  .footer-area.footer-area-2 .footer-item .footer-content .input-box input {
    border: {{ '4px solid ' . $copyrightBackgroundColor }};
    background: {{ $footerBackgroundColor }};
  }

  .footer-area.footer-area-2 .footer-item .footer-content .input-box i {
    color: {{ $secondaryColor }};
  }

  .footer-area.footer-area-2 .footer-item .footer-content button {
    background: {{ $secondaryColor }};
    color: #fff;
  }

  .copyright-part-two {
    background: {{ $copyrightBackgroundColor }};
  }

  .we-do-3 .section-title>span {
    border-top: {{ '18px solid ' . $primaryColor }};
  }

  .services-area-3::before {
    background-color: {{ $primaryColor }};
  }

  .exp-area .exp-content-area .top-content span {
    color: {{ $primaryColor }};
  }

  .our-courses-area .section-title>span {
    border-top: {{ '18px solid ' . $primaryColor }};
  }

  .our-courses-area .courses-active-3 .slick-arrow:hover {
    background: {{ $primaryColor }};
    border-color: {{ $primaryColor }};
    box-shadow: {{ '0px 8px 16px 0px ' . $primaryColor . '33' }};
  }

  .our-courses-area .section-title .nav li a.active {
    border-bottom: {{ '3px solid ' . $primaryColor }};
  }

  .our-courses-area .single-courses-3 .courses-thumb .courses-overlay ul li p {
    color: #fff;
    background: {{ $primaryColor }};
  }

  .our-courses-area .single-courses-3 .courses-content ul li p span {
    color: {{ $primaryColor }};
  }

  .faq-answer-area.faq-answer-area-2 .section-title>span {
    border-top: {{ '18px solid ' . $primaryColor }};
  }

  .faq-answer-area form .input-box button {
    background: {{ $primaryColor }};
    color: #fff;
    box-shadow: {{ '0px 8px 16px 0px ' . $primaryColor . '4D' }};
  }

  .counter-3-area .section-title>span {
    border-top: {{ '18px solid ' . $primaryColor }};
  }

  .news-3-area .section-title>span {
    border-top: {{ '18px solid ' . $primaryColor }};
  }

  .news-3-area .single-news .news-content .btns a.category {
    color: #fff;
    background: {{ $primaryColor }};
  }

  .page-title::before {
    background-color: {{ $breadcrumbOverlayColor }};
    opacity: {{ $breadcrumbOverlayOpacity }};
  }

  .our-courses-area .courses-active-3 .slick-arrow {
    background: {{ $primaryColor }};
  }

  .blog-standard-area .blog-standard nav ul li a:hover {
    background: {{ $secondaryColor }};
  }

  .courses-page .single-courses .courses-content .courses-info span {
    color: {{ $primaryColor }};
    background: {{ $primaryColor . '1A' }};
  }

  .blog-standard-area .blog-standard .single-blog-grid .blog-content a.category {
    background: {{ $primaryColor }};
  }

  .course-navigation {
    background-color: {{ $footerBackgroundColor }};
  }
</style>
