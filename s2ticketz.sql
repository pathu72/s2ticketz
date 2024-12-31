-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 27, 2024 at 11:55 AM
-- Server version: 8.0.40-0ubuntu0.20.04.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s2ticketz`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_sections`
--

CREATE TABLE `about_us_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `about_us_sections`
--

INSERT INTO `about_us_sections` (`id`, `language_id`, `image`, `title`, `subtitle`, `text`, `created_at`, `updated_at`) VALUES
(3, 8, '674f2a5d4d643.png', 'Know more about the Culture of Events', 'S2Ticketz fosters a dynamic culture of events by offering features that empower organizers and engage attendees:', '<div class=\"feature-item mt-30\" style=\"margin: 30px 0px; padding: 0px; border: none; outline: none; box-shadow: none; display: flex; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(69, 69, 69); font-family: Roboto, sans-serif; font-size: 16px;\">\r\n<div class=\"feature-content\" style=\"margin: 0px; padding: 0px; border: none; outline: none; box-shadow: none;\">\r\n<h4 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; padding: 0px; border: none; outline: none; box-shadow: none; line-height: 1.46; font-size: 22px; font-family: var(--heading-font); color: var(--heading-color);\">Free Events Host</h4>\r\n<p style=\"padding: 0px; border: none; outline: none; box-shadow: none;\">Create and manage free events effortlessly, from webinars to community gatherings, without incurring hosting fees. Perfect for fostering connections and building communities.</p>\r\n</div>\r\n</div>\r\n<div class=\"feature-item\" style=\"margin: 0px 0px 30px; padding: 0px; border: none; outline: none; box-shadow: none; display: flex; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(69, 69, 69); font-family: Roboto, sans-serif; font-size: 16px;\">\r\n<div class=\"feature-content\" style=\"margin: 0px; padding: 0px; border: none; outline: none; box-shadow: none;\">\r\n<h4 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; padding: 0px; border: none; outline: none; box-shadow: none; line-height: 1.46; font-size: 22px; font-family: var(--heading-font); color: var(--heading-color);\">Build-in Video conference Platform</h4>\r\n<p style=\"padding: 0px; border: none; outline: none; box-shadow: none;\">Seamlessly host virtual events with an integrated video conferencing solution. Whether it\'s a workshop, seminar, or online concert, the platform ensures a smooth virtual experience for both organizers and attendees.</p>\r\n</div>\r\n</div>\r\n<div class=\"feature-item\" style=\"margin: 0px; padding: 0px; border: none; outline: none; box-shadow: none; display: flex; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(69, 69, 69); font-family: Roboto, sans-serif; font-size: 16px;\">\r\n<div class=\"feature-content\" style=\"margin: 0px; padding: 0px; border: none; outline: none; box-shadow: none;\">\r\n<h4 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; padding: 0px; border: none; outline: none; box-shadow: none; line-height: 1.46; font-size: 22px; font-family: var(--heading-font); color: var(--heading-color);\">Connect your attendees with events</h4>\r\n<p style=\"padding: 0px; border: none; outline: none; box-shadow: none;\">Enhance engagement by providing attendees with personalized event recommendations and communication tools. Foster interaction before, during, and after the event to build lasting connections.</p>\r\n</div>\r\n</div>', '2021-12-19 06:23:27', '2024-12-03 21:27:17');

-- --------------------------------------------------------

--
-- Table structure for table `action_sections`
--

CREATE TABLE `action_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `first_title` varchar(255) DEFAULT NULL,
  `second_title` varchar(255) DEFAULT NULL,
  `first_button` varchar(255) DEFAULT NULL,
  `first_button_url` varchar(255) DEFAULT NULL,
  `second_button` varchar(255) DEFAULT NULL,
  `second_button_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `action_sections`
--

INSERT INTO `action_sections` (`id`, `language_id`, `background_image`, `first_title`, `second_title`, `first_button`, `first_button_url`, `second_button`, `second_button_url`, `image`, `created_at`, `updated_at`) VALUES
(3, 8, '61a6fe5929b63.jpg', 'Are You Ready for This Offer?', '50% Offer for Very First 50 Students and Mentors.', 'Become A Student', 'https://codecanyon.kreativdev.com/coursela/user/signup', 'All Courses', 'https://codecanyon.kreativdev.com/coursela/user/courses', '6280a19f2edad.png', '2021-11-30 22:47:21', '2022-05-15 00:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` text,
  `address` text,
  `details` longtext,
  `password` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `first_name`, `last_name`, `image`, `username`, `email`, `phone`, `address`, `details`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Aadhiyal Group', 'of Companies', '674e251ea954a.png', 'admin', 'info@aadhiyalgroup.com', '7092556664', 'Madurai, Tamilnadu', 'S2Ticketz.com is an innovative online ticketing platform that simplifies event ticket booking and management. It is designed to cater to various types of events, including concerts, sports events, marathons, expos, conferences, and more. The platform provides a seamless user experience for both event organizers and attendees, ensuring hassle-free ticket sales and purchases.', '$2y$10$HyS385ol.avl.WeDOOROb.FfD4O4sEYzbrh1eC26mDVplaPvGj5Ty', 1, NULL, '2024-12-03 05:40:00'),
(2, 4, 'Manikandaprabhu', 'E', '674f288e62fd3.png', 'eskprabhu', 'eskprabhu@gmail.com', NULL, NULL, NULL, '$2y$10$pguTmYnAQpVocLsy87peLuhf66cAd5IjuahmDBHaUhrOBdLLhAfEu', 1, '2024-12-03 21:19:34', '2024-12-03 21:19:34'),
(3, 4, 'Test', 'Test', '675831d54f933.png', 'Test123', 'Test123@gmail.com', NULL, NULL, NULL, '$2y$10$9itBB3bdTW0BydPTR9OsqenDv/mtoUEgIkzLZeXPd6OjTfhgg2V2m', 1, '2024-12-10 17:49:33', '2024-12-10 17:49:33');

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint UNSIGNED NOT NULL,
  `ad_type` varchar(255) NOT NULL,
  `resolution_type` smallint UNSIGNED NOT NULL COMMENT '1 => 300 x 250, 2 => 300 x 600, 3 => 728 x 90',
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `slot` varchar(50) DEFAULT NULL,
  `views` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `ad_type`, `resolution_type`, `image`, `url`, `slot`, `views`, `created_at`, `updated_at`) VALUES
(9, 'banner', 1, '64577e55b2478.png', 'https://www.lg.com/bd', NULL, 0, '2021-08-15 23:12:31', '2023-05-07 10:32:53'),
(10, 'banner', 2, '674efdd1e046a.png', 'https://www.s2ticketz.com/', NULL, 2, '2021-08-15 23:13:44', '2024-12-03 18:17:13'),
(11, 'banner', 2, '674efdc9ad465.png', 'https://www.s2ticketz.com/', NULL, 1, '2021-08-15 23:15:14', '2024-12-03 18:17:05'),
(12, 'banner', 1, '674efd46e2aae.png', 'https://www.s2ticketz.com/', NULL, 0, '2021-08-15 23:16:41', '2024-12-03 18:14:54'),
(14, 'banner', 3, '674efcd2b2af0.png', 'https://www.s2ticketz.com/', NULL, 2, '2022-05-17 08:30:56', '2024-12-03 18:12:58'),
(15, 'banner', 1, '674efd3c3ce1e.png', 'https://www.s2ticketz.com/', NULL, 0, '2022-05-17 08:31:36', '2024-12-03 18:14:44'),
(16, 'banner', 3, '674efcc784a3d.png', 'https://www.s2ticketz.com/', NULL, 0, '2022-07-18 05:47:26', '2024-12-03 18:12:47');

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
  `facebook_login_status` int DEFAULT '0',
  `facebook_app_id` varchar(255) DEFAULT NULL,
  `facebook_app_secret` varchar(255) DEFAULT NULL,
  `google_login_status` int DEFAULT '0',
  `google_client_id` varchar(255) DEFAULT NULL,
  `google_client_secret` varchar(255) DEFAULT NULL,
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
  `preloader` varchar(255) DEFAULT NULL,
  `admin_theme_version` varchar(10) NOT NULL DEFAULT 'light',
  `features_section_image` varchar(255) DEFAULT NULL,
  `testimonials_section_image` varchar(255) DEFAULT NULL,
  `course_categories_section_image` varchar(255) DEFAULT NULL,
  `notification_image` varchar(255) DEFAULT NULL,
  `google_adsense_publisher_id` varchar(255) DEFAULT NULL,
  `shop_status` tinyint DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `catalog_mode` tinyint DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `is_shop_rating` tinyint DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `shop_guest_checkout` tinyint NOT NULL DEFAULT '1' COMMENT '1 - active, 0 - deactive',
  `shop_tax` float DEFAULT NULL,
  `tax` double(8,2) DEFAULT '0.00',
  `commission` double(8,2) DEFAULT '0.00',
  `organizer_email_verification` int NOT NULL DEFAULT '0',
  `organizer_admin_approval` int NOT NULL DEFAULT '0',
  `admin_approval_notice` longtext,
  `timezone` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_guest_checkout_status` int DEFAULT '0' COMMENT '0=deactive, 1=active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `uniqid`, `favicon`, `logo`, `website_title`, `email_address`, `contact_number`, `address`, `latitude`, `longitude`, `theme_version`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`, `primary_color`, `breadcrumb_overlay_color`, `breadcrumb_overlay_opacity`, `smtp_status`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `from_mail`, `from_name`, `to_mail`, `breadcrumb`, `disqus_status`, `disqus_short_name`, `google_recaptcha_status`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `facebook_login_status`, `facebook_app_id`, `facebook_app_secret`, `google_login_status`, `google_client_id`, `google_client_secret`, `whatsapp_status`, `whatsapp_number`, `whatsapp_header_title`, `whatsapp_popup_status`, `whatsapp_popup_message`, `maintenance_img`, `maintenance_status`, `maintenance_msg`, `bypass_token`, `footer_logo`, `preloader`, `admin_theme_version`, `features_section_image`, `testimonials_section_image`, `course_categories_section_image`, `notification_image`, `google_adsense_publisher_id`, `shop_status`, `catalog_mode`, `is_shop_rating`, `shop_guest_checkout`, `shop_tax`, `tax`, `commission`, `organizer_email_verification`, `organizer_admin_approval`, `admin_approval_notice`, `timezone`, `updated_at`, `event_guest_checkout_status`) VALUES
