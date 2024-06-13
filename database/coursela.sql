-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 24, 2022 at 09:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursela`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_sections`
--

CREATE TABLE `about_us_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us_sections`
--

INSERT INTO `about_us_sections` (`id`, `language_id`, `image`, `title`, `subtitle`, `text`, `created_at`, `updated_at`) VALUES
(3, 8, '61bed5a7ceb0f.jpg', '25 Years Of Experience', 'Here We Are For Coursela LMS', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Lorem ipsum dolor sit amet, consecte tur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. ullamco laboris nisi ut aliquip.', '2021-12-19 06:23:27', '2022-05-15 00:58:58'),
(4, 9, '61c1be0f42d5c.jpg', '25 عاما من الخبرة', 'نحن هنا لـ eDus LMS', 'الألم بحد ذاته هو حب الألم ، المشاكل البيئية الرئيسية ، لكني أعطي هذا النوع من الوقت للتراجع ، بحيث يكون هناك بعض الألم والألم العظيمين. الذي يوقف الطفل المنتقم. الألم في حد ذاته مهم ، لكني أعطيه الوقت لأقطعه ببعض الألم الشديد. على سبيل المثال ، ما هو تمريننا؟ باستثناء أهداف التوظيف في منطقة المدرسة.', '2021-12-21 05:44:15', '2021-12-21 05:44:15');

-- --------------------------------------------------------

--
-- Table structure for table `action_sections`
--

CREATE TABLE `action_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_button` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_button` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `action_sections`
--

INSERT INTO `action_sections` (`id`, `language_id`, `background_image`, `first_title`, `second_title`, `first_button`, `first_button_url`, `second_button`, `second_button_url`, `image`, `created_at`, `updated_at`) VALUES
(2, 9, '61a6fe5929b63.jpg', 'هل أنت جاهز لهذا العرض؟', 'عرض 50٪ لأول 50 طالبًا وموجهًا.', 'كن طالبًا', 'https://codecanyon.kreativdev.com/coursela/user/signup', 'جميع الدورات', 'https://codecanyon.kreativdev.com/coursela/user/courses', '6280a19f2edad.png', '2021-10-05 22:35:19', '2022-05-15 05:55:20'),
(3, 8, '61a6fe5929b63.jpg', 'Are You Ready for This Offer?', '50% Offer for Very First 50 Students and Mentors.', 'Become A Student', 'https://codecanyon.kreativdev.com/coursela/user/signup', 'All Courses', 'https://codecanyon.kreativdev.com/coursela/user/courses', '6280a19f2edad.png', '2021-11-30 22:47:21', '2022-05-15 00:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `first_name`, `last_name`, `image`, `username`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Sadid Hasan', 'Rakib', '1632736531.png', 'admin', 'sadid.hasan14@gmail.com', '$2y$10$6Y4HCFAAIfqpklq2UIKhQuFetg9/LooM9m9jHdLjVs3dmc.5BMLf6', 1, NULL, '2022-02-27 04:29:13'),
(7, 4, 'Saeed', 'Mahmud', '1628396045.png', 'saeed', 'saeed@hotmail.com', '$2y$10$u.qEwF8xI2Uz6ZkuwCKIReA/kk9znTXZEzhfbf9pJs88eu.y/JhLS', 1, '2021-08-07 22:14:05', '2021-11-28 05:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `ad_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `resolution_type` smallint UNSIGNED NOT NULL COMMENT '1 => 300 x 250, 2 => 300 x 600, 3 => 728 x 90',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slot` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `ad_type`, `resolution_type`, `image`, `url`, `slot`, `views`, `created_at`, `updated_at`) VALUES
(7, 'banner', 3, '6283b18a04308.png', 'https://test.com/', NULL, 2, '2021-08-15 22:44:47', '2022-05-17 08:30:34'),
(8, 'banner', 2, '6283b1ecba039.png', 'https://www.nestle.com.bd/', NULL, 0, '2021-08-15 22:45:21', '2022-05-17 08:32:12'),
(9, 'banner', 1, '6283b1b894aaf.png', 'https://www.lg.com/bd', NULL, 0, '2021-08-15 23:12:31', '2022-05-17 08:31:20'),
(10, 'banner', 2, '6283b1e33bd46.png', 'https://www.toyota.com/', NULL, 2, '2021-08-15 23:13:44', '2022-05-17 08:32:03'),
(11, 'banner', 2, '6283b1d957c84.png', 'https://www.getrentequip.com/', NULL, 1, '2021-08-15 23:15:14', '2022-05-17 08:31:53'),
(12, 'banner', 1, '6283b1af026c4.png', 'https://www.batabd.com/', NULL, 0, '2021-08-15 23:16:41', '2022-05-17 08:31:11'),
(13, 'banner', 3, '6283b1916ce52.png', 'https://www.radiofoorti.fm/', NULL, 0, '2021-08-17 04:52:09', '2022-05-17 08:30:41'),
(14, 'banner', 3, '6283b1a074432.png', 'http://example.com/', NULL, 0, '2022-05-17 08:30:56', '2022-05-17 08:30:56'),
(15, 'banner', 1, '6283b1c846d90.png', 'http://example.com/', NULL, 0, '2022-05-17 08:31:36', '2022-05-17 08:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `uniqid` int UNSIGNED NOT NULL DEFAULT '12345',
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `website_title` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` decimal(8,5) DEFAULT NULL,
  `longitude` decimal(8,5) DEFAULT NULL,
  `theme_version` smallint UNSIGNED NOT NULL,
  `base_currency_symbol` varchar(255) DEFAULT NULL,
  `base_currency_symbol_position` varchar(20) DEFAULT NULL,
  `base_currency_text` varchar(20) DEFAULT NULL,
  `base_currency_text_position` varchar(20) DEFAULT NULL,
  `base_currency_rate` decimal(8,2) DEFAULT NULL,
  `primary_color` varchar(30) DEFAULT NULL,
  `secondary_color` varchar(30) DEFAULT NULL,
  `breadcrumb_overlay_color` varchar(30) DEFAULT NULL,
  `breadcrumb_overlay_opacity` decimal(4,2) DEFAULT NULL,
  `smtp_status` tinyint DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` int DEFAULT NULL,
  `encryption` varchar(50) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `from_mail` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `to_mail` varchar(255) DEFAULT NULL,
  `breadcrumb` varchar(255) DEFAULT NULL,
  `disqus_status` tinyint UNSIGNED DEFAULT NULL,
  `disqus_short_name` varchar(255) DEFAULT NULL,
  `google_recaptcha_status` tinyint DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) DEFAULT NULL,
  `whatsapp_status` tinyint UNSIGNED DEFAULT NULL,
  `whatsapp_number` varchar(20) DEFAULT NULL,
  `whatsapp_header_title` varchar(255) DEFAULT NULL,
  `whatsapp_popup_status` tinyint UNSIGNED DEFAULT NULL,
  `whatsapp_popup_message` text,
  `maintenance_img` varchar(255) DEFAULT NULL,
  `maintenance_status` tinyint DEFAULT NULL,
  `maintenance_msg` text,
  `bypass_token` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `admin_theme_version` varchar(10) NOT NULL DEFAULT 'light',
  `features_section_image` varchar(255) DEFAULT NULL,
  `testimonials_section_image` varchar(255) DEFAULT NULL,
  `course_categories_section_image` varchar(255) DEFAULT NULL,
  `notification_image` varchar(255) DEFAULT NULL,
  `google_adsense_publisher_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `uniqid`, `favicon`, `logo`, `website_title`, `email_address`, `contact_number`, `address`, `latitude`, `longitude`, `theme_version`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `primary_color`, `secondary_color`, `breadcrumb_overlay_color`, `breadcrumb_overlay_opacity`, `smtp_status`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `from_mail`, `from_name`, `to_mail`, `breadcrumb`, `disqus_status`, `disqus_short_name`, `google_recaptcha_status`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `whatsapp_status`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_status`, `whatsapp_popup_message`, `maintenance_img`, `maintenance_status`, `maintenance_msg`, `bypass_token`, `footer_logo`, `admin_theme_version`, `features_section_image`, `testimonials_section_image`, `course_categories_section_image`, `notification_image`, `google_adsense_publisher_id`) VALUES
(2, 12345, '1632723997.png', '62836670e968d.png', 'Coursela', 'contact@coursela.com', '+321-7890123', 'Los Angeles, USA', '34.05224', '-118.24368', 1, '$', 'left', 'USD', 'left', '1.00', '3051FF', 'F16001', '001B61', '0.50', 1, 'nl1-sr12.supercp.com', 587, 'TLS', 'admin@kreativdev.com', '8D[J.qkmzH,y', 'admin@kreativdev.com', 'Coursela', 'admin@kreativdev.com', '1634188347.jpg', 1, 'coursela', 0, '6LeJdwEbAAAAAMTYn_I2GN0iLSa25ja1GG30YZsZ', '6LeJdwEbAAAAAOG9wjJGyLk6BVh-X513O6GNtqLb', 1, '+880 1686321-356', 'Hi, there!', 1, 'If you have any issues, let us know.', '1632725312.png', 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.', NULL, '628368f29da9e.png', 'dark', '1633502472.jpg', '61bf1ed024d95.png', '61bf1fc25a8f6.jpg', '619b7d5e5e9df.png', 'pub-5457723037470904');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `image`, `serial_number`, `created_at`, `updated_at`) VALUES
(19, '6280c8d9b530c.jpg', 1, '2022-05-15 03:33:13', '2022-05-15 03:33:13'),
(20, '6280cc169c6a3.jpg', 2, '2022-05-15 03:33:13', '2022-05-15 03:47:02'),
(21, '6280cec65474f.jpg', 3, '2022-05-15 03:33:13', '2022-05-15 03:58:30'),
(22, '6280cf79b89b3.jpg', 4, '2022-05-15 03:33:13', '2022-05-15 04:01:29'),
(23, '6280d0469ef47.jpg', 5, '2022-05-15 03:33:13', '2022-05-15 04:04:54'),
(24, '6280d0d0a5182.jpg', 6, '2022-05-15 03:33:13', '2022-05-15 04:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 8, 'Web Development', 'web-development', 1, 1, '2021-10-12 22:51:29', '2022-05-15 03:11:46'),
(37, 8, 'Web Design', 'web-design', 1, 2, '2021-10-12 22:51:38', '2022-05-15 03:11:55'),
(38, 8, 'Personal Development', 'personal-development', 1, 3, '2021-10-12 22:51:52', '2022-05-15 03:12:06'),
(43, 8, 'Others', 'others', 1, 4, '2022-04-05 05:50:10', '2022-05-15 03:12:27'),
(44, 9, 'تطوير الشبكة', 'تطوير-الشبكة', 1, 1, '2021-10-12 22:51:29', '2022-05-15 03:11:46'),
(45, 9, 'تصميم المواقع', 'تصميم-المواقع', 1, 2, '2021-10-12 22:51:38', '2022-05-15 03:11:55'),
(46, 9, 'تطوير الذات', 'تطوير-الذات', 1, 3, '2021-10-12 22:51:52', '2022-05-15 03:12:06'),
(47, 9, 'آحرون', 'آحرون', 1, 4, '2022-04-05 05:50:10', '2022-05-15 03:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_informations`
--

CREATE TABLE `blog_informations` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_informations`
--

INSERT INTO `blog_informations` (`id`, `language_id`, `blog_category_id`, `blog_id`, `title`, `slug`, `author`, `content`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(33, 8, 36, 19, 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi', 'morbi-in-sem-quis-dui-placerat-ornare.-pellentesque-odio-nisi', 'Maximilian', '<p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Nunc dignissim risus id metus.</li></ul><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 03:33:13'),
(34, 9, 44, 19, 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi', 'المرض-في-التلفزيون-هو-تزيين-المسكن.-pellentesque-odio-nisi', 'ماكسيميليان', '<div>الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة</div><div><br /></div><div>إنها ليست مجرد حاجة لقطط تسخين سهلة. حان الوقت لبدء العمل على بقع العبارات. Aenean كريمينسيم pellentesque felis.</div><ul><li>الألم نفسه هو الحب ، ألم الزبون.</li><li>حان الوقت لبدء العمل على الضحك.</li><li>مؤلف البروتين</li><li>الآن تلك الابتسامة هي خوف صعب.</li><li>المرض في السيناريو هو أحد الأشياء الحقيقية للتزيين Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.</li></ul><div>البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف</div>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 03:33:13'),
(35, 8, 37, 20, 'Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris', 'donec-nec-justo-eget-felis-facilisis-fermentum.-aliquam-porttitor-mauris', 'Donnarumma', '<p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Nunc dignissim risus id metus.</li></ul><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 03:47:02'),
(36, 9, 45, 20, 'إنها ليست مجرد حاجة لقطط تسخين سهلة. Aliquam porttitor موريس', 'إنها-ليست-مجرد-حاجة-لقطط-تسخين-سهلة.-aliquam-porttitor-موريس', 'دوناروما', '<div>الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة</div><div><br /></div><div>إنها ليست مجرد حاجة لقطط تسخين سهلة. حان الوقت لبدء العمل على بقع العبارات. Aenean كريمينسيم pellentesque felis.</div><ul><li>الألم نفسه هو الحب ، ألم الزبون.</li><li>حان الوقت لبدء العمل على الضحك.</li><li>مؤلف البروتين</li><li>الآن تلك الابتسامة هي خوف صعب.</li><li>المرض في السيناريو هو أحد الأشياء الحقيقية للتزيين Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.</li></ul><div>البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف</div>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 03:47:02'),
(37, 8, 38, 21, 'Phasellus ultrices nulla quis nibh. Quisque a lectus', 'phasellus-ultrices-nulla-quis-nibh.-quisque-a-lectus', 'Gianluca', '<p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Nunc dignissim risus id metus.</li></ul><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 03:58:30'),
(38, 9, 46, 21, 'لا توجد كرة سلة تم اختيار الجميع', 'لا-توجد-كرة-سلة-تم-اختيار-الجميع', 'جيانلوكا', '<div>الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة</div><div><br /></div><div>إنها ليست مجرد حاجة لقطط تسخين سهلة. حان الوقت لبدء العمل على بقع العبارات. Aenean كريمينسيم pellentesque felis.</div><ul><li>الألم نفسه هو الحب ، ألم الزبون.</li><li>حان الوقت لبدء العمل على الضحك.</li><li>مؤلف البروتين</li><li>الآن تلك الابتسامة هي خوف صعب.</li><li>المرض في السيناريو هو أحد الأشياء الحقيقية للتزيين Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.</li></ul><div>البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف</div>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 03:47:02'),
(39, 8, 43, 22, 'Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus', 'nam-dui-mi-tincidunt-quis-accumsan-porttitor-facilisis-luctus-metus', 'Arnold', '<p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Nunc dignissim risus id metus.</li></ul><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 03:58:30'),
(40, 9, 47, 22, 'Nam dui mi ، tincidunt quis ، accumsan porttitor ، حزن سهل ، خوف', 'nam-dui-mi-،-tincidunt-quis-،-accumsan-porttitor-،-حزن-سهل-،-خوف', 'أرنولد', '<div>الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة</div><div><br /></div><div>إنها ليست مجرد حاجة لقطط تسخين سهلة. حان الوقت لبدء العمل على بقع العبارات. Aenean كريمينسيم pellentesque felis.</div><ul><li>الألم نفسه هو الحب ، ألم الزبون.</li><li>حان الوقت لبدء العمل على الضحك.</li><li>مؤلف البروتين</li><li>الآن تلك الابتسامة هي خوف صعب.</li><li>المرض في السيناريو هو أحد الأشياء الحقيقية للتزيين Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.</li></ul><div>البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف</div>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 03:47:02'),
(41, 8, 36, 23, 'Vestibulum commodo felis quis tortor.', 'vestibulum-commodo-felis-quis-tortor.', 'Modric', '<p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Nunc dignissim risus id metus.</li></ul><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 04:04:54'),
(42, 9, 44, 23, 'من أجل راحة القط الذي هو الجلاد.', 'من-أجل-راحة-القط-الذي-هو-الجلاد.', 'مودريتش', '<div>الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة</div><div><br /></div><div>إنها ليست مجرد حاجة لقطط تسخين سهلة. حان الوقت لبدء العمل على بقع العبارات. Aenean كريمينسيم pellentesque felis.</div><ul><li>الألم نفسه هو الحب ، ألم الزبون.</li><li>حان الوقت لبدء العمل على الضحك.</li><li>مؤلف البروتين</li><li>الآن تلك الابتسامة هي خوف صعب.</li><li>المرض في السيناريو هو أحد الأشياء الحقيقية للتزيين Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.</li></ul><div>البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف</div>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 04:04:54'),
(43, 8, 37, 24, 'Vivamus vestibulum ntulla nec ante.', 'vivamus-vestibulum-ntulla-nec-ante.', 'Karem', '<p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.</p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Nunc dignissim risus id metus.</li></ul><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.</p><p style=\"font-size:18px;line-height:26px;font-family:stolzl, sans-serif;\">Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 04:07:12'),
(44, 9, 45, 24, 'العيش عند مدخل لا شيء على الإطلاق.', 'العيش-عند-مدخل-لا-شيء-على-الإطلاق.', 'كريم', '<div>الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة</div><div><br /></div><div>إنها ليست مجرد حاجة لقطط تسخين سهلة. حان الوقت لبدء العمل على بقع العبارات. Aenean كريمينسيم pellentesque felis.</div><ul><li>الألم نفسه هو الحب ، ألم الزبون.</li><li>حان الوقت لبدء العمل على الضحك.</li><li>مؤلف البروتين</li><li>الآن تلك الابتسامة هي خوف صعب.</li><li>المرض في السيناريو هو أحد الأشياء الحقيقية للتزيين Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.</li></ul><div>البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف</div>', NULL, NULL, '2022-05-15 03:33:13', '2022-05-15 04:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_alerts`
--

CREATE TABLE `cookie_alerts` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `cookie_alert_status` tinyint UNSIGNED NOT NULL,
  `cookie_alert_btn_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_alert_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookie_alerts`
--

INSERT INTO `cookie_alerts` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_btn_text`, `cookie_alert_text`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'I Agree', '<p>We use cookies to give you the best online experience.<br>By continuing to browse the site you are agreeing to our use of cookies.</p>', '2021-06-02 06:25:54', '2021-08-08 06:50:31'),
(2, 9, 1, 'أنا موافق', '<p><font face=\"Segoe UI, San Francisco, Ubuntu, Fira Sans, Roboto, Arial, Helvetica, sans-serif\"><span style=\"font-size: 13px; white-space: pre;\">نحن نستخدم ملفات تعريف الارتباط لنمنحك أفضل تجربة عبر الإنترنت.\nمن خلال الاستمرار في تصفح الموقع ، فإنك توافق على استخدامنا لملفات تعريف الارتباط.</span></font><br></p>', '2021-08-29 04:20:43', '2021-08-29 04:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `count_informations`
--

CREATE TABLE `count_informations` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int UNSIGNED NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `count_informations`
--

INSERT INTO `count_informations` (`id`, `language_id`, `icon`, `color`, `title`, `amount`, `serial_number`, `created_at`, `updated_at`) VALUES
(5, 8, 'fas fa-user-friends', '24FFCD', 'Qualified Instructors', 20, 1, '2021-10-11 01:20:18', '2022-05-15 00:17:03'),
(6, 8, 'fas fa-globe', 'FFAB74', 'Worldwide Students', 1490, 2, '2021-10-11 01:20:47', '2021-12-19 04:44:42'),
(7, 8, 'fas fa-book-reader', '00FCFF', 'Courses', 100, 3, '2021-10-11 01:21:31', '2021-12-19 04:45:36'),
(8, 8, 'fas fa-calendar-alt', 'FFC924', 'Years\' Experience', 10, 4, '2021-10-11 01:21:55', '2021-12-19 04:46:07'),
(9, 9, 'fas fa-user-friends', '24FFCD', 'المستخدمون الفوريون', 450, 1, '2021-11-30 23:04:13', '2021-12-21 22:44:14'),
(10, 9, 'fas fa-globe', 'FFAB74', 'طلاب من جميع أنحاء العالم', 1490, 2, '2021-11-30 23:04:47', '2021-12-21 22:44:56'),
(11, 9, 'fas fa-book-reader', '00FCFF', 'الدورات', 100, 3, '2021-11-30 23:05:27', '2021-12-21 22:46:00'),
(12, 9, 'fas fa-calendar-alt', 'FFC924', 'سنوات خبرة', 10, 4, '2021-11-30 23:06:39', '2021-12-21 22:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `courses` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `value`, `start_date`, `end_date`, `courses`, `created_at`, `updated_at`) VALUES
(4, 'Victory', 'Victory21', 'percentage', '5.00', '2021-07-01', '2022-06-15', '[\"10\",\"14\",\"15\"]', '2021-07-04 00:39:24', '2022-04-10 05:23:37'),
(5, 'Winter Sell', 'WinterSell', 'fixed', '15.00', '2021-07-01', '2021-12-31', NULL, '2021-07-04 00:43:31', '2021-11-01 22:01:16'),
(6, 'Pratik', 'test', 'percentage', '10.00', '2022-03-31', '2022-05-05', '[\"14\",\"20\"]', '2022-04-10 04:24:10', '2022-04-10 05:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `thumbnail_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pricing_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_price` decimal(8,2) UNSIGNED DEFAULT NULL,
  `current_price` decimal(8,2) UNSIGNED DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `is_featured` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `average_rating` decimal(2,1) UNSIGNED DEFAULT NULL,
  `duration` time NOT NULL DEFAULT '00:00:00',
  `certificate_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `video_watching` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `quiz_completion` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `min_quiz_score` decimal(8,2) NOT NULL DEFAULT '0.00',
  `certificate_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `thumbnail_image`, `video_link`, `cover_image`, `pricing_type`, `previous_price`, `current_price`, `status`, `is_featured`, `average_rating`, `duration`, `certificate_status`, `video_watching`, `quiz_completion`, `min_quiz_score`, `certificate_title`, `certificate_text`, `created_at`, `updated_at`) VALUES
(1, '627fa21220d08.jpg', 'https://www.youtube.com/watch?v=8KaJRw-rfn8', '627fa21221be2.jpg', 'premium', '99.00', '84.00', 'published', 'yes', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 06:35:30', '2022-05-14 06:48:56'),
(3, '627fb70d5b0f5.jpg', 'https://www.youtube.com/watch?v=ur6I5m2nTvk', '627fb70d5b40d.jpg', 'premium', '120.00', '70.00', 'published', 'yes', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 08:05:01', '2022-05-14 08:11:18'),
(4, '627fb87424d30.jpg', 'https://www.youtube.com/watch?v=kLO4X_3VYdg', '627fb87425051.jpg', 'free', NULL, NULL, 'published', 'yes', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 08:11:00', '2022-05-14 08:11:16'),
(5, '627fb98fc707b.jpg', 'https://www.youtube.com/watch?v=lAOkx2yZESY', '627fb98fc737c.jpg', 'premium', '59.00', '39.00', 'published', 'no', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 08:15:43', '2022-05-14 08:16:13'),
(6, '627fba7901443.jpg', 'https://www.youtube.com/watch?v=_lyzy-vChh4', '627fba7901a5d.jpg', 'premium', '159.00', '99.00', 'published', 'no', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 08:19:37', '2022-05-14 08:33:19'),
(7, '627fbcdeda058.jpg', 'https://www.youtube.com/watch?v=bixR-KIJKYM', '627fbcdeda428.jpg', 'free', NULL, NULL, 'published', 'no', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 08:29:50', '2022-05-14 08:32:46'),
(8, '627fbd884ef09.jpg', 'https://www.youtube.com/watch?v=bixR-KIJKYM', '627fbd884f2f4.jpg', 'premium', '89.00', '69.00', 'published', 'no', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 08:32:40', '2022-05-14 08:32:47'),
(9, '627fbe68aa0d5.jpg', 'https://www.youtube.com/watch?v=bixR-KIJKYM', '627fbe68aa6fe.jpg', 'premium', '99.00', '79.00', 'published', 'no', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 08:36:24', '2022-05-14 08:39:42'),
(10, '627fbf27aecde.jpg', 'https://www.youtube.com/watch?v=gOaUbPgww5M', '627fbf27af1db.jpg', 'premium', '129.00', '89.00', 'published', 'no', NULL, '00:00:00', 1, 1, 0, '0.00', NULL, NULL, '2022-05-14 08:39:35', '2022-05-14 08:39:40'),
(11, '6280c0410f740.png', 'https://www.youtube.com/watch?v=XBj_le81sAc', '6280c0410f929.jpg', 'premium', '99.00', '69.00', 'published', 'yes', '4.0', '00:00:00', 1, 1, 1, '50.00', 'Certificate of Completion', 'This is to certify that {name} successfully completed {duration} of {title} on {date}', '2022-05-15 02:56:33', '2022-11-12 23:40:30'),
(12, '627fb5112a63b.jpg', 'https://www.youtube.com/watch?v=mISRTGYtWVs', '6280e90e409c5.jpg', 'premium', '149.00', '90.00', 'published', 'no', '5.0', '00:01:00', 1, 1, 0, '0.00', NULL, '', '2022-05-14 07:56:33', '2022-11-13 00:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `course_categories`
--

CREATE TABLE `course_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `is_featured` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_categories`
--

INSERT INTO `course_categories` (`id`, `language_id`, `icon`, `color`, `name`, `slug`, `status`, `serial_number`, `is_featured`, `created_at`, `updated_at`) VALUES
(41, 8, 'fas fa-desktop', 'FF154C', 'Software Development', 'software-development', 1, 1, 'yes', '2022-05-14 04:11:10', '2022-05-15 00:57:41'),
(42, 8, 'fas fa-paint-roller', 'D479FF', 'Web Design', 'web-design', 1, 2, 'yes', '2022-05-14 04:13:14', '2022-05-15 00:57:43'),
(43, 8, 'far fa-chart-bar', '6CDABD', 'Digital Marketting', 'digital-marketting', 1, 3, 'yes', '2022-05-14 04:14:24', '2022-05-15 00:57:45'),
(44, 8, 'far fa-smile', '2687FF', 'Personal Development', 'personal-development', 1, 4, 'yes', '2022-05-14 04:15:36', '2022-05-15 00:57:47'),
(45, 9, 'fas fa-desktop', 'FF154C', 'تطوير البرمجيات', 'تطوير-البرمجيات', 1, 1, 'no', '2022-05-14 04:11:10', '2022-05-14 04:11:55'),
(46, 9, 'fas fa-paint-roller', 'D479FF', 'تصميم المواقع', 'تصميم-المواقع', 1, 2, 'no', '2022-05-14 04:13:14', '2022-05-14 04:13:14'),
(47, 9, 'far fa-chart-bar', '6CDABD', 'التسويق الرقمي', 'التسويق-الرقمي', 1, 3, 'no', '2022-05-14 04:14:24', '2022-05-14 04:14:24'),
(48, 9, 'far fa-smile', '2687FF', 'تطوير الذات', 'تطوير-الذات', 1, 4, 'no', '2022-05-14 04:15:36', '2022-05-14 04:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `course_enrolments`
--

CREATE TABLE `course_enrolments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `course_price` decimal(11,2) UNSIGNED DEFAULT NULL,
  `discount` decimal(11,2) UNSIGNED DEFAULT NULL,
  `grand_total` decimal(11,2) UNSIGNED DEFAULT NULL,
  `currency_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_text_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol_position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_enrolments`
--

INSERT INTO `course_enrolments` (`id`, `user_id`, `order_id`, `billing_first_name`, `billing_last_name`, `billing_email`, `billing_contact_number`, `billing_address`, `billing_city`, `billing_state`, `billing_country`, `course_id`, `course_price`, `discount`, `grand_total`, `currency_text`, `currency_text_position`, `currency_symbol`, `currency_symbol_position`, `payment_method`, `gateway_type`, `payment_status`, `attachment`, `invoice`, `created_at`, `updated_at`) VALUES
(13, 9, '6368eaf8c27c0', 'Saeed', 'Mahmud', 'sadid.hasan14@gmail.com', '917428730894', 'Mirpur 12', 'Dhaka', NULL, 'Bangladesh', 12, '90.00', NULL, '90.00', 'INR', 'left', '₹', 'left', 'Instamojo', 'online', 'completed', NULL, '6368eaf8c27c0.pdf', '2022-11-07 05:24:40', '2022-11-07 05:24:41'),
(14, 9, '63708a96522ce', 'Saeed', 'Mahmud', 'sadid.hasan14@gmail.com', '917428730894', 'Mirpur 12', 'Dhaka', NULL, 'Bangladesh', 8, '69.00', NULL, '69.00', 'USD', 'left', '$', 'left', 'Bank of America', 'offline', 'completed', '63708a96519ed.jpg', '63708a96522ce.pdf', '2022-11-13 00:11:34', '2022-11-13 00:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `course_faqs`
--

CREATE TABLE `course_faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_faqs`
--

INSERT INTO `course_faqs` (`id`, `course_id`, `language_id`, `question`, `answer`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 11, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(2, 11, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(3, 11, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(4, 11, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(5, 11, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(6, 11, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(7, 10, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(8, 10, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(9, 10, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(10, 10, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(11, 10, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(12, 10, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(13, 9, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(14, 9, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(15, 9, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(16, 9, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(17, 9, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(18, 9, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(19, 8, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(20, 8, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(21, 8, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(22, 8, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(23, 8, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(24, 8, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(25, 7, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(26, 7, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(27, 7, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(28, 7, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(29, 7, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(30, 7, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(31, 6, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(32, 6, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(33, 6, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(34, 6, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(35, 6, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(36, 6, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(37, 5, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(38, 5, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(39, 5, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(40, 5, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(41, 5, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(42, 5, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(43, 4, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(44, 4, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(45, 4, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(46, 4, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(47, 4, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(48, 4, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(49, 3, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(50, 3, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(51, 3, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(52, 3, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(53, 3, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(54, 3, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(55, 12, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(56, 12, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(57, 12, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(58, 12, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(59, 12, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(60, 12, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(61, 1, 8, 'Fusce pellentesque suscipit nibh ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(62, 1, 8, 'Nunc dignissim risus id metus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(63, 1, 8, 'Donec quis dui at dolor tempor interdum ?', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13'),
(64, 1, 9, 'فوسكي pellentesque suscipit nibh؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف', 1, '2022-05-15 04:40:26', '2022-05-15 04:40:26'),
(65, 1, 9, 'الآن هذا هو أفضل خوف؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة', 2, '2022-05-15 04:40:49', '2022-05-15 04:40:49'),
(66, 1, 9, 'حتى ذلك الحين من يستحق الألم', 'المرض في التلفزيون هو تزيين المسكن. Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 3, '2022-05-15 04:41:13', '2022-05-15 04:41:13');

-- --------------------------------------------------------

--
-- Table structure for table `course_informations`
--

CREATE TABLE `course_informations` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `course_category_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thanks_page_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_informations`
--

INSERT INTO `course_informations` (`id`, `language_id`, `course_category_id`, `course_id`, `title`, `slug`, `instructor_id`, `features`, `description`, `meta_keywords`, `meta_description`, `thanks_page_content`, `created_at`, `updated_at`) VALUES
(1, 8, 41, 1, 'Full Stack Web Development Course - HTML, CSS, JS, PHP', 'full-stack-web-development-course---html-css-js-php', 18, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 06:35:30', '2022-05-14 06:35:30'),
(3, 9, 48, 1, 'دورة تطوير الويب الكاملة - HTML، CSS، JS، PHP', 'دورة-تطوير-الويب-الكاملة---html،-css،-js،-php', 22, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 06:48:09', '2022-05-14 06:48:09'),
(4, 8, 41, 12, 'Laravel Full Course with Real World Project - Model, View, Controller', 'laravel-full-course-with-real-world-project---model-view-controller', 19, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 07:56:33', '2022-05-14 07:56:33'),
(5, 9, 45, 12, 'دورة كاملة في Laravel مع مشروع Real World - نموذج ، عرض ، وحدة تحكم', 'دورة-كاملة-في-laravel-مع-مشروع-real-world---نموذج-،-عرض-،-وحدة-تحكم', 23, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 07:56:33', '2022-05-14 07:56:33'),
(6, 8, 41, 3, 'Mobile App Development with React Native, Hybrid Mobile App', 'mobile-app-development-with-react-native-hybrid-mobile-app', 20, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 08:05:01', '2022-05-14 08:05:01'),
(7, 9, 45, 3, 'تطوير تطبيقات الأجهزة المحمولة باستخدام تطبيق React Native و Hybrid Mobile', 'تطوير-تطبيقات-الأجهزة-المحمولة-باستخدام-تطبيق-react-native-و-hybrid-mobile', 24, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 08:05:01', '2022-05-14 08:05:01'),
(8, 8, 42, 4, 'Build Landing Page Website with HTML, CSS, Javascript', 'build-landing-page-website-with-html-css-javascript', 21, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 08:11:00', '2022-05-14 08:11:00'),
(9, 9, 46, 4, 'أنشئ موقعًا للصفحة المقصودة باستخدام HTML و CSS و Javascript', 'أنشئ-موقعًا-للصفحة-المقصودة-باستخدام-html-و-css-و-javascript', 25, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 08:11:00', '2022-05-14 08:11:00'),
(10, 8, 42, 5, 'Responsive Website Design with Media Query CSS', 'responsive-website-design-with-media-query-css', 18, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 08:15:43', '2022-05-14 08:15:43'),
(11, 9, 46, 5, 'تصميم موقع ويب سريع الاستجابة باستخدام Media Query CSS', 'تصميم-موقع-ويب-سريع-الاستجابة-باستخدام-media-query-css', 22, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 08:15:43', '2022-05-14 08:15:43'),
(12, 8, 42, 6, 'Full UI/UX Design - Adobe Photoshop, Figma, XD', 'full-uiux-design---adobe-photoshop-figma-xd', 19, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 08:19:37', '2022-05-14 08:19:37'),
(13, 9, 46, 6, 'تصميم UI / UX بالكامل - Adobe Photoshop و Figma و XD', 'تصميم-ui--ux-بالكامل---adobe-photoshop-و-figma-و-xd', 23, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 08:19:37', '2022-05-14 08:19:37'),
(14, 8, 43, 7, 'Online Marketing For Your Local Business Made Simple', 'online-marketing-for-your-local-business-made-simple', 20, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 08:29:50', '2022-05-14 08:29:50'),
(15, 9, 47, 7, 'أصبح التسويق عبر الإنترنت لعملك المحلي أمرًا بسيطًا', 'أصبح-التسويق-عبر-الإنترنت-لعملك-المحلي-أمرًا-بسيطًا', 24, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 08:29:50', '2022-05-14 08:29:50');
INSERT INTO `course_informations` (`id`, `language_id`, `course_category_id`, `course_id`, `title`, `slug`, `instructor_id`, `features`, `description`, `meta_keywords`, `meta_description`, `thanks_page_content`, `created_at`, `updated_at`) VALUES
(16, 8, 43, 8, 'Social Media Marketting - Facebook, Website, Instagram, Google', 'social-media-marketting---facebook-website-instagram-google', 21, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 08:32:40', '2022-05-14 08:32:40'),
(17, 9, 47, 8, 'التسويق عبر وسائل التواصل الاجتماعي - Facebook ، Website ، Instagram ، Google', 'التسويق-عبر-وسائل-التواصل-الاجتماعي---facebook-،-website-،-instagram-،-google', 24, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 08:32:40', '2022-05-14 08:32:40'),
(18, 8, 43, 9, 'Business Branding - Website, Facebook, Google, Instagram', 'business-branding---website-facebook-google-instagram', 21, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 08:36:24', '2022-05-14 08:36:24'),
(19, 9, 47, 9, 'العلامات التجارية للأعمال - موقع الويب ، Facebook ، Google ، Instagram', 'العلامات-التجارية-للأعمال---موقع-الويب-،-facebook-،-google-،-instagram', 25, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 08:36:24', '2022-05-14 08:36:24'),
(20, 8, 44, 10, 'How to Become Super Productive & Own Super Focus', 'how-to-become-super-productive-&-own-super-focus', 18, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-14 08:39:35', '2022-05-14 08:39:35'),
(21, 9, 48, 10, 'كيف تصبح منتجًا فائقًا وتملك تركيزًا فائقًا', 'كيف-تصبح-منتجًا-فائقًا-وتملك-تركيزًا-فائقًا', 22, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-14 08:39:35', '2022-05-14 08:39:35'),
(22, 8, 41, 11, 'PHP Web Development Course with Real World Project', 'php-web-development-course-with-real-world-project', 19, '28.5 hours on-demand video\r\n14 articles\r\n66 downloadable resources\r\nFull lifetime access\r\nAccess on mobile and TV\r\nCertificate of completion', '<p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam</span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p style=\"line-height:1.6;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><span style=\"font-weight:600;\">Requirements:</span></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vestibulum auctor dapibus neque.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What this couse covers:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</span></p><p style=\"font-size:18px;line-height:28px;font-style:inherit;font-weight:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\"><br /></span></p><p style=\"font-size:18px;line-height:1;font-style:inherit;font-family:stolzl, sans-serif;\"><span style=\"font-weight:600;\">What will you learn:</span></p><ul><li style=\"font-style:inherit;font-size:18px;line-height:1;font-family:stolzl, sans-serif;\"><span style=\"font-style:inherit;font-weight:inherit;\">Vestibulum auctor dapibus neque.</span></li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Nunc dignissim risus id metus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Cras ornare tristique elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;font-family:stolzl, sans-serif;\">Vivamus vestibulum ntulla nec ante</li></ul>', NULL, NULL, NULL, '2022-05-15 02:56:33', '2022-05-15 02:56:33'),
(23, 9, 45, 11, 'دورة تطوير الويب PHP مع مشروع Real World Project', 'دورة-تطوير-الويب-php-مع-مشروع-real-world-project', 23, '28.5 ساعة فيديو حسب الطلب\r\n14 مقالا\r\n66 من الموارد القابلة للتنزيل\r\nالوصول الكامل مدى الحياة\r\nالوصول على الهاتف المحمول والتلفزيون\r\nشهادة إتمام', '<p>لكن لكي تفهم من أين يكون كل خطأ مولودًا لذة الاتهام والثناء على الألم ، سأفتح الأمر برمته ، وسأشرح نفس الأشياء التي قالها مخترع الحقيقة هذا ، ولأنه كان مهندس الحقيقة. الحياة المباركة. فلا أحد يرفض المتعة أو يكرهها أو يتجنبها ، لأنها متعة بحد ذاتها ، ولكن لأن الآلام الشديدة تنجم عن أولئك الذين لا يعرفون كيف يتبعون اللذة بالعقل.</p><p><br /></p><p>علاوة على ذلك ، لا يوجد من يرغب في الحصول على الألم ، لأن الألم نفسه هو حب وتقوى ، ويريد اكتسابه ، ولكن لأن أوقاتًا من هذا القبيل لا تحدث ، حتى أنه من خلال الكد والألم قد يبحث عن بعض اللذة الكبيرة. من أجل الوصول إلى أقل تقدير ، يقوم أي واحد منا بأي تمرين بدني</p><p><br /></p><p>متطلبات:</p><p><br /></p><p>الألم نفسه هو الحب ، ألم الزبون.</p><p>حان الوقت لبدء العمل على الضحك.</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>ما يغطيه هذا القميص:</p><p><br /></p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p><p>مرحبًا ، إنه يريد الحصول عليها ، ولكن لأنه لا يفعل ذلك ، تسقط أحيانًا أوقات من هذا النوع حتى يبحث عن متعة كبيرة من خلال الكد والألم. فمن منا يقوم ، إلى أدنى درجة ، بأي تمرين بدني شاق ، باستثناء الحصول على بعض المزايا منه؟ ومن يستطيع أن يدين بحق من يريد أن يكون في تلك المتعة بدلاً من أن ينزعج منه؟</p><p><br /></p><p>ما سوف تتعلم:</p><p>مؤلف البروتين</p><p>الآن تلك الابتسامة هي خوف صعب.</p><p>لتزيين الشاشة الحزينة</p><p>العيش عند مدخل لا شيء</p>', NULL, NULL, NULL, '2022-05-15 02:56:33', '2022-05-15 02:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `course_reviews`
--

CREATE TABLE `course_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` smallint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_reviews`
--

INSERT INTO `course_reviews` (`id`, `user_id`, `course_id`, `comment`, `rating`, `created_at`, `updated_at`) VALUES
(1, 9, 11, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 4, '2022-05-16 06:33:53', '2022-05-16 06:33:53'),
(2, 9, 12, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable', 5, '2022-05-16 06:34:41', '2022-05-16 06:34:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `question`, `answer`, `serial_number`, `created_at`, `updated_at`) VALUES
(5, 8, 'How Donec Poseur Velit Fauci bus Auctor?', 'It is a long-established fact that reader and distracted this is readable content of a page when looking at its layout the point of using labored Ipsum is that it has a Morea normal the most finish distribution text of the printing and typesetting has been the industry.', 1, '2021-06-26 00:35:52', '2021-12-01 04:03:16'),
(6, 8, 'How Frequently Auctor Quam Vitae Fermtum?', 'It is a long established fact that reader and distracted this is readabale content of a page when looking at its layoi The point of usineg laiorem Ipsum is that it has a morea normal the most finish distribution text of the printing and typesetting has been the industry.', 2, '2021-06-26 00:38:14', '2021-06-26 00:38:14'),
(7, 8, 'How Frequently should I See A trainer?', 'It is a long established fact that reader and distracted this is readabale content of a page when looking at its layoi The point of usineg laiorem Ipsum is that it has a morea normal the most finish distribution text of the printing and typesetting has been the industry.', 3, '2021-06-26 00:39:02', '2021-06-26 00:39:02'),
(10, 9, 'في سحقت هيروشيما البريطاني يتم, غريمه باحتلال الأيديولوجية،', 'حشد الثقيل المنتصر ثم, أسر قررت تم. وغير تصفح الحزب واستمر, مشروط الساحلية هذا ان. أما معركة لبلجيكا، من, الألوف الثقيلة الإنجليزية أسر ٣٠. ٣٠ دار أمام أحدث, أما بحشد الهادي الدولارات ما, هو الحزب الصفحة محاولات قبل. وبحلول الخنادق الأوروبية، ان غير, وليرتفع برلين، انه, انتباه الوزراء البولندي تم تلك.', 1, '2021-08-29 06:57:35', '2021-08-29 06:57:35'),
(14, 9, 'نتيجة لظروف ما قد تكمن السعاده فيما نتحمله', 'هنالك العديد من الأنواع المتوفرة لنصوص لوريم إيبسوم، ولكن الغالبية تم تعديلها بشكل ما عبر إدخال بعض النوادر أو الكلمات العشوائية إلى النص. إن كنت تريد أن تستخدم نص لوريم إيبسوم ما، عليك أن تتحقق أولاً أن ليس هناك أي كلمات أو عبارات محرجة أو غير لائقة مخبأة في هذا النص. بينما تعمل جميع مولّدات نصوص لوريم إيبسوم على الإنترنت على إعادة تكرار مقاطع من نص لوريم إيبسوم نفسه عدة مرات بما تتطلبه الحاجة، يقوم مولّدنا هذا باستخدام كلمات من قاموس يحوي على أكثر من 200 كلمة لا تينية، مضاف إليها مجموعة من الجمل النموذجية، لتكوين نص لوريم إيبسوم ذو شكل منطقي قريب إلى النص الحقيقي. وبالتالي يكون النص الناتح خالي من التكرار، أو أي كلمات أو عبارات غير لائقة أو ما شابه. وهذا ما يجعله أول مولّد نص لوريم إيبسوم حقيقي على الإنترنت.', 2, '2021-12-01 04:04:11', '2021-12-01 04:04:11'),
(15, 9, 'للمصممين نص لوريم ايبسوم بالعربي عربي انجليزي', 'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي.\r\n\r\nوخلافاَ للاعتقاد السائد فإن لوريم إيبسوم ليس نصاَ عشوائياً، بل إن له جذور في الأدب اللاتيني الكلاسيكي منذ العام 45 قبل الميلاد. من كتاب \"حول أقاصي الخير والشر\"', 3, '2021-12-01 04:05:29', '2021-12-01 04:05:29'),
(16, 8, 'Vestibulum commodo felis quis tortor ?', 'Praesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus', 4, '2021-06-26 00:35:52', '2021-12-01 04:03:16'),
(17, 8, 'Aliquam tincidunt mauris eu risus ?', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.', 5, '2021-06-26 00:38:14', '2021-06-26 00:38:14'),
(18, 8, 'Integer vitae libero ac risus egestas placerat ?', 'Donec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\r\n\r\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.', 6, '2021-06-26 00:39:02', '2021-06-26 00:39:02'),
(19, 9, 'الدهليز السلع فيليس كويس التعذيب؟', 'البروتين الحالي ، ولا مجرى الحلق ، ولا حاجة الجلاد للبشر ، كان عملًا رائعًا للحوم البقر. ربما كانت عطلة نهاية الأسبوع. لشعبي ، الذين بدأوا ، طبقة العبارة ، الحزن السهل ، الخوف\r\nلا توجد كرة سلة تم اختيار الجميع. Donec consectetuer ligula vulputate sem tristique cursus', 4, '2021-06-26 00:35:52', '2021-12-01 04:03:16'),
(20, 9, 'حان الوقت لبدء العمل على الضحك؟', 'الألم نفسه هو الحب ، ألم الزبون. حتى أكره كل عطلة نهاية الأسبوع الكثير من eros كان العرض قبيحًا كما كان. الجرة الجرة', 5, '2021-06-26 00:38:14', '2021-06-26 00:38:14'),
(21, 9, 'السيرة الذاتية الصحيحة Libero ac risus egestas placerat؟', 'إنها ليست مجرد حاجة لقطط تسخين سهلة. حان الوقت لبدء العمل على بقع العبارات. Aenean كريمينسيم pellentesque felis.\r\n\r\nالمرض في السيناريو هو أحد الأشياء الحقيقية للتزيين Pellentesque odio nisi ، euismod in ، pharetra a ، ultricies in ، Diam. لكن القوس. عواقب الغد.', 6, '2021-06-26 00:39:02', '2021-06-26 00:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `background_color`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(6, 8, '0066FF', 'fas fa-book-reader', 'Highly Qualified Mentors & Instructors', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 3, '2021-10-11 00:11:50', '2022-05-15 00:03:40'),
(7, 8, '8976FF', 'fas fa-book', 'Quizzes, Videos, Code Snippets & More', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 2, '2021-10-11 00:13:02', '2022-05-15 00:02:41'),
(8, 8, '30BCFF', 'fas fa-chalkboard-teacher', 'Course Completion Certificate', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 1, '2021-10-11 00:13:44', '2022-05-15 00:01:54'),
(12, 8, '2ECC71', NULL, 'Drag & Drop Lesson Contents Decoration', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 4, '2022-05-15 00:05:22', '2022-05-15 00:06:29'),
(13, 9, '0066FF', 'fas fa-book-reader', 'الموجهين والمدربين المؤهلين تأهيلا عاليا', 'اطلع على أدوات التعلم الإلكتروني التي يستخدمها منافسوك بالفعل - ابدأ الآن! يساعد Get App أكثر من 800 ألف شركة في العثور على أفضل البرامج لاحتياجاتهم.', 3, '2021-10-11 00:11:50', '2022-05-15 00:03:40'),
(14, 9, '8976FF', 'fas fa-book', 'الاختبارات القصيرة ومقاطع الفيديو ومقتطفات التعليمات البرمجية والمزيد', 'اطلع على أدوات التعلم الإلكتروني التي يستخدمها منافسوك بالفعل - ابدأ الآن! يساعد Get App أكثر من 800 ألف شركة في العثور على أفضل البرامج لاحتياجاتهم.', 2, '2021-10-11 00:13:02', '2022-05-15 00:02:41'),
(15, 9, '30BCFF', 'fas fa-chalkboard-teacher', 'شهادة إتمام الدورة', 'اطلع على أدوات التعلم الإلكتروني التي يستخدمها منافسوك بالفعل - ابدأ الآن! يساعد Get App أكثر من 800 ألف شركة في العثور على أفضل البرامج لاحتياجاتهم.', 1, '2021-10-11 00:13:44', '2022-05-15 00:01:54'),
(16, 9, '2ECC71', NULL, 'سحب وإسقاط زخرفة محتويات الدرس', 'اطلع على أدوات التعلم الإلكتروني التي يستخدمها منافسوك بالفعل - ابدأ الآن! يساعد Get App أكثر من 800 ألف شركة في العثور على أفضل البرامج لاحتياجاتهم.', 4, '2022-05-15 00:05:22', '2022-05-15 00:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `footer_contents`
--

CREATE TABLE `footer_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `footer_background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_company` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright_background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_contents`
--

INSERT INTO `footer_contents` (`id`, `language_id`, `footer_background_color`, `about_company`, `copyright_background_color`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 8, '001B61', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Possimus dignissimos quibusdam quia sit delectus. Cupiditate corporis, delectus quo ullam repudiandae illum culpa, magni modi, asperiores quis non magnam fugit vitae!', '003A91', 'Copyright ©2022. All Rights Reserved.', '2021-06-19 05:57:47', '2022-11-07 05:37:31'),
(2, 9, '001B61', 'كما أن وقام وبدأت, لم أدوات للمجهود بلا. إذ لها الأول الستار, تحت وصغار مدينة عل. أي بحشد ليرتفع الساحلية أما, ليركز الهادي للأسطول ما هذا, أسابيع الروسية وتم عن. وفي مع شدّت فكان أدوات. سمّي تعداد ونستون هذا ما. به، بـ الخاصّة هيروشيما, وربع جندي الشهير الساحل.', '003A91', '<p>حقوق النشر © 2021. كل الحقوق محفوظة.<br /></p>', '2021-08-29 07:01:46', '2021-12-22 00:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `fun_fact_sections`
--

CREATE TABLE `fun_fact_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fun_fact_sections`
--

INSERT INTO `fun_fact_sections` (`id`, `language_id`, `background_image`, `title`, `created_at`, `updated_at`) VALUES
(3, 8, '61befc8312cee.jpg', 'Some Fun Facts from Us', '2021-10-07 03:23:12', '2021-12-19 03:33:55'),
(4, 9, '61a701a191ee2.jpg', 'بعض الحقائق الممتعة منا', '2021-11-30 23:01:21', '2021-12-21 22:42:42');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint UNSIGNED NOT NULL,
  `endpoint` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `endpoint`, `created_at`, `updated_at`) VALUES
(6, 'https://wns2-pn1p.notify.windows.com/w/?token=BQYAAADgND0JxYcnPzYE8uoZdwbqXE%2fJuNihpgTCM%2fg5j6EprmQjYZWqbkXQNkzc3BqEdP8IwhBXgtzxyt0Y9y%2beEYhFEej1jbY8SYy52EsMud5edwNaHD%2fhmaeC6xpsb4WCVM%2bU6JyCzdzuHq5Zo59BAOwPA4s0AsZ%2f%2b%2bQB7%2fEH4EMCHeTOeWxle8r3bR4x6XLSa%2f%2b%2fgDQzE7IuwL4wmxWRPsg0GF5aqKbh2KQKHH25HSRzsRw0B%2bQYEO2KEqLGl4mpg1sJMr4SlkxLIv5MhLefh7Qc2IzvYcmCrLHMlfN%2f9ZecsOjOhynHZtj%2b87TrKZk2sro%3d', '2022-11-13 23:57:01', '2022-11-13 23:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `hero_sections`
--

CREATE TABLE `hero_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_button` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_button` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_sections`
--

INSERT INTO `hero_sections` (`id`, `language_id`, `background_image`, `first_title`, `second_title`, `first_button`, `first_button_url`, `second_button`, `second_button_url`, `video_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 9, '627f7d7e9ce5c.jpg', 'معهد كورسولا الرقمي', 'الطريقة الجديدة للتعلم', 'دوراتنا', 'https://codecanyon.kreativdev.com/coursela/courses', 'لقاء المدربين', 'https://codecanyon.kreativdev.com/coursela/instructors', 'https://www.youtube.com/watch?v=w7bMC7OCk2k', '61bda9c61892c.png', '2021-10-04 04:28:41', '2022-05-12 05:54:23'),
(2, 8, '627f7d7e9ce5c.jpg', 'COURSELA DIGITAL INSTITUTE', 'The New Way to Learn', 'Our Courses', 'https://codecanyon.kreativdev.com/coursela/courses', 'Meet Instructors', 'https://codecanyon.kreativdev.com/coursela/instructors', 'https://www.youtube.com/watch?v=w7bMC7OCk2k', '61bda9c61892c.png', '2021-11-30 22:30:04', '2022-05-15 00:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `language_id`, `image`, `name`, `occupation`, `description`, `is_featured`, `created_at`, `updated_at`) VALUES
(18, 8, '627f986a6f94a.jpg', 'John Doe', 'Web Developer, Businesso', '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est</span></p><p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><b>Specialities:</b></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, </li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li></ul><p><br /></p>', 'yes', '2022-05-14 05:54:18', '2022-05-15 00:42:25'),
(19, 8, '627f9a5c31ed3.jpg', 'Jack Oram', 'UI/UX Designer, Profilex', '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est</span></p><p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><b>Specialities:</b></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, </li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li></ul><p><br /></p>', 'yes', '2022-05-14 05:54:18', '2022-05-15 00:42:27'),
(20, 8, '627f9a6a49c88.jpg', 'Nicolo Zaniolo', 'Fitness Coach, Superv', '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est</span></p><p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><b>Specialities:</b></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, </li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li></ul><p><br /></p>', 'yes', '2022-05-14 05:54:18', '2022-05-15 00:42:29'),
(21, 8, '6280a21a98e22.png', 'Nicolo Barella', 'Web Designer, PlusAgency', '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est</span></p><p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><br /></span></p><p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;font-size:18px;\"><b>Specialities:</b></span></p><ul><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Lorem ipsum dolor sit amet, </li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">consectetuer adipiscing elit.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Aliquam tincidunt mauris eu risus.</li><li style=\"font-style:inherit;font-weight:inherit;font-size:18px;line-height:28px;\">Vestibulum auctor dapibus neque.</li></ul><p><br /></p>', 'no', '2022-05-14 05:54:18', '2022-05-15 00:47:54'),
(22, 9, '627f986a6f94a.jpg', 'فلان الفلاني', 'مطور ويب ، بيزنسو', '<p>لكننا نتهمهم ونعتبرهم الأكثر استحقاقًا للكراهية العادلة ، الذين أعمتهم الرغبة في تهدئة تملق الملذات الحالية ، وأفسدهم جبنهم ، لا يتوقعون الآلام والمتاعب التي سيواجهونها ؛ والتمييز بين هذه الأشياء سهل وسهل. في وقت الفراغ ، عندما يتعين علينا اختيار خيارنا الحر ، وعندما لا يوجد شيء يمنعنا من فعل ما نفضله ، يجب أن نستمتع بكل سرور.</p>', 'yes', '2022-05-14 05:54:18', '2022-05-14 05:54:18'),
(23, 9, '627f9a5c31ed3.jpg', 'جاك أورام', 'مصمم UI / UX ، Profilex', '<p>لكننا نتهمهم ونعتبرهم الأكثر استحقاقًا للكراهية العادلة ، الذين أعمتهم الرغبة في تهدئة تملق الملذات الحالية ، وأفسدهم جبنهم ، لا يتوقعون الآلام والمتاعب التي سيواجهونها ؛ والتمييز بين هذه الأشياء سهل وسهل. في وقت الفراغ ، عندما يتعين علينا اختيار خيارنا الحر ، وعندما لا يوجد شيء يمنعنا من فعل ما نفضله ، يجب أن نستمتع بكل سرور.</p>', 'yes', '2022-05-14 05:54:18', '2022-05-14 06:02:36'),
(24, 9, '627f9a6a49c88.jpg', 'نيكولو زانيولو', 'مدرب لياقة ، مشرف', '<p>لكننا نتهمهم ونعتبرهم الأكثر استحقاقًا للكراهية العادلة ، الذين أعمتهم الرغبة في تهدئة تملق الملذات الحالية ، وأفسدهم جبنهم ، لا يتوقعون الآلام والمتاعب التي سيواجهونها ؛ والتمييز بين هذه الأشياء سهل وسهل. في وقت الفراغ ، عندما يتعين علينا اختيار خيارنا الحر ، وعندما لا يوجد شيء يمنعنا من فعل ما نفضله ، يجب أن نستمتع بكل سرور.</p>', 'yes', '2022-05-14 05:54:18', '2022-05-14 06:02:50'),
(25, 9, '6280e8c4b7471.png', 'نيكولو باريلا', 'مصمم الويب ، PlusAgency', '<p>لكننا نتهمهم ونعتبرهم الأكثر استحقاقًا للكراهية العادلة ، الذين أعمتهم الرغبة في تهدئة تملق الملذات الحالية ، وأفسدهم جبنهم ، لا يتوقعون الآلام والمتاعب التي سيواجهونها ؛ والتمييز بين هذه الأشياء سهل وسهل. في وقت الفراغ ، عندما يتعين علينا اختيار خيارنا الحر ، وعندما لا يوجد شيء يمنعنا من فعل ما نفضله ، يجب أن نستمتع بكل سرور.</p>', 'no', '2022-05-14 05:54:18', '2022-05-15 05:49:24');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` tinyint NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `direction`, `is_default`, `created_at`, `updated_at`) VALUES
(8, 'English', 'en', 0, 1, '2021-05-31 05:58:22', '2022-11-24 03:46:43'),
(9, 'عربي', 'ar', 1, 0, '2021-05-31 05:59:16', '2022-11-24 03:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint UNSIGNED NOT NULL,
  `module_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `duration` time NOT NULL DEFAULT '00:00:00',
  `completion_status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `module_id`, `title`, `status`, `serial_number`, `duration`, `completion_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Introduction to Laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-11-12 04:46:51'),
(2, 1, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(3, 3, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(4, 3, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(5, 3, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(6, 3, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(7, 4, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(8, 4, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(9, 4, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(10, 5, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(11, 5, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(12, 5, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(13, 6, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(14, 6, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(29, 12, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(30, 12, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(31, 13, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(32, 13, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(33, 13, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(34, 13, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(35, 14, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(36, 14, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(37, 14, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(38, 15, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(39, 15, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(40, 15, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(41, 16, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(42, 16, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(43, 27, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(44, 27, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(45, 28, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(46, 28, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(47, 28, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(48, 28, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(49, 29, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(50, 29, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(51, 29, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(52, 30, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(53, 30, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(54, 30, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(55, 31, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(56, 31, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(57, 32, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(58, 32, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(59, 33, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(60, 33, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(61, 33, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(62, 33, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(63, 34, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(64, 34, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(65, 34, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(66, 35, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(67, 35, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(68, 35, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(69, 36, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(70, 36, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(71, 17, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(72, 17, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(73, 18, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(74, 18, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(75, 18, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(76, 18, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(77, 19, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(78, 19, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(79, 19, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(80, 20, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(81, 20, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(82, 20, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(83, 21, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(84, 21, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(85, 22, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(86, 23, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(87, 23, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(88, 23, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(89, 23, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(90, 24, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(91, 24, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(92, 24, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(93, 25, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(94, 25, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(95, 25, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(96, 26, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(97, 26, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(98, 37, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(99, 37, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(100, 38, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(101, 38, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(102, 38, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(103, 38, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(104, 39, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(105, 39, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(106, 39, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(107, 40, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(108, 40, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(109, 40, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(110, 41, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(111, 41, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(112, 42, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(113, 43, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(114, 43, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(115, 43, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(116, 43, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(117, 44, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(118, 44, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(119, 44, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(120, 45, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(121, 45, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(122, 45, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(123, 46, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(124, 46, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(125, 47, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(126, 47, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(127, 48, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(128, 48, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(129, 48, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(130, 48, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(131, 49, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(132, 49, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(133, 49, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(134, 50, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(135, 50, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(136, 50, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(137, 51, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(138, 51, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(139, 52, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(140, 52, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(141, 53, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(142, 53, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(143, 53, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(144, 53, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(145, 54, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(146, 54, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(147, 54, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(148, 55, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(149, 55, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(150, 55, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(151, 56, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(152, 56, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(153, 57, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(154, 57, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(155, 58, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(156, 58, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(157, 58, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(158, 58, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(159, 59, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(160, 59, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(161, 59, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(162, 60, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(163, 60, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(164, 60, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(165, 61, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(166, 61, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(167, 62, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(168, 62, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(169, 63, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(170, 63, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(171, 63, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(172, 63, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(173, 64, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(174, 64, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(175, 64, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(176, 65, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(177, 65, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(178, 65, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(179, 66, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(180, 66, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(181, 67, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(182, 67, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(183, 68, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(184, 68, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(185, 68, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(186, 68, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(187, 69, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(188, 69, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(189, 69, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(190, 70, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(191, 70, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(192, 70, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(193, 71, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(194, 71, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(195, 72, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(196, 72, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(197, 73, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(198, 73, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(199, 73, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(200, 73, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(201, 74, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(202, 74, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(203, 74, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(204, 75, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(205, 75, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(206, 75, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(207, 76, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(208, 76, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(209, 77, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(210, 77, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(211, 78, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(212, 78, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(213, 78, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(214, 78, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(215, 79, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(216, 79, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(217, 79, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(218, 80, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(219, 80, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(220, 80, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(221, 81, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(222, 81, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(223, 82, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(224, 82, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(225, 83, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(226, 83, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(227, 83, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(228, 83, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(229, 84, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(230, 84, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(231, 84, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(232, 85, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(233, 85, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(234, 85, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(235, 86, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(236, 86, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(237, 87, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(238, 87, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(239, 88, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(240, 88, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(241, 88, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(242, 88, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(243, 89, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(244, 89, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(245, 89, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(246, 90, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(247, 90, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(248, 90, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(249, 91, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(250, 91, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(251, 92, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(252, 92, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(253, 93, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(254, 93, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(255, 93, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(256, 93, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(257, 94, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(258, 94, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(259, 94, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(260, 95, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(261, 95, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(262, 95, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(263, 96, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(264, 96, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(265, 97, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(266, 97, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(267, 98, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(268, 98, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(269, 98, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(270, 98, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(271, 99, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(272, 99, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(273, 99, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(274, 100, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(275, 100, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(276, 100, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(277, 101, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(278, 101, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(279, 102, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(280, 102, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(281, 103, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(282, 103, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(283, 103, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(284, 103, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(285, 104, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(286, 104, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(287, 104, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(288, 105, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(289, 105, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(290, 105, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(291, 106, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(292, 106, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(293, 107, 'ntroduction to laravel and MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(294, 107, 'Reference files', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(295, 108, 'New - Tools', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(296, 108, 'New - Using MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(297, 108, 'New- Installing Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(298, 108, 'New - Installing Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(299, 109, 'Route Introduction', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(300, 109, 'Routes', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(301, 109, 'Naming Routes', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(302, 110, 'Creating Controllers', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(303, 110, 'Passing data', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(304, 110, 'Resources and Controllers', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(305, 111, 'Creating views and custom method', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(306, 111, 'Passing data to views', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55'),
(307, 112, 'ntroduction إلى Laravel و MVC', 'published', 1, '00:01:00', 0, '2022-05-15 05:32:14', '2022-05-15 06:18:17'),
(308, 112, 'ملفات مرجعية', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:05', '2022-05-15 05:34:05'),
(309, 113, 'جديد - أدوات', 'published', 1, '00:00:00', 0, '2022-05-15 05:34:37', '2022-05-15 05:34:44'),
(310, 113, 'جديد - استخدام MySQL', 'published', 2, '00:00:00', 0, '2022-05-15 05:34:57', '2022-05-15 05:34:57'),
(311, 113, 'جديد- تثبيت Node.js', 'published', 3, '00:00:00', 0, '2022-05-15 05:35:09', '2022-05-15 05:35:09'),
(312, 113, 'جديد - تثبيت Laravel', 'published', 4, '00:00:00', 0, '2022-05-15 05:35:29', '2022-05-15 05:35:29'),
(313, 114, 'مقدمة الطريق', 'published', 1, '00:00:00', 0, '2022-05-15 05:36:21', '2022-05-15 05:36:21'),
(314, 114, 'طرق', 'published', 2, '00:00:00', 0, '2022-05-15 05:36:33', '2022-05-15 05:37:03'),
(315, 114, 'طرق التسمية', 'published', 3, '00:00:00', 0, '2022-05-15 05:36:55', '2022-05-15 05:36:55'),
(316, 115, 'إنشاء وحدات تحكم', 'published', 1, '00:00:00', 0, '2022-05-15 05:39:53', '2022-05-15 05:39:53'),
(317, 115, 'تمرير البيانات', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:09', '2022-05-15 05:42:09'),
(318, 115, 'الموارد ووحدات التحكم', 'published', 3, '00:00:00', 0, '2022-05-15 05:42:21', '2022-05-15 05:42:21'),
(319, 116, 'خلق وجهات النظر وطريقة مخصصة', 'published', 1, '00:00:00', 0, '2022-05-15 05:42:40', '2022-05-15 05:42:40'),
(320, 116, 'تمرير البيانات إلى وجهات النظر', 'published', 2, '00:00:00', 0, '2022-05-15 05:42:55', '2022-05-15 05:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_complete`
--

CREATE TABLE `lesson_complete` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lesson_complete`
--

INSERT INTO `lesson_complete` (`id`, `user_id`, `lesson_id`) VALUES
(17, 9, 60),
(18, 9, 61),
(19, 9, 62),
(20, 10, 60),
(21, 10, 61),
(22, 10, 62),
(23, 9, 54),
(24, 9, 66),
(25, 9, 43),
(26, 9, 44),
(27, 9, 45),
(28, 9, 46),
(29, 9, 47),
(30, 9, 48),
(31, 9, 49),
(32, 9, 50),
(33, 9, 51),
(34, 9, 52),
(35, 9, 53),
(36, 9, 55),
(37, 9, 56),
(38, 9, 153),
(39, 9, 154),
(40, 9, 155),
(41, 9, 157),
(42, 9, 71),
(43, 9, 209),
(44, 9, 210),
(45, 9, 211),
(46, 9, 212),
(47, 9, 73),
(48, NULL, 98),
(49, NULL, 265),
(50, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_contents`
--

CREATE TABLE `lesson_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `lesson_id` bigint UNSIGNED NOT NULL,
  `video_unique_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_duration` time DEFAULT NULL,
  `file_unique_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_no` int UNSIGNED NOT NULL DEFAULT '1',
  `completion_status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_contents`
--

INSERT INTO `lesson_contents` (`id`, `lesson_id`, `video_unique_name`, `video_original_name`, `video_duration`, `file_unique_name`, `file_original_name`, `text`, `code`, `type`, `order_no`, `completion_status`, `created_at`, `updated_at`) VALUES
(1, 1, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(2, 1, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(3, 1, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(4, 1, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(5, 1, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-11-11 23:59:24'),
(6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(7, 2, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(8, 2, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(9, 2, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(10, 2, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(11, 2, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(12, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(13, 3, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(14, 3, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(15, 3, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(16, 3, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(17, 3, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(18, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(19, 4, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(20, 4, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(21, 4, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(22, 4, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(23, 4, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(24, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(25, 5, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(26, 5, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(27, 5, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(28, 5, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(29, 5, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(30, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(31, 6, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(32, 6, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(33, 6, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(34, 6, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(35, 6, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(36, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(37, 7, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(38, 7, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(39, 7, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(40, 7, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(41, 7, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(42, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(43, 8, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(44, 8, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(45, 8, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(46, 8, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(47, 8, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(48, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(49, 9, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(50, 9, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(51, 9, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(52, 9, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(53, 9, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(54, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(55, 10, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(56, 10, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(57, 10, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(58, 10, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(59, 10, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(60, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(61, 11, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(62, 11, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(63, 11, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(64, 11, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(65, 11, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(66, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(67, 12, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(68, 12, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(69, 12, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(70, 12, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(71, 12, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(72, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(73, 13, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(74, 13, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(75, 13, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(76, 13, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(77, 13, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(78, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(79, 14, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(80, 14, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(81, 14, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(82, 14, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(83, 14, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(84, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(85, 29, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(86, 29, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(87, 29, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(88, 29, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(89, 29, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(90, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(91, 30, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(92, 30, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(93, 30, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(94, 30, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(95, 30, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(96, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(97, 31, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(98, 31, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(99, 31, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(100, 31, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(101, 31, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(102, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(103, 32, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(104, 32, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(105, 32, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(106, 32, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(107, 32, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(108, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(109, 33, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(110, 33, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(111, 33, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(112, 33, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(113, 33, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(114, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(115, 34, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(116, 34, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(117, 34, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(118, 34, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(119, 34, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(120, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(121, 35, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(122, 35, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(123, 35, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(124, 35, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(125, 35, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(126, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(127, 36, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(128, 36, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(129, 36, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(130, 36, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(131, 36, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(132, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(133, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(134, 37, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(135, 37, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(136, 37, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20');
INSERT INTO `lesson_contents` (`id`, `lesson_id`, `video_unique_name`, `video_original_name`, `video_duration`, `file_unique_name`, `file_original_name`, `text`, `code`, `type`, `order_no`, `completion_status`, `created_at`, `updated_at`) VALUES
(137, 37, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(138, 37, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(139, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(140, 38, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(141, 38, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(142, 38, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(143, 38, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(144, 38, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(145, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(146, 39, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(147, 39, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(148, 39, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(149, 39, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(150, 39, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(151, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(152, 40, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(153, 40, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(154, 40, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(155, 40, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(156, 40, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(157, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(158, 41, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(159, 41, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(160, 41, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(161, 41, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(162, 41, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(163, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(164, 42, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(165, 42, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(166, 42, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(167, 42, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(168, 42, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(169, 43, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-16 03:42:42'),
(170, 43, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(171, 43, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(172, 43, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(173, 43, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-16 03:42:42'),
(174, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(175, 44, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(176, 44, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(177, 44, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(178, 44, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(179, 44, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(180, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(181, 45, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(182, 45, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(183, 45, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(184, 45, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(185, 45, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(186, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(187, 46, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(188, 46, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(189, 46, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(190, 46, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(191, 46, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(192, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(193, 47, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(194, 47, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(195, 47, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(196, 47, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(197, 47, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(198, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(199, 48, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(200, 48, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(201, 48, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(202, 48, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(203, 48, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(204, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(205, 49, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(206, 49, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(207, 49, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(208, 49, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(209, 49, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(210, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(211, 50, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(212, 50, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(213, 50, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(214, 50, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(215, 50, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(216, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(217, 51, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(218, 51, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(219, 51, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(220, 51, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(221, 51, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(222, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(223, 52, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(224, 52, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(225, 52, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(226, 52, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(227, 52, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(228, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(229, 53, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(230, 53, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(231, 53, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(232, 53, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(233, 53, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(234, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(235, 54, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(236, 54, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(237, 54, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(238, 54, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(239, 54, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(240, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(241, 55, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(242, 55, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(243, 55, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(244, 55, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(245, 55, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(246, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(247, 56, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(248, 56, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(249, 56, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(250, 56, NULL, NULL, NULL, NULL, NULL, '<p><span style=\"font-family:\'Open Sans\', Arial, sans-serif;text-align:justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable</span><br /></p>', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(251, 56, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(252, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(253, 57, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(254, 57, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(255, 57, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(256, 57, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(257, 57, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(258, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(259, 58, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(260, 58, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(261, 58, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(262, 58, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(263, 58, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(264, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(265, 59, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(266, 59, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(267, 59, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(268, 59, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(269, 59, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(270, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(271, 60, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(272, 60, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(273, 60, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(274, 60, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12');
INSERT INTO `lesson_contents` (`id`, `lesson_id`, `video_unique_name`, `video_original_name`, `video_duration`, `file_unique_name`, `file_original_name`, `text`, `code`, `type`, `order_no`, `completion_status`, `created_at`, `updated_at`) VALUES
(275, 60, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(276, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(277, 61, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(278, 61, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(279, 61, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(280, 61, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(281, 61, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(282, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(283, 62, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(284, 62, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(285, 62, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(286, 62, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(287, 62, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(288, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(289, 63, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(290, 63, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(291, 63, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(292, 63, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(293, 63, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(294, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(295, 64, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(296, 64, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(297, 64, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(298, 64, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(299, 64, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(300, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(301, 65, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(302, 65, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(303, 65, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(304, 65, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(305, 65, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(306, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(307, 66, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(308, 66, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(309, 66, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(310, 66, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(311, 66, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(312, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(313, 67, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(314, 67, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(315, 67, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(316, 67, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(317, 67, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(318, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(319, 68, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(320, 68, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(321, 68, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(322, 68, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(323, 68, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(324, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(325, 69, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(326, 69, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(327, 69, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(328, 69, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(329, 69, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(330, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20'),
(331, 70, '6280ef87c4ea3.mp4', 'file_example_MP4_640_3MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 3, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:15'),
(332, 70, '6280ef87c4ea1.mp4', 'file_example_MP4_480_1_5MG.mp4', '00:00:30', NULL, NULL, NULL, NULL, 'video', 6, 0, '2022-05-15 06:18:17', '2022-05-15 06:28:19'),
(333, 70, NULL, NULL, NULL, '6280f05217d97.pdf', 'sample.pdf', NULL, NULL, 'file', 5, 0, '2022-05-15 06:21:39', '2022-05-15 06:28:20'),
(334, 70, NULL, NULL, NULL, NULL, NULL, 'هناك العديد من الأشكال المتوفرة لنصوص لوريم إيبسوم ، ولكن الغالبية قد تعرضت للتغيير بشكل ما ، عن طريق إدخال بعض الفكاهة أو الكلمات العشوائية التي لا تبدو قابلة للتصديق إلى حد ما. إذا كنت ستستخدم مقطعًا من لوريم إيبسوم ، فعليك التأكد من عدم وجود أي شيء محرج مخفي في منتصف النص. تميل جميع مولدات Lorem Ipsum على الإنترنت إلى تكرار الأجزاء المحددة مسبقًا حسب الضرورة ، مما يجعل هذا أول مولد حقيقي على الإنترنت. يستخدم قاموسًا يحتوي على أكثر من 200 كلمة لاتينية ، جنبًا إلى جنب مع حفنة من تراكيب الجملة النموذجية ، لتوليد Lorem Ipsum الذي يبدو معقولاً', NULL, 'text', 1, 0, '2022-05-15 06:22:22', '2022-05-15 06:28:12'),
(335, 70, NULL, NULL, NULL, NULL, NULL, NULL, '<!DOCTYPE html>\r\n<html>\r\n  <head>\r\n    <meta charset=\"utf-8\">\r\n    <title>Untitled</title>\r\n    <meta name=\"description\" content=\"This is an example of a meta description.\">\r\n    <link rel=\"stylesheet\" type=\"text/css\" href=\"theme.css\">\r\n\r\n    <!--[if lt IE 9]>\r\n	<script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\r\n    <![endif]-->\r\n  </head>\r\n  <body>\r\n    <div>This is pure HTML message.</div>\r\n    <div>Next, we’ll display today’s date and day by PHP!</div>\r\n    <div>\r\n    Today’s date is <b><?php echo date(\'Y/m/d\') ?></b> and it’s a <b><?php echo date(‘l’) ?></b> today!\r\n    </div>\r\n    <div>Again, this is static HTML content.</div>		\r\n  </body>\r\n</html>', 'code', 2, 0, '2022-05-15 06:25:06', '2022-05-15 06:28:15'),
(336, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'quiz', 4, 0, '2022-05-15 06:27:23', '2022-05-15 06:28:20');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_content_complete`
--

CREATE TABLE `lesson_content_complete` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `lesson_content_id` int DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `lesson_content_complete`
--

INSERT INTO `lesson_content_complete` (`id`, `user_id`, `lesson_id`, `lesson_content_id`, `type`) VALUES
(1, 9, 43, 169, 'video'),
(2, 9, 43, 170, 'video'),
(3, 9, 44, 175, 'video'),
(4, 9, 44, 176, 'video'),
(5, 9, 45, 181, 'video'),
(6, 9, 45, 182, 'video'),
(7, 9, 46, 187, 'video'),
(8, 9, 46, 188, 'video'),
(9, 9, 47, 193, 'video'),
(10, 9, 47, 194, 'video'),
(11, 9, 48, 199, 'video'),
(12, 9, 48, 200, 'video'),
(13, 9, 49, 205, 'video'),
(14, 9, 49, 206, 'video'),
(15, 9, 50, 211, 'video'),
(16, 9, 50, 212, 'video'),
(17, 9, 51, 217, 'video'),
(18, 9, 51, 218, 'video'),
(19, 9, 52, 223, 'video'),
(20, 9, 52, 224, 'video'),
(21, 9, 53, 229, 'video'),
(22, 9, 53, 230, 'video'),
(23, 9, 55, 241, 'video'),
(24, 9, 55, 242, 'video'),
(25, 9, 56, 247, 'video'),
(26, 9, 56, 248, 'video'),
(27, 9, 48, 204, 'quiz'),
(28, 9, 2, 7, 'video'),
(29, 9, 2, 8, 'video'),
(30, 9, 1, 2, 'video');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_quizzes`
--

CREATE TABLE `lesson_quizzes` (
  `id` bigint UNSIGNED NOT NULL,
  `lesson_id` bigint UNSIGNED NOT NULL,
  `lesson_content_id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answers` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_quizzes`
--

INSERT INTO `lesson_quizzes` (`id`, `lesson_id`, `lesson_content_id`, `question`, `answers`, `created_at`, `updated_at`) VALUES
(2, 1, 6, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(3, 2, 12, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(4, 2, 12, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(5, 3, 18, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(6, 3, 18, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(7, 4, 24, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(8, 4, 24, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(9, 5, 30, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(10, 5, 30, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(11, 6, 36, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(12, 6, 36, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(13, 7, 42, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(14, 7, 42, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(15, 8, 48, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(16, 8, 48, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(17, 9, 54, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(18, 9, 54, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(19, 10, 60, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(20, 10, 60, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(21, 11, 66, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(22, 11, 66, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(23, 12, 72, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(24, 12, 72, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(25, 13, 78, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(26, 13, 78, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(27, 14, 84, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(28, 14, 84, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(29, 29, 6, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(30, 29, 6, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(31, 30, 12, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(32, 30, 12, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(33, 31, 18, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(34, 31, 18, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(35, 32, 24, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(36, 32, 24, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(37, 33, 30, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(38, 33, 30, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(39, 34, 36, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(40, 34, 36, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(41, 35, 42, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(42, 35, 42, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(43, 36, 48, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(44, 36, 48, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(45, 37, 54, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(46, 37, 54, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(47, 38, 60, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(48, 38, 60, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(49, 39, 66, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(50, 39, 66, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(51, 40, 72, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(52, 40, 72, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(53, 41, 78, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(54, 41, 78, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(55, 42, 84, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(56, 42, 84, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(115, 43, 169, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(116, 43, 169, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(117, 44, 174, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(118, 44, 174, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(119, 45, 180, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(120, 45, 180, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(121, 46, 186, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(122, 46, 186, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(123, 47, 192, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(124, 47, 192, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(125, 48, 198, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(126, 48, 198, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(127, 49, 204, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(128, 49, 204, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(130, 50, 210, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(131, 50, 210, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(132, 51, 216, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(133, 51, 216, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(134, 52, 222, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(135, 52, 222, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(136, 53, 228, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(137, 53, 228, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(138, 54, 234, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(139, 54, 234, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(140, 55, 240, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(141, 55, 240, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(142, 56, 246, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(143, 56, 246, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(144, 57, 258, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(145, 58, 264, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(146, 58, 264, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(147, 59, 270, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(148, 59, 270, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(149, 60, 276, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(150, 60, 276, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(151, 61, 282, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(152, 61, 282, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(153, 62, 288, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(154, 62, 288, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(155, 63, 294, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(156, 63, 294, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(157, 64, 300, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(158, 65, 306, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(159, 65, 306, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(160, 66, 312, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(161, 66, 312, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(162, 67, 318, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(163, 67, 318, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(164, 68, 324, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(165, 68, 324, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(166, 69, 330, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(167, 69, 330, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44'),
(168, 70, 336, 'What is Server Side Language ?', '[{\"option\":\"Javascript\",\"rightAnswer\":0},{\"option\":\"PHP\",\"rightAnswer\":1},{\"option\":\"HTML\",\"rightAnswer\":0}]', '2022-05-15 06:27:23', '2022-05-15 06:27:23'),
(169, 70, 336, 'What is Client Side Language ?', '[{\"option\":\"PHP\",\"rightAnswer\":0},{\"option\":\"Python\",\"rightAnswer\":0},{\"option\":\"Javascript\",\"rightAnswer\":1}]', '2022-05-15 06:27:44', '2022-05-15 06:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` int NOT NULL,
  `mail_type` varchar(50) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `mail_type`, `mail_subject`, `mail_body`) VALUES
(4, 'verify_email', 'Verify Your Email Address', '<p>Hi <b>{username}</b>,</p><p>We just need to verify your email address before you can access to your dashboard.</p><p>Verify your email address, {verification_link}.</p><p>Thank you.<br>{website_title}</p>'),
(5, 'reset_password', 'Recover Password of Your Account', '<p>Hi {customer_name},</p><p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p><p>{password_reset_link}</p><p>Thanks,<br>{website_title}</p>'),
(9, 'course_enrolment', 'Enrolment Confirmation', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>You have successfully enrol in the following course.</p><p>Order Id: #{order_id}<br>Course: {title} </p><p>Also, we have attached an invoice in this mail.</p><p>Best regards.<br>{website_title}</p>'),
(10, 'course_enrolment_approved', 'Approval of Course Enrolment', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>Your payment is completed, and we have approved your enrolment for the following course.</p><p>Order Id: #{order_id}<br /></p><p>Course: {title}</p><p>Also, we have attached an invoice in this mail.</p><p>Best regards.<br />{website_title}</p>'),
(11, 'course_enrolment_rejected', 'Rejection of Course Enrolment', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>Your payment is not completed, thus we have rejected your enrolment for the following course.</p><p>Order Id: #{order_id}<br /></p><p>Course: {title}</p><p>For further information, please do not hesitate to contact us.<br />{website_title}</p>');

-- --------------------------------------------------------

--
-- Table structure for table `menu_builders`
--

CREATE TABLE `menu_builders` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `menus` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_builders`
--

INSERT INTO `menu_builders` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(1, 9, '[{\"text\":\"الصفحة الرئيسية\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"الدورات\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"courses\"},{\"text\":\"المدربين\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"instructors\"},{\"text\":\"الصفحات\",\"href\":\"#\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"type\":\"حول\",\"text\":\"حول\",\"target\":\"_self\"},{\"type\":\"البنود-و-الظروف\",\"text\":\"البنود و الظروف\",\"target\":\"_self\"}]},{\"text\":\"مدونة او مذكرة\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"التعليمات\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"اتصل\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-11-18 04:50:31', '2022-05-17 01:32:16'),
(2, 8, '[{\"text\":\"Home\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"home\"},{\"text\":\"Courses\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"courses\"},{\"text\":\"Instructors\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"instructors\"},{\"text\":\"Pages\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"custom\",\"children\":[{\"text\":\"About\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"about\"},{\"text\":\"Terms & Conditions\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"terms-&-conditions\"}]},{\"text\":\"Blog\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"blog\"},{\"text\":\"FAQ\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"faq\"},{\"text\":\"Contact\",\"href\":\"\",\"icon\":\"empty\",\"target\":\"_self\",\"title\":\"\",\"type\":\"contact\"}]', '2021-12-01 05:32:09', '2022-05-17 04:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint UNSIGNED NOT NULL,
  `course_information_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `duration` time NOT NULL DEFAULT '00:00:00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `course_information_id`, `title`, `status`, `serial_number`, `duration`, `created_at`, `updated_at`) VALUES
(1, 4, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(3, 4, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(4, 4, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(5, 4, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(6, 4, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(12, 5, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(13, 5, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(14, 5, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(15, 5, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(16, 5, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(17, 1, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(18, 1, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(19, 1, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(20, 1, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(21, 1, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(22, 3, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(23, 3, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(24, 3, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(25, 3, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(26, 3, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(27, 22, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(28, 22, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(29, 22, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(30, 22, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(31, 22, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(32, 23, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(33, 23, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(34, 23, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(35, 23, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(36, 23, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(37, 20, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(38, 20, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(39, 20, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(40, 20, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(41, 20, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(42, 21, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(43, 21, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(44, 21, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(45, 21, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(46, 21, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(47, 18, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(48, 18, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(49, 18, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(50, 18, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(51, 18, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(52, 19, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(53, 19, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(54, 19, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(55, 19, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(56, 19, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(57, 16, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(58, 16, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(59, 16, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(60, 16, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(61, 16, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(62, 17, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(63, 17, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(64, 17, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(65, 17, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(66, 17, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(67, 14, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(68, 14, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(69, 14, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(70, 14, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(71, 14, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(72, 15, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(73, 15, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(74, 15, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(75, 15, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(76, 15, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(77, 12, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(78, 12, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(79, 12, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(80, 12, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(81, 12, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(82, 13, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(83, 13, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(84, 13, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(85, 13, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(86, 13, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(87, 10, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(88, 10, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(89, 10, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(90, 10, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(91, 10, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(92, 11, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(93, 11, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(94, 11, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(95, 11, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(96, 11, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(97, 8, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(98, 8, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(99, 8, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(100, 8, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(101, 8, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(102, 9, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(103, 9, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(104, 9, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(105, 9, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(106, 9, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(107, 6, 'The first steps', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(108, 6, 'Local Environment Setup', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(109, 6, 'Laravel Fundamentals - Routes', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(110, 6, 'Laravel Fundamentals - Controllers', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(111, 6, 'Laravel Fundamentals - Views', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56'),
(112, 7, 'الخطوات الأولى', 'published', 1, '00:01:00', '2022-05-15 05:26:28', '2022-05-15 06:18:17'),
(113, 7, 'إعداد البيئة المحلية', 'published', 3, '00:00:00', '2022-05-15 05:27:00', '2022-05-15 05:30:27'),
(114, 7, 'أساسيات Laravel - الطرق', 'published', 4, '00:00:00', '2022-05-15 05:27:16', '2022-05-15 05:27:16'),
(115, 7, 'أساسيات Laravel - أدوات التحكم', 'published', 5, '00:00:00', '2022-05-15 05:27:33', '2022-05-15 05:27:33'),
(116, 7, 'أساسيات Laravel - المشاهدات', 'published', 6, '00:00:00', '2022-05-15 05:27:56', '2022-05-15 05:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_sections`
--

CREATE TABLE `newsletter_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletter_sections`
--

INSERT INTO `newsletter_sections` (`id`, `language_id`, `background_image`, `image`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 8, '6281ecbf6c79d.jpg', '61bdb8789fc5b.jpg', 'Stay Up to Date About All Our Courses', 'Our service is free to users because vendors pay us when they receive web traffic. We list all vendors - not just those that pay us - in our comprehensive directory so that you can compare, sort and filter your results to make the most informed decision possible. GetApp is a Gartner company. Gartner (NYSE: IT) is the world\'s leading information technology research.', '2021-10-09 22:56:46', '2022-05-16 00:18:39'),
(2, 9, '628094de2acff.jpg', '61a704f583d6a.jpg', 'ابدأ النمو مع المجتمع', 'خدمتنا مجانية للمستخدمين لأن البائعين يدفعون لنا عندما يتلقون زيارات على شبكة الإنترنت. ندرج جميع البائعين - وليس فقط أولئك الذين يدفعون لنا - في دليلنا الشامل بحيث يمكنك مقارنة نتائجك وفرزها وتصفيتها لاتخاذ القرار الأكثر استنارة قدر الإمكان. Get App هي إحدى شركات Gartner. جارتنر (المدرجة في بورصة نيويورك تحت الرمز NYSE: IT) هي الشركة الرائدة في مجال أبحاث تكنولوجيا المعلومات في العالم.', '2021-11-30 23:15:33', '2022-05-14 23:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instructions` blob,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 -> gateway is deactive, 1 -> gateway is active.',
  `has_attachment` tinyint(1) NOT NULL COMMENT '0 -> do not need attachment, 1 -> need attachment.',
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offline_gateways`
--

INSERT INTO `offline_gateways` (`id`, `name`, `short_description`, `instructions`, `status`, `has_attachment`, `serial_number`, `created_at`, `updated_at`) VALUES
(2, 'Citibank', 'A pioneer of both the credit card industry and automated teller machines, Citibank – formerly the City Bank of New York.', 0x3c703e3c7370616e207374796c653d22636f6c6f723a7267622835312c35312c3531293b666f6e742d66616d696c793a2770726f78696d612d6e6f7661272c2073616e732d73657269663b666f6e742d73697a653a313670783b223e412070696f6e656572206f6620626f74682074686520637265646974206361726420696e64757374727920616e64206175746f6d617465642074656c6c6572206d616368696e65732cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f736d61727461737365742e636f6d2f636865636b696e672d6163636f756e742f4369746962616e6b2d62616e6b696e672d726576696577223e4369746962616e6b3c2f613e3c7370616e207374796c653d22636f6c6f723a7267622835312c35312c3531293b666f6e742d66616d696c793a2770726f78696d612d6e6f7661272c2073616e732d73657269663b666f6e742d73697a653a313670783b223ec2a0e280930d0a20666f726d65726c792074686520436974792042616e6b206f66204e657720596f726b20e280932077617320726567617264656420617320616e204561737420436f617374200d0a6571756976616c656e7420746f2057656c6c7320466172676f20647572696e672074686520313974682063656e747572792e3c2f7370616e3e3c62723e3c2f703e, 1, 0, 1, '2021-07-16 22:41:59', '2021-07-16 22:42:15'),
(3, 'Bank of America', 'Bank of America has 4,265 branches in the country, only about 700 fewer than Chase. It started as a small institution serving immigrants in San Francisco.', 0x3c703e3c7370616e207374796c653d22636f6c6f723a7267622835312c35312c3531293b666f6e742d66616d696c793a2770726f78696d612d6e6f7661272c2073616e732d73657269663b666f6e742d73697a653a313670783b223e576974682024312e38207472696c6c696f6e20696e20636f6e736f6c696461746564206173736574732cc2a03c2f7370616e3e3c6120687265663d2268747470733a2f2f736d61727461737365742e636f6d2f636865636b696e672d6163636f756e742f62616e6b2d6f662d616d65726963612d726576696577223e42616e6b206f6620416d65726963613c2f613e3c7370616e207374796c653d22636f6c6f723a7267622835312c35312c3531293b666f6e742d66616d696c793a2770726f78696d612d6e6f7661272c2073616e732d73657269663b666f6e742d73697a653a313670783b223ec2a069730d0a207365636f6e64206f6e20746865206c6973742e204974732068656164717561727465727320696e20436861726c6f7474652c204e6f727468204361726f6c696e612c200d0a73696e676c6568616e6465646c79206d616b657320746861742063697479206f6e65206f662074686520626967676573742066696e616e6369616c2063656e7465727320696e200d0a74686520636f756e7472792e3c2f7370616e3e3c62723e3c2f703e, 1, 1, 2, '2021-07-16 22:43:19', '2021-07-16 22:43:19');

-- --------------------------------------------------------

--
-- Table structure for table `online_gateways`
--

CREATE TABLE `online_gateways` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `information` mediumtext NOT NULL,
  `status` tinyint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `online_gateways`
--

INSERT INTO `online_gateways` (`id`, `name`, `keyword`, `information`, `status`) VALUES
(1, 'PayPal', 'paypal', '{\"sandbox_status\":\"1\",\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\"}', 1),
(2, 'Instamojo', 'instamojo', '{\"sandbox_status\":\"1\",\"key\":\"test_172371aa837ae5cad6047dc3052\",\"token\":\"test_4ac5a785e25fc596b67dbc5c267\"}', 1),
(3, 'Paystack', 'paystack', '{\"key\":\"sk_test_4ac9f2c43514e3cc08ab68f922201549ebda1bfd\"}', 1),
(4, 'Flutterwave', 'flutterwave', '{\"public_key\":\"FLWPUBK_TEST-93972d50b7b24582a2050de2803799c0-X\",\"secret_key\":\"FLWSECK_TEST-3c9d39d4b16e9011bc4b9893f882f71e-X\"}', 1),
(5, 'Razorpay', 'razorpay', '{\"key\":\"rzp_test_fV9dM9URYbqjm7\",\"secret\":\"nickxZ1du2ojPYVVRTDif2Xr\"}', 1),
(6, 'MercadoPago', 'mercadopago', '{\"sandbox_status\":\"1\",\"token\":\"TEST-705032440135962-041006-ad2e021853f22338fe1a4db9f64d1491-421886156\"}', 1),
(7, 'Mollie', 'mollie', '{\"key\":\"test_kKT2J9nRMHH9cN6acf2CTruN3t5CC6\"}', 1),
(8, 'Stripe', 'stripe', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\"}', 1),
(9, 'Paytm', 'paytm', '{\"environment\":\"local\",\"merchant_key\":\"LhNGUUKE9xCQ9xY8\",\"merchant_mid\":\"tkogux49985047638244\",\"merchant_website\":\"WEBSTAGING\",\"industry_type\":\"Retail\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `status`, `created_at`, `updated_at`) VALUES
(14, 1, '2021-10-18 02:33:45', '2021-10-18 02:33:45'),
(15, 1, '2022-05-10 03:35:07', '2022-05-10 03:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `page_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` blob NOT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `language_id`, `page_id`, `title`, `slug`, `content`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(30, 8, 14, 'Terms & Conditions', 'terms-&-conditions', 0x3c70207374796c653d22746578742d616c69676e3a6c6566743b223e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e5365642075742070657273706963696174697320756e6465206f6d6e69732069737465206e61747573206572726f722073697420766f6c7570746174656d206163637573616e7469756d20646f6c6f72656d717565206c617564616e7469756d2c20746f74616d2072656d206170657269616d2c2065617175652069707361207175616520616220696c6c6f20696e76656e746f726520766572697461746973206574207175617369206172636869746563746f206265617461652076697461652064696374612073756e74206578706c696361626f2e204e656d6f20656e696d20697073616d20766f6c7570746174656d207175696120766f6c7570746173207369742061737065726e6174757220617574206f646974206175742066756769742c20736564207175696120636f6e73657175756e747572206d61676e6920646f6c6f72657320656f732071756920726174696f6e6520766f6c7570746174656d207365717569206e65736369756e742e204e6571756520706f72726f20717569737175616d206573742c2071756920646f6c6f72656d20697073756d207175696120646f6c6f722073697420616d65742c20636f6e73656374657475722c2061646970697363692076656c69742c207365642071756961206e6f6e206e756d7175616d2065697573206d6f64692074656d706f726120696e636964756e74207574206c61626f726520657420646f6c6f7265206d61676e616d20616c697175616d207175616572617420766f6c7570746174656d2e20557420656e696d206164206d696e696d612076656e69616d2c2071756973206e6f737472756d20657865726369746174696f6e656d20756c6c616d20636f72706f726973207375736369706974206c61626f72696f73616d2c206e69736920757420616c697175696420657820656120636f6d6d6f646920636f6e73657175617475723f205175697320617574656d2076656c2065756d206975726520726570726568656e64657269742071756920696e20656120766f6c7570746174652076656c69742065737365207175616d206e6968696c206d6f6c65737469616520636f6e73657175617475722c2076656c20696c6c756d2071756920646f6c6f72656d2065756d206675676961742071756f20766f6c7570746173206e756c6c612070617269617475723c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, '2021-10-18 02:33:45', '2022-05-14 04:08:37'),
(31, 9, 14, 'البنود و الظروف', 'البنود-و-الظروف', 0x3c70207374796c653d22746578742d616c69676e3a72696768743b223e3c666f6e7420636f6c6f723d2223363636363636223e3c7370616e207374796c653d22666f6e742d73697a653a313670783b223ed984d983d98620d984d8a720d8a8d8af20d8a3d98620d8a3d988d8b6d8ad20d984d98320d8a3d98620d983d98420d987d8b0d98720d8a7d984d8a3d981d983d8a7d8b120d8a7d984d985d8bad984d988d8b7d8a920d8add988d98420d8a7d8b3d8aad986d983d8a7d8b1c2a020d8a7d984d986d8b4d988d8a920d988d8aad985d8acd98ad8af20d8a7d984d8a3d984d98520d986d8b4d8a3d8aa20d8a8d8a7d984d981d8b9d984d88c20d988d8b3d8a3d8b9d8b1d8b620d984d98320d8a7d984d8aad981d8a7d8b5d98ad98420d984d8aad983d8aad8b4d98120d8add982d98ad982d8a920d988d8a3d8b3d8a7d8b320d8aad984d98320d8a7d984d8b3d8b9d8a7d8afd8a920d8a7d984d8a8d8b4d8b1d98ad8a9d88c20d981d984d8a720d8a3d8add8af20d98ad8b1d981d8b620d8a3d98820d98ad983d8b1d98720d8a3d98820d98ad8aad8acd986d8a820d8a7d984d8b4d8b9d988d8b120d8a8d8a7d984d8b3d8b9d8a7d8afd8a9d88c20d988d984d983d98620d8a8d981d8b6d98420d987d8a4d984d8a7d8a120d8a7d984d8a3d8b4d8aed8a7d8b520d8a7d984d8b0d98ad98620d984d8a720d98ad8afd8b1d983d988d98620d8a8d8a3d98620d8a7d984d8b3d8b9d8a7d8afd8a920d984d8a720d8a8d8af20d8a3d98620d986d8b3d8aad8b4d8b9d8b1d987d8a720d8a8d8b5d988d8b1d8a920d8a3d983d8abd8b120d8b9d982d984d8a7d986d98ad8a920d988d985d986d8b7d982d98ad8a920d981d98ad8b9d8b1d8b6d987d98520d987d8b0d8a720d984d985d988d8a7d8acd987d8a920d8a7d984d8b8d8b1d988d98120d8a7d984d8a3d984d98ad985d8a9d88c20d988d8a3d983d8b1d8b120d8a8d8a3d986d98720d984d8a720d98ad988d8acd8af20d985d98620d98ad8b1d8bad8a820d981d98a20d8a7d984d8add8a820d988d986d98ad98420d8a7d984d985d986d8a7d98420d988d98ad8aad984d8b0d8b020d8a8d8a7d984d8a2d984d8a7d985d88c20d8a7d984d8a3d984d98520d987d98820d8a7d984d8a3d984d98520d988d984d983d98620d986d8aad98ad8acd8a920d984d8b8d8b1d988d98120d985d8a720d982d8af20d8aad983d985d98620d8a7d984d8b3d8b9d8a7d8afd98720d981d98ad985d8a720d986d8aad8add985d984d98720d985d98620d983d8af20d988d8a3d8b3d98a2e3c2f7370616e3e3c2f666f6e743e3c2f703e3c646976207374796c653d22746578742d616c69676e3a72696768743b223e3c6272202f3e3c2f6469763e3c646976207374796c653d22746578742d616c69676e3a6c6566743b223e3c646976207374796c653d22746578742d616c69676e3a72696768743b223ed98820d8b3d8a3d8b9d8b1d8b620d985d8abd8a7d98420d8add98a20d984d987d8b0d8a7d88c20d985d98620d985d986d8a720d984d98520d98ad8aad8add985d98420d8acd987d8af20d8a8d8afd986d98a20d8b4d8a7d98220d8a5d984d8a720d985d98620d8a3d8acd98420d8a7d984d8add8b5d988d98420d8b9d984d98920d985d98ad8b2d8a920d8a3d98820d981d8a7d8a6d8afd8a9d89f20d988d984d983d98620d985d98620d984d8afd98ad98720d8a7d984d8add98220d8a3d98620d98ad986d8aad982d8af20d8b4d8aed8b520d985d8a720d8a3d8b1d8a7d8af20d8a3d98620d98ad8b4d8b9d8b120d8a8d8a7d984d8b3d8b9d8a7d8afd8a920d8a7d984d8aad98a20d984d8a720d8aad8b4d988d8a8d987d8a720d8b9d988d8a7d982d8a820d8a3d984d98ad985d8a920d8a3d98820d8a2d8aed8b120d8a3d8b1d8a7d8af20d8a3d98620d98ad8aad8acd986d8a820d8a7d984d8a3d984d98520d8a7d984d8b0d98a20d8b1d8a8d985d8a720d8aad986d8acd98520d8b9d986d98720d8a8d8b9d8b620d8a7d984d985d8aad8b9d8a920d89fc2a03c2f6469763e3c646976207374796c653d22746578742d616c69676e3a72696768743b223ed8b9d984d98a20d8a7d984d8acd8a7d986d8a820d8a7d984d8a2d8aed8b120d986d8b4d8acd8a820d988d986d8b3d8aad986d983d8b120d987d8a4d984d8a7d8a120d8a7d984d8b1d8acd8a7d98420d8a7d984d985d981d8aad988d986d988d98620d8a8d986d8b4d988d8a920d8a7d984d984d8add8b8d8a920d8a7d984d987d8a7d8a6d985d988d98620d981d98a20d8b1d8bad8a8d8a7d8aad987d98520d981d984d8a720d98ad8afd8b1d983d988d98620d985d8a720d98ad8b9d982d8a8d987d8a720d985d98620d8a7d984d8a3d984d98520d988d8a7d984d8a3d8b3d98a20d8a7d984d985d8add8aad985d88c20d988d8a7d984d984d988d98520d983d8b0d984d98320d98ad8b4d985d98420d987d8a4d984d8a7d8a120d8a7d984d8b0d98ad98620d8a3d8aed981d982d988d8a720d981d98a20d988d8a7d8acd8a8d8a7d8aad987d98520d986d8aad98ad8acd8a920d984d8b6d8b9d98120d8a5d8b1d8a7d8afd8aad987d98520d981d98ad8aad8b3d8a7d988d98a20d985d8b920d987d8a4d984d8a7d8a120d8a7d984d8b0d98ad98620d98ad8aad8acd986d8a8d988d98620d988d98ad986d8a3d988d98620d8b9d98620d8aad8add985d98420d8a7d984d983d8afd8ad20d988d8a7d984d8a3d984d985202e3c2f6469763e3c646976207374796c653d22746578742d616c69676e3a72696768743b223ec2a020c2a020c2a020c2a03c2f6469763e3c2f6469763e, NULL, NULL, '2021-10-18 02:33:45', '2022-05-17 02:42:36'),
(32, 8, 15, 'About', 'about', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223e4275742049206d757374206578706c61696e20746f20796f7520686f7720616c6c2074686973206d697374616b656e2069646561206f662064656e6f756e63696e6720706c65617375726520616e64207072616973696e67207061696e2077617320626f726e20616e6420492077696c6c206769766520796f75206120636f6d706c657465206163636f756e74206f66207468652073797374656d2c20616e64206578706f756e64207468652061637475616c207465616368696e6773206f6620746865206772656174206578706c6f726572206f66207468652074727574682c20746865206d61737465722d6275696c646572206f662068756d616e2068617070696e6573732e204e6f206f6e652072656a656374732c206469736c696b65732c206f722061766f69647320706c65617375726520697473656c662c206265636175736520697420697320706c6561737572652c2062757420626563617573652074686f73652077686f20646f206e6f74206b6e6f7720686f7720746f2070757273756520706c65617375726520726174696f6e616c6c7920656e636f756e74657220636f6e73657175656e6365732074686174206172652065787472656d656c79207061696e66756c2e204e6f7220616761696e20697320746865726520616e796f6e652077686f206c6f766573206f722070757273756573206f72206465736972657320746f206f627461696e207061696e206f6620697473656c662c2062656361757365206974206973207061696e2c206275742062656361757365206f63636173696f6e616c6c792063697263756d7374616e636573206f6363757220696e20776869636820746f696c20616e64207061696e2063616e2070726f637572652068696d20736f6d6520677265617420706c6561737572652e20546f2074616b652061207472697669616c206578616d706c652c207768696368206f66207573206576657220756e64657274616b6573206c61626f72696f757320706879736963616c2065786572636973652c2065786365707420746f206f627461696e20736f6d6520616476616e746167652066726f6d2069743f204275742077686f2068617320616e7920726967687420746f2066696e64206661756c7420776974682061206d616e2077686f2063686f6f73657320746f20656e6a6f79206120706c656173757265207468617420686173206e6f20616e6e6f79696e6720636f6e73657175656e6365732c206f72206f6e652077686f2061766f6964732061207061696e20746861742070726f6475636573206e6f20726573756c74616e7420706c6561737572653c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, '2022-05-10 03:35:07', '2022-05-14 04:02:21'),
(33, 9, 15, 'حول', 'حول', 0x3c703e3c7370616e207374796c653d22666f6e742d66616d696c793a274f70656e2053616e73272c20417269616c2c2073616e732d73657269663b746578742d616c69676e3a6a7573746966793b223ed8aed984d8a7d981d8a7d98e20d984d984d8a5d8b9d8aad982d8a7d8af20d8a7d984d8b3d8a7d8a6d8af20d981d8a5d98620d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d984d98ad8b320d986d8b5d8a7d98e20d8b9d8b4d988d8a7d8a6d98ad8a7d98bd88c20d8a8d98420d8a5d98620d984d98720d8acd8b0d988d8b120d981d98a20d8a7d984d8a3d8afd8a820d8a7d984d984d8a7d8aad98ad986d98a20d8a7d984d983d984d8a7d8b3d98ad983d98a20d985d986d8b020d8a7d984d8b9d8a7d98520343520d982d8a8d98420d8a7d984d985d98ad984d8a7d8afd88c20d985d985d8a720d98ad8acd8b9d984d98720d8a3d983d8abd8b120d985d986203230303020d8b9d8a7d98520d981d98a20d8a7d984d982d8afd9852e20d982d8a7d98520d8a7d984d8a8d8b1d988d981d98ad8b3d988d8b12022d8b1d98ad8aad8b4d8a7d8b1d8af20d985d8a7d98320d984d98ad986d8aad988d98322202852696368617264204d63436c696e746f636b2920d988d987d98820d8a8d8b1d988d981d98ad8b3d988d8b120d8a7d984d984d8bad8a920d8a7d984d984d8a7d8aad98ad986d98ad8a920d981d98a20d8acd8a7d985d8b9d8a920d987d8a7d985d8a8d8afd9862dd8b3d98ad8afd986d98a20d981d98a20d981d98ad8b1d8acd98ad986d98ad8a720d8a8d8a7d984d8a8d8add8ab20d8b9d98620d8a3d8b5d988d98420d983d984d985d8a920d984d8a7d8aad98ad986d98ad8a920d8bad8a7d985d8b6d8a920d981d98a20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d988d987d98a2022636f6e736563746574757222d88c20d988d8aed984d8a7d98420d8aad8aad8a8d8b9d98720d984d987d8b0d98720d8a7d984d983d984d985d8a920d981d98a20d8a7d984d8a3d8afd8a820d8a7d984d984d8a7d8aad98ad986d98a20d8a7d983d8aad8b4d98120d8a7d984d985d8b5d8afd8b120d8a7d984d8bad98ad8b120d982d8a7d8a8d98420d984d984d8b4d9832e20d981d984d982d8af20d8a7d8aad8b6d8ad20d8a3d98620d983d984d985d8a7d8aa20d986d8b520d984d988d8b1d98ad98520d8a5d98ad8a8d8b3d988d98520d8aad8a3d8aad98a20d985d98620d8a7d984d8a3d982d8b3d8a7d9853c2f7370616e3e3c6272202f3e3c2f703e, NULL, NULL, '2022-05-10 03:35:07', '2022-05-17 01:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `page_headings`
--

CREATE TABLE `page_headings` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `blog_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_details_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `courses_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_details_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `forget_password_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructors_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_headings`
--

INSERT INTO `page_headings` (`id`, `language_id`, `blog_page_title`, `blog_details_page_title`, `contact_page_title`, `courses_page_title`, `course_details_page_title`, `faq_page_title`, `forget_password_page_title`, `instructors_page_title`, `login_page_title`, `signup_page_title`, `created_at`, `updated_at`) VALUES
(4, 8, 'Blog', 'Blog Details', 'Contact', 'Courses', 'Course Details', 'FAQ', 'Forget Password', 'Instructors', 'Login', 'Signup', '2021-10-14 02:42:42', '2021-12-01 23:26:02'),
(5, 9, 'مدونة او مذكرة', 'تفاصيل المدونة', 'اتصل', 'الدورات', 'تفاصيل الدورة', 'التعليمات', 'نسيت كلمة المرور', 'المدربين', 'تسجيل الدخول', 'اشتراك', '2021-12-01 23:29:44', '2021-12-01 23:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `type` smallint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color_opacity` decimal(3,2) UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `delay` int UNSIGNED NOT NULL COMMENT 'value will be in milliseconds',
  `serial_number` mediumint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 => deactive, 1 => active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `language_id`, `type`, `image`, `name`, `background_color`, `background_color_opacity`, `title`, `text`, `button_text`, `button_color`, `button_url`, `end_date`, `end_time`, `delay`, `serial_number`, `status`, `created_at`, `updated_at`) VALUES
(7, 8, 1, '6283afb16e2f3.png', 'Black Friday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, 1, 0, '2021-08-10 05:05:12', '2022-05-17 08:23:34'),
(8, 8, 2, '6283afa05bc20.png', 'Month End Sale', '2079FF', '0.80', 'ENJOY 10% OFF', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Enroll Now', '2079FF', 'https://codecanyon.kreativdev.com/coursela/courses', NULL, NULL, 2000, 2, 0, '2021-08-10 05:07:11', '2022-05-17 08:23:31'),
(10, 8, 3, '6283af7ead9e9.png', 'Summer Sale', '2079FF', '0.70', 'Newsletter', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Subscribe', '2079FF', NULL, NULL, NULL, 2000, 3, 0, '2021-08-11 05:42:11', '2022-05-17 08:23:29'),
(11, 8, 4, '6283af5e7143a.png', 'Winter Offer', NULL, NULL, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Enroll Now', '2079FF', 'https://codecanyon.kreativdev.com/coursela/courses', NULL, NULL, 1500, 4, 0, '2021-08-11 06:38:08', '2022-05-17 08:23:26'),
(14, 8, 7, '6283ae15c6c24.png', 'Flash Sale', '2079FF', NULL, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes, I Want to Save 30%', '2079FF', 'https://codecanyon.kreativdev.com/coursela/courses', '2025-07-11', '12:00:00', 1500, 7, 0, '2021-08-11 07:15:16', '2022-05-17 08:23:24'),
(20, 8, 5, '6283ac4e5c055.png', 'Email Popup', NULL, NULL, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Subscribe', '2079FF', NULL, NULL, NULL, 1500, 2, 0, '2022-05-17 08:08:14', '2022-11-06 23:19:51'),
(21, 8, 6, '6283ace1d2dd0.png', 'Countdown Popup', NULL, NULL, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', '2079FF', 'https://codecanyon.kreativdev.com/coursela/courses', '2025-05-16', '12:00:00', 1000, 1, 0, '2022-05-17 08:10:41', '2022-11-06 23:19:54'),
(22, 9, 1, '6283afb16e2f3.png', 'Black Friday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, 1, 0, '2021-08-10 05:05:12', '2022-05-17 08:23:34'),
(23, 9, 2, '6283afa05bc20.png', 'Month End Sale', '2079FF', '0.80', 'استمتع بخصم 10٪', 'الألم بحد ذاته هو الكثير من الألم ، لقد كان حزينًا على مر السنين ، لكن حان الوقت لحسد الألم والألم مثير ، كان مثيرًا ، لكنه كان معقدًا.', 'تسجيل الآن', '2079FF', 'https://codecanyon.kreativdev.com/coursela/courses', NULL, NULL, 2000, 2, 0, '2021-08-10 05:07:11', '2022-05-17 08:23:31'),
(24, 9, 3, '6283af7ead9e9.png', 'Summer Sale', '2079FF', '0.70', 'Newsletter', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Subscribe', '2079FF', NULL, NULL, NULL, 2000, 3, 0, '2021-08-11 05:42:11', '2022-05-17 08:23:29'),
(25, 9, 4, '6283af5e7143a.png', 'Winter Offer', NULL, NULL, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Enroll Now', '2079FF', 'https://codecanyon.kreativdev.com/coursela/courses', NULL, NULL, 1500, 4, 0, '2021-08-11 06:38:08', '2022-05-17 08:23:26'),
(27, 9, 7, '6283ae15c6c24.png', 'Flash Sale', '2079FF', NULL, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes, I Want to Save 30%', '2079FF', 'https://codecanyon.kreativdev.com/coursela/courses', '2025-07-11', '12:00:00', 1500, 7, 0, '2021-08-11 07:15:16', '2022-05-17 08:23:24'),
(28, 9, 5, '6283ac4e5c055.png', 'Email Popup', NULL, NULL, 'احصل على خصم 10٪ على طلبك الأول', 'الألم بحد ذاته هو الحب ، لقد كان أسهل ، لكن من الصعب إيجاد وقت للاستثمار', 'يشترك', '2079FF', NULL, NULL, NULL, 1500, 2, 1, '2022-05-17 08:08:14', '2022-05-17 08:10:56'),
(29, 9, 6, '6283ace1d2dd0.png', 'Countdown Popup', NULL, NULL, 'أسرع ، البيع ينتهي يوم الجمعة', 'هذه فرصتك الأخيرة لتوفير 30٪', 'نعم ، أريد توفير 30٪', '2079FF', 'https://codecanyon.kreativdev.com/coursela/courses', '2025-05-16', '12:00:00', 1000, 1, 1, '2022-05-17 08:10:41', '2022-05-17 08:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `subscribable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribable_id` bigint UNSIGNED NOT NULL,
  `endpoint` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_encoding` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `push_subscriptions`
--

INSERT INTO `push_subscriptions` (`id`, `subscribable_type`, `subscribable_id`, `endpoint`, `public_key`, `auth_token`, `content_encoding`, `created_at`, `updated_at`) VALUES
(6, 'App\\Models\\Guest', 6, 'https://wns2-pn1p.notify.windows.com/w/?token=BQYAAADgND0JxYcnPzYE8uoZdwbqXE%2fJuNihpgTCM%2fg5j6EprmQjYZWqbkXQNkzc3BqEdP8IwhBXgtzxyt0Y9y%2beEYhFEej1jbY8SYy52EsMud5edwNaHD%2fhmaeC6xpsb4WCVM%2bU6JyCzdzuHq5Zo59BAOwPA4s0AsZ%2f%2b%2bQB7%2fEH4EMCHeTOeWxle8r3bR4x6XLSa%2f%2b%2fgDQzE7IuwL4wmxWRPsg0GF5aqKbh2KQKHH25HSRzsRw0B%2bQYEO2KEqLGl4mpg1sJMr4SlkxLIv5MhLefh7Qc2IzvYcmCrLHMlfN%2f9ZecsOjOhynHZtj%2b87TrKZk2sro%3d', 'BKTaDqDnE7OqBD4ndZ7c53tRSqbUUMtdgFz4t0JVOVh_Df36qOi13iw6m_8PFHl1QOgeW3ZdSb4_qv5OqG3s4Og', 'LvAGcu6Z-G7drfydz9GedQ', NULL, '2022-11-13 23:57:02', '2022-11-13 23:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `quick_links`
--

CREATE TABLE `quick_links` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` smallint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quick_links`
--

INSERT INTO `quick_links` (`id`, `language_id`, `title`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(3, 8, 'Terms & Conditions', 'codecanyon.kreativdev.com/coursela/terms-&-conditions', 1, '2021-06-22 22:52:38', '2022-05-14 23:58:49'),
(4, 8, 'About Us', 'https://codecanyon.kreativdev.com/coursela/about', 2, '2021-06-22 22:53:09', '2022-05-14 23:58:15'),
(5, 8, 'Contact Us', 'codecanyon.kreativdev.com/coursela/contact', 1, '2021-06-22 22:53:27', '2022-05-14 23:57:38'),
(6, 9, 'سياسة خاصة', 'https://www.privacy.com', 1, '2021-08-29 07:04:05', '2021-12-01 04:16:18'),
(7, 9, 'عني', 'https://www.about.com', 2, '2021-08-29 07:06:32', '2021-12-01 04:16:34'),
(8, 9, 'اتصل', 'https://www.contact.com', 3, '2021-08-29 07:08:21', '2021-12-01 04:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_scores`
--

CREATE TABLE `quiz_scores` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `lesson_id` bigint UNSIGNED NOT NULL,
  `score` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quiz_scores`
--

INSERT INTO `quiz_scores` (`id`, `user_id`, `course_id`, `lesson_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 9, 11, 43, 50, '2022-05-17 06:02:22', '2022-05-17 06:02:22'),
(2, 9, 11, 44, 100, '2022-05-17 06:02:52', '2022-05-17 06:02:52'),
(3, 9, 11, 45, 100, '2022-05-17 06:03:10', '2022-05-17 06:03:10'),
(4, 9, 11, 46, 100, '2022-05-17 06:03:24', '2022-05-17 06:03:24'),
(5, 9, 11, 47, 100, '2022-05-17 06:03:56', '2022-05-17 06:03:56'),
(6, 9, 11, 48, 100, '2022-05-17 06:04:13', '2022-05-17 06:04:13'),
(7, 9, 11, 49, 50, '2022-05-17 06:05:42', '2022-05-17 06:05:42'),
(8, 9, 12, 1, 0, '2022-11-12 04:18:17', '2022-11-12 04:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(4, 'Admin', '[\"Language Management\",\"Basic Settings\",\"Home Page\",\"Instructors\",\"Course Management\",\"Course Enrolments\",\"FAQ Management\",\"Footer\"]', '2021-08-06 22:42:38', '2021-11-24 23:20:08'),
(6, 'Moderator', '[\"Basic Settings\",\"Home Page\",\"Course Enrolments\",\"Blog Management\",\"FAQ Management\",\"Advertisements\",\"Footer\"]', '2021-08-07 22:14:34', '2021-11-24 22:15:07'),
(14, 'Supervisor', NULL, '2021-11-24 22:48:53', '2021-11-24 23:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `course_categories_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `call_to_action_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `featured_courses_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `features_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `video_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `fun_facts_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `testimonials_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `newsletter_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `featured_instructors_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `about_us_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `latest_blog_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `footer_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `course_categories_section_status`, `call_to_action_section_status`, `featured_courses_section_status`, `features_section_status`, `video_section_status`, `fun_facts_section_status`, `testimonials_section_status`, `newsletter_section_status`, `featured_instructors_section_status`, `about_us_section_status`, `latest_blog_section_status`, `footer_section_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2021-12-11 00:55:13', '2022-04-07 02:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `category_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_courses_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_instructors_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonials_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `section_titles`
--

INSERT INTO `section_titles` (`id`, `language_id`, `category_section_title`, `featured_courses_section_title`, `featured_instructors_section_title`, `testimonials_section_title`, `features_section_title`, `blog_section_title`, `created_at`, `updated_at`) VALUES
(1, 8, 'Course Categories', 'Featured Courses', 'Our Instructors', 'Customer Feedbacks', 'Our Features', 'Latest Blog', '2021-10-05 03:30:05', '2022-05-15 00:50:11'),
(2, 9, 'فئات الدورة', 'الدورات المميزة', 'المدربين لدينا', 'الشهادات - التوصيات', 'ميزاتنا', 'أحدث مدونة', '2021-11-30 22:45:01', '2022-05-14 04:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `meta_keyword_home` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_home` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword_courses` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_courses` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword_instructors` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_instructors` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword_blog` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_blog` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword_faq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_faq` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_contact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_login` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword_signup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_signup` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword_forget_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_forget_password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `language_id`, `meta_keyword_home`, `meta_description_home`, `meta_keyword_courses`, `meta_description_courses`, `meta_keyword_instructors`, `meta_description_instructors`, `meta_keyword_blog`, `meta_description_blog`, `meta_keyword_faq`, `meta_description_faq`, `meta_keyword_contact`, `meta_description_contact`, `meta_keyword_login`, `meta_description_login`, `meta_keyword_signup`, `meta_description_signup`, `meta_keyword_forget_password`, `meta_description_forget_password`, `created_at`, `updated_at`) VALUES
(2, 9, 'home', 'Home Description', 'courses', 'Courses Description', 'instructors', 'Instructors Description', 'blog', 'Blog Description', 'faq', 'FAQ Description', 'contact', 'Contact Description', 'login', 'Login Description', 'signup', 'Signup Description', 'forget password', 'Forget Password Description', '2021-07-30 05:57:39', '2021-11-24 01:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` bigint UNSIGNED NOT NULL,
  `instructor_id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `instructor_id`, `icon`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(31, 18, 'fab fa-linkedin-in', 'http://example.com/', 1, '2022-05-14 05:55:10', '2022-05-14 05:55:10'),
(32, 18, 'fab fa-instagram', 'http://example.com/', 2, '2022-05-14 05:55:20', '2022-05-14 05:55:20'),
(33, 18, 'fab fa-facebook-f', 'http://example.com/', 3, '2022-05-14 05:55:28', '2022-05-14 05:55:28'),
(34, 19, 'fab fa-linkedin-in', 'http://example.com/', 1, '2022-05-14 05:55:10', '2022-05-14 05:55:10'),
(35, 19, 'fab fa-instagram', 'http://example.com/', 2, '2022-05-14 05:55:20', '2022-05-14 05:55:20'),
(36, 19, 'fab fa-facebook-f', 'http://example.com/', 3, '2022-05-14 05:55:28', '2022-05-14 05:55:28'),
(37, 20, 'fab fa-linkedin-in', 'http://example.com/', 1, '2022-05-14 05:55:10', '2022-05-14 05:55:10'),
(38, 20, 'fab fa-instagram', 'http://example.com/', 2, '2022-05-14 05:55:20', '2022-05-14 05:55:20'),
(39, 20, 'fab fa-facebook-f', 'http://example.com/', 3, '2022-05-14 05:55:28', '2022-05-14 05:55:28'),
(40, 21, 'fab fa-linkedin-in', 'http://example.com/', 1, '2022-05-14 05:55:10', '2022-05-14 05:55:10'),
(41, 21, 'fab fa-instagram', 'http://example.com/', 2, '2022-05-14 05:55:20', '2022-05-14 05:55:20'),
(42, 21, 'fab fa-facebook-f', 'http://example.com/', 3, '2022-05-14 05:55:28', '2022-05-14 05:55:28'),
(43, 22, 'fab fa-linkedin-in', 'http://example.com/', 1, '2022-05-14 05:55:10', '2022-05-14 05:55:10'),
(44, 22, 'fab fa-instagram', 'http://example.com/', 2, '2022-05-14 05:55:20', '2022-05-14 05:55:20'),
(45, 22, 'fab fa-facebook-f', 'http://example.com/', 3, '2022-05-14 05:55:28', '2022-05-14 05:55:28'),
(46, 23, 'fab fa-linkedin-in', 'http://example.com/', 1, '2022-05-14 05:55:10', '2022-05-14 05:55:10'),
(47, 23, 'fab fa-instagram', 'http://example.com/', 2, '2022-05-14 05:55:20', '2022-05-14 05:55:20'),
(48, 23, 'fab fa-facebook-f', 'http://example.com/', 3, '2022-05-14 05:55:28', '2022-05-14 05:55:28'),
(49, 24, 'fab fa-linkedin-in', 'http://example.com/', 1, '2022-05-14 05:55:10', '2022-05-14 05:55:10'),
(50, 24, 'fab fa-instagram', 'http://example.com/', 2, '2022-05-14 05:55:20', '2022-05-14 05:55:20'),
(51, 24, 'fab fa-facebook-f', 'http://example.com/', 3, '2022-05-14 05:55:28', '2022-05-14 05:55:28'),
(52, 25, 'fab fa-linkedin-in', 'http://example.com/', 1, '2022-05-14 05:55:10', '2022-05-14 05:55:10'),
(53, 25, 'fab fa-instagram', 'http://example.com/', 2, '2022-05-14 05:55:20', '2022-05-14 05:55:20'),
(54, 25, 'fab fa-facebook-f', 'http://example.com/', 3, '2022-05-14 05:55:28', '2022-05-14 05:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `icon`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 'fab fa-facebook-f', 'https://www.facebook.com/', 1, '2021-11-20 03:01:42', '2021-11-20 03:01:42'),
(37, 'fab fa-twitter', 'https://twitter.com/', 3, '2021-11-20 03:03:22', '2021-11-20 03:03:22'),
(38, 'fab fa-linkedin-in', 'https://www.linkedin.com/', 2, '2021-11-20 03:04:29', '2021-11-20 03:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email_id`, `created_at`, `updated_at`) VALUES
(13, 'geniustest11@gmail.com', '2022-05-11 23:24:45', '2022-05-11 23:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `name`, `occupation`, `comment`, `serial_number`, `created_at`, `updated_at`) VALUES
(6, 8, '62809473b661b.png', 'Jane Doe', 'Student', 'Our service is free to users because vendors pay us when they receive web traffic. We list all vendors - not just those that pay us - in our comprehensive directory so that you can compare, sort and filter your results to make the most informed decision possible. Get App is a Gartner company. Gartner (NYSE: IT) is the world\'s leading information technology research.', 1, '2021-10-11 03:21:50', '2022-05-14 23:49:48'),
(9, 8, '61b9b7ccb45f9.png', 'Jef Hardy', 'Instructor', 'Our service is free to users because vendors pay us when they receive web traffic. We list all vendors - not  just those that pay us - in our comprehensive directory so that you can compare, sort and filter your results to make the most informed decision possible. Get App is a Gartner company. Gartner (NYSE: IT) is the world\'s leading information technology research.', 2, '2021-12-15 03:38:04', '2022-05-14 23:50:06'),
(10, 8, '61b9b815404f1.png', 'Matt Hardy', 'Student', 'Our service is free to users because vendors pay us when they receive web traffic. We list all vendors - not  just those that pay us - in our comprehensive directory so that you can compare, sort and filter your results to make the most informed decision possible. Get App is a Gartner company. Gartner (NYSE: IT) is the world\'s leading information technology research.', 3, '2021-12-15 03:40:37', '2022-05-14 23:50:02'),
(11, 9, '62809473b661b.png', 'جين دو', 'طالب علم', 'خدمتنا مجانية للمستخدمين لأن البائعين يدفعون لنا عندما يتلقون زيارات على شبكة الإنترنت. نحن ندرج جميع البائعين - وليس فقط أولئك الذين يدفعون لنا - في دليلنا الشامل بحيث يمكنك مقارنة نتائجك وفرزها وتصفيتها لاتخاذ القرار الأكثر استنارة قدر الإمكان. Get App هي إحدى شركات Gartner. جارتنر (المدرجة في بورصة نيويورك تحت الرمز NYSE: IT) هي الشركة الرائدة في مجال أبحاث تكنولوجيا المعلومات على مستوى العالم.', 1, '2021-10-11 03:21:50', '2022-05-14 23:49:48'),
(12, 9, '61b9b7ccb45f9.png', 'جيف هاردي', 'معلم', 'خدمتنا مجانية للمستخدمين لأن البائعين يدفعون لنا عندما يتلقون زيارات على شبكة الإنترنت. نحن ندرج جميع البائعين - وليس فقط أولئك الذين يدفعون لنا - في دليلنا الشامل بحيث يمكنك مقارنة نتائجك وفرزها وتصفيتها لاتخاذ القرار الأكثر استنارة قدر الإمكان. Get App هي إحدى شركات Gartner. جارتنر (المدرجة في بورصة نيويورك تحت الرمز NYSE: IT) هي الشركة الرائدة في مجال أبحاث تكنولوجيا المعلومات على مستوى العالم.', 2, '2021-12-15 03:38:04', '2022-05-14 23:50:06'),
(13, 9, '61b9b815404f1.png', 'مات هاردي', 'طالب علم', 'خدمتنا مجانية للمستخدمين لأن البائعين يدفعون لنا عندما يتلقون زيارات على شبكة الإنترنت. نحن ندرج جميع البائعين - وليس فقط أولئك الذين يدفعون لنا - في دليلنا الشامل بحيث يمكنك مقارنة نتائجك وفرزها وتصفيتها لاتخاذ القرار الأكثر استنارة قدر الإمكان. Get App هي إحدى شركات Gartner. جارتنر (المدرجة في بورصة نيويورك تحت الرمز NYSE: IT) هي الشركة الرائدة في مجال أبحاث تكنولوجيا المعلومات على مستوى العالم.', 3, '2021-12-15 03:40:37', '2022-05-14 23:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 -> banned or deactive, 1 -> active',
  `verification_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_profile_status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 -> not edited user profile, 1 -> edited user profile',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `image`, `username`, `email`, `email_verified_at`, `password`, `contact_number`, `address`, `city`, `state`, `country`, `status`, `verification_token`, `remember_token`, `edit_profile_status`, `created_at`, `updated_at`) VALUES
(9, 'Saeed', 'Mahmud', '1636607574.png', 'saeed', 'sadid.hasan14@gmail.com', '2021-12-13 02:35:32', '$2a$12$T9Z/6tQKjnW8bQdmgNW70eEGuum0f69NUAJ2wQsGqBx6UoJ/bU0Qa', '917428730894', 'Mirpur 12', 'Dhaka', NULL, 'Bangladesh', 1, NULL, NULL, 1, '2021-11-04 03:31:44', '2021-12-23 05:00:40'),
(10, 'Samiul', 'Pratik', NULL, 'pratik', 'pratik.anwar@gmail.com', '2022-04-26 02:14:48', '$2y$10$W2TY47wRCPRqeht5GSY4oOwqjj01IEMOrDCCf26Fm5VupFLwv3HjC', '+132456789', 'House - 44, Road, - 3, Sector - 11, Uttara, Dhaka', 'Dhaka', 'Dhaka', 'Bangladesh', 1, NULL, NULL, 1, '2022-04-26 02:14:29', '2022-04-26 02:15:46');

-- --------------------------------------------------------

--
-- Table structure for table `video_sections`
--

CREATE TABLE `video_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_sections`
--

INSERT INTO `video_sections` (`id`, `language_id`, `title`, `image`, `link`, `created_at`, `updated_at`) VALUES
(2, 8, 'Small Intro About Us', '1633586279.png', 'https://www.youtube.com/watch?v=w7bMC7OCk2k', '2021-10-06 23:56:46', '2022-05-15 00:53:52'),
(3, 9, 'تحدث بعض الضوضاء معنا.', '61a70130c2e2c.png', 'https://www.youtube.com/watch?v=lgm3puP3tMA', '2021-11-30 22:59:28', '2021-11-30 22:59:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_sections`
--
ALTER TABLE `about_us_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_sections`
--
ALTER TABLE `action_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_role_id_foreign` (`role_id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `blog_informations`
--
ALTER TABLE `blog_informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_informations_language_id_foreign` (`language_id`),
  ADD KEY `blog_informations_blog_category_id_foreign` (`blog_category_id`),
  ADD KEY `blog_informations_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cookie_alerts_language_id_foreign` (`language_id`);

--
-- Indexes for table `count_informations`
--
ALTER TABLE `count_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_categories`
--
ALTER TABLE `course_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_categories_language_id_foreign` (`language_id`);

--
-- Indexes for table `course_enrolments`
--
ALTER TABLE `course_enrolments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_enrolments_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_faqs`
--
ALTER TABLE `course_faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_faqs_language_id_foreign` (`language_id`),
  ADD KEY `course_faqs_course_id_foreign` (`course_id`);

--
-- Indexes for table `course_informations`
--
ALTER TABLE `course_informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_informations_language_id_foreign` (`language_id`),
  ADD KEY `course_informations_course_category_id_foreign` (`course_category_id`),
  ADD KEY `course_informations_course_id_foreign` (`course_id`),
  ADD KEY `course_informations_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `course_reviews`
--
ALTER TABLE `course_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_reviews_user_id_foreign` (`user_id`),
  ADD KEY `course_reviews_course_id_foreign` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_language_id_foreign` (`language_id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_contents`
--
ALTER TABLE `footer_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_texts_language_id_foreign` (`language_id`);

--
-- Indexes for table `fun_fact_sections`
--
ALTER TABLE `fun_fact_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_sections`
--
ALTER TABLE `hero_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instructors_language_id_foreign` (`language_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_module_id_foreign` (`module_id`);

--
-- Indexes for table `lesson_complete`
--
ALTER TABLE `lesson_complete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_contents`
--
ALTER TABLE `lesson_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_contents_lesson_id_foreign` (`lesson_id`);

--
-- Indexes for table `lesson_content_complete`
--
ALTER TABLE `lesson_content_complete`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lesson_quizzes`
--
ALTER TABLE `lesson_quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_quizzes_lesson_id_foreign` (`lesson_id`);

--
-- Indexes for table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_builders`
--
ALTER TABLE `menu_builders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modules_course_information_id_foreign` (`course_information_id`);

--
-- Indexes for table `newsletter_sections`
--
ALTER TABLE `newsletter_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_gateways`
--
ALTER TABLE `online_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_contents_language_id_foreign` (`language_id`),
  ADD KEY `page_contents_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_headings`
--
ALTER TABLE `page_headings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_headings_language_id_foreign` (`language_id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `push_subscriptions_endpoint_unique` (`endpoint`),
  ADD KEY `push_subscriptions_subscribable_type_subscribable_id_index` (`subscribable_type`,`subscribable_id`);

--
-- Indexes for table `quick_links`
--
ALTER TABLE `quick_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quick_links_language_id_foreign` (`language_id`);

--
-- Indexes for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_titles`
--
ALTER TABLE `section_titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seos_language_id_foreign` (`language_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_links_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_id_unique` (`email_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_sections`
--
ALTER TABLE `video_sections`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_sections`
--
ALTER TABLE `about_us_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `action_sections`
--
ALTER TABLE `action_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `blog_informations`
--
ALTER TABLE `blog_informations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `count_informations`
--
ALTER TABLE `count_informations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `course_categories`
--
ALTER TABLE `course_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `course_enrolments`
--
ALTER TABLE `course_enrolments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `course_faqs`
--
ALTER TABLE `course_faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `course_informations`
--
ALTER TABLE `course_informations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `course_reviews`
--
ALTER TABLE `course_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `footer_contents`
--
ALTER TABLE `footer_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fun_fact_sections`
--
ALTER TABLE `fun_fact_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hero_sections`
--
ALTER TABLE `hero_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `lesson_complete`
--
ALTER TABLE `lesson_complete`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `lesson_contents`
--
ALTER TABLE `lesson_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT for table `lesson_content_complete`
--
ALTER TABLE `lesson_content_complete`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `lesson_quizzes`
--
ALTER TABLE `lesson_quizzes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu_builders`
--
ALTER TABLE `menu_builders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `newsletter_sections`
--
ALTER TABLE `newsletter_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `online_gateways`
--
ALTER TABLE `online_gateways`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `page_headings`
--
ALTER TABLE `page_headings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quick_links`
--
ALTER TABLE `quick_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_scores`
--
ALTER TABLE `quiz_scores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `section_titles`
--
ALTER TABLE `section_titles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `video_sections`
--
ALTER TABLE `video_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD CONSTRAINT `blog_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `blog_informations`
--
ALTER TABLE `blog_informations`
  ADD CONSTRAINT `blog_informations_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_informations_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blog_informations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  ADD CONSTRAINT `cookie_alerts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_categories`
--
ALTER TABLE `course_categories`
  ADD CONSTRAINT `course_categories_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_enrolments`
--
ALTER TABLE `course_enrolments`
  ADD CONSTRAINT `course_enrolments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_faqs`
--
ALTER TABLE `course_faqs`
  ADD CONSTRAINT `course_faqs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_informations`
--
ALTER TABLE `course_informations`
  ADD CONSTRAINT `course_informations_course_category_id_foreign` FOREIGN KEY (`course_category_id`) REFERENCES `course_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_informations_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_informations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_reviews`
--
ALTER TABLE `course_reviews`
  ADD CONSTRAINT `course_reviews_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `footer_contents`
--
ALTER TABLE `footer_contents`
  ADD CONSTRAINT `footer_texts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `instructors_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_contents`
--
ALTER TABLE `lesson_contents`
  ADD CONSTRAINT `lesson_contents_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_quizzes`
--
ALTER TABLE `lesson_quizzes`
  ADD CONSTRAINT `lesson_quizzes_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_course_information_id_foreign` FOREIGN KEY (`course_information_id`) REFERENCES `course_informations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page_contents`
--
ALTER TABLE `page_contents`
  ADD CONSTRAINT `page_contents_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `page_contents_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `popups`
--
ALTER TABLE `popups`
  ADD CONSTRAINT `popups_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `quick_links`
--
ALTER TABLE `quick_links`
  ADD CONSTRAINT `quick_links_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `seos`
--
ALTER TABLE `seos`
  ADD CONSTRAINT `seos_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_links`
--
ALTER TABLE `social_links`
  ADD CONSTRAINT `social_links_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