(2, 12345, '674f2d2f362b6.png', '674eff944914d.png', 'S2 Ticketz', 'info@aadhiyalgroup.com', '+917092556664', '115, Coronation Street, Arasaradi, Madurai - 625016', '9.92691', '78.10209', 1, '₹', 'left', 'INR', 'right', '1.00', 'C41DCB', '030A15', '0.80', 1, 'smtp.hostinger.com', 587, 'TLS', 'info@s2ticketz.in', 'Karthi@2210', 'info@s2ticketz.in', 'S2 Ticketz', 'info@s2ticketz.in', '67505109d5da1.png', 1, 'evento-6', 0, '6LcCWGgnAAAAADgP1vWv-VXVVrdIERCECIWAOThC', '6LcCWGgnAAAAAM2mM9Mbe4Y04GNZdOzu-9BQBas6', 0, '643057404544999', 'f59e1a04cc1e5ebf95d880dea77c5815', 1, '1031751012564-frjk8rcma592ami6v9kglm27103utpui.apps.googleusercontent.com', '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', 1, '+880 1686321-356', 'Hi, there!', 1, 'If you have any issues, let us know.', '1632725312.png', 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.', 'secret', '674e11ec7b0d4.png', '675a915f35da0.png', 'light', '1633502472.jpg', '61bf1ed024d95.png', '61bf1fc25a8f6.jpg', '619b7d5e5e9df.png', '', 0, 0, 0, 0, 5, 4.00, 4.00, 1, 0, 'Your account is deactivated or pending now please get in touch with admin.', 'Asia/Kolkata', '2024-12-03 02:40:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 8, 'Business', 'business', 1, 1, '2021-10-12 22:51:29', '2023-05-07 10:14:18'),
(37, 8, 'Conference', 'conference', 1, 2, '2021-10-12 22:51:38', '2023-05-07 10:14:01'),
(38, 8, 'Wedding', 'wedding', 1, 3, '2021-10-12 22:51:52', '2023-05-11 04:34:57'),
(43, 8, 'Others', 'others', 1, 4, '2022-04-05 05:50:10', '2022-05-15 03:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_informations`
--

CREATE TABLE `blog_informations` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `blog_category_id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `booking_id` varchar(255) DEFAULT NULL,
  `event_id` varchar(255) DEFAULT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `variation` text,
  `price` float(8,2) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `tax` float(8,2) DEFAULT '0.00',
  `commission` float(8,2) DEFAULT '0.00',
  `early_bird_discount` float DEFAULT NULL,
  `currencyText` varchar(255) DEFAULT NULL,
  `currencyTextPosition` varchar(255) DEFAULT NULL,
  `currencySymbol` varchar(255) DEFAULT NULL,
  `currencySymbolPosition` varchar(255) DEFAULT NULL,
  `paymentMethod` varchar(255) DEFAULT NULL,
  `gatewayType` varchar(255) DEFAULT NULL,
  `paymentStatus` varchar(255) DEFAULT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `attachmentFile` varchar(255) DEFAULT NULL,
  `event_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tax_percentage` double(8,2) DEFAULT '0.00',
  `commission_percentage` double(8,2) DEFAULT '0.00',
  `scan_status` int NOT NULL DEFAULT '0' COMMENT '1=scanned, 0 = not scan yet',
  `conversation_id` varchar(255) DEFAULT NULL,
  `scanned_tickets` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `customer_id`, `booking_id`, `event_id`, `organizer_id`, `fname`, `lname`, `email`, `phone`, `country`, `state`, `city`, `zip_code`, `address`, `variation`, `price`, `quantity`, `discount`, `tax`, `commission`, `early_bird_discount`, `currencyText`, `currencyTextPosition`, `currencySymbol`, `currencySymbolPosition`, `paymentMethod`, `gatewayType`, `paymentStatus`, `invoice`, `attachmentFile`, `event_date`, `created_at`, `updated_at`, `tax_percentage`, `commission_percentage`, `scan_status`, `conversation_id`, `scanned_tickets`) VALUES
(47, NULL, '6756bf6a5f58a', '117', 27, 'Karthick', 'L', 'karthicksiva37@gmail.com', '09750393979', 'India', 'Tamil Nadu', 'Chennai', 'Chennai', 'Cbi Colony', '[{\"ticket_id\":173,\"early_bird_dicount\":0,\"name\":\"Test ticket\",\"qty\":1,\"price\":\"1\",\"scan_status\":0,\"unique_id\":\"6756bf6a5f295\"}]', 1.00, '1', 0, 0.18, 0.00, 0, 'INR', 'right', '₹', 'left', 'Razorpay', 'online', 'completed', '6756bf6a5f58a.pdf', NULL, 'Tue, Dec 31, 2024 08:01pm', '2024-12-09 15:29:06', '2024-12-09 15:29:07', 18.00, NULL, 0, NULL, NULL),
(48, NULL, '6756fcf74e4cc', '117', 27, 'Karthick', 'L', 'karthicksiva37@gmail.com', '09750393979', 'India', 'Tamil Nadu', 'Chennai', 'Chennai', 'Cbi Colony', '[{\"ticket_id\":173,\"early_bird_dicount\":0,\"name\":\"Test ticket\",\"qty\":1,\"price\":1,\"scan_status\":0,\"unique_id\":\"6756fcf74e188\"}]', 1.00, '1', 0, 0.18, 0.00, 0, 'INR', 'right', '₹', 'left', 'Razorpay', 'online', 'completed', '6756fcf74e4cc.pdf', NULL, 'Tue, Dec 31, 2024 08:01pm', '2024-12-09 19:51:43', '2024-12-09 19:51:44', 18.00, NULL, 0, NULL, NULL),
(49, NULL, '6757ee6203764', '117', 27, 'Karthick', 'L', 'karthicksiva37@gmail.com', '09750393979', 'India', 'Tamil Nadu', 'Chennai', 'Chennai', 'Cbi Colony', '[{\"ticket_id\":173,\"early_bird_dicount\":0,\"name\":\"NEW YEAR ULTRA VIBE - ANGEL\",\"qty\":1,\"price\":\"1\",\"scan_status\":0,\"unique_id\":\"6757ee6203467\"}]', 1.00, '1', 0, 0.05, 0.04, 0, 'INR', 'right', '₹', 'left', 'Razorpay', 'online', 'completed', '6757ee6203764.pdf', NULL, 'Tue, Dec 31, 2024 08:01pm', '2024-12-10 13:01:46', '2024-12-10 13:01:47', 4.75, 4.00, 0, NULL, NULL),
(50, NULL, '6757f01ee3470', '119', 30, 'Karthick', 'L', 'karthicksiva37@gmail.com', '09750393979', 'India', 'Tamil Nadu', 'Chennai', 'Chennai', 'Cbi Colony', '[{\"ticket_id\":174,\"early_bird_dicount\":0,\"name\":\"SINGLE ELITE PASS\",\"qty\":1,\"price\":\"1\",\"scan_status\":0,\"unique_id\":\"6757f01ee319c\"}]', 1.00, '1', 0, 0.05, 0.04, 0, 'INR', 'right', '₹', 'left', 'Razorpay', 'online', 'completed', '6757f01ee3470.pdf', NULL, 'Tue, Dec 31, 2024 06:00pm', '2024-12-10 13:09:10', '2024-12-10 13:09:11', 4.75, 4.00, 0, NULL, NULL),
(51, NULL, '6757f59bd205e', '119', 30, 'Sangari', 'P', 'sangareswari.p@gmail.com', '73737 19913', 'India', 'Tamilnadu', 'Madurai', 'Madurai', 'Thirunagar, madurai', '[{\"ticket_id\":174,\"early_bird_dicount\":0,\"name\":\"SINGLE ELITE PASS\",\"qty\":1,\"price\":1,\"scan_status\":0,\"unique_id\":\"6757f59bd1d0d\"}]', 1.00, '1', 0, 0.05, 0.04, 0, 'INR', 'right', '₹', 'left', 'Razorpay', 'online', 'completed', '6757f59bd205e.pdf', NULL, 'Tue, Dec 31, 2024 06:00pm', '2024-12-10 13:32:35', '2024-12-10 13:32:36', 4.75, 4.00, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` mediumint UNSIGNED NOT NULL,
  `state_code` varchar(255) NOT NULL,
  `country_id` mediumint UNSIGNED NOT NULL,
  `country_code` char(2) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '2014-01-01 00:31:01',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `wikiDataId` varchar(255) DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `contact_form_title` varchar(255) DEFAULT NULL,
  `contact_form_subtitle` text,
  `contact_addresses` text,
  `contact_numbers` varchar(255) DEFAULT NULL,
  `contact_mails` text,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `map_zoom` varchar(255) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `contact_form_title`, `contact_form_subtitle`, `contact_addresses`, `contact_numbers`, `contact_mails`, `latitude`, `longitude`, `map_zoom`, `language_id`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', 'Contact Us', '115, Coronation Street, Arasaradi, Madurai - 625016', '+917092556664', 'info@s2ticketz.in', '9.926700088636816', '78.10243662191621', '-104.819859', 8, '2022-07-17 05:00:10', '2024-12-09 20:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `type` tinyint DEFAULT NULL COMMENT '1=user, 2=admin, 3=organizer',
  `support_ticket_id` int DEFAULT NULL,
  `reply` longtext,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_id`, `type`, `support_ticket_id`, `reply`, `file`, `created_at`, `updated_at`) VALUES
(16, 1, 2, 7, '<p>hi</p>', NULL, '2023-03-22 06:08:55', '2023-03-22 06:08:55'),
(17, 1, 1, 7, 'helo ami user', NULL, '2023-03-22 06:16:40', '2023-03-22 06:16:40'),
(19, 8, 2, 7, '<p>hello ami moderator bolci<br /></p>', NULL, '2023-03-22 06:21:08', '2023-03-22 06:21:08'),
(20, 8, 2, 7, '<p>admin assing to me</p>', NULL, '2023-03-22 06:28:59', '2023-03-22 06:28:59'),
(21, 1, 2, 7, '<p>yeah i assign </p>', NULL, '2023-03-22 06:29:20', '2023-03-22 06:29:20'),
(22, 1, 1, 7, 'ok i got it', NULL, '2023-03-22 06:29:38', '2023-03-22 06:29:38'),
(23, 1, 1, 7, 'this is attactment', '641aa22b1762b.zip', '2023-03-22 06:37:31', '2023-03-22 06:37:31'),
(24, 8, 2, 7, '<p>admin zip file</p>', '641aa2c717d3f.zip', '2023-03-22 06:40:07', '2023-03-22 06:40:07'),
(33, 25, 1, 9, 'hi', NULL, '2023-05-06 08:27:22', '2023-05-06 08:27:22'),
(34, 1, 2, 14, '<p>Hi.!!</p>', NULL, '2023-05-08 11:25:37', '2023-05-08 11:25:37'),
(35, 23, 1, 14, 'Hello! please let me ensure', NULL, '2023-05-08 11:26:17', '2023-05-08 11:26:17'),
(36, 1, 2, 14, '<p>we have an issue on our site. we will fixed it soon</p>Thanks</p>', NULL, '2023-05-08 11:27:01', '2023-05-08 11:27:01'),
(37, 1, 2, 12, '<p>We have successfully checked your withdrawal request.</p><p>You have given an invalid account statement. please give us a proper statement,</p><p>then we will accept your request.</p><p>Thanks</p>', NULL, '2023-05-08 11:29:57', '2023-05-08 11:29:57'),
(38, 23, 3, 12, '<p>Thanks a lot for your valuable information.</p>', NULL, '2023-05-08 11:30:44', '2023-05-08 11:30:44'),
(39, 1, 2, 16, '<p>if you have a venue event</p><p>then you have to add a ticket from manage ticket option</p><p>Thanks</p>', NULL, '2023-05-08 11:35:58', '2023-05-08 11:35:58'),
(40, 23, 3, 16, '<p>Thank you so much</p><p>now it\'s work properly</p>', NULL, '2023-05-08 11:36:47', '2023-05-08 11:36:47'),
(41, 23, 1, 13, 'hi', NULL, '2023-05-08 11:37:51', '2023-05-08 11:37:51'),
(42, 1, 2, 13, 'what was your payment method?', NULL, '2023-05-08 11:39:49', '2023-05-08 11:39:49'),
(43, 23, 1, 13, 'City Bank', NULL, '2023-05-08 11:40:06', '2023-05-08 11:40:06'),
(44, 1, 2, 13, '<p>Please give the proper info and book again</p><p>Thanks</p>', NULL, '2023-05-08 11:40:25', '2023-05-08 11:40:25'),
(45, 23, 1, 13, 'Thanks.', NULL, '2023-05-08 11:40:42', '2023-05-08 11:40:42'),
(48, 1, 2, 18, '<p>dfsafaf</p>', NULL, '2023-09-23 09:35:55', '2023-09-23 09:35:55'),
(49, 1, 2, 19, '<p>we are working on it</p>', NULL, '2024-12-03 05:57:19', '2024-12-03 05:57:19'),
(50, 1, 2, 20, '<p>we are working on it</p>', NULL, '2024-12-03 21:01:16', '2024-12-03 21:01:16'),
(51, 1, 2, 21, '<p>welcome to S2ticketz</p>', NULL, '2024-12-14 14:13:15', '2024-12-14 14:13:15'),
(52, 41, 1, 21, 'how to book the ticketz', NULL, '2024-12-14 14:13:46', '2024-12-14 14:13:46'),
(53, 1, 2, 21, '<p>book thru events</p>', NULL, '2024-12-14 14:14:18', '2024-12-14 14:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_alerts`
--

CREATE TABLE `cookie_alerts` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `cookie_alert_status` tinyint UNSIGNED NOT NULL,
  `cookie_alert_btn_text` varchar(255) NOT NULL,
  `cookie_alert_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `cookie_alerts`
--

INSERT INTO `cookie_alerts` (`id`, `language_id`, `cookie_alert_status`, `cookie_alert_btn_text`, `cookie_alert_text`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'I Agree', '<p>We use cookies to give you the best online experience.<br>By continuing to browse the site you are agreeing to our use of cookies.</p>', '2021-06-02 06:25:54', '2023-05-20 12:07:47');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numeric_code` char(3) DEFAULT NULL,
  `iso2` char(2) DEFAULT NULL,
  `phonecode` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currency_name` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `tld` varchar(255) DEFAULT NULL,
  `native` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `subregion` varchar(255) DEFAULT NULL,
  `timezones` text,
  `translations` text,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `emoji` varchar(191) DEFAULT NULL,
  `emojiU` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `wikiDataId` varchar(255) DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `count_informations`
--

CREATE TABLE `count_informations` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `amount` int UNSIGNED NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `count_informations`
--

INSERT INTO `count_informations` (`id`, `language_id`, `icon`, `color`, `title`, `amount`, `serial_number`, `created_at`, `updated_at`) VALUES
(5, 8, 'fas fa-user-friends', '24FFCD', 'Qualified Instructors', 20, 1, '2021-10-11 01:20:18', '2022-05-15 00:17:03'),
(6, 8, 'fas fa-globe', 'FFAB74', 'Worldwide Students', 1490, 2, '2021-10-11 01:20:47', '2021-12-19 04:44:42'),
(7, 8, 'fas fa-book-reader', '00FCFF', 'Courses', 100, 3, '2021-10-11 01:21:31', '2021-12-19 04:45:36'),
(8, 8, 'fas fa-calendar-alt', 'FFC924', 'Years\' Experience', 10, 4, '2021-10-11 01:21:55', '2021-12-19 04:46:07');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `events` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `email_verified_at` varchar(255) DEFAULT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `provider`, `provider_id`, `fname`, `lname`, `email`, `username`, `photo`, `phone`, `address`, `country`, `state`, `city`, `zip_code`, `password`, `status`, `email_verified_at`, `verification_token`, `created_at`, `updated_at`) VALUES
(40, 'google', '101471509330242840262', 'Arroww Digital', NULL, 'arrowwdigital@gmail.com', '101471509330242840262', '101471509330242840262.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6InN1b0FCTHh3UVEzV281OVJYdGFacmc9PSIsInZhbHVlIjoiVEdQSnhiemFtS2lJQnN6Q0twTkdSdz09IiwibWFjIjoiMWVjNDMyZDU4MDM1ZmM4NzEzNDBhYTRmZmYwOWVjZjA3MGE2ZGVmYzhiNDdjM2YyZTRhNjkwM2NjZTRmMTY4ZiIsInRhZyI6IiJ9', 1, '2024-12-13 20:11:44', NULL, '2024-12-13 20:11:44', '2024-12-13 20:11:44'),
(41, 'google', '102463226329765784847', 'Karthicksiva Lakshmanan', NULL, 'karthicksivalakshmanan@gmail.com', '102463226329765784847', '102463226329765784847.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IjVEcEt3WXloOHZuS3N1NjJVbU5YeUE9PSIsInZhbHVlIjoiMk5LZFBOVk5tY3dJNFRWUEVQZjRWdz09IiwibWFjIjoiOWY5OTJjMDcyNWE5YzZjMGE5MTE0ODFiMmNkODhiYzc1ZWU2NzlkMDY4M2Y5Y2ExNWJhZDkzYjExZjMyZmQ4ZSIsInRhZyI6IiJ9', 1, '2024-12-14 14:11:38', NULL, '2024-12-14 14:11:38', '2024-12-14 14:11:38'),
(42, NULL, NULL, 'Zachery Swanson', 'Neville Jacobs', 'ranaahmed269205@gmail.com', 'jugyju', '676013ded2353.png', '+1 (384) 392-9124', 'Minim aliquid conseq', 'Voluptates eos ab u', 'Et doloribus quas do', 'Mollitia totam adipi', '97033', '$2y$10$otJgCs94zjpZt.d3lNn4X.zSXI1YFafvLN338.QsGzsf.m3LuEO8G', 1, '2024-12-16 17:19:50', NULL, '2024-12-16 17:19:50', '2024-12-16 17:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `earnings`
--

CREATE TABLE `earnings` (
  `id` bigint UNSIGNED NOT NULL,
  `total_revenue` float(8,2) DEFAULT '0.00',
  `total_earning` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `earnings`
--

INSERT INTO `earnings` (`id`, `total_revenue`, `total_earning`, `created_at`, `updated_at`) VALUES
(1, 94.69, 88.81, '0000-00-00 00:00:00', '2024-12-10 13:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `date_type` varchar(20) DEFAULT NULL,
  `countdown_status` int DEFAULT '1',
  `start_date` date DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `end_date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `is_featured` varchar(255) NOT NULL DEFAULT 'no',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `instructions` text,
  `meeting_url` varchar(255) DEFAULT NULL,
  `ticket_logo` varchar(255) DEFAULT NULL,
  `ticket_image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `organizer_id`, `thumbnail`, `status`, `date_type`, `countdown_status`, `start_date`, `start_time`, `duration`, `end_date`, `end_time`, `end_date_time`, `created_at`, `updated_at`, `event_type`, `is_featured`, `latitude`, `longitude`, `instructions`, `meeting_url`, `ticket_logo`, `ticket_image`) VALUES
(117, 27, '1733243974.png', '1', 'single', 1, '2024-12-31', '20:01', '3h 59m', '2025-01-01', '00:00', '2025-01-01 00:00:00', '2024-12-03 02:03:13', '2024-12-09 15:12:01', 'venue', 'yes', '9.92491974183873', '78.12414148675792', '<p>This is your event ticket. Ticket holders must present their tickets on entry. You can either print your ticket or present this digital version. You can find all the details about this event on our website. If you have any questions, issues or wish to get a refund, contact the event host. If you can’t attend the event, please get in touch with event organiser. Looking forward to seeing you there!<strong><br><br>S2Ticketz.com</strong> is an innovative online ticketing platform that simplifies event ticket booking and management. It is designed to cater to various types of events, including concerts, sports events, marathons, expos, conferences, and more. The platform provides a seamless user experience for both event organizers and attendees, ensuring hassle-free ticket sales and purchases. Publish your events without any setup cost now. <a title=\"www.s2ticketz.com\" href=\"www.s2ticketz.com\">www.s2ticketz.com</a></p>', NULL, '1733227936157.png', '1733228031990.png'),
(119, 30, '1733811007.png', '1', 'single', 1, '2024-12-31', '18:00', '6h ', '2025-01-01', '00:00', '2025-01-01 00:00:00', '2024-12-10 11:40:07', '2024-12-10 13:27:02', 'venue', 'yes', '12.571807003724466', '80.1412974864302', '<p>Event organised by <strong>VV Entertainments</strong>. This is your event ticket. Ticket holders must present their tickets on entry. You can either print your ticket or present this digital version. You can find all the details about this event on our website. If you have any questions, issues or<br>wish to get a refund, contact the event host. If you can’t attend the event, please get in touch with event organiser.<br>Looking forward to seeing you there!<br><br><strong>S2Ticketz.com</strong> is an innovative online ticketing platform that simplifies event ticket booking and management. It is<br>designed to cater to various types of events, including concerts, sports events, marathons, expos, conferences, and<br>more. The platform provides a seamless user experience for both event organizers and attendees, ensuring hassle-free<br>ticket sales and purchases. Publish your events without any setup cost now. <a href=\"https://www.s2ticketz.com\">www.s2ticketz.com</a></p>', NULL, '1733816229171.png', '1733816229763.png'),
(120, 31, '1734613854.png', '1', 'single', 1, '2024-12-31', '19:00', '5h 30m', '2025-01-01', '00:30', '2025-01-01 00:30:00', '2024-12-19 18:40:54', '2024-12-19 20:08:55', 'venue', 'yes', '9.920502030129398', '78.11141804988286', '<p>Event organised by <span style=\"color:rgb(224,62,45);\"><strong>SK Events</strong>.</span> This is your event ticket. Ticket holders must present their tickets on entry. You can either print your ticket or present this digital version. You can find all the details about this event on our website. If you have any questions, issues or<br>wish to get a refund, contact the event host. If you can’t attend the event, please get in touch with event organiser.<br>Looking forward to seeing you there! any further queries <a href=\"+917708312111\">+917708312111</a><br><br><span style=\"color:rgb(224,62,45);\"><strong>S2Ticketz.com</strong></span> is an innovative online ticketing platform that simplifies event ticket booking and management. It is<br>designed to cater to various types of events, including concerts, sports events, marathons, expos, conferences, and<br>more. The platform provides a seamless user experience for both event organizers and attendees, ensuring hassle-free<br>ticket sales and purchases. Publish your events without any setup cost now. <a href=\"https://www.s2ticketz.com\">www.s2ticketz.com</a></p>', NULL, '1734614257978.png', '1734614257363.png');

-- --------------------------------------------------------

--
-- Table structure for table `event_categories`
--

CREATE TABLE `event_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `language_id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `serial_number` mediumint NOT NULL,
  `is_featured` char(4) NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_categories`
--

INSERT INTO `event_categories` (`id`, `name`, `language_id`, `image`, `slug`, `status`, `serial_number`, `is_featured`, `created_at`, `updated_at`) VALUES
(22, 'Entertainment', 8, '6756bc7655cd2.jpg', 'entertainment', 1, 1, 'yes', '2023-05-06 13:59:14', '2024-12-09 15:16:30'),
(24, 'Business', 8, '64562c6444649.png', 'business', 1, 2, 'yes', '2023-05-06 14:01:00', '2024-12-09 15:20:40'),
(28, 'Conference', 8, '64562d35c2a79.png', 'conference', 1, 4, 'yes', '2023-05-06 14:04:29', '2023-05-06 14:04:29'),
(30, 'Sports', 8, '6756bd5604caa.jpg', 'sports', 1, 5, 'yes', '2023-05-06 14:05:06', '2024-12-09 15:20:46'),
(32, 'New Year EVE', 8, '674e21d5b285b.jpg', 'new-year-eve', 1, 6, 'yes', '2024-12-03 02:34:46', '2024-12-03 02:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `event_contents`
--

CREATE TABLE `event_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` int NOT NULL,
  `language_id` int NOT NULL,
  `event_category_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext,
  `meta_keywords` text,
  `meta_description` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` text,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `google_calendar_id` varchar(255) DEFAULT NULL,
  `refund_policy` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_contents`
--

INSERT INTO `event_contents` (`id`, `event_id`, `language_id`, `event_category_id`, `title`, `slug`, `description`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`, `address`, `country`, `state`, `city`, `zip_code`, `google_calendar_id`, `refund_policy`) VALUES
(212, 117, 8, 32, 'ULTRA VIBE - NEW YEAR 2025', 'ultra-vibe---new-year-2025', '<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\"><strong>NEW YEAR 2025 ULTRA VIBE - EVE CELEBRATION</strong></span></p>\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">S2 Eventz &amp; Hotel President are excited to announce the highly anticipated New Year 2025 - VIBE Celebration, a spectacular event that promises to be an unforgettable night filled with joy and entertainment. This grand celebration will take place on December 31, 2024, starting at 8 PM, in the elegant and vibrant setting of Hotel President, located in the heart of Simmakkal, Madurai. As we bid farewell to the year gone by and embrace the new beginnings that 2025 will bring, this event is designed to create lasting memories with friends, family, and loved ones.</span></p>\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">We invite you to join us for the New Year 2025 Celebration, where excitement and festivity will fill the air as we welcome the dawn of a new year together.</span></p>\n<div class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\"> </span></div>\n<ul class=\"OA7qz NFk-9\">\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Indulge in an <strong>Unlimited Buffet</strong> featuring a wide array of delectable dishes that cater to all tastes and preferences, ensuring that every guest finds something to savor and enjoy throughout the evening.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Enjoy <strong>2 Domestic Hot Liquor (120ml) </strong>, expertly curated to enhance your celebration experience, allowing you to toast to new beginnings with style and sophistication.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Experience <strong>Live Entertainment</strong> that will captivate and engage you, with performances that will keep the energy high and the atmosphere electric as the night unfolds.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Get ready to <strong>Dance</strong> the night away as our talented Dancers spin the latest hits and classic favorites, providing the perfect soundtrack for an exhilarating celebration.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Be dazzled by our <strong>Fashion Show</strong>, showcasing stunning designs and trends that will inspire and entertain, adding a touch of glamour to the festivities.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Capture the moments with <strong>Photography</strong> opportunities that allow you to commemorate the night with friends and family, ensuring that you have beautiful memories to look back on.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Receive exciting <strong>Gifts</strong> throughout the night, adding an extra layer of surprise and delight to your celebration experience.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Participate in the <strong>Countdown</strong> to midnight, a thrilling moment filled with anticipation as we all come together to welcome the New Year with open hearts and joyful spirits.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Join us for the traditional <strong>Cake Cutting</strong> ceremony, a sweet way to celebrate the arrival of 2025, symbolizing new beginnings and shared happiness.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Experience the magic of an <strong>Open Sky Celebration</strong>, where you can enjoy the beauty of the night sky as we celebrate under the stars, creating a truly enchanting atmosphere.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Each guest will receive a <strong>Wristband</strong> for easy access to all areas of the event, ensuring a seamless and enjoyable experience throughout the night.</span></p>\n</li>\n<li class=\"hAVdE\">\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">With <strong>Unlimited Food &amp; Entertainment</strong> available, you can indulge to your heart\'s content, making this celebration a feast for the senses.</span></p>\n<div class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\"> </span></div>\n</li>\n</ul>\n<p class=\"_48tL5 i1-1t NFk-9 LzgXi\"><span class=\"E-T7K\">Note: For your convenience, we are pleased to offer <strong>Free car parking</strong> as well as <strong>valet parking</strong> services, ensuring that your arrival and departure are as smooth and hassle-free as possible.</span></p>', 'NEW YEAR 2025 ULTRA VIBE - EVE CELEBRATION,NEW YEAR 2025 ULTRA VIBE', NULL, '2024-12-03 02:03:13', '2024-12-09 15:11:25', 'Madurai, 3A, Yanaikkal St, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India', 'India', 'Tamilnadu', 'Madurai', '625001', NULL, 'There is no refund'),
(213, 119, 8, 32, 'NAMMA OORU VIBES', 'namma-ooru-vibes', '<p><strong>Celebrate New Year in Style at Namma Ooru Vibes!</strong></p>\n<p>The countdown to 2025 has begun, and we’re thrilled to invite you to Namma Ooru Vibes – New Year Party Celebration!</p>\n<p>Join us on December 31, 2024, at the luxurious Millionaire Park Resort, ECR, Chennai, from 6 PM to 12 AM, for an unforgettable evening of joy, entertainment, and celebration.</p>\n<p>Here’s what’s in store for you:<br />1. Unlimited Food with Drinks – Savor a lavish spread to your heart’s content.<br />2. Welcome Drink – Start your evening with a refreshing treat.<br />3. Dance Floor – Groove to electrifying beats all night long.<br />4. Dhol Performance – Experience the energy of traditional beats.<br />5. Fireworks Show – Light up the sky with spectacular fireworks.<br />6. Fashion Show – Witness glamour and style take center stage.<br />7. Live Music – Let soulful tunes set the mood for the night.</p>\n<p>Celebrate the New Year with an evening filled with fun, laughter, and unforgettable memories!</p>\n<p>Venue: Millionaire Park Resort, ECR, Chennai<br />Date: December 31, 2024<br />Time: 6 PM – 12 AM</p>\n<p>Don’t miss out – Book your tickets now and make your New Year extraordinary!</p>\n<p>Let’s ring in 2025 together in grand style.</p>\n<p> </p>', 'NAMMA OORU VIBES', NULL, '2024-12-10 11:40:07', '2024-12-10 13:27:02', 'Millionaire Park Resort, ECR', 'India', 'Tamil nadu', 'Chennai', '603102', NULL, 'There is no refund policy'),
(214, 120, 8, 32, 'NEW YEAR BASH 2025', 'new-year-bash-2025', '<p><strong>Welcome 2025 in Style at the New Year Bash 2025!</strong></p>\n<p>SK Events invites you to an unforgettable night at Hotel Cosmopolitan, Madurai, to ring in the New Year with joy, music, and celebrations!</p>\n<p>Date: 31st December 2024<br />Time: 7:00 PM onwards</p>\n<p>Highlights of the Evening:</p>\n<ul>\n<li>Unlimited Buffet Dinner </li>\n<li>Open Talent Show</li>\n<li>Couple Ramp Walk</li>\n<li>Live Music </li>\n<li>DJ Night </li>\n<li>Karaoke Fun</li>\n<li>Kids’ Activities</li>\n<li>Midnight Countdown &amp; Cake Cutting</li>\n</ul>\n<p>Ticket Details:</p>\n<ul>\n<li>Stag: ₹1999</li>\n<li>Angel: ₹1799</li>\n<li>Couple: ₹3499</li>\n<li>Family Packages: Starting from ₹4499</li>\n</ul>\n<p>Limited seats available! Don’t miss out—book now!</p>\n<p>Celebrate the beginning of 2025 with us and make it a night to remember!</p>', NULL, 'New Year Bash 2025', '2024-12-19 18:40:54', '2024-12-19 18:49:42', 'Cosmopolitan Hotel, Railway Station premises', 'India', 'Tamil Nadu', 'Madurai', '625001', NULL, 'There is no refund policy');

-- --------------------------------------------------------

--
-- Table structure for table `event_dates`
--

CREATE TABLE `event_dates` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` bigint DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_dates`
--

INSERT INTO `event_dates` (`id`, `event_id`, `start_date`, `start_time`, `end_date`, `end_time`, `duration`, `start_date_time`, `end_date_time`, `created_at`, `updated_at`) VALUES
(16, 64, '2023-03-27', '14:59', '2023-03-28', '14:59', '1d ', '2023-03-27 14:59:00', '2023-03-28 14:59:00', '2023-03-27 08:59:45', '2023-04-30 06:05:39'),
(17, 64, '2023-03-30', '14:01', '2023-03-31', '14:59', '1d 58m', '2023-03-30 14:01:00', '2023-03-31 14:59:00', '2023-03-27 08:59:45', '2023-04-30 06:05:39'),
(18, 64, '2023-04-03', '14:01', '2023-04-06', '14:00', '2d 23h 59m', '2023-04-03 14:01:00', '2023-04-06 14:00:00', '2023-03-27 08:59:45', '2023-04-30 06:05:39'),
(19, 65, '2023-03-30', '11:39', '2023-03-31', '11:40', '1d 1m', '2023-03-30 11:39:00', '2023-03-31 11:40:00', '2023-03-28 05:41:51', '2023-04-30 11:30:28'),
(20, 65, '2023-04-01', '11:40', '2023-04-02', '01:40', '14h ', '2023-04-01 11:40:00', '2023-04-02 01:40:00', '2023-03-28 05:41:51', '2023-04-30 11:30:28'),
(23, 65, '2023-04-30', '17:32', '2023-05-30', '17:32', '1mo 30d ', '2023-04-30 17:32:00', '2023-05-30 17:32:00', '2023-04-30 11:30:28', '2023-04-30 11:30:28'),
(24, 67, '2023-05-01', '11:51', '2023-05-10', '11:52', '9d 1m', '2023-05-01 11:51:00', '2023-05-10 11:52:00', '2023-05-01 05:53:43', '2023-05-01 15:20:47'),
(25, 67, '2023-05-11', '23:52', '2023-05-22', '11:53', '10d 12h 1m', '2023-05-11 23:52:00', '2023-05-22 11:53:00', '2023-05-01 05:53:43', '2023-05-01 15:20:47'),
(26, 69, '2023-05-01', '12:22', '2023-05-10', '13:22', '9d 1h ', '2023-05-01 12:22:00', '2023-05-10 13:22:00', '2023-05-01 06:24:39', '2023-05-01 15:19:33'),
(27, 69, '2023-05-12', '12:26', '2023-05-22', '17:22', '10d 4h 56m', '2023-05-12 12:26:00', '2023-05-22 17:22:00', '2023-05-01 06:24:39', '2023-05-01 15:19:33'),
(36, 94, '2025-01-18', '17:30', '2025-01-20', '20:30', '2d 3h ', '2025-01-18 17:30:00', '2025-01-20 20:30:00', '2023-05-06 11:28:41', '2023-05-07 11:04:49'),
(37, 94, '2026-01-20', '19:30', '2026-01-20', '22:00', '2h 30m', '2026-01-20 19:30:00', '2026-01-20 22:00:00', '2023-05-06 11:28:41', '2023-05-07 11:04:49'),
(38, 94, '2027-01-25', '10:30', '2027-01-25', '17:00', '6h 30m', '2027-01-25 10:30:00', '2027-01-25 17:00:00', '2023-05-06 11:28:41', '2023-05-07 11:04:49'),
(49, 112, '2023-05-09', '17:09', '2023-06-03', '17:09', '25d ', '2023-05-09 17:09:00', '2023-06-03 17:09:00', '2023-05-08 11:12:59', '2023-05-08 11:12:59'),
(50, 112, '2023-05-10', '17:10', '2024-05-23', '17:11', '1y 379d 1m', '2023-05-10 17:10:00', '2024-05-23 17:11:00', '2023-05-08 11:12:59', '2023-05-08 11:12:59'),
(55, 104, '2023-05-18', '11:30', '2023-05-20', '11:31', '2d 1m', '2023-05-18 11:30:00', '2023-05-20 11:31:00', '2023-05-15 05:29:01', '2023-05-15 05:31:16'),
(56, 104, '2023-05-25', '11:30', '2023-05-29', '11:31', '4d 1m', '2023-05-25 11:30:00', '2023-05-29 11:31:00', '2023-05-15 05:29:01', '2023-05-15 05:31:16'),
(57, 116, '2023-09-22', '03:11', '2023-09-23', '14:30', '1d 11h 19m', '2023-09-22 03:11:00', '2023-09-23 14:30:00', '2023-09-24 08:13:35', '2023-09-24 08:24:29'),
(58, 116, '2023-09-26', '14:15', '2023-09-27', '14:16', '1d 1m', '2023-09-26 14:15:00', '2023-09-27 14:16:00', '2023-09-24 08:13:35', '2023-09-24 08:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `event_features`
--

CREATE TABLE `event_features` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_features`
--

INSERT INTO `event_features` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(4, 8, 'fas fa-globe', 'Online Events', 'Simple and user-friendly registration process for webinars, virtual concerts, workshops, and more. Customizable registration forms to capture specific attendee details.', 1, '2022-06-07 00:14:56', '2024-12-02 19:07:30'),
(6, 8, 'fas fa-map-marked', 'Venue Events', 'S2Ticketz simplifies the management of venue-based events with features like seamless ticket booking, interactive seat selection, and paperless digital tickets with QR codes for quick check-ins.', 2, '2022-06-07 00:16:30', '2024-12-02 19:09:38'),
(11, 8, 'fas fa-ticket-alt', 'Ticket Variations', 'S2Ticketz offers versatile ticketing options to cater to diverse event needs. Organizers can create multiple ticket categories such as general admission, VIP, early bird, group tickets, and more.', 3, '2023-05-07 11:48:45', '2024-12-02 19:09:06'),
(12, 8, 'fas fa-qrcode', 'PWA Ticket Scanner', 'The S2Ticketz PWA (Progressive Web App) Ticket Scanner streamlines event entry management with its efficient, browser-based functionality. It allows event staff to scan QR codes quickly and verify tickets in real-time without needing a separate app installation.', 5, '2023-05-07 11:51:56', '2024-12-02 19:10:21'),
(13, 8, 'fas fa-headset', 'Support Tickets', 'S2Ticketz enhances customer satisfaction with its robust support ticket system. Attendees can easily raise queries or report issues directly through the platform, ensuring prompt resolutions.', 6, '2023-05-07 11:54:11', '2024-12-02 19:10:49'),
(17, 8, 'fas fa-hand-holding-usd', 'Low Commission Rate', 'S2Ticketz stands out with its competitive low commission rates, ensuring maximum revenue retention for event organizers. By offering transparent pricing and minimal fees, it enables organizers to allocate more resources to enhancing their events.', 4, '2023-05-11 05:27:00', '2024-12-02 19:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `event_feature_sections`
--

CREATE TABLE `event_feature_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_feature_sections`
--

INSERT INTO `event_feature_sections` (`id`, `language_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 8, 'S2 Ticketz Features', 'S2Ticketz is a cutting-edge platform designed to revolutionize the way events are experienced, providing comprehensive features for both event organizers and attendees. Whether you\'re looking to attend a concert, sports match, or a professional seminar, S2Ticketz ensures a hassle-free journey from ticket purchase to event participation.', '2022-06-06 23:24:33', '2024-12-02 19:06:04'),
(2, 9, 'test arabic sdf', 'text arabic fdsa', '2022-06-06 23:25:08', '2022-06-06 23:25:16'),
(3, 17, 'ميزة الأحداث الرائعة', 'صفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام', '2023-01-31 05:48:01', '2023-01-31 05:48:01'),
(4, 22, 'ميزات إيفينتو', 'ل ومن الهادي واشتدّت, فكانت السادس الأراضي فصل ان. قد كان لغزو كنقطة بالرّغم, أن سق', '2023-05-07 11:41:58', '2023-05-11 05:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `event_images`
--

CREATE TABLE `event_images` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` int DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `event_images`
--

INSERT INTO `event_images` (`id`, `event_id`, `image`, `created_at`, `updated_at`) VALUES
(9, NULL, '62b98c589565d.jpg', '2022-06-27 04:54:16', '2022-06-27 04:54:16'),
(10, NULL, '62b98c589565a.jpg', '2022-06-27 04:54:16', '2022-06-27 04:54:16'),
(11, NULL, '62b98c58c13ab.jpg', '2022-06-27 04:54:16', '2022-06-27 04:54:16'),
(12, NULL, '62b98c58c634d.jpg', '2022-06-27 04:54:16', '2022-06-27 04:54:16'),
(13, NULL, '62b98c5900f81.jpg', '2022-06-27 04:54:17', '2022-06-27 04:54:17'),
(14, NULL, '62b98c59019ad.jpg', '2022-06-27 04:54:17', '2022-06-27 04:54:17'),
(15, NULL, '62b98c5928677.jpg', '2022-06-27 04:54:17', '2022-06-27 04:54:17'),
(16, NULL, '62b98c592ec8f.jpg', '2022-06-27 04:54:17', '2022-06-27 04:54:17'),
(17, NULL, '62b98c594e479.jpg', '2022-06-27 04:54:17', '2022-06-27 04:54:17'),
(23, 12, '62db792a6c818.jpg', '2022-07-22 22:29:30', '2022-07-22 22:32:20'),
(24, 12, '62db792a6c7f1.jpg', '2022-07-22 22:29:30', '2022-07-22 22:32:20'),
(25, 13, '62db7a63df567.jpg', '2022-07-22 22:34:43', '2022-07-22 22:37:47'),
(26, 13, '62db7a63df622.jpg', '2022-07-22 22:34:43', '2022-07-22 22:37:47'),
(27, 13, '62db7a64130ce.jpg', '2022-07-22 22:34:44', '2022-07-22 22:37:47'),
(28, 14, '62db7eb7a2b9d.jpg', '2022-07-22 22:53:11', '2022-07-22 22:55:03'),
(29, 14, '62db7eb7a4c84.jpg', '2022-07-22 22:53:11', '2022-07-22 22:55:03'),
(30, 14, '62db7eb7cf18c.jpg', '2022-07-22 22:53:11', '2022-07-22 22:55:03'),
(46, NULL, '63b26d14b0745.jpg', '2023-01-02 05:35:16', '2023-01-02 05:35:16'),
(50, NULL, '63b417430d8bb.jpg', '2023-01-03 11:53:39', '2023-01-03 11:53:39'),
(51, NULL, '63b417df970ab.jpg', '2023-01-03 11:56:15', '2023-01-03 11:56:15'),
(57, NULL, '63b66899aeb4e.jpg', '2023-01-05 06:05:13', '2023-01-05 06:05:13'),
(119, NULL, '63d24331e3b98.jpg', '2023-01-26 09:09:05', '2023-01-26 09:09:05'),
(120, NULL, '63d24331e6257.jpg', '2023-01-26 09:09:05', '2023-01-26 09:09:05'),
(210, NULL, '6456350644d9b.jpg', '2023-05-06 11:07:50', '2023-05-06 11:07:50'),
(211, NULL, '6456350644d9b.jpg', '2023-05-06 11:07:50', '2023-05-06 11:07:50'),
(248, 117, '674f333b3ae93.jpg', '2024-12-03 22:05:07', '2024-12-03 22:05:07'),
(249, NULL, '6757d8162efc7.jpg', '2024-12-10 11:26:38', '2024-12-10 11:26:38'),
(250, 119, '6757daa6281b1.jpg', '2024-12-10 11:37:34', '2024-12-10 11:40:07'),
(251, 120, '67641b1d42373.jpg', '2024-12-19 18:39:49', '2024-12-19 18:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '3ed90a19-c9b0-47a2-929f-3bf7bf498c54', 'database', 'default', '{\"uuid\":\"3ed90a19-c9b0-47a2-929f-3bf7bf498c54\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:8:\\\"\\u0000*\\u0000title\\\";s:9:\\\"new check\\\";s:8:\\\"\\u0000*\\u0000start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:6:\\\"\\u0000*\\u0000end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-31 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:11:\\\"\\u0000*\\u0000event_id\\\";s:2:\\\"43\\\";s:14:\\\"\\u0000*\\u0000language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-25 17:27:09.095665\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'TypeError: Spatie\\GoogleCalendar\\Event::setDateProperty(): Argument #2 ($date) must be of type Carbon\\CarbonInterface, null given, called in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php on line 151 and defined in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php:245\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(151): Spatie\\GoogleCalendar\\Event->setDateProperty(\'start.dateTime\', NULL)\n#1 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(62): Spatie\\GoogleCalendar\\Event->__set(\'start.dateTime\', NULL)\n#2 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(43): Spatie\\GoogleCalendar\\Event::create(Array)\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#29 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#31 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#32 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#33 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#37 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work\')\n#38 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(72): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->add_event()\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'add_event\', Array)\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'add_event\')\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#85 {main}', '2023-01-25 11:27:09'),
(2, '3ab423cf-ae2f-4f23-8ef3-b9f6cc8f8338', 'database', 'default', '{\"uuid\":\"3ab423cf-ae2f-4f23-8ef3-b9f6cc8f8338\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:8:\\\"\\u0000*\\u0000title\\\";s:9:\\\"new check\\\";s:8:\\\"\\u0000*\\u0000start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:6:\\\"\\u0000*\\u0000end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-31 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:11:\\\"\\u0000*\\u0000event_id\\\";s:2:\\\"43\\\";s:14:\\\"\\u0000*\\u0000language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-25 17:30:10.034037\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'TypeError: Spatie\\GoogleCalendar\\Event::setDateProperty(): Argument #2 ($date) must be of type Carbon\\CarbonInterface, null given, called in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php on line 151 and defined in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php:245\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(151): Spatie\\GoogleCalendar\\Event->setDateProperty(\'start.dateTime\', NULL)\n#1 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(62): Spatie\\GoogleCalendar\\Event->__set(\'start.dateTime\', NULL)\n#2 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(43): Spatie\\GoogleCalendar\\Event::create(Array)\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#29 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#31 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#32 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#33 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#37 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work\')\n#38 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(72): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->add_event()\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'add_event\', Array)\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'add_event\')\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#85 {main}', '2023-01-25 11:30:10');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(3, 'e4e50eb5-41e5-4ad4-84e4-824b9ce7bcb5', 'database', 'default', '{\"uuid\":\"e4e50eb5-41e5-4ad4-84e4-824b9ce7bcb5\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:8:\\\"\\u0000*\\u0000title\\\";s:9:\\\"new check\\\";s:8:\\\"\\u0000*\\u0000start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:6:\\\"\\u0000*\\u0000end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-31 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:11:\\\"\\u0000*\\u0000event_id\\\";s:2:\\\"43\\\";s:14:\\\"\\u0000*\\u0000language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-25 17:33:51.352929\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'TypeError: Spatie\\GoogleCalendar\\Event::setDateProperty(): Argument #2 ($date) must be of type Carbon\\CarbonInterface, null given, called in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php on line 151 and defined in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php:245\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(151): Spatie\\GoogleCalendar\\Event->setDateProperty(\'start.dateTime\', NULL)\n#1 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(62): Spatie\\GoogleCalendar\\Event->__set(\'start.dateTime\', NULL)\n#2 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(43): Spatie\\GoogleCalendar\\Event::create(Array)\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#29 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#31 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#32 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#33 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#37 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work\')\n#38 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(410): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->update(Object(App\\Http\\Requests\\Event\\UpdateRequest))\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'update\', Array)\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'update\')\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#85 {main}', '2023-01-25 11:33:51'),
(4, '16ed0d90-db68-431e-9882-b1f4e01a55db', 'database', 'default', '{\"uuid\":\"16ed0d90-db68-431e-9882-b1f4e01a55db\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:8:\\\"\\u0000*\\u0000title\\\";s:9:\\\"new check\\\";s:8:\\\"\\u0000*\\u0000start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:6:\\\"\\u0000*\\u0000end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-31 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:11:\\\"\\u0000*\\u0000event_id\\\";s:2:\\\"43\\\";s:14:\\\"\\u0000*\\u0000language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-25 17:35:22.699480\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'TypeError: Spatie\\GoogleCalendar\\Event::setDateProperty(): Argument #2 ($date) must be of type Carbon\\CarbonInterface, null given, called in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php on line 151 and defined in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php:245\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(151): Spatie\\GoogleCalendar\\Event->setDateProperty(\'start.dateTime\', NULL)\n#1 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(62): Spatie\\GoogleCalendar\\Event->__set(\'start.dateTime\', NULL)\n#2 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(43): Spatie\\GoogleCalendar\\Event::create(Array)\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#29 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#31 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#32 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#33 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#37 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work\')\n#38 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(72): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->add_event()\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'add_event\', Array)\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'add_event\')\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#85 {main}', '2023-01-25 11:35:23');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(5, '7f09827f-95d9-425b-9d59-39c8a1cab115', 'database', 'default', '{\"uuid\":\"7f09827f-95d9-425b-9d59-39c8a1cab115\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:8:\\\"\\u0000*\\u0000title\\\";s:9:\\\"new check\\\";s:8:\\\"\\u0000*\\u0000start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:6:\\\"\\u0000*\\u0000end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-31 12:27:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:11:\\\"\\u0000*\\u0000event_id\\\";s:2:\\\"43\\\";s:14:\\\"\\u0000*\\u0000language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-25 18:05:10.832238\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'TypeError: Spatie\\GoogleCalendar\\Event::setDateProperty(): Argument #2 ($date) must be of type Carbon\\CarbonInterface, null given, called in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php on line 151 and defined in D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php:245\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(151): Spatie\\GoogleCalendar\\Event->setDateProperty(\'start.dateTime\', NULL)\n#1 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(62): Spatie\\GoogleCalendar\\Event->__set(\'start.dateTime\', NULL)\n#2 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(43): Spatie\\GoogleCalendar\\Event::create(Array)\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#29 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#31 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#32 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#33 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#37 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work\')\n#38 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(72): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->add_event()\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'add_event\', Array)\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'add_event\')\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#85 {main}', '2023-01-25 12:05:11'),
(6, '97ff49bb-1333-4ed5-ba55-2e9b5d9bcc97', 'database', 'default', '{\"uuid\":\"97ff49bb-1333-4ed5-ba55-2e9b5d9bcc97\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:5:\\\"title\\\";s:11:\\\"Single Date\\\";s:5:\\\"start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-27 13:25:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:3:\\\"end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2000-06-30 22:59:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:8:\\\"event_id\\\";i:45;s:11:\\\"language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 12:30:05.583171\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'Google\\Service\\Exception: {\n \"error\": {\n  \"errors\": [\n   {\n    \"domain\": \"calendar\",\n    \"reason\": \"timeRangeEmpty\",\n    \"message\": \"The specified time range is empty.\",\n    \"locationType\": \"parameter\",\n    \"location\": \"timeMax\"\n   }\n  ],\n  \"code\": 400,\n  \"message\": \"The specified time range is empty.\"\n }\n}\n in D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php:134\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php(107): Google\\Http\\REST::decodeHttpResponse(Object(GuzzleHttp\\Psr7\\Response), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#1 [internal function]: Google\\Http\\REST::doExecute(Object(GuzzleHttp\\Client), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#2 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Task\\Runner.php(187): call_user_func_array(Array, Array)\n#3 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php(66): Google\\Task\\Runner->run()\n#4 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Client.php(921): Google\\Http\\REST::execute(Object(GuzzleHttp\\Client), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\', Array, NULL)\n#5 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Service\\Resource.php(238): Google\\Client->execute(Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#6 D:\\laragon\\www\\evento\\vendor\\google\\apiclient-services\\src\\Calendar\\Resource\\Events.php(143): Google\\Service\\Resource->call(\'insert\', Array, \'Google\\\\Service\\\\...\')\n#7 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\GoogleCalendar.php(75): Google\\Service\\Calendar\\Resource\\Events->insert(\'f1578956ff511dd...\', Object(Google\\Service\\Calendar\\Event), Array)\n#8 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(181): Spatie\\GoogleCalendar\\GoogleCalendar->insertEvent(Object(Google\\Service\\Calendar\\Event), Array)\n#9 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(65): Spatie\\GoogleCalendar\\Event->save(\'insertEvent\', Array)\n#10 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(51): Spatie\\GoogleCalendar\\Event::create(Array)\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#37 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#40 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#41 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work --st...\')\n#46 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(231): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->store(Object(App\\Http\\Requests\\Event\\StoreRequest))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'store\', Array)\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'store\')\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#85 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#86 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#87 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#88 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#89 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#90 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#91 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#92 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#93 {main}', '2023-01-26 06:33:52');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(7, '78bc3d90-4869-41f8-86d5-14e8fa35cce9', 'database', 'default', '{\"uuid\":\"78bc3d90-4869-41f8-86d5-14e8fa35cce9\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:5:\\\"title\\\";s:14:\\\"Toyota Starlet\\\";s:5:\\\"start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-29 12:34:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:3:\\\"end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-30 12:34:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:8:\\\"event_id\\\";i:47;s:11:\\\"language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 12:34:50.671929\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'ErrorException: Attempt to read property \"google_calendar_id\" on null in D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php:47\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(266): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'D:\\\\laragon\\\\www\\\\...\', 47)\n#1 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(47): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'D:\\\\laragon\\\\www\\\\...\', 47)\n#2 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#28 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#31 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#32 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#33 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work --st...\')\n#37 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(231): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#38 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->store(Object(App\\Http\\Requests\\Event\\StoreRequest))\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'store\', Array)\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'store\')\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#76 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#77 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#83 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#84 {main}', '2023-01-26 06:35:48'),
(8, '75e5152b-6af7-44e1-8304-19eba25af32f', 'database', 'default', '{\"uuid\":\"75e5152b-6af7-44e1-8304-19eba25af32f\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:5:\\\"title\\\";s:27:\\\"Online Event Multiple Dates\\\";s:5:\\\"start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-02-01 12:39:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:3:\\\"end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-28 12:39:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:8:\\\"event_id\\\";i:49;s:11:\\\"language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 12:38:25.718946\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'Google\\Service\\Exception: {\n \"error\": {\n  \"errors\": [\n   {\n    \"domain\": \"calendar\",\n    \"reason\": \"timeRangeEmpty\",\n    \"message\": \"The specified time range is empty.\",\n    \"locationType\": \"parameter\",\n    \"location\": \"timeMax\"\n   }\n  ],\n  \"code\": 400,\n  \"message\": \"The specified time range is empty.\"\n }\n}\n in D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php:134\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php(107): Google\\Http\\REST::decodeHttpResponse(Object(GuzzleHttp\\Psr7\\Response), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#1 [internal function]: Google\\Http\\REST::doExecute(Object(GuzzleHttp\\Client), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#2 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Task\\Runner.php(187): call_user_func_array(Array, Array)\n#3 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php(66): Google\\Task\\Runner->run()\n#4 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Client.php(921): Google\\Http\\REST::execute(Object(GuzzleHttp\\Client), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\', Array, NULL)\n#5 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Service\\Resource.php(238): Google\\Client->execute(Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#6 D:\\laragon\\www\\evento\\vendor\\google\\apiclient-services\\src\\Calendar\\Resource\\Events.php(143): Google\\Service\\Resource->call(\'insert\', Array, \'Google\\\\Service\\\\...\')\n#7 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\GoogleCalendar.php(75): Google\\Service\\Calendar\\Resource\\Events->insert(\'f1578956ff511dd...\', Object(Google\\Service\\Calendar\\Event), Array)\n#8 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(181): Spatie\\GoogleCalendar\\GoogleCalendar->insertEvent(Object(Google\\Service\\Calendar\\Event), Array)\n#9 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(65): Spatie\\GoogleCalendar\\Event->save(\'insertEvent\', Array)\n#10 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(51): Spatie\\GoogleCalendar\\Event::create(Array)\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#37 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#40 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#41 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work --st...\')\n#46 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(231): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->store(Object(App\\Http\\Requests\\Event\\StoreRequest))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'store\', Array)\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'store\')\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#85 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#86 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#87 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#88 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#89 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#90 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#91 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#92 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#93 {main}', '2023-01-26 06:45:59');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(9, '15a9fd8b-93f6-434c-873e-7a541882e52b', 'database', 'default', '{\"uuid\":\"15a9fd8b-93f6-434c-873e-7a541882e52b\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:5:\\\"title\\\";s:25:\\\"Venue Event Multiple Date\\\";s:5:\\\"start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 14:01:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:3:\\\"end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-02 14:03:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:8:\\\"event_id\\\";s:2:\\\"51\\\";s:11:\\\"language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 14:01:09.247645\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'Google\\Service\\Exception: {\n \"error\": {\n  \"errors\": [\n   {\n    \"domain\": \"calendar\",\n    \"reason\": \"timeRangeEmpty\",\n    \"message\": \"The specified time range is empty.\",\n    \"locationType\": \"parameter\",\n    \"location\": \"timeMax\"\n   }\n  ],\n  \"code\": 400,\n  \"message\": \"The specified time range is empty.\"\n }\n}\n in D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php:134\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php(107): Google\\Http\\REST::decodeHttpResponse(Object(GuzzleHttp\\Psr7\\Response), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#1 [internal function]: Google\\Http\\REST::doExecute(Object(GuzzleHttp\\Client), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#2 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Task\\Runner.php(187): call_user_func_array(Array, Array)\n#3 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php(66): Google\\Task\\Runner->run()\n#4 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Client.php(921): Google\\Http\\REST::execute(Object(GuzzleHttp\\Client), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\', Array, NULL)\n#5 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Service\\Resource.php(238): Google\\Client->execute(Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#6 D:\\laragon\\www\\evento\\vendor\\google\\apiclient-services\\src\\Calendar\\Resource\\Events.php(403): Google\\Service\\Resource->call(\'update\', Array, \'Google\\\\Service\\\\...\')\n#7 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\GoogleCalendar.php(92): Google\\Service\\Calendar\\Resource\\Events->update(\'f1578956ff511dd...\', \'i017sce8gtc7ulc...\', Object(Google\\Service\\Calendar\\Event), Array)\n#8 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(181): Spatie\\GoogleCalendar\\GoogleCalendar->updateEvent(Object(Google\\Service\\Calendar\\Event), Array)\n#9 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(201): Spatie\\GoogleCalendar\\Event->save(\'updateEvent\', Array)\n#10 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(60): Spatie\\GoogleCalendar\\Event->update(Array)\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#37 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#40 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#41 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work --st...\')\n#46 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(431): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->update(Object(App\\Http\\Requests\\Event\\UpdateRequest))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'update\', Array)\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'update\')\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#77 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#85 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#86 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#87 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#88 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#89 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#90 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#91 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#92 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#93 {main}', '2023-01-26 08:03:18'),
(10, 'aaca5f42-7b79-4a5c-88c4-8846b3bb7b79', 'database', 'default', '{\"uuid\":\"aaca5f42-7b79-4a5c-88c4-8846b3bb7b79\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:5:\\\"title\\\";s:25:\\\"Venue Event Multiple Date\\\";s:5:\\\"start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 14:01:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:3:\\\"end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-02 14:03:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:8:\\\"event_id\\\";s:2:\\\"51\\\";s:11:\\\"language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-01-26 14:04:12.495251\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'Google\\Service\\Exception: {\n \"error\": {\n  \"errors\": [\n   {\n    \"domain\": \"calendar\",\n    \"reason\": \"timeRangeEmpty\",\n    \"message\": \"The specified time range is empty.\",\n    \"locationType\": \"parameter\",\n    \"location\": \"timeMax\"\n   }\n  ],\n  \"code\": 400,\n  \"message\": \"The specified time range is empty.\"\n }\n}\n in D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php:134\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php(107): Google\\Http\\REST::decodeHttpResponse(Object(GuzzleHttp\\Psr7\\Response), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#1 [internal function]: Google\\Http\\REST::doExecute(Object(GuzzleHttp\\Client), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#2 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Task\\Runner.php(187): call_user_func_array(Array, Array)\n#3 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Http\\REST.php(66): Google\\Task\\Runner->run()\n#4 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Client.php(921): Google\\Http\\REST::execute(Object(GuzzleHttp\\Client), Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\', Array, NULL)\n#5 D:\\laragon\\www\\evento\\vendor\\google\\apiclient\\src\\Service\\Resource.php(238): Google\\Client->execute(Object(GuzzleHttp\\Psr7\\Request), \'Google\\\\Service\\\\...\')\n#6 D:\\laragon\\www\\evento\\vendor\\google\\apiclient-services\\src\\Calendar\\Resource\\Events.php(403): Google\\Service\\Resource->call(\'update\', Array, \'Google\\\\Service\\\\...\')\n#7 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\GoogleCalendar.php(92): Google\\Service\\Calendar\\Resource\\Events->update(\'f1578956ff511dd...\', \'i017sce8gtc7ulc...\', Object(Google\\Service\\Calendar\\Event), Array)\n#8 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(181): Spatie\\GoogleCalendar\\GoogleCalendar->updateEvent(Object(Google\\Service\\Calendar\\Event), Array)\n#9 D:\\laragon\\www\\evento\\vendor\\spatie\\laravel-google-calendar\\src\\Event.php(201): Spatie\\GoogleCalendar\\Event->save(\'updateEvent\', Array)\n#10 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(60): Spatie\\GoogleCalendar\\Event->update(Array)\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#28 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#29 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#31 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#32 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#33 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#37 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#38 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#39 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#40 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#41 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work --st...\')\n#46 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Organizer\\EventController.php(225): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Organizer\\EventController->store(Object(App\\Http\\Requests\\Event\\StoreRequest))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'store\', Array)\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Organizer\\EventController), \'store\')\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#53 D:\\laragon\\www\\evento\\app\\Http\\Middleware\\Deactive.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): App\\Http\\Middleware\\Deactive->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'organizer\')\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#77 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#78 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#84 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#85 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#86 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#87 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#88 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#89 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#90 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#91 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#92 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#93 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#94 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#95 {main}', '2023-01-26 09:07:33');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(11, 'abd259e0-648a-4cc3-b39f-4bca3b324be8', 'database', 'default', '{\"uuid\":\"abd259e0-648a-4cc3-b39f-4bca3b324be8\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:5:\\\"title\\\";s:20:\\\"Venue Event For test\\\";s:5:\\\"start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-02-04 12:49:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:3:\\\"end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-02-05 12:48:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}s:8:\\\"event_id\\\";i:57;s:11:\\\"language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-02-01 12:49:10.119301\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:10:\\\"Asia\\/Dhaka\\\";}}\"}}', 'ErrorException: Attempt to read property \"google_calendar_id\" on null in D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php:47\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(266): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'D:\\\\laragon\\\\www\\\\...\', 47)\n#1 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(47): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'D:\\\\laragon\\\\www\\\\...\', 47)\n#2 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#28 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#31 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#32 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#33 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work --st...\')\n#37 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Organizer\\EventController.php(231): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#38 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Organizer\\EventController->store(Object(App\\Http\\Requests\\Event\\StoreRequest))\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'store\', Array)\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Organizer\\EventController), \'store\')\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 D:\\laragon\\www\\evento\\app\\Http\\Middleware\\Deactive.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): App\\Http\\Middleware\\Deactive->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'organizer\')\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#77 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#78 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#84 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#85 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#86 {main}', '2023-02-01 09:23:19'),
(12, '13aa7618-1426-4f53-bd53-605c439d18c5', 'database', 'default', '{\"uuid\":\"13aa7618-1426-4f53-bd53-605c439d18c5\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:5:\\\"title\\\";s:30:\\\"Online Event Single Date fahad\\\";s:5:\\\"start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-10 12:06:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:18:\\\"Australia\\/Adelaide\\\";}s:3:\\\"end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-17 12:06:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:18:\\\"Australia\\/Adelaide\\\";}s:8:\\\"event_id\\\";i:75;s:11:\\\"language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-04 16:05:02.365261\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:18:\\\"Australia\\/Adelaide\\\";}}\"}}', 'Illuminate\\Queue\\MaxAttemptsExceededException: App\\Jobs\\AddEventToGoogleCalendar has been attempted too many times or run too long. The job may have previously timed out. in D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php:746\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(505): Illuminate\\Queue\\Worker->maxAttemptsExceededException(Object(Illuminate\\Queue\\Jobs\\DatabaseJob))\n#1 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(415): Illuminate\\Queue\\Worker->markJobAsFailedIfAlreadyExceedsMaxAttempts(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), 1)\n#2 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#12 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#14 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#15 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#16 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work --st...\')\n#21 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(458): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->update(Object(App\\Http\\Requests\\Event\\UpdateRequest))\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'update\', Array)\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'update\')\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#28 D:\\laragon\\www\\evento\\app\\Http\\Middleware\\HasPermission.php(32): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): App\\Http\\Middleware\\HasPermission->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'Event Managemen...\')\n#30 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#32 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#33 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#62 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#69 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#70 {main}', '2023-05-04 10:14:58');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(13, 'c4c7d023-e0c4-4ac0-93ad-919b9a5c015e', 'database', 'default', '{\"uuid\":\"c4c7d023-e0c4-4ac0-93ad-919b9a5c015e\",\"displayName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AddEventToGoogleCalendar\",\"command\":\"O:33:\\\"App\\\\Jobs\\\\AddEventToGoogleCalendar\\\":6:{s:5:\\\"title\\\";s:20:\\\"Google Calendar Test\\\";s:5:\\\"start\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-09 12:57:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:18:\\\"Australia\\/Adelaide\\\";}s:3:\\\"end\\\";O:13:\\\"Carbon\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-10 12:56:00.000000\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:18:\\\"Australia\\/Adelaide\\\";}s:8:\\\"event_id\\\";i:81;s:11:\\\"language_id\\\";i:8;s:5:\\\"delay\\\";O:25:\\\"Illuminate\\\\Support\\\\Carbon\\\":3:{s:4:\\\"date\\\";s:26:\\\"2023-05-04 16:49:35.678158\\\";s:13:\\\"timezone_type\\\";i:3;s:8:\\\"timezone\\\";s:18:\\\"Australia\\/Adelaide\\\";}}\"}}', 'ErrorException: Attempt to read property \"google_calendar_id\" on null in D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php:47\nStack trace:\n#0 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(266): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, \'Attempt to read...\', \'D:\\\\laragon\\\\www\\\\...\', 47)\n#1 D:\\laragon\\www\\evento\\app\\Jobs\\AddEventToGoogleCalendar.php(47): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->Illuminate\\Foundation\\Bootstrap\\{closure}(2, \'Attempt to read...\', \'D:\\\\laragon\\\\www\\\\...\', 47)\n#2 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AddEventToGoogleCalendar->handle()\n#3 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#4 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#5 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#6 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#7 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#8 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#9 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#10 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#11 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AddEventToGoogleCalendar), false)\n#12 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#13 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AddEventToGoogleCalendar))\n#14 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#15 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AddEventToGoogleCalendar))\n#16 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#17 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(425): Illuminate\\Queue\\Jobs\\Job->fire()\n#18 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(375): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(173): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(147): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#21 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(130): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#22 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#23 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#24 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#25 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#26 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(663): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#27 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Illuminate\\Container\\Container->call(Array)\n#28 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Command\\Command.php(312): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(152): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Illuminate\\Console\\OutputStyle))\n#30 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(1022): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#31 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(314): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#32 D:\\laragon\\www\\evento\\vendor\\symfony\\console\\Application.php(168): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#33 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(102): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#34 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(194): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\StringInput), Object(Symfony\\Component\\Console\\Output\\BufferedOutput))\n#35 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(336): Illuminate\\Console\\Application->call(\'queue:work\', Array, NULL)\n#36 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(338): Illuminate\\Foundation\\Console\\Kernel->call(\'queue:work --st...\')\n#37 D:\\laragon\\www\\evento\\app\\Http\\Controllers\\BackEnd\\Event\\EventController.php(238): Illuminate\\Support\\Facades\\Facade::__callStatic(\'call\', Array)\n#38 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(54): App\\Http\\Controllers\\BackEnd\\Event\\EventController->store(Object(App\\Http\\Requests\\Event\\StoreRequest))\n#39 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(43): Illuminate\\Routing\\Controller->callAction(\'store\', Array)\n#40 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(260): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(App\\Http\\Controllers\\BackEnd\\Event\\EventController), \'store\')\n#41 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(205): Illuminate\\Routing\\Route->runController()\n#42 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(798): Illuminate\\Routing\\Route->run()\n#43 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#44 D:\\laragon\\www\\evento\\app\\Http\\Middleware\\HasPermission.php(32): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): App\\Http\\Middleware\\HasPermission->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'Event Managemen...\')\n#46 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Middleware\\SubstituteBindings.php(50): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Auth\\Middleware\\Authenticate.php(44): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Auth\\Middleware\\Authenticate->handle(Object(Illuminate\\Http\\Request), Object(Closure), \'admin\')\n#50 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken.php(78): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(49): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(121): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(64): Illuminate\\Session\\Middleware\\StartSession->handleStatefulRequest(Object(Illuminate\\Http\\Request), Object(Illuminate\\Session\\Store), Object(Closure))\n#56 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(37): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(67): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(799): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#63 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(776): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#64 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(740): Illuminate\\Routing\\Router->runRoute(Object(Illuminate\\Http\\Request), Object(Illuminate\\Routing\\Route))\n#65 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(729): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#66 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(190): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#67 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#68 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#69 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull.php(31): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#70 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ConvertEmptyStringsToNull->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#71 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest.php(21): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#72 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\TrimStrings.php(40): Illuminate\\Foundation\\Http\\Middleware\\TransformsRequest->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#73 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\TrimStrings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#74 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize.php(27): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#75 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\ValidatePostSize->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#76 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance.php(86): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#77 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Foundation\\Http\\Middleware\\PreventRequestsDuringMaintenance->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#78 D:\\laragon\\www\\evento\\vendor\\fruitcake\\laravel-cors\\src\\HandleCors.php(38): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#79 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Fruitcake\\Cors\\HandleCors->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#80 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Http\\Middleware\\TrustProxies.php(39): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#81 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(180): Illuminate\\Http\\Middleware\\TrustProxies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#82 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#83 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(165): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#84 D:\\laragon\\www\\evento\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(134): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#85 D:\\laragon\\www\\evento\\public\\index.php(52): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#86 {main}', '2023-05-04 10:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `question`, `answer`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 8, 'How to Create an Event with S2ticketz.com?', 'Discover the advantages of our advanced event management platform with a seamless, DIY experience.\r\n\r\nEffortless Sign-Up:\r\nQuick Registration: Get started with ease by completing a simple KYC process.\r\n\r\nFast Event Setup:\r\nGo Live in Under 5 Minutes: Launch your event in just a few clicks and make it live within minutes.', 1, '2024-12-09 21:05:33', '2024-12-09 21:05:33'),
(37, 8, 'What fees does S2ticketz.com charge?', 'We charge a 2% service fee and a 1.99% payment gateway charge, plus applicable taxes.', 2, '2024-12-09 21:07:28', '2024-12-09 21:07:44'),
(38, 8, 'Can I host free events on S2ticketz.com?', 'Yes, S2ticketz.com supports both free and paid events, making it versatile for all types of organizers.', 3, '2024-12-09 21:08:03', '2024-12-09 21:08:03'),
(39, 8, 'How do I receive payments for ticket sales?', 'Payments are transferred directly to your registered bank account after deducting applicable fees.', 4, '2024-12-09 21:08:20', '2024-12-09 21:08:20'),
(40, 8, 'Can I request part payments before the event?', 'Yes, part payments can be arranged. Please email info@s2ticketz.in for assistance.', 5, '2024-12-09 21:08:38', '2024-12-09 21:08:38'),
(41, 8, 'Does S2ticketz.com support event promotion?', 'Yes, we offer customizable promotional packages to boost your event\'s visibility. Contact us for details.', 6, '2024-12-09 21:08:58', '2024-12-09 21:08:58'),
(42, 8, 'How can I track ticket sales and attendee information?', 'Access real-time data, sales reports, and attendee details through the S2ticketz.com dashboard.', 7, '2024-12-09 21:09:22', '2024-12-09 21:09:22'),
(43, 8, 'What type of support is available for organizers?', 'Our dedicated support team assists with attendee queries, incomplete transactions, and technical issues during business hours 10am - 8pm', 8, '2024-12-09 21:09:51', '2024-12-09 21:09:51'),
(44, 8, 'Can I customize ticket types and pricing?', 'Absolutely! You can create various ticket types, set discounts, and offer early bird pricing.', 9, '2024-12-09 21:10:13', '2024-12-09 21:10:13'),
(45, 8, 'Can I offer discounts or early bird pricing for my tickets?', 'Yes, you can create various ticket types with customizable pricing, discounts, and offers like early bird rates.', 10, '2024-12-09 21:11:18', '2024-12-09 21:11:18'),
(46, 8, 'Does S2Ticketz handle attendee communication?', 'Yes, we provide automated email confirmations, pre-event reminders, and support for sending customized messages to attendees', 11, '2024-12-09 21:11:46', '2024-12-09 21:11:46'),
(47, 8, 'Can I manage multiple events on S2Ticketz.com?', 'Yes, you can easily manage multiple events from a single account and track all ticket sales and attendee data.', 12, '2024-12-09 21:13:08', '2024-12-09 21:13:08'),
(48, 8, 'How can I customize my event page?', 'You can customize your event page with logos, images, and detailed descriptions.', 13, '2024-12-09 21:13:33', '2024-12-09 21:13:33'),
(49, 8, 'How secure is the payment process for attendees?', 'S2Ticketz uses a secure payment gateway, ensuring safe transactions for both organizers and attendees.', 14, '2024-12-09 21:14:48', '2024-12-09 21:14:48');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_color` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `language_id`, `background_color`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(6, 8, '0066FF', 'fas fa-book-reader', 'Highly Qualified Mentors & Instructors', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 3, '2021-10-11 00:11:50', '2022-05-15 00:03:40'),
(7, 8, '8976FF', 'fas fa-book', 'Quizzes, Videos, Code Snippets & More', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 2, '2021-10-11 00:13:02', '2022-05-15 00:02:41'),
(8, 8, '30BCFF', 'fas fa-chalkboard-teacher', 'Course Completion Certificate', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 1, '2021-10-11 00:13:44', '2022-05-15 00:01:54'),
(12, 8, '2ECC71', NULL, 'Drag & Drop Lesson Contents Decoration', 'See the E Learning Tools your competitors are already using - Start Now! Get App helps more than 800k businesses find the best software for their needs.', 4, '2022-05-15 00:05:22', '2022-05-15 00:06:29');

-- --------------------------------------------------------

--
-- Table structure for table `footer_contents`
--

CREATE TABLE `footer_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `footer_background_color` varchar(255) DEFAULT NULL,
  `about_company` text,
  `copyright_text` text,
  `footer_logo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `footer_contents`
--

INSERT INTO `footer_contents` (`id`, `language_id`, `footer_background_color`, `about_company`, `copyright_text`, `footer_logo`, `created_at`, `updated_at`) VALUES
(1, 8, '5A16BD', '<p><span style=\"font-size:12pt;\"><strong>S2Ticketz.com</strong> is an innovative online ticketing platform that simplifies event ticket booking and management. It is designed to cater to various types of events, including concerts, sports events, marathons, expos, conferences, and more. The platform provides a seamless user experience for both event organizers and attendees, ensuring hassle-free ticket sales and purchases.</span></p>', '<p><span style=\"font-size:12pt;\">Copyright ©{year}. All Rights Reserved. Secured by <span style=\"color:rgb(224,62,45);\"><a style=\"color:rgb(224,62,45);\" title=\"Aadhiyal Group of Companies\" href=\"https://www.aadhiyalgroup.com/\">Aadhiyal Group of Companies</a></span></span></p>', '1733168476.png', '2021-06-19 05:57:47', '2024-12-03 21:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `fun_fact_sections`
--

CREATE TABLE `fun_fact_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fun_fact_sections`
--

INSERT INTO `fun_fact_sections` (`id`, `language_id`, `background_image`, `title`, `created_at`, `updated_at`) VALUES
(3, 8, '61befc8312cee.jpg', 'Some Fun Facts from Us', '2021-10-07 03:23:12', '2021-12-19 03:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `gooogle_calendar_infos`
--

CREATE TABLE `gooogle_calendar_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` bigint DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `google_calendar_event_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint UNSIGNED NOT NULL,
  `endpoint` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `hero_sections`
--

CREATE TABLE `hero_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `background_image` varchar(255) NOT NULL,
  `first_title` varchar(255) DEFAULT NULL,
  `second_title` varchar(255) DEFAULT NULL,
  `first_button` varchar(255) DEFAULT NULL,
  `first_button_url` varchar(255) DEFAULT NULL,
  `second_button` varchar(255) DEFAULT NULL,
  `second_button_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `hero_sections`
--

INSERT INTO `hero_sections` (`id`, `language_id`, `background_image`, `first_title`, `second_title`, `first_button`, `first_button_url`, `second_button`, `second_button_url`, `video_url`, `image`, `created_at`, `updated_at`) VALUES
(2, 8, '674efbc2a8bc0.png', 'The Smart Way to Book Events', 'S2Ticketz.com is an innovative online ticketing platform that simplifies event ticket booking and management. It is designed to cater to various types of events, including concerts, sports events, marathons, expos, conferences, and more.', 'Find Events', 'https://codecanyon.kreativdev.com/coursela/courses', 'Meet Instructors', 'https://codecanyon.kreativdev.com/coursela/instructors', NULL, '61bda9c61892c.png', '2021-11-30 22:30:04', '2024-12-03 18:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `how_works`
--

CREATE TABLE `how_works` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `how_works`
--

INSERT INTO `how_works` (`id`, `language_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 8, 'how does it work', 'From discovery to participation, S2Ticketz ensures a hassle-free and efficient experience for everyone involved.', '2022-06-07 00:42:14', '2024-12-02 19:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `how_work_items`
--

CREATE TABLE `how_work_items` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `serial_number` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `how_work_items`
--

INSERT INTO `how_work_items` (`id`, `language_id`, `icon`, `title`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 8, 'fas fa-user-plus', 'Register your account', 'Sign up on S2Ticketz to gain access to the platform and its event management tools.', 1, '2022-06-07 00:45:47', '2024-12-02 19:14:06'),
(2, 8, 'fas fa-plus', 'Create your events', 'Set up your event by adding details such as name, date, venue, ticket categories, and pricing. Customize it to attract attendees.', 2, '2022-06-07 00:48:26', '2024-12-02 19:14:16'),
(3, 8, 'fas fa-cart-arrow-down', 'Sell tickets & get paid', 'Share your event link to start selling tickets. Attendees can book their tickets seamlessly, and payments are processed securely.', 3, '2022-06-07 00:49:09', '2024-12-02 19:14:24'),
(4, 8, 'fas fa-wallet', 'Withdraw', 'Easily withdraw your earnings directly to your account through the platform\'s simple and secure withdrawal system.', 4, '2022-06-07 00:49:38', '2024-12-02 19:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` char(255) NOT NULL,
  `direction` tinyint NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `direction`, `is_default`, `created_at`, `updated_at`) VALUES
(8, 'English', 'en', 0, 1, '2021-05-31 05:58:22', '2023-09-24 08:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` int NOT NULL,
  `mail_type` varchar(50) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `mail_type`, `mail_subject`, `mail_body`) VALUES
(4, 'verify_email', 'Verify Your Email Address - S2Ticketz.com', '<p>Hi <strong>{username}</strong>,</p>\n<p>We just need to verify your email address before you can access to your dashboard.</p>\n<p>Verify your email address, {verification_link}.</p>\n<p>Thank you.<br />{website_title}</p>\n<p> </p>'),
(5, 'reset_password', 'Recover Password of Your Account - S2Ticketz.com', '<p>Hi {customer_name},</p>\n<p>We have received a request to reset your password. If you did not make the request, just ignore this email. Otherwise, you can reset your password using this below link.</p>\n<p>{password_reset_link}</p>\n<p>Thanks,<br />{website_title}</p>'),
(9, 'event_booking', 'Event Confirmation - S2Ticketz.com', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p>\n<p>We\'re excited to confirm your ticket booking for {title}. You have successfully registered in the following event.</p>\n<p>Booking Id: #{order_id}<br />Event: {title}</p>\n<p>Also, we have attached an invoice in this mail.<br /><br /></p>\n<p><strong>Important Information</strong>:</p>\n<ul>\n<li>Please keep this email as proof of your booking.</li>\n<li>Your tickets will be available for download/printing shortly.</li>\n<li>In case of any changes or inquiries, feel free to contact our customer support at info@s2ticketz.in.</li>\n</ul>\n<p>We look forward to welcoming you to the event!</p>\n<p>Best regards.<br />{website_title}</p>'),
(10, 'event_booking_approved', 'Approval of Event Booking - S2Ticketz.com', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p>\n<p>Your payment is completed, and we have approved your booking for the following evnent.</p>\n<p>Booking Id: #{order_id}</p>\n<p>Event : {title}</p>\n<p>Also, we have attached an invoice in this mail.</p>\n<p>Best regards.<br />{website_title}</p>'),
(11, 'event_booking_rejected', 'Rejection of Event Booking - S2Ticketz.com', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p>\n<p>Your payment is not completed, thus we have rejected your Booking for the following Event.</p>\n<p>Booking Id: #{order_id}</p>\n<p>Event : {title}</p>\n<p>For further information, please do not hesitate to contact us.<br />{website_title}</p>'),
(12, 'product_order', 'Order Confirmation', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>Your Order  has been  successfully Placed.</p><p>Order Id: #{order_id}<br /></p><p>Also, we have attached an invoice in this mail.</p><p>Best regards.<br />{website_title}</p>'),
(13, 'withdraw_approve', 'Confirmation of Withdraw Approve', '<p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">Hi {organizer_username},</p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">This email confirms that your withdrawal request  {withdraw_id} is approved. </p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">Your current balance is {current_balance}, withdraw amount {withdraw_amount}, charge : {charge},payable amount {payable_amount}</p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">withdraw method : {withdraw_method}. The transaction id is {transaction_id}.</p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\"><br /></p><p style=\"font-family:Lato, sans-serif;font-size:14px;line-height:1.82;color:rgb(0,0,0);font-style:normal;font-weight:400;text-align:left;\">Best Regards.<br />{website_title}</p>'),
(14, 'withdraw_rejected', 'Withdraw Request Rejected', '<p>Hi {organizer_username},</p><p>This email confirms that your withdrawal request  {withdraw_id} is rejected and the balance added to your account. </p><p>Your current balance is {current_balance}</p><p><br /></p><p>Best Regards.<br />{website_title}</p>'),
(15, 'balance_add', 'Balance Add', '<p>Hi {username}</p><p>{amount} added to your account.</p><p>Your current balance is {current_balance}. </p><p>The transaction id is {transaction_id}.<br /></p><p><br /></p><p>Best Regards.<br />{website_title}<br /></p>'),
(16, 'balance_subtract', 'Balance Subtract', '<p>Hi {username}</p><p>{amount} subtract from your account.</p><p>Your current balance is {current_balance}.</p><p>The transaction id is {transaction_id}.<br /></p><p><br /></p><p>Best Regards.<br />{website_title}</p>'),
(17, 'product_shipping', 'Product Shipping Status', '<p>Hi <span style=\"font-weight:600;\">{customer_name}</span>,</p><p>Your order shipping status is {status}.</p><p>Order Id: #{order_id}</p><p>Best regards.<br />{website_title}</p>');

-- --------------------------------------------------------

--
-- Table structure for table `menu_builders`
--

CREATE TABLE `menu_builders` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `menus` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `menu_builders`
--

INSERT INTO `menu_builders` (`id`, `language_id`, `menus`, `created_at`, `updated_at`) VALUES
(2, 8, '[]', '2021-12-01 05:32:09', '2024-12-19 12:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2023_03_04_134315_drop_secondary_color_from_basic_settings_table', 1),
(6, '2023_03_05_152403_add_tax_commission_percentage_column_to_bookings_table', 2),
(9, '2023_03_22_115828_add_column_to_conversations_table', 3),
(10, '2023_05_11_150902_create_ticket_contents_table', 4),
(14, '2023_05_13_124521_create_variation_contents_table', 5),
(15, '2023_05_20_154216_add_about_page_title_column_to_page_headings_table', 6),
(16, '2023_05_20_154329_add_meta_keyword_description_column_to_seos_table', 6),
(17, '2023_07_30_094527_add_scan_status_column_to_bookings_table', 7),
(18, '2023_09_30_162759_add_tax_percentage_column_to_product_orders_table', 8),
(19, '2021_02_01_030511_create_payment_invoices_table', 9),
(20, '2023_11_16_062730_add_event_guest_checkout_status_to_basic_settings_table', 9),
(21, '2024_02_07_055018_add_midtrans_payment_gateway_row_to_online_gateways_table', 9),
(22, '2024_02_07_172740_add_iyzico_payment_gateway_into_online_gateways_table', 9),
(23, '2024_02_08_153546_add_paytabs_payment_gateway_into_online_gateways', 9),
(24, '2024_02_10_105443_add_toyyibpay_payment_gateway_into_online_gateways', 9),
(25, '2024_02_10_122829_add_phonepe_payment_gateway_into_online_gateways_table', 9),
(26, '2024_02_10_152845_add_yoco_payment_gateway_into_online_gateways', 9),
(27, '2024_02_10_172724_add_xindit_payment_gateway_into_online_gateways', 9),
(28, '2024_02_11_143939_add_myfatoorah_payment_gateway_into_online_gateways', 9),
(29, '2024_02_12_120007_add_conversation_id_to_event_bookings_table', 9),
(30, '2024_02_12_162617_add_conversation_id_to_product_orders_table', 9),
(31, '2024_02_14_112643_add_perfect_money_payment_gateway_into_online_gateways_table', 9),
(32, '2024_08_24_050913_add_ticket_header_image_ticket_background_color_instructiob_to_events_table', 10),
(33, '2024_08_24_075435_theme_version_add_to_organizers_table', 10),
(34, '2024_08_25_033713_meeting_url_add_to_events_table', 10),
(35, '2024_08_27_062045_ticket_logo_add_to_events_table', 10),
(36, '2024_08_29_034732_ticket_image_add_to_events_table', 10),
(37, '2024_10_23_054145_add_scanned_tickets_colum_in_the_bookings_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `offline_gateways`
--

CREATE TABLE `offline_gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` text,
  `instructions` blob,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 -> gateway is deactive, 1 -> gateway is active.',
  `has_attachment` tinyint(1) NOT NULL COMMENT '0 -> do not need attachment, 1 -> need attachment.',
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `online_gateways`
--

INSERT INTO `online_gateways` (`id`, `name`, `keyword`, `information`, `status`) VALUES
(1, 'PayPal', 'paypal', '{\"sandbox_status\":\"0\",\"client_id\":\"AVYKFEw63FtDt9aeYOe9biyifNI56s2Hc2F1Us11hWoY5GMuegipJRQBfWLiIKNbwQ5tmqKSrQTU3zB3\",\"client_secret\":\"EJY0qOKliVg7wKsR3uPN7lngr9rL1N7q4WV0FulT1h4Fw3_e5Itv1mxSdbtSUwAaQoXQFgq-RLlk_sQu\"}', 0),
(2, 'Instamojo', 'instamojo', '{\"sandbox_status\":\"1\",\"key\":\"\",\"token\":\"\"}', 0),
(3, 'Paystack', 'paystack', '{\"key\":\"\"}', 0),
(4, 'Flutterwave', 'flutterwave', '{\"public_key\":\"\",\"secret_key\":\"\"}', 0),
(5, 'Razorpay', 'razorpay', '{\"key\":\"rzp_live_QOLgaAgybCMpkm\",\"secret\":\"EVDOwQRwsM1GCnGyTr3eImWH\"}', 1),
(6, 'MercadoPago', 'mercadopago', '{\"sandbox_status\":\"1\",\"token\":\"\"}', 0),
(7, 'Mollie', 'mollie', '{\"key\":\"\"}', 0),
(8, 'Stripe', 'stripe', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\"}', 0),
(9, 'Paytm', 'paytm', '{\"environment\":\"local\",\"merchant_key\":\"\",\"merchant_mid\":\"\",\"merchant_website\":\"\",\"industry_type\":\"\"}', 0),
(10, 'Midtrans', 'midtrans', '{\"server_key\":null,\"is_production\":0}', 0),
(11, 'Iyzico', 'iyzico', '{\"api_key\":null,\"secret_key\":null,\"sandbox_status\":1}', 0),
(12, 'Paytabs', 'paytabs', '{\"profile_id\":null,\"server_key\":null,\"api_endpoint\":null,\"country\":null}', 0),
(13, 'Toyyibpay', 'toyyibpay', '{\"sandbox_status\":1,\"secret_key\":null,\"category_code\":null}', 0),
(14, 'Phonepe', 'phonepe', '{\"merchant_id\":\"M222RAZJC186G\",\"sandbox_status\":\"0\",\"salt_key\":\"f6177e85-cd11-4eb5-a8b4-da5e254326b6\",\"salt_index\":\"1\"}', 0),
(15, 'Yoco', 'yoco', '{\"secret_key\":null}', 0),
(16, 'Xendit', 'xendit', '{\"secret_key\":null}', 0),
(17, 'Myfatoorah', 'myfatoorah', '{\"sandbox_status\":null,\"token\":null}', 0),
(18, 'Perfect Money', 'perfect_money', '{\"perfect_money_wallet_id\":null}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `summery` text,
  `description` longtext,
  `price` decimal(8,2) DEFAULT NULL,
  `previous_price` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `organizers`
--

CREATE TABLE `organizers` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `amount` float DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme_version` varchar(255) DEFAULT 'light'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `organizers`
--

INSERT INTO `organizers` (`id`, `photo`, `email`, `phone`, `username`, `password`, `status`, `amount`, `email_verified_at`, `facebook`, `twitter`, `linkedin`, `created_at`, `updated_at`, `theme_version`) VALUES
(27, '674f044500fbd.png', 's2eventzmdu@gmail.com', NULL, 's2eventz', '$2y$10$MqMOKxS83l90eDOzxf6kE.TrMh.dNu/x2u5bWGfWK7GiUSj0csOD.', '1', 3.96, '2024-12-03 03:23:44', NULL, NULL, NULL, '2024-12-03 01:50:55', '2024-12-10 13:01:47', 'light'),
(28, NULL, 'anush0891.thiyagarajan@gmail.com', NULL, 'ANUSH', '$2y$10$lkuLdwe4W0XTdD4aZ3qe.O3.LLeZz1E8fwLEVzkuU5HbVvYCIWNVO', '1', NULL, '2024-12-03 18:05:29', NULL, NULL, NULL, '2024-12-03 17:53:11', '2024-12-03 18:05:29', 'light'),
(29, NULL, 'kalvipayanam2022@gmail.com', NULL, 'Kalvipayanam', '$2y$10$3/yykiUoSGrlB7X3Lf9nbO9kC6Cn3mEsxIf4lQaTY/1dknpIfg5q.', '1', NULL, '2024-12-03 21:04:05', NULL, NULL, NULL, '2024-12-03 18:00:57', '2024-12-03 21:04:05', 'light'),
(30, '6757d1425db1a.png', 'vventertainmentsmedia@gmail.com', NULL, 'VVEntertainments', '$2y$10$KvAU1drk7qLs5liJ9ALMM.GWcvqr6Y8Nms8aC4C80dJgIZpULA45q', '1', 1.92, '2024-12-10 10:55:34', NULL, NULL, NULL, '2024-12-10 10:55:34', '2024-12-10 13:32:36', 'light'),
(31, NULL, 'skeventstn@gmail.com', '7708312111', 'SKEvents', '$2y$10$sqL3M1Z4/ZlWTao7EJTyuetlnJeyXjs3XVY6UKpknZx6xnVVax9iC', '1', NULL, '2024-12-15 12:12:57', NULL, NULL, NULL, '2024-12-15 12:12:57', '2024-12-15 16:31:02', 'light'),
(32, NULL, 'muthuvi@gmail.com', NULL, 'muthuvi', '$2y$10$odYR86wzPH3TqYkYrHOOCuvOaE37KS.VNjlMIJ9aqKkScPdkC0wVK', '1', NULL, '2024-12-19 12:43:06', NULL, NULL, NULL, '2024-12-19 12:37:26', '2024-12-19 12:43:06', 'light');

-- --------------------------------------------------------

--
-- Table structure for table `organizer_infos`
--

CREATE TABLE `organizer_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint DEFAULT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `details` longtext COLLATE utf8mb4_unicode_ci,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `organizer_infos`
--

INSERT INTO `organizer_infos` (`id`, `language_id`, `organizer_id`, `name`, `country`, `city`, `state`, `zip_code`, `address`, `details`, `designation`, `created_at`, `updated_at`) VALUES
(2, 8, 20, 'Hossain', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara, Dhaka, Bangladesh', 'Hi there! I\'m ChatSonic, an AI Chatbot that uses the latest and most advanced natural language processing technology to answer your questions accurately and informatively. I\'m here to help you with your questions about yourself. Here is a list of 101 facts about myself: I love to start numbering from zero instead of one, I love to take photographs wherever I go, I love harmony, I love martial arts, I can eat same food, day-in-day-out and not get bored, I can listen to same song non-stop in loop for days and still enjoy it, I can\'t live without access to my linux box,', 'fsadfaf', '2023-01-09 12:01:26', '2023-01-12 06:07:10'),
(3, 17, 20, 'Hossain', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara, Dhaka, Bangladesh', 'Hi there! I\'m ChatSonic, an AI Chatbot that uses the latest and most advanced natural language processing technology to answer your questions accurately and informatively. I\'m here to help you with your questions about yourself. Here is a list of 101 facts about myself: I love to start numbering from zero instead of one, I love to take photographs wherever I go, I love harmony, I love martial arts, I can eat same food, day-in-day-out and not get bored, I can listen to same song non-stop in loop for days and still enjoy it, I can\'t live without access to my linux box,', 'fsadfaf', '2023-01-09 12:33:08', '2023-01-12 06:07:10'),
(4, 8, 18, 'Fahad Ahmad Shemul', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara', 'opt to that kind of lifestyle, I would rather sit alone on my a$$ with a book than booze and party, I would rather play exhausting sport than sit on my a$$ and read a book, I love the fragrance of wet mud, I like to dream, I am a teetotaler, and this bugs a lot of my buddies, If God gave me the power to remove any 3 vices from the world, I would remove: Politicians/Politics Greed and Jealousy, In my view breathing techniques, are the most advanced form of exercises. I have been trained in a few of these techniques, and someday I\'ll learn and', 'fsadfaf', '2023-01-12 06:07:40', '2023-01-21 10:34:33'),
(5, 17, 18, 'Fahad Ahmad Shemul', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara, Dhaka, Bangladesh', 'opt to that kind of lifestyle, I would rather sit alone on my a$$ with a book than booze and party, I would rather play exhausting sport than sit on my a$$ and read a book, I love the fragrance of wet mud, I like to dream, I am a teetotaler, and this bugs a lot of my buddies, If God gave me the power to remove any 3 vices from the world, I would remove: Politicians/Politics Greed and Jealousy, In my view breathing techniques, are the most advanced form of exercises. I have been trained in a few of these techniques, and someday I\'ll learn and', 'fsadfaf', '2023-01-12 06:07:40', '2023-01-21 10:34:47'),
(6, 8, 21, 'Lamar Wilder', 'Dolore quibusdam aut', 'Omnis sit voluptas m', 'Et dolor eiusmod eni', '93092', 'Autem id in aliqua', 'Culpa dolore velit', 'Ut veniam et dolore', '2023-01-21 06:59:11', '2023-01-21 06:59:11'),
(7, 17, 21, 'Lamar Wilder', 'Dolore quibusdam aut', 'Omnis sit voluptas m', 'Et dolor eiusmod eni', '93092', 'Autem id in aliqua', 'Culpa dolore velit', 'Ut veniam et dolore', '2023-01-21 06:59:11', '2023-01-21 06:59:11'),
(8, 8, 22, 'Talon Beard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-05-01 09:03:40', '2023-05-01 09:03:40'),
(9, 8, 23, 'Robert J. Murray', 'United States', 'Readsboro', 'North Carolina', '05350', 'Readsboro, North Carolina, United States', 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups', 'Chief executive officer', '2023-05-02 09:50:29', '2023-05-07 11:03:02'),
(10, 22, 23, 'جوناس', 'الولايات المتحدة الأمريكية', 'ريدسبورو', 'نورث كارولينا', '05350', 'ريدسبورو ، نورث كارولينا ، الولايات المتحدة', 'من بفرض يتعلّق فعل, كل جهة هامش مارد وإقامة. أم بلا وبعد يقوم ومضى, خطّة لعدم ا\r\nلأحمر وفي أي, كُلفة أفريقيا بمعارضة نفس قد. دول تم إعلان الأمم الإقتصادية, مايو أهّل استطاعوا قام كل. أخر قد وحتى أطراف الجنوب.', 'الرئيس التنفيذي', '2023-05-02 09:51:44', '2023-05-07 11:03:02'),
(11, 27, 23, 'Fahad Ahmad Shemul', 'Bangladesh', 'Dhaka', 'North Carolina', '1230', 'House no 3, Road 5/c, sector 11, Uttara, Dhaka, Bangladesh', NULL, 'fsadfaf', '2023-05-02 09:51:44', '2023-05-02 09:51:44'),
(12, 8, 24, 'Ken Champlin', 'Australia', 'Sydney', 'New South Wales', '59154', 'Elizabeth Bay NSW 2011, Sydney, Australia', 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', 'ceo of abc', '2023-05-07 10:53:07', '2023-05-11 05:45:20'),
(13, 22, 24, 'ماجي برينس', 'أستراليا', 'سيدني', 'نيو ساوث ويلز', '59154', 'إليزابيث باي نيو ساوث ويلز 2011, سيدني, أستراليا', 'إبّان شواطيء سنغافورة أي ذلك, بل ومن الهادي واشتدّت, فكانت السادس الأراضي فصل ان. قد كان لغزو كنقطة بالرّغم, أن سقوط إحكام ويتّفق بين, أم جُل النفط والإتحاد التغييرات. عل فقد لليابان الأوروبية،, ودول كانت واحدة أم لكل, لم به، تحرير المنتصر. حصدت بالرغم وأكثرها حيث ان, عل فقد اوروبا والديون. مكن أم وبدأت ا استطاعوا, ثم كانت مهمّات بعض. بـ يتمكن الإمداد به،, أم ولم واستمرت المتساقطة،, شدّت لدحر تكبّد عل أما.', 'الرئيس التنفيذي لشركة عمار', '2023-05-07 10:53:07', '2023-05-07 10:53:07'),
(14, 8, 25, 'Ambrose Thiel', 'United States', 'Columbus', 'Ohio', '24855', 'Columbus, Ohio, United States', 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', 'Executive', '2023-05-07 10:57:11', '2023-05-11 05:44:46'),
(15, 22, 25, 'جوسلين كاش', 'الولايات المتحدة الأمريكية', 'كولومبوس', 'أوهايو', '24855', 'كولومبوس ، أوهايو ، الولايات المتحدة', 'وبغطاء الثقيلة الإكتفاء بال كل, ٣٠ انه الهادي محاولات الأهداف. ساعة بمباركة اليابان، أما من, وسفن ليبين المضي قام مع. حتى في بأضرار باستحداث. بحق وقبل وفنلندا اقتصادية كل, تسبب الأوربيين كلا كل. تطوير الساحة ا حيث بل, يقوم قائمة العظمى لمّ ان, مما أي دفّة وحتّى.', 'تنفيذي', '2023-05-07 10:57:11', '2023-05-07 10:57:11'),
(16, 8, 26, 'Amber Cannon', 'United States', 'Tonopah', 'North Carolina', '69114', 'Tonopah, North Carolina, United States', 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.', 'Chief marketing officer', '2023-05-07 11:01:23', '2023-05-07 11:01:23'),
(17, 22, 26, 'مدفع العنبر', 'الولايات المتحدة الأمريكية', 'تونوباه', 'نورث كارولينا', '69114', 'تونوباه ، كارولاينا الشمالية ، الولايات المتحدة', 'إبّان شواطيء سنغافورة أي ذلك, بل ومن الهادي واشتدّت, فكانت السادس الأراضي فصل ان. قد كان لغزو كنقطة بالرّغم, أن سقوط إحكام ويتّفق بين, أم جُل النفط والإتحاد التغييرات. عل فقد لليابان الأوروبية،, ودول كانت واحدة أم لكل, لم به، تحرير المنتصر. حصدت بالرغم وأكثرها حيث ان, عل فقد اوروبا والديون. مكن أم وبدأت ا استطاعوا, ثم كانت مهمّات بعض. بـ يتمكن الإمداد به،, أم ولم واستمرت المتساقطة،, شدّت لدحر تكبّد عل أما.', 'الرئيس التنفيذي للتسويق', '2023-05-07 11:01:23', '2023-05-07 11:01:23'),
(18, 8, 27, 'S2 Eventz', 'India', 'Madurai', 'Tamil Nadu', '625016', 'Arasaradi', NULL, NULL, '2023-05-11 05:59:10', '2024-12-03 02:49:04'),
(19, 8, 27, 'Karthick L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-03 01:50:55', '2024-12-03 01:50:55'),
(20, 8, 28, 'ANUSH SRINATH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-03 17:53:11', '2024-12-03 17:53:11'),
(21, 8, 29, 'Kalvipayanam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-03 18:00:57', '2024-12-03 18:00:57'),
(22, 8, 30, 'VV Entertainments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-10 10:55:34', '2024-12-10 10:55:34'),
(23, 8, 31, 'SK Events', 'India', 'Madurai', 'Tamil Nadu', '625016', NULL, NULL, NULL, '2024-12-15 12:12:57', '2024-12-15 12:12:57'),
(24, 8, 32, 'Muthu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-19 12:37:26', '2024-12-19 12:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `status`, `created_at`, `updated_at`) VALUES
(14, 1, '2021-10-18 02:33:45', '2021-10-18 02:33:45'),
(16, 1, '2023-05-20 04:53:32', '2023-05-20 04:53:32'),
(17, 1, '2024-12-02 18:53:38', '2024-12-02 18:53:38'),
(18, 1, '2024-12-09 20:17:23', '2024-12-09 20:17:23'),
(19, 1, '2024-12-09 20:30:34', '2024-12-09 20:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `page_contents`
--

CREATE TABLE `page_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `page_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` blob NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `page_contents`
--

INSERT INTO `page_contents` (`id`, `language_id`, `page_id`, `title`, `slug`, `content`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(30, 8, 14, 'Terms & Conditions', 'terms-&-conditions', 0x3c64697620636c6173733d2248634f584b6e2063394771564c2051784a4c4333206c7132636e6f20636f6d702d6c7078776372637a352077697875692d726963682d74657874223e0a3c683120636c6173733d22666f6e745f362077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e5465726d7320616e6420436f6e646974696f6e733c2f7370616e3e3c2f68313e0a3c2f6469763e0a3c64697620636c6173733d2248634f584b6e2063394771564c2051784a4c4333206c7132636e6f20636f6d702d6c70787763726430342077697875692d726963682d74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e5468657365205465726d7320616e6420436f6e646974696f6e732c20616c6f6e672077697468207072697661637920706f6c696379206f72206f74686572207465726d732028e2809c5465726d73e2809d2920636f6e7374697475746520612062696e64696e672061677265656d656e7420627920616e64206265747765656e20414144484959414c2047524f5550204f4620434f4d50414e4945532c204e6f203435422c204268617261746869646173616e2053616c61692c2054204220526f61642c204d616861707570616c616979616d2c204d6164757261692c2054616d696c204e6164752c20363235303136202820e2809c57656273697465204f776e6572e2809d206f7220e2809c7765e2809d206f7220e2809c7573e2809d206f7220e2809c6f7572e2809d2920616e6420796f752028e2809c796f75e2809d206f7220e2809c796f7572e2809d2920616e642072656c61746520746f20796f757220757365206f66206f757220776562736974652c20676f6f647320286173206170706c696361626c6529206f7220736572766963657320286173206170706c696361626c65292028636f6c6c6563746976656c792c20e2809c5365727669636573e2809d292e3c627220636c6173733d2277697875692d726963682d746578745f5f7465787422202f3e3c627220636c6173733d2277697875692d726963682d746578745f5f7465787422202f3e4279207573696e67206f7572207765627369746520616e6420617661696c696e67207468652053657276696365732c20796f75206167726565207468617420796f752068617665207265616420616e64206163636570746564207468657365205465726d732028696e636c7564696e6720746865205072697661637920506f6c696379292e20576520726573657276652074686520726967687420746f206d6f64696679207468657365205465726d7320617420616e792074696d6520616e6420776974686f75742061737369676e696e6720616e7920726561736f6e2e20497420697320796f757220726573706f6e736962696c69747920746f20706572696f646963616c6c7920726576696577207468657365205465726d7320746f207374617920696e666f726d6564206f6620757064617465732e3c627220636c6173733d2277697875692d726963682d746578745f5f7465787422202f3e3c627220636c6173733d2277697875692d726963682d746578745f5f7465787422202f3e54686520757365206f6620746869732077656273697465206f7220617661696c696e67206f66206f7572205365727669636573206973207375626a65637420746f2074686520666f6c6c6f77696e67207465726d73206f66207573653a3c2f7370616e3e3c2f703e0a3c756c20636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e546f2061636365737320616e6420757365207468652053657276696365732c20796f7520616772656520746f2070726f7669646520747275652c20616363757261746520616e6420636f6d706c65746520696e666f726d6174696f6e20746f20757320647572696e6720616e6420616674657220726567697374726174696f6e2c20616e6420796f75207368616c6c20626520726573706f6e7369626c6520666f7220616c6c206163747320646f6e65207468726f7567682074686520757365206f6620796f75722072656769737465726564206163636f756e742e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e4e656974686572207765206e6f7220616e7920746869726420706172746965732070726f7669646520616e792077617272616e7479206f722067756172616e74656520617320746f207468652061636375726163792c2074696d656c696e6573732c20706572666f726d616e63652c20636f6d706c6574656e657373206f7220737569746162696c697479206f662074686520696e666f726d6174696f6e20616e64206d6174657269616c73206f666665726564206f6e20746869732077656273697465206f72207468726f756768207468652053657276696365732c20666f7220616e7920737065636966696320707572706f73652e20596f752061636b6e6f776c656467652074686174207375636820696e666f726d6174696f6e20616e64206d6174657269616c73206d617920636f6e7461696e20696e61636375726163696573206f72206572726f727320616e6420776520657870726573736c79206578636c756465206c696162696c69747920666f7220616e79207375636820696e61636375726163696573206f72206572726f727320746f207468652066756c6c65737420657874656e74207065726d6974746564206279206c61772e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e596f757220757365206f66206f757220536572766963657320616e64207468652077656273697465697320736f6c656c7920617420796f7572206f776e207269736b20616e642064697363726574696f6e2e2e20596f752061726520726571756972656420746f20696e646570656e64656e746c792061737365737320616e6420656e73757265207468617420746865205365727669636573206d65657420796f757220726571756972656d656e74732e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e54686520636f6e74656e7473206f6620746865205765627369746520616e6420746865205365727669636573206172652070726f707269657461727920746f20557320616e6420796f752077696c6c206e6f74206861766520616e7920617574686f7269747920746f20636c61696d20616e7920696e74656c6c65637475616c2070726f7065727479207269676874732c207469746c652c206f7220696e74657265737420696e2069747320636f6e74656e74732e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e596f752061636b6e6f776c65646765207468617420756e617574686f72697a656420757365206f66207468652057656273697465206f7220746865205365727669636573206d6179206c65616420746f20616374696f6e20616761696e737420796f7520617320706572207468657365205465726d73206f72206170706c696361626c65206c6177732e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e596f7520616772656520746f20706179207573207468652063686172676573206173736f636961746564207769746820617661696c696e67207468652053657276696365732e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e596f75206167726565206e6f7420746f2075736520746865207765627369746520616e642f206f7220536572766963657320666f7220616e7920707572706f7365207468617420697320756e6c617766756c2c20696c6c6567616c206f7220666f7262696464656e206279207468657365205465726d732c206f7220496e6469616e206f72206c6f63616c206c6177732074686174206d69676874206170706c7920746f20796f752e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e596f7520616772656520616e642061636b6e6f776c656467652074686174207765627369746520616e6420746865205365727669636573206d617920636f6e7461696e206c696e6b7320746f206f746865722074686972642070617274792077656273697465732e204f6e20616363657373696e67207468657365206c696e6b732c20796f752077696c6c20626520676f7665726e656420627920746865207465726d73206f66207573652c207072697661637920706f6c69637920616e642073756368206f7468657220706f6c6963696573206f6620737563682074686972642070617274792077656273697465732e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e596f7520756e6465727374616e6420746861742075706f6e20696e6974696174696e672061207472616e73616374696f6e20666f7220617661696c696e672074686520536572766963657320796f752061726520656e746572696e6720696e746f2061206c6567616c6c792062696e64696e6720616e6420656e666f72636561626c6520636f6e747261637420776974682074686520757320666f72207468652053657276696365732e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e596f75207368616c6c20626520656e7469746c656420746f20636c61696d206120726566756e64206f6620746865207061796d656e74206d61646520627920796f7520696e206361736520776520617265206e6f742061626c6520746f2070726f766964652074686520536572766963652e205468652074696d656c696e657320666f7220737563682072657475726e20616e6420726566756e642077696c6c206265206163636f7264696e6720746f20746865207370656369666963205365727669636520796f75206861766520617661696c6564206f722077697468696e207468652074696d6520706572696f642070726f766964656420696e206f757220706f6c696369657320286173206170706c696361626c65292e20496e206361736520796f7520646f206e6f74207261697365206120726566756e6420636c61696d2077697468696e207468652073746970756c617465642074696d652c207468616e207468697320776f756c64206d616b6520796f7520696e656c696769626c6520666f72206120726566756e642e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e4e6f74776974687374616e64696e6720616e797468696e6720636f6e7461696e656420696e207468657365205465726d732c207468652070617274696573207368616c6c206e6f74206265206c6961626c6520666f7220616e79206661696c75726520746f20706572666f726d20616e206f626c69676174696f6e20756e646572207468657365205465726d7320696620706572666f726d616e63652069732070726576656e746564206f722064656c61796564206279206120666f726365206d616a65757265206576656e742e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e5468657365205465726d7320616e6420616e792064697370757465206f7220636c61696d2072656c6174696e6720746f2069742c206f722069747320656e666f7263656162696c6974792c207368616c6c20626520676f7665726e656420627920616e6420636f6e73747275656420696e206163636f7264616e6365207769746820746865206c617773206f6620496e6469612e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e416c6c2064697370757465732061726973696e67206f7574206f66206f7220696e20636f6e6e656374696f6e2077697468207468657365205465726d73207368616c6c206265207375626a65637420746f20746865206578636c7573697665206a7572697364696374696f6e206f662074686520636f7572747320696e204d6164757261692c2054616d696c204e6164753c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f382077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e416c6c20636f6e6365726e73206f7220636f6d6d756e69636174696f6e732072656c6174696e6720746f207468657365205465726d73206d75737420626520636f6d6d756e69636174656420746f207573207573696e672074686520636f6e7461637420696e666f726d6174696f6e2070726f7669646564206f6e207468697320776562736974652e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c2f756c3e0a3c2f6469763e, 'terms', 'Unless otherwise stated, Evento and/or its licensors own the intellectual property rights for all material on Evento. All intellectual property rights are reserved. You may access this from Evento for your own personal use subjected to restrictions set in these terms and conditions.', '2021-10-18 02:33:45', '2024-12-02 18:52:44'),
(39, 8, 16, 'Privacy Policy', 'privacy-policy', 0x3c64697620636c6173733d224d5735495756223e0a3c64697620636c6173733d2256674f395967223e3c2f6469763e0a3c2f6469763e0a3c64697620636c6173733d22223e0a3c6469763e0a3c64697620636c6173733d2248634f584b6e2063394771564c2051784a4c4333206c7132636e6f20636f6d702d6c70787762747065362077697875692d726963682d74657874223e0a3c683120636c6173733d22666f6e745f362077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34352077697875692d726963682d746578745f5f74657874223e5072697661637920506f6c6963793c2f7370616e3e3c2f7370616e3e3c2f68313e0a3c2f6469763e0a3c64697620636c6173733d2248634f584b6e2063394771564c2051784a4c4333206c7132636e6f20636f6d702d6c70787762747066342077697875692d726963682d74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e54686973207072697661637920706f6c6963792028e2809c506f6c696379e2809d292072656c6174657320746f20746865206d616e6e657220414144484959414c2047524f5550204f4620434f4d50414e4945532028e2809c7765e2809d2c20e2809c7573e2809d2c20e2809c6f7572e2809d2920696e207768696368207765207573652c2068616e646c6520616e642070726f63657373207468652064617461207468617420796f752070726f7669646520757320696e20636f6e6e656374696f6e2077697468207573696e67207468652070726f6475637473206f72207365727669636573207765206f666665722e204279207573696e6720746869732077656273697465206f7220627920617661696c696e6720676f6f6473206f72207365727669636573206f6666657265642062792075732c20796f7520616772656520746f20746865207465726d7320616e6420636f6e646974696f6e73206f66207468697320506f6c6963792c20616e6420636f6e73656e7420746f206f7572207573652c2073746f726167652c20646973636c6f737572652c20616e64207472616e73666572206f6620796f757220696e666f726d6174696f6e206f72206461746120696e20746865206d616e6e65722064657363726962656420696e207468697320506f6c6963792e2057652061726520636f6d6d697474656420746f20656e737572696e67207468617420796f757220707269766163792069732070726f74656374656420696e206163636f7264616e63652077697468206170706c696361626c65206c61777320616e6420726567756c6174696f6e732e205765207572676520796f7520746f206163717561696e7420796f757273656c662077697468207468697320506f6c69637920746f2066616d696c696172697a6520796f757273656c66207769746820746865206d616e6e657220696e20776869636820796f75722064617461206973206265696e672068616e646c65642062792075732e20414144484959414c2047524f5550204f4620434f4d50414e494553206d6179206368616e6765207468697320506f6c69637920706572696f646963616c6c7920616e64207765207572676520796f7520746f20636865636b2074686973207061676520666f7220746865206c61746573742076657273696f6e206f662074686520506f6c69637920696e206f7264657220746f206b65657020796f757273656c6620757064617465642e3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697847756172642077697875692d726963682d746578745f5f74657874223ee2808b3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e576861742064617461206973206265696e6720636f6c6c65637465643c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e5765206d617920636f6c6c6563742074686520666f6c6c6f77696e6720696e666f726d6174696f6e2066726f6d20796f753a3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c756c20636c6173733d22636f6c6f725f343120666f6e745f392077697875692d726963682d746578745f5f74657874223e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e4e616d653c2f7370616e3e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e436f6e7461637420696e666f726d6174696f6e20696e636c7564696e67206164647265737320616e6420656d61696c20616464726573733c2f7370616e3e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e44656d6f6772617068696320696e666f726d6174696f6e206f722c20707265666572656e636573206f7220696e746572657374733c2f7370616e3e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e506572736f6e616c2044617461206f72204f7468657220696e666f726d6174696f6e2072656c6576616e742f20726571756972656420666f722070726f766964696e672074686520676f6f6473206f7220736572766963657320746f20796f753c2f7370616e3e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e546865206d65616e696e67206f6620506572736f6e616c20446174612077696c6c20626520617320646566696e656420756e6465722072656c6576616e7420496e6469616e206c6177733c2f7370616e3e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c2f756c3e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697847756172642077697875692d726963682d746578745f5f74657874223ee2808b3c2f7370616e3ee2808b3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e4e6f74653a204e6f74776974687374616e64696e6720616e797468696e6720756e646572207468697320506f6c69637920617320726571756972656420756e646572206170706c696361626c6520496e6469616e206c6177732c2077652077696c6c206e6f742062652073746f72696e6720616e792063726564697420636172642c2064656269742063617264206f7220616e79206f746865722073696d696c617220636172642064617461206f6620796f7572732e20506c6561736520616c736f206e6f7465207468617420616c6c2064617461206f7220696e666f726d6174696f6e20636f6c6c65637465642066726f6d20796f752077696c6c206265207374726963746c7920696e206163636f7264616e63652077697468206170706c696361626c65206c61777320616e642067756964656c696e65732e3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697847756172642077697875692d726963682d746578745f5f74657874223ee2808b3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e5768617420776520646f2077697468207468652064617461207765206761746865723c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e576520726571756972652074686973206461746120746f2070726f7669646520796f7520776974682074686520676f6f6473206f72207365727669636573206f66666572656420627920757320696e636c7564696e6720627574206e6f74206c696d697465642c20666f72207468652062656c6f7720736574206f757420707572706f7365733a3c2f7370616e3e3c2f703e0a3c756c20636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e5468697264207061727469657320696e636c7564696e67206f757220736572766963652070726f76696465727320696e206f7264657220746f20666163696c6974617465207468652070726f766973696f6e73206f6620676f6f6473206f7220736572766963657320746f20796f752c206361727279206f757420796f75722072657175657374732c20726573706f6e6420746f20796f757220717565726965732c2066756c66696c20796f7572206f7264657273206f7220666f72206f74686572206f7065726174696f6e616c20616e6420627573696e65737320726561736f6e732e3c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e57697468206f75722067726f757020636f6d70616e6965732028746f2074686520657874656e742072656c6576616e74293c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e4f75722061756469746f7273206f722061647669736f727320746f2074686520657874656e74207265717569726564206279207468656d20666f7220706572666f726d696e672074686569722073657276696365733c2f7370616e3e3c2f703e0a3c2f6c693e0a3c6c6920636c6173733d2277697875692d726963682d746578745f5f74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e476f7665726e6d656e74616c20626f646965732c20726567756c61746f727920617574686f7269746965732c206c617720656e666f7263656d656e7420617574686f726974696573207075727375616e7420746f206f7572206c6567616c206f626c69676174696f6e73206f7220636f6d706c69616e636520726571756972656d656e74733c2f7370616e3e3c2f703e0a3c2f6c693e0a3c2f756c3e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697847756172642077697875692d726963682d746578745f5f74657874223ee2808b3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e486f772077652075736520636f6f6b6965733c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e5765207573652022636f6f6b6965732220746f20636f6c6c65637420696e666f726d6174696f6e20616e6420746f2062657474657220756e6465727374616e6420637573746f6d6572206265686176696f75722e20596f752063616e20696e73747275637420796f75722062726f7773657220746f2072656675736520616c6c20636f6f6b696573206f7220746f20696e646963617465207768656e206120636f6f6b6965206973206265696e672073656e742e20486f77657665722c20696620796f7520646f206e6f742061636365707420636f6f6b6965732c20796f75206d6179206e6f742062652061626c6520746f20617661696c206f757220676f6f6473206f7220736572766963657320746f207468652066756c6c20657874656e742e20576520646f206e6f7420636f6e74726f6c2074686520757365206f6620636f6f6b69657320627920746869726420706172746965732e2054686520746869726420706172747920736572766963652070726f7669646572732068617665207468656972206f776e207072697661637920706f6c69636965732061646472657373696e6720686f77207468657920757365207375636820696e666f726d6174696f6e2e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223ec2a03c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e596f7572207269676874732072656c6174696e6720746f20796f757220646174613c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e526967687420746f20526576696577c2a02d20596f752063616e207265766965772074686520646174612070726f766964656420627920796f7520616e642063616e207265717565737420757320746f20636f7272656374206f7220616d656e64207375636820646174612028746f2074686520657874656e74206665617369626c652c2061732064657465726d696e6564206279207573292e205468617420736169642c2077652077696c6c206e6f7420626520726573706f6e7369626c6520666f72207468652061757468656e746963697479206f66207468652064617461206f7220696e666f726d6174696f6e2070726f766964656420627920796f752e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e5769746864726177616c206f6620796f757220436f6e73656e74c2a02d20596f752063616e2063686f6f7365206e6f7420746f2070726f7669646520796f757220646174612c20617420616e792074696d65207768696c6520617661696c696e67206f757220676f6f6473206f72207365727669636573206f72206f746865727769736520776974686472617720796f757220636f6e73656e742070726f766964656420746f207573206561726c6965722c20696e2077726974696e6720746f206f757220656d61696c2049443ac2a03c6120636c6173733d2277697875692d726963682d746578745f5f746578742220687265663d226d61696c746f3a696e666f40616164686979616c67726f75702e636f6d496e223e696e666f40616164686979616c67726f75702e636f6d496e3c2f613ec2a0746865206576656e7420796f752063686f6f736520746f206e6f742070726f76696465206f72206c6174657220776974686472617720796f757220636f6e73656e742c207765206d6179206e6f742062652061626c6520746f2070726f7669646520796f75206f7572207365727669636573206f7220676f6f64732e506c65617365206e6f746520746861742074686573652072696768747320617265207375626a65637420746f206f757220636f6d706c69616e63652077697468206170706c696361626c65206c6177732e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223ec2a03c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e486f77206c6f6e672077696c6c2077652072657461696e20796f757220696e666f726d6174696f6e206f7220646174613f3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e5765206d61792072657461696e20796f757220696e666f726d6174696f6e206f7220646174612028692920666f72206173206c6f6e67206173207765206172652070726f766964696e6720676f6f647320616e6420736572766963657320746f20796f753b20616e642028696929206173207065726d697474656420756e646572206170706c696361626c65206c61772c207765206d617920616c736f2072657461696e20796f75722064617461206f7220696e666f726d6174696f6e206576656e20616674657220796f75207465726d696e6174652074686520627573696e6573732072656c6174696f6e7368697020776974682075732e20486f77657665722c2077652077696c6c2070726f63657373207375636820696e666f726d6174696f6e206f72206461746120696e206163636f7264616e63652077697468206170706c696361626c65206c61777320616e64207468697320506f6c6963792e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223ec2a03c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e446174612053656375726974793c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e57652077696c6c2075736520636f6d6d65726369616c6c7920726561736f6e61626c6520616e64206c6567616c6c792072657175697265642070726563617574696f6e7320746f2070726573657276652074686520696e7465677269747920616e64207365637572697479206f6620796f757220696e666f726d6174696f6e20616e6420646174612e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223ec2a03c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e517565726965732f204772696576616e6365204f6666696365723c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e466f7220616e7920717565726965732c207175657374696f6e73206f72206772696576616e6365732061626f7574207468697320506f6c6963792c20706c6561736520636f6e74616374207573207573696e672074686520636f6e7461637420696e666f726d6174696f6e2070726f7669646564206f6e207468697320776562736974652e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697847756172642077697875692d726963682d746578745f5f74657874223ee2808b3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c2f6469763e0a3c2f6469763e0a3c2f6469763e, NULL, NULL, '2023-05-20 04:53:32', '2024-12-02 18:52:04'),
(41, 8, 17, 'Cancellation & Refund Policy', 'cancellation-&-refund-policy', 0x3c64697620636c6173733d224d5735495756223e0a3c64697620636c6173733d2256674f395967223e3c2f6469763e0a3c2f6469763e0a3c64697620636c6173733d22223e0a3c6469763e0a3c64697620636c6173733d2248634f584b6e2063394771564c2051784a4c4333206c7132636e6f20636f6d702d6c7078776434346d362077697875692d726963682d74657874223e0a3c683120636c6173733d22666f6e745f362077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34352077697875692d726963682d746578745f5f74657874223e43616e63656c6c6174696f6e2026616d703b20526566756e6420506f6c6963793c2f7370616e3e3c2f7370616e3e3c2f68313e0a3c2f6469763e0a3c64697620636c6173733d2248634f584b6e2063394771564c2051784a4c4333206c7132636e6f20636f6d702d6c7078776434346e342077697875692d726963682d74657874223e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e414144484959414c2047524f5550204f4620434f4d50414e4945532062656c696576657320696e2068656c70696e672069747320637573746f6d6572732061732066617220617320706f737369626c652c20616e6420686173207468657265666f72652061206c69626572616c2063616e63656c6c6174696f6e20706f6c6963792e20556e646572207468697320706f6c6963793a3c627220636c6173733d2277697875692d726963682d746578745f5f7465787422202f3e3c627220636c6173733d2277697875692d726963682d746578745f5f7465787422202f3ee280a22044756520746f20736572766963652070726f76696465727320696e206e617475726520e2809c4e4f20524546554e44e2809d2ce2809c4e4f2043414e43454c4c4154494f4ee2809dc2a02077696c6c20626520656e7465727461696e6564206f6e636520746865205061796d656e7420686173206265656e206d6164652e3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e496e20746865206576656e742c20616e206576656e742069732063616e63656c6c6564206f7220706f7374706f6e656420666f7220776861746576657220726561736f6e2c2074686520436f6d70616e792077696c6c20617474656d707420746f20726566756e642074686520616d6f756e74206173207065722074686520706f6c696379206f6620746865206576656e742e3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697847756172642077697875692d726963682d746578745f5f74657874223ee2808b3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223ee280a2c2a03c2f7370616e3e3c2f7370616e3e496e2063617365206f6620616e79204576656e742043616e63656c6c6174696f6e732f4576656e7420506f7374706f6e652c2066756c6c20726566756e64732077696c6c20626520696e69746961746564206f6e6c792075706f6e206f6e20746865206170726f76656420636f6e6669726d6174696f6e2028636f6e646974696f6e732076617269657320666f7220646966666572656e74206576656e7473292e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697847756172642077697875692d726963682d746578745f5f74657874223ee2808b3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223ee280a220416e79202a5469636b65742043616e63656c6c6174696f6e2052657175657374732f526566756e64205265717565737473207261697365642062792074686520637573746f6d6572732077696c6c20626520636f6e73696465726564206f6e6c792075706f6e2074686520656d61696c20636f6e6669726d6174696f6e20616e6420666f72207468652073616d652c205061796d656e7420476174657761792043686172676573202b2054617865732077696c6c2062652064656475637465642066726f6d207468652070616964207469636b657420616d6f756e742c20646570656e64696e672075706f6e2074686520636f6d70616e79207465726d732073657420666f7220746865206576656e742028636f6e646974696f6e732076617269657320666f7220646966666572656e74206576656e7473292e3c627220636c6173733d2277697875692d726963682d746578745f5f7465787422202f3e3c627220636c6173733d2277697875692d726963682d746578745f5f7465787422202f3ee280a220496e2063617365206f6620616e7920526566756e647320617070726f7665642062792074686520414144484959414c2047524f5550204f4620434f4d50414e4945532c206974e280996c6c2074616b6520362d382044617973206461797320666f722074686520726566756e6420746f2062652070726f63657373656420746f2074686520656e6420637573746f6d65722e3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697847756172642077697875692d726963682d746578745f5f74657874223ee2808b3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c7020636c6173733d22666f6e745f392077697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223ee280a2c2a03c2f7370616e3e3c2f7370616e3e3c7370616e20636c6173733d2277697875692d726963682d746578745f5f74657874223e3c7370616e20636c6173733d22636f6c6f725f34312077697875692d726963682d746578745f5f74657874223e496e2063617365206f66204576656e742043616e63656c6c6174696f6e2f706f7374706f6e652c2074686520426f6f6b696e6720466565732077696c6c206e6f7420626520726566756e6465642e20596f752063616e207265666572206f757220636f6e746163742064657461696c7320696ec2a03c6120636c6173733d2277697875692d726963682d746578745f5f746578742220687265663d2268747470733a2f2f7777772e73326576656e747a2e636f6d2f636f6e74616374757322207461726765743d225f73656c66222072656c3d226e6f7265666572726572206e6f6f70656e6572223e636f6e74616374c2a03c2f613e706167652e3c2f7370616e3e3c2f7370616e3e3c2f703e0a3c2f6469763e0a3c2f6469763e0a3c2f6469763e, NULL, NULL, '2024-12-02 18:53:38', '2024-12-02 18:53:38'),
(43, 8, 18, 'Fees & Pricings', 'fees-&-pricings', 0x3c6833207374796c653d22746578742d616c69676e3a6c6566743b223e3c7370616e207374796c653d22636f6c6f723a726762283135372c31352c323138293b223e53325469636b65747a20466565732026616d703b2050726963696e67202d204e6f20736574757020636f73742c204e6f2068696464656e20666565733c2f7370616e3e3c2f68333e0a3c756c207374796c653d22746578742d616c69676e3a6c6566743b223e0a3c6c693e3c7374726f6e673e5332205469636b65747a2053657276696365204368617267653a3c2f7374726f6e673e2032253c2f6c693e0a3c6c693e3c7374726f6e673e5061796d656e74204761746577617920436861726765733a3c2f7374726f6e673e20312e3939253c2f6c693e0a3c6c693e3c7374726f6e673e5332205469636b65747a205365727669636520436861726765202b205061796d656e7420476174657761792043686172676573203ac2a03c2f7374726f6e673e332e393925202b20313825204753543c2f6c693e0a3c6c69207374796c653d22746578742d616c69676e3a6c6566743b223e466f72206578616d706c652c20696620796f7572206576656e74207469636b657420707269636520697320e282b93130302c207468652066696e616c207061796f757420616674657220646564756374696e6720746865207061796d656e7420676174657761792066656520616e64206170706c696361626c6520746178657320776f756c642062653a203c7374726f6e673e28e282b9313030207820342e37312529203d20e282b939352e32393c2f7374726f6e673e3c2f6c693e0a3c2f756c3e0a3c70207374796c653d22746578742d616c69676e3a6c6566743b223e4e6f74653a205061796d656e747320776f756c642062652070726f63657373656420696e20332d3520776f726b696e6720646179732061667465722074686520636f6d706c6574696f6e206f6620746865206576656e742e20466f722070617274207061796d656e74207265717565737473206265666f726520746865206576656e742c20706c65617365207265616368206f757420746f207573206174203c7374726f6e673e3c613e696e666f4073327469636b65747a2e696e3c2f613e3c2f7374726f6e673e2e3c2f703e0a3c6833207374796c653d22746578742d616c69676e3a6c6566743b223e42656e656669747320666f72204f7267616e697a6572733c2f68333e0a3c756c207374796c653d22746578742d616c69676e3a6c6566743b223e0a3c6c693e3c7374726f6e673e4166666f726461626c652050726963696e673a3c2f7374726f6e673e204b65657020796f757220636f737473206c6f772077697468206f757220636f6d7065746974697665207365727669636520616e64207061796d656e74206761746577617920636861726765732e3c2f6c693e0a3c6c693e3c7374726f6e673e437573746f6d205469636b6574696e673a3c2f7374726f6e673e2043726561746520616e64206d616e616765207469636b65742074797065732c2070726963696e672c20616e6420646973636f756e7473207769746820656173652e3c2f6c693e0a3c6c693e3c7374726f6e673e5365616d6c65737320496e746567726174696f6e3a3c2f7374726f6e673e20496e74656772617465207469636b65742077696467657473206469726563746c7920696e746f20796f75722077656273697465206f7220736f6369616c206d656469612e3c2f6c693e0a3c6c693e3c7374726f6e673e5265616c2d54696d6520496e7369676874733a3c2f7374726f6e673e20416363657373206c697665206461746120616e642064657461696c6564207265706f72747320666f7220626574746572206576656e74206d616e6167656d656e742e3c2f6c693e0a3c6c693e3c7374726f6e673e4175746f6d61746564204e6f74696669636174696f6e733a3c2f7374726f6e673e205469636b657420636f6e6669726d6174696f6e20616e64207072652d6576656e742072656d696e646572732076696120656d61696c2e3c2f6c693e0a3c6c693e3c7374726f6e673e44656469636174656420537570706f72743a3c2f7374726f6e673e204f7572207465616d206973206865726520746f20617373697374207769746820617474656e646565207175657269657320616e64207472616e73616374696f6e20666f6c6c6f772d7570732e3c2f6c693e0a3c2f756c3e0a3c70207374796c653d22746578742d616c69676e3a6c6566743b223e57697468203c7374726f6e673e53325469636b65747a3c2f7374726f6e673e2c20796f7520676574206120636f6d706c6574652c20757365722d667269656e646c7920736f6c7574696f6e20666f72206d616e6167696e6720796f7572206576656e7473206566666563746976656c7920616e6420656666696369656e746c792120f09f8c9f3c2f703e, 'Fees & Pricings', NULL, '2024-12-09 20:17:23', '2024-12-09 20:41:35'),
(44, 8, 19, 'Free Events Registration', 'free-events-registration', 0x3c68333e46726565204576656e7420526567697374726174696f6e206f6e2053325469636b65747a2e636f6d3c2f68333e0a3c703e53325469636b65747a2e636f6d2069732061c2a0667265652044495920706c6174666f726dc2a0666f72206576656e74206c697374696e672c207469636b6574696e672c20616e642070726f6d6f74696f6e2c2064657369676e656420746f2068656c7020796f75206566666f72746c6573736c7920726561636820796f75722061756469656e63652c20656e68616e6365207669736962696c6974792c20616e64206d616e616765206f6e6c696e65207469636b6574696e6720666f7220796f7572206576656e742e3c2f703e0a3c68343e537465707320746f2043726561746520616e642050726f6d6f746520596f7572204576656e74206f6e2053325469636b65747a2e636f6d3c2f68343e0a3c6f6c3e0a3c6c693e5369676e2055703a205265676973746572206f6e2053325469636b65747a2e636f6d207573696e6720796f7572206f6666696369616c20656d61696c2049442e3c2f6c693e0a3c6c693e53656c656374204576656e7420547970653a2043686f6f73652066726f6d20506169642026616d703b20467265652e3c2f6c693e0a3c6c693e416464204576656e742044657461696c733a2050726f7669646520746865206576656e74207469746c652c20646174652c20616e642074696d652e20577269746520612064657461696c6564206465736372697074696f6e20686967686c69676874696e67206b657920696e666f726d6174696f6e206c696b65207469636b657420696e636c7573696f6e7320616e6420756e697175652073656c6c696e6720706f696e74732e20517569636b205469703a205468696e6b2066726f6d2074686520617474656e646565e28099732070657273706563746976652e3c2f6c693e0a3c6c693e43686f6f736520612043617465676f72793a2053656c6563742061207375697461626c652063617465676f72792028436f6e636572742c2053706f7274732c20427573696e6573732c20456e7465727461696e6d656e742c206574632e2920616e642075706c6f6164206120686967682d7175616c69747920696d6167652077697468206576656e742064657461696c732e3c6272202f3e517569636b205469703a20456e737572652074686520696d61676520697320636c6561722c20756e646973746f727465642c20616e64206d61746368657320746865207265636f6d6d656e6465642064696d656e73696f6e732e3c2f6c693e0a3c6c693e5365742056656e756520496e666f726d6174696f6e3a2055706461746520746865206c6f636174696f6e20616e642076656e75652064657461696c732e3c2f6c693e0a3c6c693e446566696e65205469636b6574204f7074696f6e733a2053706563696679207469636b6574207479706573202850616964202f2046726565292c2070726963696e672c20616e6420746865206e756d626572206f66207469636b65747320617661696c61626c652e3c2f6c693e0a3c6c693e507265766965772026616d703b2046696e616c697a653a2052657669657720796f7572206576656e742064657461696c7320616e64206d616b6520616e79206e65636573736172792061646a7573746d656e74732e3c2f6c693e0a3c6c693e5075626c6973683a204f6e63652065766572797468696e67206973207365742c20686974207075626c697368213c2f6c693e0a3c2f6f6c3e0a3c68343e4164646974696f6e616c204e6f7465733c2f68343e0a3c756c3e0a3c6c693e4576656e74206c697374696e6720697320667265652e2043686172676573206170706c79206f6e6c79206f6e207469636b65747320736f6c642c20776974682061206e6f6d696e616c20312e393925207061796d656e7420676174657761792066656520706c757320313825204753542e3c2f6c693e0a3c6c693e426f6f737420796f7572206576656e742773207669736962696c6974792077697468206f757220637573746f6d697a61626c652070726f6d6f74696f6e616c207061636b732e20466f722064657461696c732cc2a03c6120687265663d2268747470733a2f2f73327469636b65747a2e696e2f636f6e74616374223e436f6e746163742075733c2f613e2e3c2f6c693e0a3c2f756c3e0a3c703e3c7374726f6e673e3c7370616e207374796c653d22636f6c6f723a726762283135372c31352c323138293b223e4d616b6520796f7572206576656e742061207375636365737320776974682053325469636b65747a2e636f6d213c2f7370616e3e3c2f7374726f6e673e3c2f703e, 'Free Events Registration', NULL, '2024-12-09 20:30:34', '2024-12-09 20:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `page_headings`
--

CREATE TABLE `page_headings` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED DEFAULT NULL,
  `blog_page_title` varchar(255) DEFAULT NULL,
  `blog_details_page_title` varchar(255) DEFAULT NULL,
  `contact_page_title` varchar(255) DEFAULT NULL,
  `about_page_title` varchar(255) DEFAULT NULL,
  `event_page_title` varchar(255) DEFAULT NULL,
  `shop_page_title` varchar(255) DEFAULT NULL,
  `cart_page_title` varchar(255) DEFAULT NULL,
  `event_details_page_title` varchar(255) DEFAULT NULL,
  `faq_page_title` varchar(255) DEFAULT NULL,
  `customer_forget_password_page_title` varchar(255) DEFAULT NULL,
  `organizer_forget_password_page_title` varchar(255) DEFAULT NULL,
  `organizer_page_title` varchar(255) DEFAULT NULL,
  `customer_login_page_title` varchar(255) DEFAULT NULL,
  `customer_signup_page_title` varchar(255) DEFAULT NULL,
  `organizer_login_page_title` varchar(255) DEFAULT NULL,
  `organizer_signup_page_title` varchar(255) DEFAULT NULL,
  `customer_dashboard_page_title` varchar(255) DEFAULT NULL,
  `customer_booking_page_title` varchar(255) DEFAULT NULL,
  `customer_booking_details_page_title` varchar(255) DEFAULT NULL,
  `customer_order_page_title` varchar(255) DEFAULT NULL,
  `customer_order_details_page_title` varchar(255) DEFAULT NULL,
  `customer_wishlist_page_title` varchar(255) DEFAULT NULL,
  `customer_support_ticket_page_title` varchar(255) DEFAULT NULL,
  `support_ticket_create_page_title` varchar(255) DEFAULT NULL,
  `support_ticket_details_page_title` varchar(255) DEFAULT NULL,
  `customer_edit_profile_page_title` varchar(255) DEFAULT NULL,
  `customer_change_password_page_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `page_headings`
--

INSERT INTO `page_headings` (`id`, `language_id`, `blog_page_title`, `blog_details_page_title`, `contact_page_title`, `about_page_title`, `event_page_title`, `shop_page_title`, `cart_page_title`, `event_details_page_title`, `faq_page_title`, `customer_forget_password_page_title`, `organizer_forget_password_page_title`, `organizer_page_title`, `customer_login_page_title`, `customer_signup_page_title`, `organizer_login_page_title`, `organizer_signup_page_title`, `customer_dashboard_page_title`, `customer_booking_page_title`, `customer_booking_details_page_title`, `customer_order_page_title`, `customer_order_details_page_title`, `customer_wishlist_page_title`, `customer_support_ticket_page_title`, `support_ticket_create_page_title`, `support_ticket_details_page_title`, `customer_edit_profile_page_title`, `customer_change_password_page_title`, `created_at`, `updated_at`) VALUES
(4, 8, 'Blog', 'Blog Details', 'Contact', 'About Us', 'Our Events', 'Shop', 'Cart', 'Event  Details', 'FAQ', 'Forget Password', 'Forget Password', 'Organizer', 'Customer Login', 'Customer Signup', 'Organizer Login', 'Organizer Signup', 'Dashboard', 'My Bookings', 'Booking Details', 'My Orders', 'Order Details', 'My Wishlists', 'Support Tickets', 'Create a Support Ticket', 'Support Ticket Details', 'Edit Profile', 'Change Password', '2021-10-14 02:42:42', '2023-05-20 09:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `serial_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `image`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(7, '645879b813135.png', 'example.com', '1', '2022-06-07 03:06:07', '2023-05-08 04:25:28'),
(8, '645878ede2556.png', 'example.com', '2', '2022-06-07 03:06:16', '2023-05-08 04:22:05'),
(9, '645879c4e8561.png', 'example.com', '3', '2023-05-08 04:25:40', '2023-05-08 04:25:40'),
(10, '645879d17fb68.png', 'example.com', '4', '2023-05-08 04:25:53', '2023-05-08 04:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `partner_sections`
--

CREATE TABLE `partner_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `partner_sections`
--

INSERT INTO `partner_sections` (`id`, `language_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 8, 'Our Partner', 'Morbi volutpat luctus mauris id placerat. Aenean sit amet tincidunt', '2022-06-07 21:53:57', '2022-06-07 21:53:57'),
(2, 9, 'شريكنا', 'خدمتنا مجانية للمستخدمين لأن البائعين يدفعون لنا عندما يتلقون زيارات على شبكة', '2022-06-07 21:54:13', '2022-07-16 22:56:35'),
(3, 17, 'شريكنا', 'الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار', '2023-01-31 05:52:18', '2023-01-31 05:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('fahadahmadshemul@gmail.com', '5ffRsAn2iFAOtkFkJVuTicgt2OL3Hv2h', NULL),
('fahadahmadshemul@gmail.com', 'MofULe7iGv69cBBtn8WEprM0G73m3Vte', NULL),
('fahadahmadshemul@gmail.com', 'wLZLzqpItzNrGkg6A3HPu6naSi7h8hN9', NULL),
('fahadahmadshemul@gmail.com', '2ckcECbtz9aDkUIP1NaRka0k6FYC6cOU', NULL),
('fahadahmadshemul@gmail.com', 'z4DS2ezbNaAPPDykmZlC22FlKIWzhSoE', NULL),
('fahadahmadshemul@gmail.com', 'jDM2Ak7oXiTxnD6bLOp3ABjrYGGIm0qK', NULL),
('fahadahmadshemul@gmail.com', 'hteh4kg4180Lm2EMM9su205LzosT9z7G', NULL),
('muthuvi@gmail.com', 'T9y1FSAxDbFevP9rb6qhGzlR9KNRz9He', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_invoices`
--

CREATE TABLE `payment_invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `InvoiceId` bigint UNSIGNED NOT NULL,
  `InvoiceStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InvoiceValue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InvoiceDisplayValue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TransactionId` bigint UNSIGNED NOT NULL,
  `TransactionStatus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaymentGateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PaymentId` bigint UNSIGNED NOT NULL,
  `CardNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `type` smallint UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `background_color_opacity` decimal(3,2) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `button_text` varchar(255) DEFAULT NULL,
  `button_color` varchar(255) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `delay` int UNSIGNED NOT NULL COMMENT 'value will be in milliseconds',
  `serial_number` mediumint UNSIGNED NOT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1' COMMENT '0 => deactive, 1 => active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `language_id`, `type`, `image`, `name`, `background_color`, `background_color_opacity`, `title`, `text`, `button_text`, `button_color`, `button_url`, `end_date`, `end_time`, `delay`, `serial_number`, `status`, `created_at`, `updated_at`) VALUES
(7, 8, 1, '64577a7c2cee5.png', 'Black Friday', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1500, 1, 0, '2021-08-10 05:05:12', '2023-05-07 10:17:45'),
(8, 8, 2, '64577ac23d6b5.png', 'Month End Sale', '2079FF', '0.80', 'ENJOY 10% OFF', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Book Now', '2079FF', 'https://codecanyon8.kreativdev.com/evento', NULL, NULL, 2000, 2, 0, '2021-08-10 05:07:11', '2024-12-03 02:57:14'),
(10, 8, 3, '64577b1c72c92.png', 'Summer Sale', '2079FF', '0.70', 'Newsletter', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.', 'Subscribe', '2079FF', NULL, NULL, NULL, 2000, 3, 0, '2021-08-11 05:42:11', '2023-05-09 11:07:35'),
(11, 8, 4, '64577cffd4533.png', 'Winter Offer', NULL, NULL, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Book Now', '2079FF', 'https://codecanyon8.kreativdev.com/evento', NULL, NULL, 1500, 4, 0, '2021-08-11 06:38:08', '2023-05-07 10:41:01'),
(14, 8, 7, '64577d4bcea74.png', 'Flash Sale', '2079FF', NULL, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes, I Want to Save 30%', '2079FF', 'https://codecanyon8.kreativdev.com/evento', '2026-05-07', '12:00:00', 1500, 5, 0, '2021-08-11 07:15:16', '2023-05-07 10:40:53'),
(20, 8, 5, '64577d6d84030.png', 'Email Popup', NULL, NULL, 'Get 10% off your first order', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt', 'Subscribe', '2079FF', NULL, NULL, NULL, 1500, 2, 0, '2022-05-17 08:08:14', '2023-05-07 10:29:24'),
(21, 8, 6, '64577d905ecf9.png', 'Countdown Popup', NULL, NULL, 'Hurry, Sale Ends This Friday', 'This is your last chance to save 30%', 'Yes,I Want to Save 30%', '2079FF', 'https://codecanyon8.kreativdev.com/evento', '2025-05-16', '12:00:00', 1000, 1, 0, '2022-05-17 08:10:41', '2023-05-09 11:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `sku` int DEFAULT NULL,
  `feature_image` varchar(255) DEFAULT NULL,
  `current_price` decimal(8,2) DEFAULT NULL,
  `previous_price` decimal(8,2) DEFAULT NULL,
  `is_feature` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'digital-digital product, physical - physical product',
  `file_type` varchar(255) DEFAULT NULL COMMENT 'upload->file, link=>download_link',
  `download_file` varchar(255) DEFAULT NULL,
  `download_link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `stock`, `sku`, `feature_image`, `current_price`, `previous_price`, `is_feature`, `status`, `type`, `file_type`, `download_file`, `download_link`, `created_at`, `updated_at`) VALUES
(1, '23', 61620385, '1683451573.png', '90.00', '100.00', 'yes', 1, 'physical', NULL, NULL, NULL, '2023-05-07 09:20:50', '2023-05-07 09:26:13'),
(3, '12', 74171591, '1683452614.png', '50.00', '40.00', 'yes', 1, 'physical', NULL, NULL, NULL, '2023-05-07 09:43:34', '2023-05-07 09:43:34'),
(4, '10', 18801441, '1683452895.png', '150.00', '190.00', 'yes', 1, 'physical', NULL, NULL, NULL, '2023-05-07 09:48:15', '2023-05-07 09:48:15'),
(5, '20', 62656544, '1683453051.png', '200.00', '210.00', 'yes', 1, 'physical', NULL, NULL, NULL, '2023-05-07 09:50:51', '2023-05-07 09:50:51'),
(6, NULL, 60813162, '1683453408.png', '15.00', '20.00', 'yes', 1, 'digital', 'upload', '1683547140.zip', 'http://www.example.com/', '2023-05-07 09:56:48', '2023-05-08 12:02:56'),
(7, NULL, 46408261, '1683453560.png', '20.00', '22.00', 'yes', 1, 'digital', 'link', NULL, 'http://www.example.com/', '2023-05-07 09:59:20', '2023-05-07 09:59:20'),
(8, '30', 95249709, '1683453819.png', '300.00', '310.00', 'yes', 1, 'physical', NULL, NULL, NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(9, '100', 44170596, '1683453987.png', '40.00', '42.00', 'yes', 1, 'physical', NULL, NULL, NULL, '2023-05-07 10:06:27', '2023-05-07 10:06:27'),
(10, '100', 72199521, '1683454147.png', '500.00', '550.00', 'yes', 1, 'physical', NULL, NULL, NULL, '2023-05-07 10:09:07', '2023-05-07 10:09:07'),
(11, '5', 33793966, '1683454265.png', '250.00', NULL, 'yes', 1, 'physical', NULL, NULL, NULL, '2023-05-07 10:11:05', '2023-10-01 03:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1-yes, 0-no',
  `is_feature` int NOT NULL DEFAULT '0' COMMENT '1-yes, 0-no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `language_id`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(2, 'Electronic  Accessories', 'Electronic-Accessories', 8, 1, 1, '2023-05-07 08:55:58', '2023-05-07 09:01:02'),
(3, 'Fashion & Beauty', 'Fashion-&-Beauty', 8, 1, 1, '2023-05-07 08:58:15', '2023-05-07 08:59:34'),
(4, 'Home Appliances', 'home-appliances', 8, 1, 1, '2023-05-07 08:58:42', '2023-05-07 08:58:52'),
(5, 'Books', 'Books', 8, 1, 1, '2023-05-07 08:59:58', '2023-05-07 09:02:49'),
(6, 'الملحقات الإلكترونية', 'الملحقات-الإلكترونية', 22, 1, 1, '2023-05-07 09:01:30', '2023-05-07 09:03:28'),
(7, 'الموضة والجمال', 'الموضة-والجمال', 22, 1, 1, '2023-05-07 09:02:00', '2023-05-07 09:03:27'),
(8, 'المنزليه', 'المنزليه', 22, 1, 1, '2023-05-07 09:02:20', '2023-05-07 09:03:25'),
(9, 'الكتب', 'الكتب', 22, 1, 1, '2023-05-07 09:02:55', '2023-05-07 09:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_contents`
--

CREATE TABLE `product_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `tags` text,
  `summary` text,
  `description` longtext,
  `meta_keywords` text,
  `meta_description` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product_contents`
--

INSERT INTO `product_contents` (`id`, `title`, `product_id`, `slug`, `language_id`, `category_id`, `tags`, `summary`, `description`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Men\'s Hoodie', 1, 'men\'s-hoodie', 8, 3, 'hoodie', 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.', '<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p>', NULL, NULL, '2023-05-07 09:20:50', '2023-05-07 09:20:50'),
(5, 'Edifier W820NB Active Noise Cancelling Bluetooth Stereo Headphone', 3, 'edifier-w820nb-active-noise-cancelling-bluetooth-stereo-headphone', 8, 2, 'headphone', 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout', '<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p>', NULL, NULL, '2023-05-07 09:43:34', '2023-05-07 09:43:34'),
(7, 'Table Desk Lamp With Light Bulb', 4, 'table-desk-lamp-with-light-bulb', 8, 4, 'Lamp', 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.', '<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p>', NULL, NULL, '2023-05-07 09:48:15', '2023-05-07 09:48:15'),
(9, 'Wireless Vibration GamePad', 5, 'wireless-vibration-gamepad', 8, 2, NULL, 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', '<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p>', NULL, NULL, '2023-05-07 09:50:51', '2023-05-07 09:50:51'),
(11, 'User Manual Book', 6, 'user-manual-book', 8, 5, NULL, 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.', '<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p><div><br /></div>', NULL, NULL, '2023-05-07 09:56:48', '2023-05-07 09:56:48'),
(13, 'Manual Guide', 7, 'manual-guide', 8, 5, NULL, 'Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.', '<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p>', NULL, NULL, '2023-05-07 09:59:20', '2023-05-07 09:59:20'),
(15, 'Living room sofa set', 8, 'living-room-sofa-set', 8, 4, NULL, 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', '<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p>', NULL, NULL, '2023-05-07 10:03:39', '2023-05-07 10:03:39'),
(17, 'Sunscreen Cream', 9, 'sunscreen-cream', 8, 3, NULL, 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', '<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p><div><br /></div>', NULL, NULL, '2023-05-07 10:06:27', '2023-05-07 10:06:27'),
(19, 'Smart Phone', 10, 'smart-phone', 8, 2, NULL, 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', '<p><br /></p><p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p><p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p><p><br /></p><p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p><p><br /></p><p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p><div><br /></div>', NULL, NULL, '2023-05-07 10:09:07', '2023-05-07 10:09:07'),
(21, 'Printer', 11, 'printer', 8, 2, NULL, 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.', '<p> </p>\r\n<p>Lorem ipsum is a pseudo-Latin text used in web design, typography, layout, and printing in place of English to emphasise design elements over content. It\'s also called placeholder (or filler) text. It\'s a convenient tool for mock-ups. It helps to outline the visual elements of a document or presentation, eg typography, font, or layout.</p>\r\n<p> Lorem ipsum is mostly a part of a Latin text by the classical author and philosopher Cicero. Its words and letters have been changed by addition or removal, </p>\r\n<p> </p>\r\n<p>so to deliberately render its content nonsensical; it\'s not genuine, correct, or comprehensible Latin anymore.</p>\r\n<p> </p>\r\n<p> While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn\'t contain the letters K, W, or Z, alien to latin, these, and others are often inserted randomly to mimic the typographic appearence of European languages, as are digraphs not to be found in the original.</p>', NULL, NULL, '2023-05-07 10:11:05', '2023-05-20 11:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '64576e5a69169.jpg', '2023-05-07 09:24:42', '2023-05-07 09:26:13'),
(2, 1, '64576e5a6aefc.jpg', '2023-05-07 09:24:42', '2023-05-07 09:26:13'),
(3, 1, '64576e5aa0159.jpg', '2023-05-07 09:24:42', '2023-05-07 09:26:13'),
(5, 3, '64577265e9392.jpg', '2023-05-07 09:41:57', '2023-05-07 09:43:34'),
(6, 3, '64577265e943b.jpg', '2023-05-07 09:41:57', '2023-05-07 09:43:34'),
(7, 3, '645772662fd54.jpg', '2023-05-07 09:41:58', '2023-05-07 09:43:34'),
(8, 4, '6457734a98de7.jpg', '2023-05-07 09:45:46', '2023-05-07 09:48:15'),
(9, 4, '6457734aa3510.jpg', '2023-05-07 09:45:46', '2023-05-07 09:48:15'),
(10, 4, '6457734ad1673.jpg', '2023-05-07 09:45:46', '2023-05-07 09:48:15'),
(11, 5, '6457742ba6349.jpg', '2023-05-07 09:49:31', '2023-05-07 09:50:51'),
(12, 5, '6457742baa5cc.jpg', '2023-05-07 09:49:31', '2023-05-07 09:50:51'),
(13, 5, '6457742bd9402.jpg', '2023-05-07 09:49:31', '2023-05-07 09:50:51'),
(17, 6, '645775970e137.jpg', '2023-05-07 09:55:35', '2023-05-07 09:56:48'),
(18, 6, '645775970faab.jpg', '2023-05-07 09:55:35', '2023-05-07 09:56:48'),
(19, 6, '6457759748b92.jpg', '2023-05-07 09:55:35', '2023-05-07 09:56:48'),
(20, 7, '6457762c76e95.jpg', '2023-05-07 09:58:04', '2023-05-07 09:59:20'),
(21, 7, '6457762c82b2d.jpg', '2023-05-07 09:58:04', '2023-05-07 09:59:20'),
(22, 7, '6457762cad8f1.jpg', '2023-05-07 09:58:04', '2023-05-07 09:59:20'),
(23, 8, '645776c2b7c86.jpg', '2023-05-07 10:00:34', '2023-05-07 10:03:39'),
(24, 8, '645776c2bc73b.jpg', '2023-05-07 10:00:34', '2023-05-07 10:03:39'),
(25, 8, '645776c2ef21b.jpg', '2023-05-07 10:00:34', '2023-05-07 10:03:39'),
(26, 9, '645777a3d4af0.jpg', '2023-05-07 10:04:19', '2023-05-07 10:06:27'),
(27, 9, '645777a8edfed.jpg', '2023-05-07 10:04:24', '2023-05-07 10:06:27'),
(28, 9, '645777a8f1603.jpg', '2023-05-07 10:04:24', '2023-05-07 10:06:27'),
(29, 10, '6457785d4c410.jpg', '2023-05-07 10:07:25', '2023-05-07 10:09:07'),
(30, 10, '6457785d4c410.jpg', '2023-05-07 10:07:25', '2023-05-07 10:09:07'),
(31, 10, '6457785d82009.jpg', '2023-05-07 10:07:25', '2023-05-07 10:09:07'),
(32, 11, '645778ee46853.jpg', '2023-05-07 10:09:50', '2023-05-07 10:11:05'),
(33, 11, '645778ee5119f.jpg', '2023-05-07 10:09:50', '2023-05-07 10:11:05'),
(34, 11, '645778ee850dd.jpg', '2023-05-07 10:09:50', '2023-05-07 10:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `billing_fname` varchar(255) DEFAULT NULL,
  `billing_lname` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `shipping_fname` varchar(255) DEFAULT NULL,
  `shipping_lname` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zip_code` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `cart_total` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_percentage` double(8,2) DEFAULT '0.00',
  `total` decimal(8,2) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `gateway_type` varchar(255) DEFAULT NULL,
  `currency_text` varchar(255) DEFAULT NULL,
  `currency_text_position` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `currency_symbol_position` varchar(255) DEFAULT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_charge` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `tnxid` varchar(255) DEFAULT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `conversation_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `review` float DEFAULT NULL,
  `comment` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `push_subscriptions`
--

CREATE TABLE `push_subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `subscribable_type` varchar(255) NOT NULL,
  `subscribable_id` bigint UNSIGNED NOT NULL,
  `endpoint` varchar(500) NOT NULL,
  `public_key` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `content_encoding` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `quick_links`
--

CREATE TABLE `quick_links` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial_number` smallint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `quick_links`
--

INSERT INTO `quick_links` (`id`, `language_id`, `title`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(3, 8, 'Privacy Policy', 'https://s2ticketz.com/privacy-policy', 4, '2021-06-22 22:52:38', '2024-12-12 11:37:27'),
(4, 8, 'About Us', 'https://s2ticketz.com/about-us', 1, '2021-06-22 22:53:09', '2024-12-12 11:37:34'),
(5, 8, 'Contact Us', 'https://s2ticketz.com/contact', 7, '2021-06-22 22:53:27', '2024-12-12 11:38:10'),
(9, 8, 'Terms & Conditions', 'https://s2ticketz.com/terms-&-conditions', 6, '2022-10-03 00:47:32', '2024-12-12 11:37:41'),
(14, 8, 'Cancellation & Refund Policy', 'https://s2ticketz.com/cancellation-&-refund-policy', 5, '2024-12-03 01:10:39', '2024-12-12 11:37:48'),
(15, 8, 'Fees & Pricings', 'https://www.s2ticketz.com/fees-&-pricings', 4, '2024-12-09 20:18:23', '2024-12-09 20:44:03'),
(16, 8, 'Free Events Registration', 'https://s2ticketz.com/free-events-registration', 3, '2024-12-09 20:31:48', '2024-12-12 11:37:59'),
(17, 8, 'Create Event', 'https://www.s2ticketz.com/organizer/login', 2, '2024-12-09 20:42:58', '2024-12-09 20:43:52'),
(18, 8, 'FAQs', 'https://s2ticketz.com/faq', 8, '2024-12-09 21:20:58', '2024-12-12 11:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `permissions` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(4, 'Admin', '[\"Admin Management\",\"Language Management\",\"Basic Settings\",\"Push Notification\",\"Subscribers\",\"Announcement Popups\",\"Advertise\",\"FAQ Management\",\"Blog Management\",\"Custom Pages\",\"Footer\",\"Home Page\",\"Shop Management\",\"Support Ticket\",\"Customer Management\",\"Event Management\",\"Event Bookings\",\"Menu Builder\",\"Total Profit\"]', '2021-08-06 22:42:38', '2024-12-10 17:48:43'),
(6, 'Moderator', '[\"Support Ticket\",\"Organizer Mangement\"]', '2021-08-07 22:14:34', '2024-12-26 14:02:28'),
(14, 'Supervisor', NULL, '2021-11-24 22:48:53', '2021-11-24 23:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `categories_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `about_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `featured_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `features_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `how_work_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `testimonials_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `partner_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `footer_section_status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `categories_section_status`, `about_section_status`, `featured_section_status`, `features_section_status`, `how_work_section_status`, `testimonials_section_status`, `partner_section_status`, `footer_section_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 0, 0, 1, '2021-12-11 00:55:13', '2024-12-02 19:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `section_titles`
--

CREATE TABLE `section_titles` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `event_section_title` varchar(255) DEFAULT NULL,
  `category_section_title` varchar(255) DEFAULT NULL,
  `featured_instructors_section_title` varchar(255) DEFAULT NULL,
  `testimonials_section_title` varchar(255) DEFAULT NULL,
  `features_section_title` varchar(255) DEFAULT NULL,
  `blog_section_title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `section_titles`
--

INSERT INTO `section_titles` (`id`, `language_id`, `event_section_title`, `category_section_title`, `featured_instructors_section_title`, `testimonials_section_title`, `features_section_title`, `blog_section_title`, `created_at`, `updated_at`) VALUES
(1, 8, 'Explore Our Events', 'Explore Category', 'Our Instructors', 'Customer Feedbacks', 'Our Features', 'Latest Blog', '2021-10-05 03:30:05', '2022-06-06 21:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `meta_keyword_home` varchar(255) DEFAULT NULL,
  `meta_description_home` text,
  `meta_keyword_event` varchar(255) DEFAULT NULL,
  `meta_description_event` text,
  `meta_keyword_organizer` varchar(255) DEFAULT NULL,
  `meta_description_organizer` text,
  `meta_keyword_shop` varchar(255) DEFAULT NULL,
  `meta_description_shop` text,
  `meta_keyword_blog` varchar(255) DEFAULT NULL,
  `meta_description_blog` text,
  `meta_keyword_faq` varchar(255) DEFAULT NULL,
  `meta_description_faq` text,
  `meta_keyword_contact` varchar(255) DEFAULT NULL,
  `meta_description_contact` text,
  `meta_description_about` varchar(255) DEFAULT NULL,
  `meta_keyword_about` varchar(255) DEFAULT NULL,
  `meta_keyword_customer_login` varchar(255) DEFAULT NULL,
  `meta_description_customer_login` text,
  `meta_keyword_customer_signup` varchar(255) DEFAULT NULL,
  `meta_description_customer_signup` text,
  `meta_keyword_organizer_login` varchar(255) DEFAULT NULL,
  `meta_description_organizer_login` text,
  `meta_keyword_organizer_signup` varchar(255) DEFAULT NULL,
  `meta_description_organizer_signup` text,
  `meta_keyword_customer_forget_password` varchar(255) DEFAULT NULL,
  `meta_description_customer_forget_password` text,
  `meta_keyword_organizer_forget_password` varchar(255) DEFAULT NULL,
  `meta_description_organizer_forget_password` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `language_id`, `meta_keyword_home`, `meta_description_home`, `meta_keyword_event`, `meta_description_event`, `meta_keyword_organizer`, `meta_description_organizer`, `meta_keyword_shop`, `meta_description_shop`, `meta_keyword_blog`, `meta_description_blog`, `meta_keyword_faq`, `meta_description_faq`, `meta_keyword_contact`, `meta_description_contact`, `meta_description_about`, `meta_keyword_about`, `meta_keyword_customer_login`, `meta_description_customer_login`, `meta_keyword_customer_signup`, `meta_description_customer_signup`, `meta_keyword_organizer_login`, `meta_description_organizer_login`, `meta_keyword_organizer_signup`, `meta_description_organizer_signup`, `meta_keyword_customer_forget_password`, `meta_description_customer_forget_password`, `meta_keyword_organizer_forget_password`, `meta_description_organizer_forget_password`, `created_at`, `updated_at`) VALUES
(2, 8, 'home', 'Home Description', 'Events', 'Event  Description', 'Organizer', 'Organizer Description', 'Shop', 'Shop Description', 'blog', 'Blog Description', 'faq', 'FAQ Description', 'contact', 'Contact Description', 'about us descriptions', 'about,us', 'login', 'Login Description', 'signup', 'Signup Description', 'organizer_login', 'Organizer Login Description', 'Organizer_signup', 'Organizer Signup Page', 'forget password', 'Forget Password Description', 'Organizer_forget', 'Organizer forget password', '2021-07-30 05:57:39', '2023-05-20 09:50:11');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language_id` int DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `text`, `days`, `charge`, `created_at`, `updated_at`) VALUES
(7, 'Method Two', 8, 'Method Two Shipping Charge', NULL, '10.00', '2022-06-26 00:31:09', '2023-05-06 10:40:35'),
(11, 'Method One', 8, 'Method One shipping charge', NULL, '12.00', '2022-07-01 23:06:39', '2023-05-06 10:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `shop_coupons`
--

CREATE TABLE `shop_coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` decimal(11,2) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `minimum_spend` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `social_medias`
--

CREATE TABLE `social_medias` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `serial_number` mediumint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `social_medias`
--

INSERT INTO `social_medias` (`id`, `icon`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(36, 'fab fa-facebook-f', 'https://www.facebook.com/s2ticketz', 1, '2021-11-20 03:01:42', '2024-12-09 21:29:05'),
(37, 'fab fa-twitter', 'https://twitter.com/s2ticketz', 3, '2021-11-20 03:03:22', '2024-12-09 21:28:58'),
(38, 'fab fa-instagram', 'https://www.instagram.com/s2ticketz/', 2, '2021-11-20 03:04:29', '2024-12-09 21:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` mediumint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` mediumint UNSIGNED NOT NULL,
  `country_code` char(2) NOT NULL,
  `fips_code` varchar(255) DEFAULT NULL,
  `iso2` varchar(255) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `wikiDataId` varchar(255) DEFAULT NULL COMMENT 'Rapid API GeoDB Cities'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  `ticket_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` longtext,
  `attachment` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '1-pending, 2-open, 3-closed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_message` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `user_type`, `admin_id`, `ticket_number`, `email`, `subject`, `description`, `attachment`, `status`, `created_at`, `updated_at`, `last_message`) VALUES
(19, 27, 'organizer', NULL, NULL, 's2eventzmdu@gmail.com', 'Payment Pending', 'Clear payment', NULL, 3, '2024-12-03 05:56:13', '2024-12-03 05:57:45', '2024-12-03 05:57:19'),
(20, 27, 'organizer', NULL, NULL, 's2eventzmdu@gmail.com', 'payment not clear', 'payment not clear', NULL, 3, '2024-12-03 21:00:49', '2024-12-03 21:01:28', '2024-12-03 21:01:16'),
(21, 41, 'customer', 2, NULL, 'karthicksivalakshmanan@gmail.com', 'test', 'test', NULL, 3, '2024-12-14 14:12:03', '2024-12-14 14:23:26', '2024-12-14 14:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_statuses`
--

CREATE TABLE `support_ticket_statuses` (
  `id` bigint UNSIGNED NOT NULL,
  `support_ticket_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `support_ticket_statuses`
--

INSERT INTO `support_ticket_statuses` (`id`, `support_ticket_status`, `created_at`, `updated_at`) VALUES
(1, 'active', '2022-06-25 03:52:18', '2023-01-29 10:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `rating` int DEFAULT '0',
  `comment` text NOT NULL,
  `serial_number` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `name`, `occupation`, `rating`, `comment`, `serial_number`, `created_at`, `updated_at`) VALUES
(6, 8, '6345065d82969.jpg', 'Jane Doe', 'Chief marketing officer', 5, 'Our service is free to users because vendors pay us when they receive web traffic. We list all vendors - not just those that pay us', 1, '2021-10-11 03:21:50', '2023-05-08 04:41:31'),
(9, 8, '63450650b0f0a.jpg', 'Jef Hardy', 'Chief executive officer (CEO)', 4, 'Our service is free to users because vendors pay us when they receive web traffic. We list all vendors - not  justfdfdhghdd ghdfghdfdg', 2, '2021-12-15 03:38:04', '2023-05-08 04:41:20'),
(10, 8, '63450657af7b1.jpg', 'Matt Hardy', 'Manager', 5, 'Our service is free to users because vendors pay us when they receive web traffic. We list all vendors - not  just those that pay us', 3, '2021-12-15 03:40:37', '2023-05-08 04:41:04'),
(15, 8, '64587ddb29fdc.jpg', 'Patty O’Furniture', 'Chief financial officer', 4, 'While lorem ipsum\'s still resembles classical Latin, it actually has no meaning whatsoever. As Cicero\'s text doesn', 4, '2023-05-08 04:43:07', '2023-05-08 04:43:59');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial_sections`
--

CREATE TABLE `testimonial_sections` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text,
  `image` varchar(255) DEFAULT NULL,
  `review_text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `testimonial_sections`
--

INSERT INTO `testimonial_sections` (`id`, `language_id`, `title`, `text`, `image`, `review_text`, `created_at`, `updated_at`) VALUES
(3, 8, 'What Our Clients Say about Us', '\"Working with S2Ticketz has been a game-changer for our events. The platform\'s ease of use and low commission rates allow us to focus on creating memorable experiences while maximizing our profits.\"', '629f26d7b602d.jpg', '12k Clients reviews', '2022-06-07 04:22:15', '2024-12-02 19:18:26'),
(4, 9, 'gdfsas', 'sdfa', '629f2792b156e.jpg', 'sfdaf', '2022-06-07 04:25:22', '2022-06-07 04:25:22'),
(5, 17, 'ما يقوله عملائنا عنا', 'الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار', '63d8ad0181103.png', '2k', '2023-01-31 05:54:09', '2023-01-31 05:54:09'),
(6, 22, 'ماذا يقول عملاؤنا عنا', 'وقبل وفنلندا اقتصادية كل, تسبب الأوربيين كلا كل. تطوير الساحة ا', '64587a5803048.jpg', 'ألف مراجعات العملاء', '2023-05-08 04:28:08', '2023-05-08 04:29:14');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `event_id` int NOT NULL,
  `event_type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `ticket_available_type` varchar(255) DEFAULT NULL,
  `ticket_available` int DEFAULT NULL,
  `max_ticket_buy_type` varchar(255) DEFAULT NULL,
  `max_buy_ticket` int DEFAULT NULL,
  `description` longtext,
  `pricing_type` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `f_price` float DEFAULT NULL,
  `early_bird_discount` varchar(255) NOT NULL DEFAULT 'disable',
  `early_bird_discount_amount` varchar(255) DEFAULT NULL,
  `early_bird_discount_type` varchar(255) DEFAULT NULL,
  `early_bird_discount_date` varchar(255) DEFAULT NULL,
  `early_bird_discount_time` varchar(255) DEFAULT NULL,
  `variations` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `event_id`, `event_type`, `title`, `ticket_available_type`, `ticket_available`, `max_ticket_buy_type`, `max_buy_ticket`, `description`, `pricing_type`, `price`, `f_price`, `early_bird_discount`, `early_bird_discount_amount`, `early_bird_discount_type`, `early_bird_discount_date`, `early_bird_discount_time`, `variations`, `created_at`, `updated_at`) VALUES
(173, 117, 'venue', NULL, 'unlimited', NULL, 'unlimited', NULL, NULL, 'variation', '0', 4299, 'disable', NULL, 'fixed', NULL, NULL, '[{\"name\":\"ANGEL PASS\",\"price\":\"2299\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":\"50\",\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null},{\"name\":\"STAG PASS\",\"price\":\"2499\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":\"50\",\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null},{\"name\":\"COUPLE PASS\",\"price\":\"4299\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":\"50\",\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null}]', '2024-12-03 02:07:13', '2024-12-10 13:03:22'),
(174, 119, 'venue', NULL, 'unlimited', NULL, 'unlimited', NULL, NULL, 'variation', NULL, 4999, 'disable', NULL, 'fixed', NULL, NULL, '[{\"name\":\"SINGLE ELITE PASS  (Unlimited Food & Without Drink)\",\"price\":\"3999\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":null,\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null},{\"name\":\"SINGLE ELITE PASS (Unlimited Food & Drink)\",\"price\":\"4999\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":null,\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null}]', '2024-12-10 11:46:48', '2024-12-10 17:36:19'),
(175, 120, 'venue', NULL, 'unlimited', NULL, 'unlimited', NULL, NULL, 'variation', NULL, 4499, 'disable', NULL, 'fixed', NULL, NULL, '[{\"name\":\"STAG\",\"price\":\"1999\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":null,\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null},{\"name\":\"ANGEL\",\"price\":\"1799\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":null,\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null},{\"name\":\"COUPLE\",\"price\":\"3499\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":null,\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null},{\"name\":\"FAMILY PACKAGE 2 ADULT + 1 KID ( Upto 10Years)\",\"price\":\"4499\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":null,\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null},{\"name\":\"FAMILY PACKAGE 2 ADULT + 2 KIDS  ( Upto 10Years)\",\"price\":\"5499\",\"ticket_available_type\":\"unlimited\",\"ticket_available\":null,\"max_ticket_buy_type\":\"unlimited\",\"v_max_ticket_buy\":null}]', '2024-12-19 18:44:22', '2024-12-19 19:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_contents`
--

CREATE TABLE `ticket_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint DEFAULT NULL,
  `ticket_id` bigint DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_contents`
--

INSERT INTO `ticket_contents` (`id`, `language_id`, `ticket_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 8, 155, 'Toyota Starlet', NULL, '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(2, 22, 155, 'Toyota Starlet', NULL, '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(3, 8, 154, 'fdsaf', NULL, '2023-05-13 11:20:35', '2023-05-13 11:20:35'),
(4, 22, 154, 'fdsaf', NULL, '2023-05-13 11:20:35', '2023-05-13 11:20:35'),
(5, 8, 113, 'Early bird discount ticket(fixed)', NULL, '2023-05-14 04:18:02', '2023-05-14 04:18:02'),
(6, 22, 113, 'تذكرة خصم مبكرة (ثابتة)', NULL, '2023-05-14 04:18:02', '2023-05-14 04:18:02'),
(7, 8, 156, 'Variation Wise Tickets', NULL, '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(8, 22, 156, 'تذاكر التغيير الحكيم', NULL, '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(9, 8, 157, 'Normal Ticket', NULL, '2023-05-14 04:50:48', '2023-05-14 04:50:48'),
(10, 22, 157, 'تذكرة عادية', NULL, '2023-05-14 04:50:48', '2023-05-14 04:50:48'),
(11, 8, 158, 'Free Ticket', NULL, '2023-05-14 05:18:02', '2023-05-14 05:18:02'),
(12, 22, 158, 'بطاقة مجانية', NULL, '2023-05-14 05:18:02', '2023-05-14 05:18:02'),
(13, 8, 159, 'Limited ticket', NULL, '2023-05-14 05:24:51', '2023-05-14 05:24:51'),
(14, 22, 159, 'تذكرة محدودة', NULL, '2023-05-14 05:24:51', '2023-05-14 05:24:51'),
(15, 8, 160, 'Normal Ticket (fixed discount)', NULL, '2023-05-14 05:28:23', '2023-05-14 05:28:23'),
(16, 22, 160, 'تذكرة عادية (خصم ثابت)', NULL, '2023-05-14 05:28:23', '2023-05-14 05:28:23'),
(17, 8, 161, 'Normal Ticket(percentage discount)', NULL, '2023-05-14 05:29:29', '2023-05-14 05:29:29'),
(18, 22, 161, 'تذكرة عادية (خصم بنسبة مئوية)', NULL, '2023-05-14 05:29:29', '2023-05-14 05:29:29'),
(19, 8, 162, 'Free Ticket (limited)', NULL, '2023-05-14 05:38:15', '2023-05-14 05:38:15'),
(20, 22, 162, 'بطاقة مجانية', NULL, '2023-05-14 05:38:15', '2023-05-14 05:38:15'),
(21, 8, 163, 'Normal Ticket', NULL, '2023-05-14 05:39:08', '2023-05-14 05:39:08'),
(22, 22, 163, 'تذكرة عادية', NULL, '2023-05-14 05:39:08', '2023-05-14 05:39:08'),
(23, 8, 164, 'All Tickets', NULL, '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(24, 22, 164, 'جميع التذاكر', NULL, '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(25, 8, 166, 'Free Ticket', NULL, '2023-05-14 09:22:52', '2023-05-14 09:22:52'),
(26, 22, 166, 'بطاقة مجانية', NULL, '2023-05-14 09:22:52', '2023-05-14 09:22:52'),
(27, 8, 167, 'Normal Ticket', NULL, '2023-05-14 09:23:26', '2023-05-14 09:23:26'),
(28, 22, 167, 'تذكرة عادية', NULL, '2023-05-14 09:23:26', '2023-05-14 09:23:26'),
(29, 8, 168, 'Variation Wise', NULL, '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(30, 22, 168, 'الاختلاف الحكيم', NULL, '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(31, 8, 169, 'Normal Discount', NULL, '2023-05-14 09:25:20', '2023-05-14 09:25:20'),
(32, 22, 169, 'خصم عادي', NULL, '2023-05-14 09:25:20', '2023-05-14 09:25:20'),
(33, 8, 170, 'Variation Discount', NULL, '2023-05-14 09:26:25', '2023-05-14 09:26:25'),
(34, 22, 170, 'خصم التغيير', NULL, '2023-05-14 09:26:25', '2023-05-14 09:26:25'),
(35, 8, 173, 'ULTRA VIBE - NEW YEAR 2025', NULL, '2024-12-03 02:07:13', '2024-12-10 13:03:22'),
(36, 8, 174, 'NAMMA OORU VIBES - NEW YEAR CELEBRATION', 'Note : Admission is permitted for one child below 10 years of age.', '2024-12-10 11:46:48', '2024-12-10 18:04:23'),
(37, 8, 175, 'NEW YEAR BASH 2025', NULL, '2024-12-19 18:44:22', '2024-12-19 18:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `country_code` char(3) NOT NULL,
  `timezone` varchar(125) NOT NULL DEFAULT '',
  `gmt_offset` float(10,2) DEFAULT NULL,
  `dst_offset` float(10,2) DEFAULT NULL,
  `raw_offset` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`country_code`, `timezone`, `gmt_offset`, `dst_offset`, `raw_offset`) VALUES
('AD', 'Europe/Andorra', 1.00, 2.00, 1.00),
('AE', 'Asia/Dubai', 4.00, 4.00, 4.00),
('AF', 'Asia/Kabul', 4.50, 4.50, 4.50),
('AG', 'America/Antigua', -4.00, -4.00, -4.00),
('AI', 'America/Anguilla', -4.00, -4.00, -4.00),
('AL', 'Europe/Tirane', 1.00, 2.00, 1.00),
('AM', 'Asia/Yerevan', 4.00, 4.00, 4.00),
('AO', 'Africa/Luanda', 1.00, 1.00, 1.00),
('AQ', 'Antarctica/Casey', 8.00, 8.00, 8.00),
('AQ', 'Antarctica/Davis', 7.00, 7.00, 7.00),
('AQ', 'Antarctica/DumontDUrville', 10.00, 10.00, 10.00),
('AQ', 'Antarctica/Mawson', 5.00, 5.00, 5.00),
('AQ', 'Antarctica/McMurdo', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Palmer', -3.00, -4.00, -4.00),
('AQ', 'Antarctica/Rothera', -3.00, -3.00, -3.00),
('AQ', 'Antarctica/South_Pole', 13.00, 12.00, 12.00),
('AQ', 'Antarctica/Syowa', 3.00, 3.00, 3.00),
('AQ', 'Antarctica/Vostok', 6.00, 6.00, 6.00),
('AR', 'America/Argentina/Buenos_Aires', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Catamarca', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Cordoba', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Jujuy', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/La_Rioja', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Mendoza', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Rio_Gallegos', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Salta', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Juan', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/San_Luis', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Tucuman', -3.00, -3.00, -3.00),
('AR', 'America/Argentina/Ushuaia', -3.00, -3.00, -3.00),
('AS', 'Pacific/Pago_Pago', -11.00, -11.00, -11.00),
('AT', 'Europe/Vienna', 1.00, 2.00, 1.00),
('AU', 'Antarctica/Macquarie', 11.00, 11.00, 11.00),
('AU', 'Australia/Adelaide', 10.50, 9.50, 9.50),
('AU', 'Australia/Brisbane', 10.00, 10.00, 10.00),
('AU', 'Australia/Broken_Hill', 10.50, 9.50, 9.50),
('AU', 'Australia/Currie', 11.00, 10.00, 10.00),
('AU', 'Australia/Darwin', 9.50, 9.50, 9.50),
('AU', 'Australia/Eucla', 8.75, 8.75, 8.75),
('AU', 'Australia/Hobart', 11.00, 10.00, 10.00),
('AU', 'Australia/Lindeman', 10.00, 10.00, 10.00),
('AU', 'Australia/Lord_Howe', 11.00, 10.50, 10.50),
('AU', 'Australia/Melbourne', 11.00, 10.00, 10.00),
('AU', 'Australia/Perth', 8.00, 8.00, 8.00),
('AU', 'Australia/Sydney', 11.00, 10.00, 10.00),
('AW', 'America/Aruba', -4.00, -4.00, -4.00),
('AX', 'Europe/Mariehamn', 2.00, 3.00, 2.00),
('AZ', 'Asia/Baku', 4.00, 5.00, 4.00),
('BA', 'Europe/Sarajevo', 1.00, 2.00, 1.00),
('BB', 'America/Barbados', -4.00, -4.00, -4.00),
('BD', 'Asia/Dhaka', 6.00, 6.00, 6.00),
('BE', 'Europe/Brussels', 1.00, 2.00, 1.00),
('BF', 'Africa/Ouagadougou', 0.00, 0.00, 0.00),
('BG', 'Europe/Sofia', 2.00, 3.00, 2.00),
('BH', 'Asia/Bahrain', 3.00, 3.00, 3.00),
('BI', 'Africa/Bujumbura', 2.00, 2.00, 2.00),
('BJ', 'Africa/Porto-Novo', 1.00, 1.00, 1.00),
('BL', 'America/St_Barthelemy', -4.00, -4.00, -4.00),
('BM', 'Atlantic/Bermuda', -4.00, -3.00, -4.00),
('BN', 'Asia/Brunei', 8.00, 8.00, 8.00),
('BO', 'America/La_Paz', -4.00, -4.00, -4.00),
('BQ', 'America/Kralendijk', -4.00, -4.00, -4.00),
('BR', 'America/Araguaina', -3.00, -3.00, -3.00),
('BR', 'America/Bahia', -3.00, -3.00, -3.00),
('BR', 'America/Belem', -3.00, -3.00, -3.00),
('BR', 'America/Boa_Vista', -4.00, -4.00, -4.00),
('BR', 'America/Campo_Grande', -3.00, -4.00, -4.00),
('BR', 'America/Cuiaba', -3.00, -4.00, -4.00),
('BR', 'America/Eirunepe', -5.00, -5.00, -5.00),
('BR', 'America/Fortaleza', -3.00, -3.00, -3.00),
('BR', 'America/Maceio', -3.00, -3.00, -3.00),
('BR', 'America/Manaus', -4.00, -4.00, -4.00),
('BR', 'America/Noronha', -2.00, -2.00, -2.00),
('BR', 'America/Porto_Velho', -4.00, -4.00, -4.00),
('BR', 'America/Recife', -3.00, -3.00, -3.00),
('BR', 'America/Rio_Branco', -5.00, -5.00, -5.00),
('BR', 'America/Santarem', -3.00, -3.00, -3.00),
('BR', 'America/Sao_Paulo', -2.00, -3.00, -3.00),
('BS', 'America/Nassau', -5.00, -4.00, -5.00),
('BT', 'Asia/Thimphu', 6.00, 6.00, 6.00),
('BW', 'Africa/Gaborone', 2.00, 2.00, 2.00),
('BY', 'Europe/Minsk', 3.00, 3.00, 3.00),
('BZ', 'America/Belize', -6.00, -6.00, -6.00),
('CA', 'America/Atikokan', -5.00, -5.00, -5.00),
('CA', 'America/Blanc-Sablon', -4.00, -4.00, -4.00),
('CA', 'America/Cambridge_Bay', -7.00, -6.00, -7.00),
('CA', 'America/Creston', -7.00, -7.00, -7.00),
('CA', 'America/Dawson', -8.00, -7.00, -8.00),
('CA', 'America/Dawson_Creek', -7.00, -7.00, -7.00),
('CA', 'America/Edmonton', -7.00, -6.00, -7.00),
('CA', 'America/Glace_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Goose_Bay', -4.00, -3.00, -4.00),
('CA', 'America/Halifax', -4.00, -3.00, -4.00),
('CA', 'America/Inuvik', -7.00, -6.00, -7.00),
('CA', 'America/Iqaluit', -5.00, -4.00, -5.00),
('CA', 'America/Moncton', -4.00, -3.00, -4.00),
('CA', 'America/Montreal', -5.00, -4.00, -5.00),
('CA', 'America/Nipigon', -5.00, -4.00, -5.00),
('CA', 'America/Pangnirtung', -5.00, -4.00, -5.00),
('CA', 'America/Rainy_River', -6.00, -5.00, -6.00),
('CA', 'America/Rankin_Inlet', -6.00, -5.00, -6.00),
('CA', 'America/Regina', -6.00, -6.00, -6.00),
('CA', 'America/Resolute', -6.00, -5.00, -6.00),
('CA', 'America/St_Johns', -3.50, -2.50, -3.50),
('CA', 'America/Swift_Current', -6.00, -6.00, -6.00),
('CA', 'America/Thunder_Bay', -5.00, -4.00, -5.00),
('CA', 'America/Toronto', -5.00, -4.00, -5.00),
('CA', 'America/Vancouver', -8.00, -7.00, -8.00),
('CA', 'America/Whitehorse', -8.00, -7.00, -8.00),
('CA', 'America/Winnipeg', -6.00, -5.00, -6.00),
('CA', 'America/Yellowknife', -7.00, -6.00, -7.00),
('CC', 'Indian/Cocos', 6.50, 6.50, 6.50),
('CD', 'Africa/Kinshasa', 1.00, 1.00, 1.00),
('CD', 'Africa/Lubumbashi', 2.00, 2.00, 2.00),
('CF', 'Africa/Bangui', 1.00, 1.00, 1.00),
('CG', 'Africa/Brazzaville', 1.00, 1.00, 1.00),
('CH', 'Europe/Zurich', 1.00, 2.00, 1.00),
('CI', 'Africa/Abidjan', 0.00, 0.00, 0.00),
('CK', 'Pacific/Rarotonga', -10.00, -10.00, -10.00),
('CL', 'America/Santiago', -3.00, -4.00, -4.00),
('CL', 'Pacific/Easter', -5.00, -6.00, -6.00),
('CM', 'Africa/Douala', 1.00, 1.00, 1.00),
('CN', 'Asia/Chongqing', 8.00, 8.00, 8.00),
('CN', 'Asia/Harbin', 8.00, 8.00, 8.00),
('CN', 'Asia/Kashgar', 8.00, 8.00, 8.00),
('CN', 'Asia/Shanghai', 8.00, 8.00, 8.00),
('CN', 'Asia/Urumqi', 8.00, 8.00, 8.00),
('CO', 'America/Bogota', -5.00, -5.00, -5.00),
('CR', 'America/Costa_Rica', -6.00, -6.00, -6.00),
('CU', 'America/Havana', -5.00, -4.00, -5.00),
('CV', 'Atlantic/Cape_Verde', -1.00, -1.00, -1.00),
('CW', 'America/Curacao', -4.00, -4.00, -4.00),
('CX', 'Indian/Christmas', 7.00, 7.00, 7.00),
('CY', 'Asia/Nicosia', 2.00, 3.00, 2.00),
('CZ', 'Europe/Prague', 1.00, 2.00, 1.00),
('DE', 'Europe/Berlin', 1.00, 2.00, 1.00),
('DE', 'Europe/Busingen', 1.00, 2.00, 1.00),
('DJ', 'Africa/Djibouti', 3.00, 3.00, 3.00),
('DK', 'Europe/Copenhagen', 1.00, 2.00, 1.00),
('DM', 'America/Dominica', -4.00, -4.00, -4.00),
('DO', 'America/Santo_Domingo', -4.00, -4.00, -4.00),
('DZ', 'Africa/Algiers', 1.00, 1.00, 1.00),
('EC', 'America/Guayaquil', -5.00, -5.00, -5.00),
('EC', 'Pacific/Galapagos', -6.00, -6.00, -6.00),
('EE', 'Europe/Tallinn', 2.00, 3.00, 2.00),
('EG', 'Africa/Cairo', 2.00, 2.00, 2.00),
('EH', 'Africa/El_Aaiun', 0.00, 0.00, 0.00),
('ER', 'Africa/Asmara', 3.00, 3.00, 3.00),
('ES', 'Africa/Ceuta', 1.00, 2.00, 1.00),
('ES', 'Atlantic/Canary', 0.00, 1.00, 0.00),
('ES', 'Europe/Madrid', 1.00, 2.00, 1.00),
('ET', 'Africa/Addis_Ababa', 3.00, 3.00, 3.00),
('FI', 'Europe/Helsinki', 2.00, 3.00, 2.00),
('FJ', 'Pacific/Fiji', 13.00, 12.00, 12.00),
('FK', 'Atlantic/Stanley', -3.00, -3.00, -3.00),
('FM', 'Pacific/Chuuk', 10.00, 10.00, 10.00),
('FM', 'Pacific/Kosrae', 11.00, 11.00, 11.00),
('FM', 'Pacific/Pohnpei', 11.00, 11.00, 11.00),
('FO', 'Atlantic/Faroe', 0.00, 1.00, 0.00),
('FR', 'Europe/Paris', 1.00, 2.00, 1.00),
('GA', 'Africa/Libreville', 1.00, 1.00, 1.00),
('GB', 'Europe/London', 0.00, 1.00, 0.00),
('GD', 'America/Grenada', -4.00, -4.00, -4.00),
('GE', 'Asia/Tbilisi', 4.00, 4.00, 4.00),
('GF', 'America/Cayenne', -3.00, -3.00, -3.00),
('GG', 'Europe/Guernsey', 0.00, 1.00, 0.00),
('GH', 'Africa/Accra', 0.00, 0.00, 0.00),
('GI', 'Europe/Gibraltar', 1.00, 2.00, 1.00),
('GL', 'America/Danmarkshavn', 0.00, 0.00, 0.00),
('GL', 'America/Godthab', -3.00, -2.00, -3.00),
('GL', 'America/Scoresbysund', -1.00, 0.00, -1.00),
('GL', 'America/Thule', -4.00, -3.00, -4.00),
('GM', 'Africa/Banjul', 0.00, 0.00, 0.00),
('GN', 'Africa/Conakry', 0.00, 0.00, 0.00),
('GP', 'America/Guadeloupe', -4.00, -4.00, -4.00),
('GQ', 'Africa/Malabo', 1.00, 1.00, 1.00),
('GR', 'Europe/Athens', 2.00, 3.00, 2.00),
('GS', 'Atlantic/South_Georgia', -2.00, -2.00, -2.00),
('GT', 'America/Guatemala', -6.00, -6.00, -6.00),
('GU', 'Pacific/Guam', 10.00, 10.00, 10.00),
('GW', 'Africa/Bissau', 0.00, 0.00, 0.00),
('GY', 'America/Guyana', -4.00, -4.00, -4.00),
('HK', 'Asia/Hong_Kong', 8.00, 8.00, 8.00),
('HN', 'America/Tegucigalpa', -6.00, -6.00, -6.00),
('HR', 'Europe/Zagreb', 1.00, 2.00, 1.00),
('HT', 'America/Port-au-Prince', -5.00, -4.00, -5.00),
('HU', 'Europe/Budapest', 1.00, 2.00, 1.00),
('ID', 'Asia/Jakarta', 7.00, 7.00, 7.00),
('ID', 'Asia/Jayapura', 9.00, 9.00, 9.00),
('ID', 'Asia/Makassar', 8.00, 8.00, 8.00),
('ID', 'Asia/Pontianak', 7.00, 7.00, 7.00),
('IE', 'Europe/Dublin', 0.00, 1.00, 0.00),
('IL', 'Asia/Jerusalem', 2.00, 3.00, 2.00),
('IM', 'Europe/Isle_of_Man', 0.00, 1.00, 0.00),
('IN', 'Asia/Kolkata', 5.50, 5.50, 5.50),
('IO', 'Indian/Chagos', 6.00, 6.00, 6.00),
('IQ', 'Asia/Baghdad', 3.00, 3.00, 3.00),
('IR', 'Asia/Tehran', 3.50, 4.50, 3.50),
('IS', 'Atlantic/Reykjavik', 0.00, 0.00, 0.00),
('IT', 'Europe/Rome', 1.00, 2.00, 1.00),
('JE', 'Europe/Jersey', 0.00, 1.00, 0.00),
('JM', 'America/Jamaica', -5.00, -5.00, -5.00),
('JO', 'Asia/Amman', 2.00, 3.00, 2.00),
('JP', 'Asia/Tokyo', 9.00, 9.00, 9.00),
('KE', 'Africa/Nairobi', 3.00, 3.00, 3.00),
('KG', 'Asia/Bishkek', 6.00, 6.00, 6.00),
('KH', 'Asia/Phnom_Penh', 7.00, 7.00, 7.00),
('KI', 'Pacific/Enderbury', 13.00, 13.00, 13.00),
('KI', 'Pacific/Kiritimati', 14.00, 14.00, 14.00),
('KI', 'Pacific/Tarawa', 12.00, 12.00, 12.00),
('KM', 'Indian/Comoro', 3.00, 3.00, 3.00),
('KN', 'America/St_Kitts', -4.00, -4.00, -4.00),
('KP', 'Asia/Pyongyang', 9.00, 9.00, 9.00),
('KR', 'Asia/Seoul', 9.00, 9.00, 9.00),
('KW', 'Asia/Kuwait', 3.00, 3.00, 3.00),
('KY', 'America/Cayman', -5.00, -5.00, -5.00),
('KZ', 'Asia/Almaty', 6.00, 6.00, 6.00),
('KZ', 'Asia/Aqtau', 5.00, 5.00, 5.00),
('KZ', 'Asia/Aqtobe', 5.00, 5.00, 5.00),
('KZ', 'Asia/Oral', 5.00, 5.00, 5.00),
('KZ', 'Asia/Qyzylorda', 6.00, 6.00, 6.00),
('LA', 'Asia/Vientiane', 7.00, 7.00, 7.00),
('LB', 'Asia/Beirut', 2.00, 3.00, 2.00),
('LC', 'America/St_Lucia', -4.00, -4.00, -4.00),
('LI', 'Europe/Vaduz', 1.00, 2.00, 1.00),
('LK', 'Asia/Colombo', 5.50, 5.50, 5.50),
('LR', 'Africa/Monrovia', 0.00, 0.00, 0.00),
('LS', 'Africa/Maseru', 2.00, 2.00, 2.00),
('LT', 'Europe/Vilnius', 2.00, 3.00, 2.00),
('LU', 'Europe/Luxembourg', 1.00, 2.00, 1.00),
('LV', 'Europe/Riga', 2.00, 3.00, 2.00),
('LY', 'Africa/Tripoli', 2.00, 2.00, 2.00),
('MA', 'Africa/Casablanca', 0.00, 0.00, 0.00),
('MC', 'Europe/Monaco', 1.00, 2.00, 1.00),
('MD', 'Europe/Chisinau', 2.00, 3.00, 2.00),
('ME', 'Europe/Podgorica', 1.00, 2.00, 1.00),
('MF', 'America/Marigot', -4.00, -4.00, -4.00),
('MG', 'Indian/Antananarivo', 3.00, 3.00, 3.00),
('MH', 'Pacific/Kwajalein', 12.00, 12.00, 12.00),
('MH', 'Pacific/Majuro', 12.00, 12.00, 12.00),
('MK', 'Europe/Skopje', 1.00, 2.00, 1.00),
('ML', 'Africa/Bamako', 0.00, 0.00, 0.00),
('MM', 'Asia/Rangoon', 6.50, 6.50, 6.50),
('MN', 'Asia/Choibalsan', 8.00, 8.00, 8.00),
('MN', 'Asia/Hovd', 7.00, 7.00, 7.00),
('MN', 'Asia/Ulaanbaatar', 8.00, 8.00, 8.00),
('MO', 'Asia/Macau', 8.00, 8.00, 8.00),
('MP', 'Pacific/Saipan', 10.00, 10.00, 10.00),
('MQ', 'America/Martinique', -4.00, -4.00, -4.00),
('MR', 'Africa/Nouakchott', 0.00, 0.00, 0.00),
('MS', 'America/Montserrat', -4.00, -4.00, -4.00),
('MT', 'Europe/Malta', 1.00, 2.00, 1.00),
('MU', 'Indian/Mauritius', 4.00, 4.00, 4.00),
('MV', 'Indian/Maldives', 5.00, 5.00, 5.00),
('MW', 'Africa/Blantyre', 2.00, 2.00, 2.00),
('MX', 'America/Bahia_Banderas', -6.00, -5.00, -6.00),
('MX', 'America/Cancun', -6.00, -5.00, -6.00),
('MX', 'America/Chihuahua', -7.00, -6.00, -7.00),
('MX', 'America/Hermosillo', -7.00, -7.00, -7.00),
('MX', 'America/Matamoros', -6.00, -5.00, -6.00),
('MX', 'America/Mazatlan', -7.00, -6.00, -7.00),
('MX', 'America/Merida', -6.00, -5.00, -6.00),
('MX', 'America/Mexico_City', -6.00, -5.00, -6.00),
('MX', 'America/Monterrey', -6.00, -5.00, -6.00),
('MX', 'America/Ojinaga', -7.00, -6.00, -7.00),
('MX', 'America/Santa_Isabel', -8.00, -7.00, -8.00),
('MX', 'America/Tijuana', -8.00, -7.00, -8.00),
('MY', 'Asia/Kuala_Lumpur', 8.00, 8.00, 8.00),
('MY', 'Asia/Kuching', 8.00, 8.00, 8.00),
('MZ', 'Africa/Maputo', 2.00, 2.00, 2.00),
('NA', 'Africa/Windhoek', 2.00, 1.00, 1.00),
('NC', 'Pacific/Noumea', 11.00, 11.00, 11.00),
('NE', 'Africa/Niamey', 1.00, 1.00, 1.00),
('NF', 'Pacific/Norfolk', 11.50, 11.50, 11.50),
('NG', 'Africa/Lagos', 1.00, 1.00, 1.00),
('NI', 'America/Managua', -6.00, -6.00, -6.00),
('NL', 'Europe/Amsterdam', 1.00, 2.00, 1.00),
('NO', 'Europe/Oslo', 1.00, 2.00, 1.00),
('NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
('NR', 'Pacific/Nauru', 12.00, 12.00, 12.00),
('NU', 'Pacific/Niue', -11.00, -11.00, -11.00),
('NZ', 'Pacific/Auckland', 13.00, 12.00, 12.00),
('NZ', 'Pacific/Chatham', 13.75, 12.75, 12.75),
('OM', 'Asia/Muscat', 4.00, 4.00, 4.00),
('PA', 'America/Panama', -5.00, -5.00, -5.00),
('PE', 'America/Lima', -5.00, -5.00, -5.00),
('PF', 'Pacific/Gambier', -9.00, -9.00, -9.00),
('PF', 'Pacific/Marquesas', -9.50, -9.50, -9.50),
('PF', 'Pacific/Tahiti', -10.00, -10.00, -10.00),
('PG', 'Pacific/Port_Moresby', 10.00, 10.00, 10.00),
('PH', 'Asia/Manila', 8.00, 8.00, 8.00),
('PK', 'Asia/Karachi', 5.00, 5.00, 5.00),
('PL', 'Europe/Warsaw', 1.00, 2.00, 1.00),
('PM', 'America/Miquelon', -3.00, -2.00, -3.00),
('PN', 'Pacific/Pitcairn', -8.00, -8.00, -8.00),
('PR', 'America/Puerto_Rico', -4.00, -4.00, -4.00),
('PS', 'Asia/Gaza', 2.00, 3.00, 2.00),
('PS', 'Asia/Hebron', 2.00, 3.00, 2.00),
('PT', 'Atlantic/Azores', -1.00, 0.00, -1.00),
('PT', 'Atlantic/Madeira', 0.00, 1.00, 0.00),
('PT', 'Europe/Lisbon', 0.00, 1.00, 0.00),
('PW', 'Pacific/Palau', 9.00, 9.00, 9.00),
('PY', 'America/Asuncion', -3.00, -4.00, -4.00),
('QA', 'Asia/Qatar', 3.00, 3.00, 3.00),
('RE', 'Indian/Reunion', 4.00, 4.00, 4.00),
('RO', 'Europe/Bucharest', 2.00, 3.00, 2.00),
('RS', 'Europe/Belgrade', 1.00, 2.00, 1.00),
('RU', 'Asia/Anadyr', 12.00, 12.00, 12.00),
('RU', 'Asia/Irkutsk', 9.00, 9.00, 9.00),
('RU', 'Asia/Kamchatka', 12.00, 12.00, 12.00),
('RU', 'Asia/Khandyga', 10.00, 10.00, 10.00),
('RU', 'Asia/Krasnoyarsk', 8.00, 8.00, 8.00),
('RU', 'Asia/Magadan', 12.00, 12.00, 12.00),
('RU', 'Asia/Novokuznetsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Novosibirsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Omsk', 7.00, 7.00, 7.00),
('RU', 'Asia/Sakhalin', 11.00, 11.00, 11.00),
('RU', 'Asia/Ust-Nera', 11.00, 11.00, 11.00),
('RU', 'Asia/Vladivostok', 11.00, 11.00, 11.00),
('RU', 'Asia/Yakutsk', 10.00, 10.00, 10.00),
('RU', 'Asia/Yekaterinburg', 6.00, 6.00, 6.00),
('RU', 'Europe/Kaliningrad', 3.00, 3.00, 3.00),
('RU', 'Europe/Moscow', 4.00, 4.00, 4.00),
('RU', 'Europe/Samara', 4.00, 4.00, 4.00),
('RU', 'Europe/Volgograd', 4.00, 4.00, 4.00),
('RW', 'Africa/Kigali', 2.00, 2.00, 2.00),
('SA', 'Asia/Riyadh', 3.00, 3.00, 3.00),
('SB', 'Pacific/Guadalcanal', 11.00, 11.00, 11.00),
('SC', 'Indian/Mahe', 4.00, 4.00, 4.00),
('SD', 'Africa/Khartoum', 3.00, 3.00, 3.00),
('SE', 'Europe/Stockholm', 1.00, 2.00, 1.00),
('SG', 'Asia/Singapore', 8.00, 8.00, 8.00),
('SH', 'Atlantic/St_Helena', 0.00, 0.00, 0.00),
('SI', 'Europe/Ljubljana', 1.00, 2.00, 1.00),
('SJ', 'Arctic/Longyearbyen', 1.00, 2.00, 1.00),
('SK', 'Europe/Bratislava', 1.00, 2.00, 1.00),
('SL', 'Africa/Freetown', 0.00, 0.00, 0.00),
('SM', 'Europe/San_Marino', 1.00, 2.00, 1.00),
('SN', 'Africa/Dakar', 0.00, 0.00, 0.00),
('SO', 'Africa/Mogadishu', 3.00, 3.00, 3.00),
('SR', 'America/Paramaribo', -3.00, -3.00, -3.00),
('SS', 'Africa/Juba', 3.00, 3.00, 3.00),
('ST', 'Africa/Sao_Tome', 0.00, 0.00, 0.00),
('SV', 'America/El_Salvador', -6.00, -6.00, -6.00),
('SX', 'America/Lower_Princes', -4.00, -4.00, -4.00),
('SY', 'Asia/Damascus', 2.00, 3.00, 2.00),
('SZ', 'Africa/Mbabane', 2.00, 2.00, 2.00),
('TC', 'America/Grand_Turk', -5.00, -4.00, -5.00),
('TD', 'Africa/Ndjamena', 1.00, 1.00, 1.00),
('TF', 'Indian/Kerguelen', 5.00, 5.00, 5.00),
('TG', 'Africa/Lome', 0.00, 0.00, 0.00),
('TH', 'Asia/Bangkok', 7.00, 7.00, 7.00),
('TJ', 'Asia/Dushanbe', 5.00, 5.00, 5.00),
('TK', 'Pacific/Fakaofo', 13.00, 13.00, 13.00),
('TL', 'Asia/Dili', 9.00, 9.00, 9.00),
('TM', 'Asia/Ashgabat', 5.00, 5.00, 5.00),
('TN', 'Africa/Tunis', 1.00, 1.00, 1.00),
('TO', 'Pacific/Tongatapu', 13.00, 13.00, 13.00),
('TR', 'Europe/Istanbul', 2.00, 3.00, 2.00),
('TT', 'America/Port_of_Spain', -4.00, -4.00, -4.00),
('TV', 'Pacific/Funafuti', 12.00, 12.00, 12.00),
('TW', 'Asia/Taipei', 8.00, 8.00, 8.00),
('TZ', 'Africa/Dar_es_Salaam', 3.00, 3.00, 3.00),
('UA', 'Europe/Kiev', 2.00, 3.00, 2.00),
('UA', 'Europe/Simferopol', 2.00, 4.00, 4.00),
('UA', 'Europe/Uzhgorod', 2.00, 3.00, 2.00),
('UA', 'Europe/Zaporozhye', 2.00, 3.00, 2.00),
('UG', 'Africa/Kampala', 3.00, 3.00, 3.00),
('UM', 'Pacific/Johnston', -10.00, -10.00, -10.00),
('UM', 'Pacific/Midway', -11.00, -11.00, -11.00),
('UM', 'Pacific/Wake', 12.00, 12.00, 12.00),
('US', 'America/Adak', -10.00, -9.00, -10.00),
('US', 'America/Anchorage', -9.00, -8.00, -9.00),
('US', 'America/Boise', -7.00, -6.00, -7.00),
('US', 'America/Chicago', -6.00, -5.00, -6.00),
('US', 'America/Denver', -7.00, -6.00, -7.00),
('US', 'America/Detroit', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Indianapolis', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Knox', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Marengo', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Petersburg', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Tell_City', -6.00, -5.00, -6.00),
('US', 'America/Indiana/Vevay', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Vincennes', -5.00, -4.00, -5.00),
('US', 'America/Indiana/Winamac', -5.00, -4.00, -5.00),
('US', 'America/Juneau', -9.00, -8.00, -9.00),
('US', 'America/Kentucky/Louisville', -5.00, -4.00, -5.00),
('US', 'America/Kentucky/Monticello', -5.00, -4.00, -5.00),
('US', 'America/Los_Angeles', -8.00, -7.00, -8.00),
('US', 'America/Menominee', -6.00, -5.00, -6.00),
('US', 'America/Metlakatla', -8.00, -8.00, -8.00),
('US', 'America/New_York', -5.00, -4.00, -5.00),
('US', 'America/Nome', -9.00, -8.00, -9.00),
('US', 'America/North_Dakota/Beulah', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/Center', -6.00, -5.00, -6.00),
('US', 'America/North_Dakota/New_Salem', -6.00, -5.00, -6.00),
('US', 'America/Phoenix', -7.00, -7.00, -7.00),
('US', 'America/Shiprock', -7.00, -6.00, -7.00),
('US', 'America/Sitka', -9.00, -8.00, -9.00),
('US', 'America/Yakutat', -9.00, -8.00, -9.00),
('US', 'Pacific/Honolulu', -10.00, -10.00, -10.00),
('UY', 'America/Montevideo', -2.00, -3.00, -3.00),
('UZ', 'Asia/Samarkand', 5.00, 5.00, 5.00),
('UZ', 'Asia/Tashkent', 5.00, 5.00, 5.00),
('VA', 'Europe/Vatican', 1.00, 2.00, 1.00),
('VC', 'America/St_Vincent', -4.00, -4.00, -4.00),
('VE', 'America/Caracas', -4.50, -4.50, -4.50),
('VG', 'America/Tortola', -4.00, -4.00, -4.00),
('VI', 'America/St_Thomas', -4.00, -4.00, -4.00),
('VN', 'Asia/Ho_Chi_Minh', 7.00, 7.00, 7.00),
('VU', 'Pacific/Efate', 11.00, 11.00, 11.00),
('WF', 'Pacific/Wallis', 12.00, 12.00, 12.00),
('WS', 'Pacific/Apia', 14.00, 13.00, 13.00),
('YE', 'Asia/Aden', 3.00, 3.00, 3.00),
('YT', 'Indian/Mayotte', 3.00, 3.00, 3.00),
('ZA', 'Africa/Johannesburg', 2.00, 2.00, 2.00),
('ZM', 'Africa/Lusaka', 2.00, 2.00, 2.00),
('ZW', 'Africa/Harare', 2.00, 2.00, 2.00);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transcation_id` varchar(255) DEFAULT NULL,
  `booking_id` varchar(255) DEFAULT NULL,
  `transcation_type` int DEFAULT NULL COMMENT '1=event, 2=product, 3= withdraw, 4= balance add, 5 = balance subtract',
  `customer_id` bigint DEFAULT NULL,
  `organizer_id` bigint DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `grand_total` double(8,2) DEFAULT NULL,
  `commission` float(8,2) DEFAULT '0.00',
  `tax` float(8,2) DEFAULT '0.00',
  `pre_balance` float(8,2) DEFAULT '0.00',
  `after_balance` float(8,2) DEFAULT '0.00',
  `gateway_type` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `currency_symbol_position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transcation_id`, `booking_id`, `transcation_type`, `customer_id`, `organizer_id`, `payment_status`, `payment_method`, `grand_total`, `commission`, `tax`, `pre_balance`, `after_balance`, `gateway_type`, `currency_symbol`, `currency_symbol_position`, `created_at`, `updated_at`) VALUES
(37, '1733736069', '46', 1, NULL, 27, '1', 'Razorpay', 1.00, 0.00, 0.18, 0.00, 1.00, 'online', '₹', 'left', '2024-12-09 14:51:09', '2024-12-09 14:51:09'),
(38, '1733738347', '47', 1, NULL, 27, '1', 'Razorpay', 1.00, 0.00, 0.18, 1.00, 2.00, 'online', '₹', 'left', '2024-12-09 15:29:07', '2024-12-09 15:29:07'),
(39, '1733754104', '48', 1, NULL, 27, '1', 'Razorpay', 1.00, 0.00, 0.18, 2.00, 3.00, 'online', '₹', 'left', '2024-12-09 19:51:44', '2024-12-09 19:51:44'),
(40, '1733815907', '49', 1, NULL, 27, '1', 'Razorpay', 1.00, 0.04, 0.05, 3.00, 3.96, 'online', '₹', 'left', '2024-12-10 13:01:47', '2024-12-10 13:01:47'),
(41, '1733816351', '50', 1, NULL, 30, '1', 'Razorpay', 1.00, 0.04, 0.05, 0.00, 0.96, 'online', '₹', 'left', '2024-12-10 13:09:11', '2024-12-10 13:09:11'),
(42, '1733817756', '51', 1, NULL, 30, '1', 'Razorpay', 1.00, 0.04, 0.05, 0.96, 1.92, 'online', '₹', 'left', '2024-12-10 13:32:36', '2024-12-10 13:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 -> banned or deactive, 1 -> active',
  `verification_token` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `edit_profile_status` tinyint UNSIGNED NOT NULL DEFAULT '0' COMMENT '0 -> not edited user profile, 1 -> edited user profile',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `variation_contents`
--

CREATE TABLE `variation_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `language_id` bigint DEFAULT NULL,
  `ticket_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_contents`
--

INSERT INTO `variation_contents` (`id`, `language_id`, `ticket_id`, `name`, `key`, `created_at`, `updated_at`) VALUES
(33, 8, 155, '234', '0', '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(34, 8, 155, '2323', '1', '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(35, 22, 155, 'ewwerwer', '0', '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(36, 22, 155, '234234', '1', '2023-05-13 11:17:48', '2023-05-13 11:17:48'),
(37, 8, 154, 'VIP en', '0', '2023-05-13 11:20:35', '2023-05-13 11:20:35'),
(38, 22, 154, 'VIP ar', '0', '2023-05-13 11:20:35', '2023-05-13 11:20:35'),
(39, 8, 156, 'Economy', '0', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(40, 8, 156, 'Business', '1', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(41, 8, 156, 'First', '2', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(42, 22, 156, 'اقتصاد', '0', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(43, 22, 156, 'عمل', '1', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(44, 22, 156, 'أولاً', '2', '2023-05-14 04:35:53', '2023-05-14 04:35:53'),
(45, 8, 164, 'Economy', '0', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(46, 8, 164, 'Business', '1', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(47, 8, 164, 'First', '2', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(48, 22, 164, 'اقتصاد', '0', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(49, 22, 164, 'عمل', '1', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(50, 22, 164, 'أولاً', '2', '2023-05-14 05:42:09', '2023-05-14 05:42:09'),
(51, 8, 168, 'Vip', '0', '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(52, 8, 168, 'Normal', '1', '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(53, 22, 168, 'كبار الشخصيات', '0', '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(54, 22, 168, 'طبيعي', '1', '2023-05-14 09:24:29', '2023-05-14 09:24:29'),
(67, 8, 170, 'Premium', '0', '2023-05-14 09:37:08', '2023-05-14 09:37:08'),
(68, 8, 170, 'First', '1', '2023-05-14 09:37:08', '2023-05-14 09:37:08'),
(69, 22, 170, 'غالي', '0', '2023-05-14 09:37:08', '2023-05-14 09:37:08'),
(70, 22, 170, 'أولاً', '1', '2023-05-14 09:37:08', '2023-05-14 09:37:08'),
(114, 8, 173, 'ANGEL PASS', '0', '2024-12-10 13:03:22', '2024-12-10 13:03:22'),
(115, 8, 173, 'STAG PASS', '1', '2024-12-10 13:03:22', '2024-12-10 13:03:22'),
(116, 8, 173, 'COUPLE PASS', '2', '2024-12-10 13:03:22', '2024-12-10 13:03:22'),
(124, 8, 174, 'SINGLE ELITE PASS  (Unlimited Food & Without Drink)', '0', '2024-12-10 18:04:23', '2024-12-10 18:04:23'),
(125, 8, 174, 'SINGLE ELITE PASS (Unlimited Food & Drink)', '1', '2024-12-10 18:04:23', '2024-12-10 18:04:23'),
(134, 8, 175, 'STAG', '0', '2024-12-19 19:31:12', '2024-12-19 19:31:12'),
(135, 8, 175, 'ANGEL', '1', '2024-12-19 19:31:12', '2024-12-19 19:31:12'),
(136, 8, 175, 'COUPLE', '2', '2024-12-19 19:31:12', '2024-12-19 19:31:12'),
(137, 8, 175, 'FAMILY PACKAGE 2 ADULT + 1 KID ( Upto 10Years)', '3', '2024-12-19 19:31:12', '2024-12-19 19:31:12'),
(138, 8, 175, 'FAMILY PACKAGE 2 ADULT + 2 KIDS  ( Upto 10Years)', '4', '2024-12-19 19:31:12', '2024-12-19 19:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` bigint NOT NULL,
  `event_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `organizer_id` int NOT NULL,
  `withdraw_id` varchar(255) DEFAULT NULL,
  `method_id` int NOT NULL,
  `amount` varchar(255) NOT NULL,
  `payable_amount` float(8,2) DEFAULT '0.00',
  `total_charge` float(8,2) DEFAULT '0.00',
  `additional_reference` longtext,
  `feilds` text NOT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0-pending, 1-approved, 2-decline',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_method_inputs`
--

CREATE TABLE `withdraw_method_inputs` (
  `id` bigint UNSIGNED NOT NULL,
  `withdraw_payment_method_id` int NOT NULL,
  `type` tinyint DEFAULT NULL COMMENT '1-text, 2-select, 3-checkbox, 4-textarea, 5-datepicker, 6-timepicker, 7-number',
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `required` tinyint NOT NULL DEFAULT '0' COMMENT '1-required, 0- optional',
  `order_number` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `withdraw_method_inputs`
--

INSERT INTO `withdraw_method_inputs` (`id`, `withdraw_payment_method_id`, `type`, `label`, `name`, `placeholder`, `required`, `order_number`, `created_at`, `updated_at`) VALUES
(17, 6, 1, 'Bank Account Number', 'Bank_Account_Number', 'Bank Account Number', 1, 2, '2024-12-03 02:24:06', '2024-12-03 02:25:50'),
(18, 6, 1, 'IFSC Code', 'IFSC_Code', 'IFSC Code', 1, 4, '2024-12-03 02:24:17', '2024-12-03 02:25:50'),
(19, 6, 1, 'Bank Branch & Area', 'Bank_Branch_&_Area', 'Bank Branch & Area', 1, 5, '2024-12-03 02:24:38', '2024-12-03 02:25:50'),
(20, 6, 1, 'Re-Enter Bank Account Number', 'Re-Enter_Bank_Account_Number', 'Re-Enter Bank Account Number', 1, 3, '2024-12-03 02:25:25', '2024-12-03 02:25:50'),
(21, 6, 1, 'Account  Holder Name', 'Account_Holder_Name', 'Account  Holder Name', 1, 1, '2024-12-03 02:25:47', '2024-12-03 02:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_method_options`
--

CREATE TABLE `withdraw_method_options` (
  `id` bigint UNSIGNED NOT NULL,
  `withdraw_method_input_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_payment_methods`
--

CREATE TABLE `withdraw_payment_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `fixed_charge` float(8,2) DEFAULT '0.00',
  `percentage_charge` float DEFAULT '0',
  `min_limit` varchar(255) NOT NULL,
  `max_limit` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `withdraw_payment_methods`
--

INSERT INTO `withdraw_payment_methods` (`id`, `fixed_charge`, `percentage_charge`, `min_limit`, `max_limit`, `name`, `status`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, '500', '100000', 'Bank Payout', 1, '2024-12-03 02:23:14', '2024-12-03 02:23:14');

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
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_test_ibfk_1` (`state_id`),
  ADD KEY `cities_test_ibfk_2` (`country_id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cookie_alerts_language_id_foreign` (`language_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earnings`
--
ALTER TABLE `earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_categories`
--
ALTER TABLE `event_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_contents`
--
ALTER TABLE `event_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_dates`
--
ALTER TABLE `event_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_features`
--
ALTER TABLE `event_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_feature_sections`
--
ALTER TABLE `event_feature_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_images`
--
ALTER TABLE `event_images`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `gooogle_calendar_infos`
--
ALTER TABLE `gooogle_calendar_infos`
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
-- Indexes for table `how_works`
--
ALTER TABLE `how_works`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_work_items`
--
ALTER TABLE `how_work_items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizers`
--
ALTER TABLE `organizers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organizer_infos`
--
ALTER TABLE `organizer_infos`
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
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner_sections`
--
ALTER TABLE `partner_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_invoices`
--
ALTER TABLE `payment_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `popups_language_id_foreign` (`language_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_contents`
--
ALTER TABLE `product_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_coupons`
--
ALTER TABLE `shop_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_medias`
--
ALTER TABLE `social_medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_region` (`country_id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_id_unique` (`email_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_statuses`
--
ALTER TABLE `support_ticket_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_contents`
--
ALTER TABLE `ticket_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`country_code`,`timezone`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variation_contents`
--
ALTER TABLE `variation_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_method_inputs`
--
ALTER TABLE `withdraw_method_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_method_options`
--
ALTER TABLE `withdraw_method_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_payment_methods`
--
ALTER TABLE `withdraw_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_sections`
--
ALTER TABLE `about_us_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `action_sections`
--
ALTER TABLE `action_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `blog_informations`
--
ALTER TABLE `blog_informations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `count_informations`
--
ALTER TABLE `count_informations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `earnings`
--
ALTER TABLE `earnings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `event_categories`
--
ALTER TABLE `event_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `event_contents`
--
ALTER TABLE `event_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `event_dates`
--
ALTER TABLE `event_dates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `event_features`
--
ALTER TABLE `event_features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `event_feature_sections`
--
ALTER TABLE `event_feature_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event_images`
--
ALTER TABLE `event_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `footer_contents`
--
ALTER TABLE `footer_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fun_fact_sections`
--
ALTER TABLE `fun_fact_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gooogle_calendar_infos`
--
ALTER TABLE `gooogle_calendar_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hero_sections`
--
ALTER TABLE `hero_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `how_works`
--
ALTER TABLE `how_works`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `how_work_items`
--
ALTER TABLE `how_work_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu_builders`
--
ALTER TABLE `menu_builders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `offline_gateways`
--
ALTER TABLE `offline_gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `online_gateways`
--
ALTER TABLE `online_gateways`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `organizers`
--
ALTER TABLE `organizers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `organizer_infos`
--
ALTER TABLE `organizer_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `page_contents`
--
ALTER TABLE `page_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `page_headings`
--
ALTER TABLE `page_headings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `partner_sections`
--
ALTER TABLE `partner_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_invoices`
--
ALTER TABLE `payment_invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_contents`
--
ALTER TABLE `product_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `push_subscriptions`
--
ALTER TABLE `push_subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quick_links`
--
ALTER TABLE `quick_links`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shop_coupons`
--
ALTER TABLE `shop_coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_medias`
--
ALTER TABLE `social_medias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `support_ticket_statuses`
--
ALTER TABLE `support_ticket_statuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `testimonial_sections`
--
ALTER TABLE `testimonial_sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `ticket_contents`
--
ALTER TABLE `ticket_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `variation_contents`
--
ALTER TABLE `variation_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `withdraw_method_inputs`
--
ALTER TABLE `withdraw_method_inputs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdraw_method_options`
--
ALTER TABLE `withdraw_method_options`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_payment_methods`
--
ALTER TABLE `withdraw_payment_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `cities_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `cookie_alerts`
--
ALTER TABLE `cookie_alerts`
  ADD CONSTRAINT `cookie_alerts_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `country_region_final` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
