-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 18, 2023 at 08:32 PM
-- Server version: 10.6.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u514176406_Hyiprio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `avatar`, `name`, `email`, `phone`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'global/images/dxGslh0Dni0sLub5YGVS.jpg', 'Paloma', 'admin@hyiprio.com', '01847305958', '$2y$10$tx26gtJdtzZFYlG4dz3BPec1WN3zTQJXhU8kfpSbGWooxOwHKVdre', 1, '2022-08-24 03:03:35', '2023-03-16 11:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cover` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_css`
--

CREATE TABLE `custom_css` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `css` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_css`
--

INSERT INTO `custom_css` (`id`, `css`, `created_at`, `updated_at`) VALUES
(1, '//The Custom CSS will be added on the site head tag \r\n.site-head-tag {\r\n	margin: 0;\r\n  	padding: 0;\r\n}', NULL, '2022-11-17 11:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `for` varchar(256) NOT NULL DEFAULT 'User',
  `banner` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `salutation` text DEFAULT NULL,
  `message_body` longtext NOT NULL,
  `button_level` varchar(255) DEFAULT NULL,
  `button_link` varchar(255) DEFAULT NULL,
  `footer_status` tinyint(1) NOT NULL DEFAULT 1,
  `footer_body` text DEFAULT NULL,
  `bottom_status` tinyint(1) NOT NULL DEFAULT 1,
  `bottom_title` varchar(255) DEFAULT NULL,
  `bottom_body` text DEFAULT NULL,
  `short_codes` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `code`, `for`, `banner`, `title`, `subject`, `salutation`, `message_body`, `button_level`, `button_link`, `footer_status`, `footer_body`, `bottom_status`, `bottom_title`, `bottom_body`, `short_codes`, `status`, `created_at`, `updated_at`) VALUES
(1, 'User Mail Send', 'user_mail', 'User', 'global/images/Uxp3vfYFFi4GuO95lyZn.jpg', 'Sample Email', '[[subject]] for [[full_name]]', 'Hi [[full_name]],', 'Thanks for joining us  [[site_title]]<br />\r\n<br />\r\n[[message]]<br />\r\n<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 'Login Your Account', 'https://gomeek.net/login', 0, 'Regards,<br />\r\n[[site_title]]', 0, 'What is [[site_title]]', 'Hyiprio is a visual asset manager made for collaboration. Build a central library for your team\'s visual assets. Empower creation and ensure consistency from your desktop.<br />\r\n<br />\r\n[[site_url]]', '[\"[[full_name]]\",\"[[site_url]]\",\"[[site_title]]\",\"[[subject]]\",\"[[message]]\"]', 1, NULL, '2023-03-15 07:54:04'),
(2, 'Subscriber Mail Send', 'subscriber_mail', 'Subscriber', NULL, 'Welcome to [[site_title]]', '[[subject]] for [[full_name]]', 'Hi [[full_name]],', 'Thanks for joining our platform! ---  [[site_title]]<br />\r\n<br />\r\n[[message]]<br />\r\n<br />\r\nAs a member of our platform, you can mange your account, buy or sell cryptocurrency, invest and earn profits.<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 'Login Your Account', 'https://hyiorio.com/login', 1, 'Thanks for joining our platform! ---  [[site_title]]<br />\r\n<br />\r\n[[message]]<br />\r\n<br />\r\nAs a member of our platform, you can mange your account, buy or sell cryptocurrency, invest and earn profits.<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 1, 'What is [[site_title]]', 'Hyiprio is a visual asset manager made for collaboration. Build a central library for your team\'s visual assets. Empower creation and ensure consistency from your desktop.<br />\r\n<br />\r\n[[site_url]]', '[\"[[site_url]]\",\"[[site_title]]\",\"[[subject]]\",\"[[message]]\"]', 0, NULL, '2022-12-10 00:37:30'),
(3, 'Email Verification', 'email_verification', 'User', NULL, 'Verify Email Address', 'Verify Email Address', 'Hi [[full_name]],', 'Hello!<br />\r\nPlease click the button below to verify your email address.', 'Verify Email Address', '[[token]]', 1, 'Regards,<br />\r\n[[site_title]]', 1, 'Verify Email Address', 'If you\'re having trouble clicking the \"Verify Email Address\" button, copy and paste the URL below into your web browser:[[token]]', '[\"[[token]]\",\"[[full_name]]\",\"[[site_title]]\",\"[[site_url]]\"]', 1, NULL, '2023-02-16 09:06:43'),
(4, 'Forget Password', 'user_password_change', 'User', NULL, 'User Password Change', 'User Forget Password', 'Hi user,', 'Please click the button below to Change the Password.', 'Reset Password', '[[token]]', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'User Password Change', '[[token]]', '[\"[[token]]\",\"[[site_title]]\",\"[[site_url]]\"]', 1, NULL, '2023-02-16 09:07:29'),
(5, 'User Investment', 'user_investment', 'User', 'global/images/3Z7UnXe62WeZkJdpSQic.jpg', 'You Invested on [[plan_name]]', 'Thanks for the Investment on [[site_title]]', 'Hi [[full_name]],', 'Hello!<br />\r\n[[txn]]. \'Successfully Investment<br />\r\n[[plan_name]]<br />\r\n[[invest_amount]]', 'Login Account', '[[token]]', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'Successfully Investment', '[[txn]]. \' Successfully Investment', '[\"[[full_name]]\",\"[[txn]]\",\"[[plan_name]]\",\"[[invest_amount]]\",\"[[site_title]]\",\"[[site_url]]\"]', 1, NULL, '2023-03-15 07:51:34'),
(6, 'User Account Disabled', 'user_account_disabled', 'User', NULL, 'Sorry to say that', 'Your Account is Disabled', 'Hi [[full_name]],', 'Your account is disabled for a serious cause. Sorry! you\'re unable to use your account again.', 'Contact Us', 'https://hyiprio.tdevs.co/contact', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'User Account Disabled', '[[full_name]]', '[\"[[full_name]]\",\"[[site_title]]\",\"[[site_url]]\"]', 0, NULL, '2022-12-05 02:03:19'),
(7, 'Manual Deposit request', 'manual_deposit_request', 'Admin', NULL, 'Manual Deposit request', 'Got a request for Manual Deposit', 'Hi Admin,', 'The manual deposit request details:<br />\r\n[[txn]]<br />\r\n[[gateway_name]]<br />\r\n[[deposit_amount]]', 'Review The requests', 'https://hyiprio.tdevs.co/admin', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'Manual Deposit request', '[[site_title]]', '[\"[[full_name]]\",\"[[txn]]\",\"[[gateway_name]]\",\"[[deposit_amount]]\",\"[[site_title]]\",\"[[site_url]]\"]', 0, NULL, '2023-02-04 02:27:15'),
(8, 'Withdraw Request', 'withdraw_request ', 'Admin', NULL, 'Withdraw Request', 'Got a Withdraw Request', 'Hi Admin,', 'Withdraw Request details:<br />\r\n[[txn]]<br />\r\n[[method_name]]<br />\r\n[[withdraw_amount]]', 'Withdraw Request', '[[token]]', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'Withdraw Request', '[[full_name]]', '[\"[[full_name]]\",\"[[txn]]\",\"[[method_name]]\",\"[[withdraw_amount]]\",\"[[site_title]]\",\"[[site_url]]\"]', 0, NULL, '2022-12-05 02:03:27'),
(9, 'Admin Forget Password', 'admin_forget_password', 'Admin', NULL, 'Admin Forget Password', 'Admin Forget Password', 'Hi Admin,', 'Please click the button below to reset your password', 'Password reset', '[[token]]', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'Withdraw Request', '[[full_name]]   <br />\r\n[[token]]', '[\"[[token]]\",\"[[site_title]]\",\"[[site_url]]\"]', 0, NULL, '2022-12-05 02:03:31'),
(10, 'Contact Mail Send', 'contact_mail', 'Admin', NULL, 'Welcome to [[site_title]]', '[[subject]] for [[full_name]]', 'Hi [[full_name]],', 'Thanks for joining our platform! ---  [[site_title]]<br />\r\n<br />\r\n[[message]]<br />\r\n[[full_name]]<br />\r\n[[email]]<br />\r\n<br />\r\nAs a member of our platform, you can mange your account, buy or sell cryptocurrency, invest and earn profits.<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 'Login Your Account', 'https://hyiorio.com/login', 1, 'Thanks for joining our platform! ---  [[site_title]]<br />\r\n<br />\r\n[[message]]<br />\r\n<br />\r\n<br />\r\nAs a member of our platform, you can mange your account, buy or sell cryptocurrency, invest and earn profits.<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 1, 'What is [[site_title]]', 'Hyiprio is a visual asset manager made for collaboration. Build a central library for your team\'s visual assets. Empower creation and ensure consistency from your desktop.<br />\r\n<br />\r\n[[site_url]]', '[\"[[site_url]]\",\"[[site_title]]\",\"[[full_name]]\",\"[[email]]\",\"[[subject]]\",\"[[message]]\"]', 0, NULL, '2022-12-05 02:03:36'),
(11, 'KYC Request', 'kyc_request', 'Admin', NULL, 'Welcome to [[site_title]]', '[[subject]] for [[full_name]]', 'Hi [[full_name]],', 'Thanks for joining our platform! ---  [[site_title]]<br />\r\n<br />\r\n[[full_name]]<br />\r\n[[email]]<br />\r\n<br />\r\nAs a member of our platform, you can mange your account, buy or sell cryptocurrency, invest and earn profits.<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 'Login Your Account', 'https://hyiorio.com/login', 1, 'Thanks for joining our platform! ---  [[site_title]]<br />\r\n<br />\r\n[[kyc_type]]<br />\r\n<br />\r\n<br />\r\nAs a member of our platform, you can mange your account, buy or sell cryptocurrency, invest and earn profits.<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 1, 'What is [[site_title]]', 'Hyiprio is a visual asset manager made for collaboration. Build a central library for your team\'s visual assets. Empower creation and ensure consistency from your desktop.<br />\r\n<br />\r\n[[site_url]]', '[\"[[site_url]]\",\"[[site_title]]\",\"[[full_name]]\",\"[[email]]\",\"[[kyc_type]]\"]', 0, NULL, '2023-01-30 05:12:10'),
(12, 'KYC Action', 'kyc_action', 'User', NULL, 'Welcome to [[site_title]]', '[[subject]] for [[full_name]]', 'Hi [[full_name]],', 'Thanks for joining our platform! ---  [[site_title]]<br />\r\n<br />\r\n[[message]]<br />\r\n[[full_name]]<br />\r\n[[email]]<br />\r\n<br />\r\nAs a member of our platform, you can mange your account, buy or sell cryptocurrency, invest and earn profits.<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 'Login Your Account', 'https://hyiorio.com/login', 1, 'Thanks for joining our platform! ---  [[site_title]]<br />\r\n<br />\r\n[[kyc_type]]<br />\r\n<br />\r\n<br />\r\nAs a member of our platform, you can mange your account, buy or sell cryptocurrency, invest and earn profits.<br />\r\n<br />\r\nFind out more about in - [[site_url]]', 1, 'What is [[site_title]]', 'Hyiprio is a visual asset manager made for collaboration. Build a central library for your team\'s visual assets. Empower creation and ensure consistency from your desktop.<br />\r\n<br />\r\n[[site_url]]', '[\"[[site_url]]\",\"[[site_title]]\",\"[[full_name]]\",\"[[email]]\",\"[[message]]\",\"[[kyc_type]]\"]', 0, NULL, '2023-01-30 05:12:19'),
(13, 'Invest ROI', 'invest_roi', 'User', 'global/images/3Z7UnXe62WeZkJdpSQic.jpg', 'You Invested on [[plan_name]]', 'Thanks for the Investment on [[site_title]]', 'Hi [[full_name]],', 'Hello!<br />\r\n[[txn]]. \'Successfully Investment<br />\r\n[[plan_name]]<br />\r\n[[invest_amount]]<br />\r\n[[roi]]', 'Login Account', 'hi', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'Successfully ROI', '[[txn]]. \' Successfully ROI', '[\"[[full_name]]\",\"[[txn]]\",\"[[plan_name]]\",\"[[invest_amount]]\",\"[[roi]]\",\"[[site_title]]\",\"[[site_url]]\"]', 0, NULL, '2023-01-30 05:11:41'),
(14, 'Investment End', 'investment_end', 'User', 'global/images/3Z7UnXe62WeZkJdpSQic.jpg', 'You Invested on [[plan_name]]', 'Thanks for the Investment on [[site_title]]', 'Hi [[full_name]],', 'Hello!<br />\r\n[[txn]]. \'Successfully Investment End<br />\r\n[[plan_name]]<br />\r\n[[invest_amount]]', 'Hello', '#', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'Successfully Investment', 'Successfully Investment End', '[\"[[full_name]]\",\"[[plan_name]]\",\"[[invest_amount]]\",\"[[site_title]]\",\"[[site_url]]\"]', 0, NULL, '2023-01-30 05:11:57'),
(15, 'Withdraw Request Action', 'withdraw_request_user', 'User', 'global/images/3Z7UnXe62WeZkJdpSQic.jpg', 'Withdraw Request', 'Got a Withdraw Request', 'Hi [[full_name]],', 'Withdraw Request details:<br />\r\n[[message]]<br />\r\n[[txn]]<br />\r\n[[method_name]]<br />\r\n[[withdraw_amount]]<br />\r\n[[status]]', 'Withdraw Request', '[[site_url]]', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'Withdraw Request', '[[full_name]]', '[\"[[full_name]]\",\"[[message]]\",\"[[txn]]\",\"[[method_name]]\",\"[[withdraw_amount]]\",\"[[site_title]]\",\"[[site_url]]\",\"[[status]]\"]', 0, NULL, '2023-01-30 05:11:57'),
(16, 'Manual Deposit request Action', 'user_manual_deposit_request', 'User', 'global/images/3Z7UnXe62WeZkJdpSQic.jpg', 'Manual Deposit request', 'Got a request for Manual Deposit', 'Hi [[full_name]],', 'The manual deposit request details:<br />\r\n[[message]]\r\n[[txn]]<br />\r\n[[gateway_name]]<br />\r\n[[deposit_amount]]\r\n[[status]]\r\n', 'Review The requests', '[[site_url]]', 1, 'Regards,<br />\r\n[[site_title]]', 0, 'Manual Deposit request', '[[full_name]]', '[\"[[full_name]]\",\"[[message]]\",\"[[txn]]\",\"[[gateway_name]]\",\"[[deposit_amount]]\",\"[[site_title]]\",\"[[site_url]]\",\"[[status]]\"]', 0, NULL, '2023-01-30 05:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('auto','manual') NOT NULL DEFAULT 'manual',
  `gateway_code` varchar(255) NOT NULL,
  `charge` double NOT NULL DEFAULT 0,
  `charge_type` enum('percentage','fixed') NOT NULL,
  `minimum_deposit` double NOT NULL,
  `maximum_deposit` double NOT NULL,
  `rate` double NOT NULL,
  `supported_currencies` text DEFAULT NULL,
  `currency` varchar(256) NOT NULL DEFAULT 'USD',
  `currency_symbol` varchar(256) NOT NULL DEFAULT '$',
  `credentials` text NOT NULL,
  `payment_details` longtext DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `logo`, `name`, `type`, `gateway_code`, `charge`, `charge_type`, `minimum_deposit`, `maximum_deposit`, `rate`, `supported_currencies`, `currency`, `currency_symbol`, `credentials`, `payment_details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'global/images/Wj9LkSsf99Y4mMy4mkFL.svg', 'Paypal', 'auto', 'paypal', 5, 'percentage', 10, 90000, 2, '[\"AUD\",\"BRL\",\"CAD\",\"CZK\",\"DKK\",\"EUR\",\"HKD\",\"HUF\",\"INR\",\"ILS\",\"JPY\",\"MYR\",\"MXN\",\"TWD\",\"NZD\",\"NOK\",\"PHP\",\"PLN\",\"GBP\",\"RUB\",\"SGD\",\"SEK\",\"CHF\",\"THB\",\"USD\"]', 'CAD', '$', '{\"client_id\":\"AUnfkQ3v2J-d5g-ZEq8l5Oosha8FmAJ3Z9jt71BkD6l-Z3FMIR5FmkYp_6QHwaYx0LvMNvHDsB9Vh84O\",\"client_secret\":\"EJjci35CFj762ut15pn0VWmojEG0GwE68byyHnBq_NoAXXW9mjkjdLFYLfVQwyLs8QAbP1QJAXPl5oAl\",\"app_id\":\"APP-80W284485P519543T\",\"mode\":\"sandbox\"}', '', 0, NULL, '2023-03-15 09:59:30'),
(2, 'global/gateway/stripe.png', 'Stripe', 'auto', 'stripe', 0, 'fixed', 10, 200, 1, '[\"USD\",\"AUD\",\"BRL\",\"CAD\",\"CHF\",\"DKK\",\"EUR\",\"GBP\",\"HKD\",\"INR\",\"JPY\",\"MXN\",\"MYR\",\"NOK\",\"NZD\",\"PLN\",\"SEK\",\"SGD\"]', 'USD', '$', '{\"stripe_key\":\"pk_test_51KHQhKAmfDlh6wQq4srkOEY3FkivTCXmRSb7bJqr90q3ZkVWAR2AkRWfKBnegpmKAHea5cNVAToiy7yoa3Q075mR00jlhXsZTO\",\"stripe_secret\":\"sk_test_51KHQhKAmfDlh6wQqXfg4ZScnTRahxbdXV0mKw30nOI4f8gtB2v5rho7IyJtZqkf8SwwuNgLTO2WPGFyk9vnFl8gO00MhSe8Kbj\"}', '', 0, NULL, '2023-03-15 09:59:37'),
(3, 'global/gateway/mollie.png', 'Mollie', 'auto', 'mollie', 0, 'fixed', 0, 0, 1, '[\"USD\",\"EUR\"]', 'EUR', '$', '{\"api_key\":\"test_intSTCDEBaDSu28D6DUpn5wnQhTnzB\"}', '', 0, NULL, '2023-03-15 09:59:44'),
(4, 'global/gateway/perfectmoney.png', 'Perfect Money', 'auto', 'perfectmoney', 0, 'fixed', 0, 0, 20, '[\"USD\",\"EUR\"]', 'USD', '$', '{\"PM_ACCOUNTID\":\"96793260\",\"PM_PASSPHRASE\":\"77887848a\",\"PM_MARCHANTID\":\"U36928259\",\"PM_MARCHANT_NAME\":\"tdevs\"}', '', 0, NULL, '2023-03-15 09:59:52'),
(5, 'global/gateway/coinbase.png', 'Coinbase', 'auto', 'coinbase', 0, 'fixed', 0, 0, 1, '[\"USD\",\"EUR\"]', 'USD', '$', '{\"apiKey\":\"8ef6c4ca-f5c7-4717-9d9a-002adf7e7590\",\"webhookSecret\":\"b789f547-8954-4880-89ae-5a0233006647\",\"apiVersion\":\"2018-03-22\"}', '', 0, NULL, '2023-03-15 10:00:03'),
(6, 'global/gateway/paystack.png', 'Paystack', 'auto', 'paystack', 0, 'fixed', 2, 5000, 500, '[\"NGN\",\"USD\",\"GHS\"]', 'GHS', '$', '{\"public_key\":\"pk_test_8e60e513e47ba5619ac0888c9fac99f2853641fa\",\"secret_key\":\"sk_test_e521a3c6d1c37897092868e02e0ddba8c3f0aa01\",\"merchant_email\":\"learn2222earn@gmail.com\"}', '', 0, NULL, '2023-03-15 10:00:10'),
(7, 'global/gateway/voguepay.png', 'Voguepay', 'auto', 'voguepay', 0, 'fixed', 10, 500, 2, '[\"NGN\"]', 'NGN', 'NGN', '{\"merchant_id\":\"sandbox_760e43f202878f651659820234cad9\"}', '', 0, NULL, '2023-03-15 10:00:18'),
(8, 'global/gateway/flutterwave.png', 'Flutterwave', 'auto', 'flutterwave', 0, 'fixed', 10, 500, 500, '[\"KES\",\"GHS\",\"NGN\",\"USD\",\"GBP\",\"EUR\",\"UGX\",\"TZS\"]', 'NGN', '$', '{\"public_key\":\"FLWPUBK_TEST-34d73043494d02b871d7ba051efa471f-X\",\"secret_key\":\"FLWSECK_TEST-efc192c9a48969fc259c517aef8bcc82-X\",\"encryption_key\":\"FLWSECK_TEST4a47bb501118\"}', '', 0, NULL, '2023-03-15 10:00:25'),
(9, 'global/gateway/coingate.png', 'CoinGate', 'auto', 'coingate', 0, 'fixed', 10, 500, 1, '[\"USD\"]', 'USD', '$', '{\"api_token\":\"NPfn5eAGjha_PqfQmC6F_rMA6_zaGVLmVk6Uvsfu\"}', '', 0, NULL, '2023-03-15 10:00:32'),
(10, 'global/gateway/monnify.svg', 'Monnify', 'auto', 'monnify', 0, 'fixed', 10, 500, 1, '[\"NGN\"]', 'NGN', '$', '{\"api_key\":\"MK_TEST_BDQKAE9QNX\",\"api_secret\":\"4PSEUWJJ1HAKEYPXTT375CR9Y1LLX369\",\"base_url\":\"https:\\/\\/sandbox.monnify.com\",\"contract_code\":\"0086188339\"}', '', 0, NULL, '2023-03-15 10:00:40'),
(11, 'global/gateway/securionpay.png', 'SecurionPay', 'auto', 'securionpay', 0, 'fixed', 10, 500, 444.81, '[\"NGN\"]', 'NGN', '$', '{\"public_key\":\"pk_test_7bkvbNaJzb1Eh2Egtp9NQ9Os\",\"secret_key\":\"sk_test_7bkvbSEKpHWR4bJL8qdoq7c9\"}', '', 0, NULL, '2023-03-15 10:00:46'),
(12, 'global/gateway/coinpayments.svg', 'CoinPayments', 'auto', 'coinpayments', 10, 'fixed', 10, 500, 444.81, '[\"BTC\", \"BTC.LN\", \"BCH\", \"LTC\", \"VLX\", \"VLX.Native\", \"APL\", \"ASK\", \"BCN\", \"BEAM\", \"BIZZ.TRC20\", \"BNB\", \"BNB.BSC\", \"BTCV\", \"BTG\", \"BTT.OLD\", \"BTT.TRC20\", \"CELO\", \"CLOAK\", \"CRW\", \"CURE\", \"cUSD\", \"USD\", \"CAD\", \"EUR\", \"ARS\", \"AUD\", \"AZN\", \"BGN\", \"BRL\", \"BYN\", \"CHF\", \"CLP\", \"CNY\", \"COP\", \"CZK\",\"DKK\", \"GBP\", \"GIP\", \"HKD\", \"HUF\", \"IDR\", \"ILS\", \"INR\", \"IRR\", \"IRT\", \"ISK\",\"JPY\",\"KRW\",\"LAK\",\"MKD\",\"MXN\",\"ZAR\",\"MYR\", \"NGN\", \"NOK\", \"NZD\", \"PEN\", \"PHP\", \"PKR\", \"PLN\", \"RON\", \"RUB\", \"SEK\", \"SGD\", \"THB\", \"TRY\", \"TWD\", \"UAH\", \"VND\"]', 'USD', '$', '{\"public_key\":\"234234\",\"private_key\":\"23432\",\"ipn_secret\":\"23423\",\"marchant_id\":\"23432\"}', '', 0, NULL, '2023-03-17 18:35:55'),
(15, 'global/images/xEkt58alLcaE826Ddw7c.png', 'Mobile Money (Manual)', 'manual', 'mobile-money', 2, 'fixed', 10, 5000, 1, NULL, 'USD', '$', '{\"1\":{\"name\":\"Mobile Money Number\",\"type\":\"text\",\"validation\":\"required\"},\"2\":{\"name\":\"Transaction Screenshot\",\"type\":\"file\",\"validation\":\"required\"}}', '<p>Mobile Money number: 01236547859</p>\n\n<p>It will take a maximum of 60 minutes to deposit manually</p>', 0, '2022-09-04 13:59:01', '2023-03-15 10:01:11'),
(16, 'global/images/7whR5ZpvyXddiTlm1cVh.png', 'Bank Transfer(Manual)', 'manual', 'bank-transfer', 2, 'percentage', 10, 90000, 1, NULL, 'USD', '$', '{\"1\":{\"name\":\"Bank Name\",\"type\":\"text\",\"validation\":\"required\"},\"2\":{\"name\":\"Bank Holder Name\",\"type\":\"text\",\"validation\":\"required\"},\"3\":{\"name\":\"IBN Number\",\"type\":\"text\",\"validation\":\"required\"},\"4\":{\"name\":\"Account Number\",\"type\":\"text\",\"validation\":\"required\"}}', '<p>Account Number: 2578-569645665</p>\n\n<p>Bank Name: <span>Bank of Baroda</span></p>', 0, '2022-09-17 17:48:58', '2023-03-15 10:01:19'),
(17, 'global/images/exmBpdop3n56VFLnetQ3.png', 'Teacher', 'manual', 'Trc-20', 0, 'percentage', 10, 100000, 1, NULL, 'USDT', 'USDT', '{\"1\":{\"name\":\"Payment proof\",\"type\":\"file\",\"validation\":\"required\"}}', '<p style=\"text-align:center;\">Scan the QR code below.  If necessary, copy the wallet address.</p>\n\n<p style=\"text-align:center;\"><br></p>\n\n<p style=\"text-align:center;\"><br></p>\n\n<p style=\"text-align:center;\"><br></p>\n\n<p style=\"text-align:center;\"><br></p>\n\n<p style=\"text-align:center;\">Remember to only send Tether trc-20 USDT.  Or you may lose your money.<br></p>', 1, '2023-03-15 10:03:00', '2023-03-15 10:45:50'),
(18, 'global/images/BgIzLQzraAkzeb2Fe19g.svg', 'Binance Pay,USDT,BTC,ETH', 'auto', 'payerurl', 0, 'percentage', 10, 200, 1, '[\"USDT\",\"BTC\",\"ETH\"]', 'USDT', '$', '{\"public_key\":\"a9a962212ebc1465a783ccebdaec89af\",\"private_key\":\"38e9db47a3226a3f8199c41dbf12e5e5\"}', '', 1, '2023-03-17 05:16:52', '2023-03-18 13:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `invests`
--

CREATE TABLE `invests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `schema_id` bigint(20) NOT NULL,
  `transaction_id` bigint(20) DEFAULT NULL,
  `invest_amount` double NOT NULL,
  `already_return_profit` int(11) NOT NULL DEFAULT 0,
  `total_profit_amount` double NOT NULL DEFAULT 0,
  `last_profit_time` datetime DEFAULT NULL,
  `next_profit_time` datetime DEFAULT NULL,
  `capital_back` int(11) DEFAULT NULL,
  `interest` int(11) DEFAULT NULL,
  `interest_type` varchar(256) DEFAULT NULL,
  `return_type` varchar(255) NOT NULL,
  `number_of_period` int(11) NOT NULL,
  `period_hours` int(11) DEFAULT NULL,
  `wallet` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invests`
--

INSERT INTO `invests` (`id`, `user_id`, `schema_id`, `transaction_id`, `invest_amount`, `already_return_profit`, `total_profit_amount`, `last_profit_time`, `next_profit_time`, `capital_back`, `interest`, `interest_type`, `return_type`, `number_of_period`, `period_hours`, `wallet`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 25, 2, 1, 0.06, '2023-03-18 04:36:01', '2023-03-19 04:36:01', 0, 3, 'percentage', 'period', 179, 24, 'main', 'ongoing', '2023-03-17 04:35:53', '2023-03-18 04:36:01'),
(2, 1, 1, 53, 2, 0, 0, NULL, '2023-03-19 20:08:45', 0, 3, 'percentage', 'period', 180, 24, 'main', 'ongoing', '2023-03-18 20:08:45', '2023-03-18 20:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kycs`
--

INSERT INTO `kycs` (`id`, `name`, `fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 'National ID Verification', '{\"1\":{\"name\":\"NID Number\",\"type\":\"text\",\"validation\":\"nullable\"},\"2\":{\"name\":\"Full Name\",\"type\":\"text\",\"validation\":\"required\"},\"3\":{\"name\":\"Front ID Card\",\"type\":\"file\",\"validation\":\"required\"},\"4\":{\"name\":\"Back ID Card\",\"type\":\"text\",\"validation\":\"required\"},\"5\":{\"name\":\"Hanad\",\"type\":\"file\",\"validation\":\"required\"}}', 1, '2022-11-09 13:02:58', '2023-03-15 10:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `landing_contents`
--

CREATE TABLE `landing_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_contents`
--

INSERT INTO `landing_contents` (`id`, `icon`, `title`, `description`, `type`, `created_at`, `updated_at`) VALUES
(5, 'global/images/GUe7aa3wR048JtwDTNum.png', 'Register Account', 'By Registering the website you will able to start your operation', 'howitworks', '2022-10-23 08:31:45', '2022-11-16 16:29:10'),
(6, 'global/images/P5xzjaQe7ylXm6qFP11B.png', 'Verify Email', 'After creating the account user need to verify the email for account purpose', 'howitworks', '2022-10-23 08:32:06', '2022-11-16 16:32:39'),
(7, 'anticon-credit-card', 'Automatic and Manual Gateway', 'It has the ability to deposit money manually as well as the ability to deposit money manually', 'whychooseus', '2022-10-23 08:50:21', '2023-03-15 20:15:13'),
(11, 'global/images/Upbk4eWUnmEbOUDb0S1n.png', 'Total Users', '1056', 'counter', '2022-10-23 09:25:59', '2023-03-15 09:06:07'),
(14, NULL, 'How does it work with two wallets?', 'There is a main wallet and a profit wallet.  Daily Earnings are added to your Profit Wallet.  Main wallet can be used for withdrawal and exchange.', 'faq', '2022-10-23 09:37:44', '2023-03-15 08:31:06'),
(15, NULL, 'Is there an option for manual Deposit?', 'They are there.  But it takes time.', 'faq', '2022-10-26 15:21:50', '2023-03-15 08:32:45'),
(16, 'global/images/aGCyaBe8AwtW7N2cYEFN.png', 'Verify KYC', 'Users\' KYC needs to verify to before making any withdrawals', 'howitworks', '2022-11-16 16:29:51', '2022-11-16 10:34:27'),
(17, 'global/images/nGSUZHiPXmm63xFi7xjc.png', 'Deposit Money', 'Users can deposit using any automatic or manual gateways', 'howitworks', '2022-11-16 16:30:20', '2022-11-16 10:34:17'),
(18, 'global/images/fjpDgKEU945IrHwrw4A9.png', 'Investment a plan', 'Users can invest to any the plan or schema to enjoy the profit which will add on profit wallet', 'howitworks', '2022-11-16 16:30:50', '2022-11-16 10:35:20'),
(19, 'global/images/VQ6BURZon0q6bC0JaUmp.png', 'Transfer Money', 'Users can transfer the fund to another user instantly', 'howitworks', '2022-11-16 16:31:41', '2022-11-16 16:32:49'),
(20, 'global/images/DJr551o3d9Rbnvi0K6MM.png', 'Refer to Friends', 'For referring to any friends user can generate the bonus', 'howitworks', '2022-11-16 10:36:25', '2022-11-16 10:36:25'),
(21, 'global/images/rGK3hXKEQJ0P5KUNZVBx.png', 'Withdraw and Enjoy', 'Withdraw can be performed in the main wallet and it will take a few time to complete', 'howitworks', '2022-11-16 22:08:05', '2022-11-16 22:08:05'),
(22, 'anticon anticon-bank', 'Ranking Badge System', 'Considering the income you receive, additional bonuses and allowances are given', 'whychooseus', '2022-11-16 22:17:03', '2023-03-15 09:32:33'),
(23, 'anticon anticon-wallet', 'Referral Level System', 'Promote among family members and friends if you want to earn more', 'whychooseus', '2022-11-16 22:17:56', '2023-03-15 09:34:27'),
(24, 'anticon anticon-lock', 'Secure Application', 'The security of your Account is enhanced by using the ever-advancing security methods', 'whychooseus', '2022-11-16 22:18:35', '2023-03-15 09:36:35'),
(25, 'global/images/4IbFwZ2PZa8nLudMHzSt.png', 'Total Deposit', '21453', 'counter', '2022-11-16 22:30:49', '2022-11-16 22:30:49'),
(26, 'global/images/brPxBdDNKkKu1oFb3uUl.png', 'Total Investment', '112549', 'counter', '2022-11-16 22:32:35', '2022-11-16 22:32:35'),
(27, 'global/images/cxq0OgALCgYjCCcoI6f2.png', 'Total Withdraw', '58694', 'counter', '2022-11-16 22:33:20', '2022-11-16 22:33:20'),
(28, NULL, 'How to Withdraw Money', 'Tether USDT can be redeemed in any cryptocurrency wallet with trc-20 facility.', 'faq', '2022-11-16 18:48:04', '2023-03-15 08:35:03'),
(29, NULL, 'How can I upgrade my Ranking', 'We reward you according to the amount of money you earn.  For that we will give you a rank certificate automatically.  For that you can apply for allowances from us.', 'faq', '2022-11-16 18:50:52', '2023-03-15 08:42:13'),
(30, NULL, 'How the Referral Levels works?', 'Invite your family members and friends through your referral link.  You will get a 2% reward if they deposit more than $1000 for the first time and the inviter will get a 3% reward if the people who join through your referral link invest more than $1000 for the first time in our 180 day package.  In addition, there is another invitation prize.\r\n\r\nIf invest $10 for the first time, you will get a $2 reward\r\nIf invest $100 for the first time, you will get a $7 reward\r\nIf invest $300 for the first time, you will get a $23 reward\r\nIf invest $1000 for the first time, you will get a $78 reward\r\nIf invest $3000 for the first time, you will get a $223reward\r\n\r\nIf they invest a second time, you get a 7% reward\r\n\r\nThere is no invitation limit.  Invite more and earn more.', 'faq', '2022-11-16 18:53:07', '2023-03-15 09:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `name`, `code`, `data`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hero Section', 'hero', '{\"hero_title\":\"Join Gomeek today to get 100% instant return on your investment\",\"hero_content\":\"We will create an investment plan for you to profit with many advantages\",\"hero_button1_icon\":\"anticon-user-add\",\"hero_button1_level\":\"Get Started\",\"hero_button1_url\":\"https:\\/\\/gomeek.net\\/register\",\"hero_button1_target\":\"_self\",\"hero_button2_icon\":\"anticon-fire\",\"hero_button2_lavel\":\"How it works\",\"hero_button2_url\":\"https:\\/\\/gomeek.net\\/how-it-works\",\"hero_button2_target\":\"_self\",\"hero_right_img\":\"global\\/images\\/4qoa67GxVECLruiLaAl5.png\",\"hero_right_top_img\":\"global\\/images\\/lLJT3xQhVp4mkOyxtRC3.png\"}', 1, '2022-10-22 13:54:01', '2023-03-15 09:49:42'),
(2, 'Schema Section', 'schema', '{\"title_small\":\"Our Investment Plans\",\"title_big\":\"The plans we offer is specifically made for you.\",\"left_top_img\":\"global\\/images\\/UHm2cfbMPGZmbZNT2bVC.png\"}', 1, '2022-10-22 13:54:48', '2023-03-18 18:47:16'),
(3, 'Calculation Section', 'calculation', '{\"calculation_title_small\":\"Investment Calculator\",\"calculation_title_big\":\"Plan Profit Calculation.\",\"intro_video\":\"https:\\/\\/vimeo.com\\/394343710\",\"calculation_left_img\":\"global\\/images\\/kY1GNdg0EXic9TuMMp4X.jpg\"}', 1, '2022-10-22 13:54:48', '2022-11-16 16:26:19'),
(4, 'How it works Section\n', 'howitworks', '{\"title_small\":\"How It Works\",\"title_big\":\"The steps are describe how the application works and what\'s inside\"}', 1, '2022-10-22 13:54:48', '2022-11-16 16:28:40'),
(5, 'Recent Section\n', 'recent', '{\"title_small\":\"Latest Investors and Withdraws\",\"title_big\":\"You can explore the live investments and withdraws\"}', 0, '2022-10-22 13:54:48', '2023-03-15 09:37:32'),
(6, 'Why Choose Us Section\n', 'whychooseus', '{\"title_small\":\"Why Choose Us\",\"title_big\":\"Explore Why You Will Choose Us.\",\"left_img\":\"global\\/images\\/kvyU9Mr9gYTrpoKNZZNi.jpg\",\"right_img\":\"global\\/images\\/XIeEtiyw8HzFLOK5lLch.png\"}', 1, '2022-10-22 13:54:48', '2022-11-16 22:12:46'),
(7, 'Counter Section\n', 'counter', '{\"counter_bg_img\":\"global\\/images\\/p7e2WARHpcYJbr7RlDDE.jpg\"}', 1, '2022-10-22 13:54:48', '2022-11-16 22:27:00'),
(8, 'FAQ Section\n', 'faq', '{\"faq_title_small\":\"Faq Questions\",\"faq_title_big\":\"Explore Your Questions.\",\"left_img\":\"global\\/images\\/sPRwlwtyJVvQ1DRqoACh.png\",\"title_small\":\"Faq Questions\",\"title_big\":\"Explore Your Questions.\"}', 1, '2022-10-22 13:54:48', '2022-11-17 17:27:24'),
(9, 'Call To Action\n', 'cta', '{\"cta_title\":\"We\'re a more than 1000+ members family, you can join with us with high confiden\",\"cta_button1_icon\":\"anticon-user-add\",\"cta_button1_level\":\"Join Us\",\"cta_button1_url\":\"https:\\/\\/gomeek.net\\/register\",\"cta_button1_target\":\"_self\",\"cta_button2_icon\":\"anticon-mail\",\"cta_button2_lavel\":\"Contact Us\",\"cta_button2_url\":\"https:\\/\\/gomeek.net\\/contact\",\"cta_button2_target\":\"_self\",\"cta_bg_img\":\"global\\/images\\/udMk5L0YXsXBK3mgRJQX.jpg\"}', 1, '2022-10-22 13:54:48', '2023-03-15 08:20:01'),
(10, 'Blog Section\n', 'blog', '{\"blog_title_small\":\"Our Blog Area\",\"blog_title_big\":\"Latest Announcements\"}', 0, '2022-10-22 13:54:48', '2023-03-15 08:15:13'),
(11, 'Gateway Section\n', 'gateway', '{\"title_small\":\"Payment Gateways\",\"title_big\":\"Payment Gateway We Accept\"}', 1, '2022-10-22 13:54:48', '2022-11-16 18:58:00'),
(12, 'Newslatter Section\n', 'newsletter', '[]', 1, '2022-10-22 13:54:48', '2022-10-26 18:07:58'),
(13, 'Footer Section\r\n', 'footer', '{\"widget_left_title\":\"About Gomeek\",\"widget_left_description\":\"High-performing and most popular Gomeek Investment Platform in modern times. Full fill the most user needs and distribute maximum profits.\",\"widget_title_1\":\"Base Navigation\",\"widget_title_2\":\"Important Links\",\"widget_title_3\":\"Company Essentials\",\"copyright_text\":\"Copyright \\u00a9Gomeek 2023. All rights reserved.\",\"right_img\":\"global\\/images\\/GAH1nccf5XhjretvfsYT.png\"}', 1, '2022-10-22 13:54:48', '2023-03-15 08:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `flag`, `name`, `locale`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'English', 'en', 1, 1, NULL, NULL),
(8, NULL, 'Spanish', 'es', 0, 1, '2022-10-05 19:17:20', '2022-11-17 12:10:51'),
(10, NULL, 'France', 'fr', 0, 1, '2022-11-07 01:23:27', '2022-11-17 12:11:19'),
(12, NULL, 'Sinhalese', 'si', 0, 0, '2023-03-15 07:59:47', '2023-03-15 08:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model` enum('user','admin') NOT NULL DEFAULT 'user',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `attach` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_08_16_143134_create_settings_table', 1),
(6, '2022_08_17_151449_create_admins_table', 1),
(7, '2022_08_18_043158_create_permission_tables', 1),
(8, '2022_08_20_094148_create_schedules_table', 1),
(9, '2022_08_20_095524_create_schemas_table', 1),
(10, '2022_08_25_084337_create_transactions_table', 2),
(11, '2022_08_29_112101_create_invests_table', 3),
(12, '2022_09_01_230050_create_gateways_table', 4),
(15, '2022_09_22_002528_create_withdraw_methods_table', 5),
(16, '2022_09_22_002635_create_withdraw_accounts_table', 5),
(20, '2022_09_26_100457_create_languages_table', 6),
(21, '2022_10_06_224555_create_tickets_table', 7),
(22, '2022_10_06_224556_create_messages_table', 7),
(23, '2022_10_06_224557_create_categories_table', 7),
(24, '2022_10_06_224558_create_labels_table', 7),
(25, '2022_10_09_004323_create_referral_targets_table', 8),
(27, '2022_10_09_105537_create_referrals_table', 9),
(28, '2022_10_10_111029_create_referral_programs_table', 10),
(29, '2022_10_10_111442_create_referral_links_table', 10),
(30, '2022_10_10_111636_create_referral_relationships_table', 10),
(32, '2022_10_15_113925_create_rankings_table', 11),
(34, '2022_10_16_020551_create_kycs_table', 12),
(35, '2022_10_18_044728_create_cache_table', 13),
(36, '2022_10_21_125740_create_navigations_table', 13),
(39, '2022_10_21_214919_create_landing_pages_table', 14),
(40, '2022_10_21_215008_create_pages_table', 14),
(41, '2022_10_23_100310_create_landing_contents_table', 15),
(42, '2022_10_24_133755_create_blogs_table', 16),
(44, '2022_10_25_182707_create_page_settings_table', 17),
(46, '2022_10_26_002241_create_socials_table', 18),
(47, '2022_10_27_002647_create_subscriptions_table', 19),
(49, '2022_10_29_234521_create_plugins_table', 20),
(50, '2022_11_06_171108_create_custom_csses_table', 21),
(51, '2022_11_06_171108_create_custom_css_table', 22),
(52, '2022_11_07_121426_create_email_templates_table', 22),
(53, '2019_01_26_221915_create_coinpayment_transactions_table', 23),
(54, '2020_11_30_030150_create_coinpayment_transaction_items_table', 23),
(55, '2023_02_19_114036_create_withdrawal_schedules_table', 24);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 3),
(2, 'App\\Models\\Admin', 4),
(2, 'App\\Models\\Admin', 5),
(3, 'App\\Models\\Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `footer_position` int(11) DEFAULT NULL,
  `header_position` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `page_id`, `name`, `url`, `type`, `footer_position`, `header_position`, `status`, `created_at`, `updated_at`) VALUES
(2, 7, 'Contact', 'contact', 'both', 4, 7, 1, '2022-10-24 14:02:26', '2022-11-20 07:50:56'),
(4, 8, 'Privacy', 'privacy-policy', 'footer', 5, NULL, 1, '2022-10-24 14:05:24', '2022-11-20 07:50:56'),
(7, 1, 'Schema', 'schema', 'both', 7, 2, 1, '2022-10-26 23:00:32', '2022-11-20 07:59:13'),
(8, 2, 'How It Works', 'how-it-works', 'header', NULL, 4, 1, '2022-10-26 23:01:13', '2022-11-20 07:50:15'),
(9, 5, 'Ranking', 'rankings', 'both', 6, 3, 1, '2022-10-26 23:01:33', '2022-11-20 07:59:13'),
(11, 3, 'About', 'about-us', 'both', 10, 5, 1, '2022-10-27 15:38:03', '2022-11-20 07:59:18'),
(13, 4, 'FAQ', 'faq', 'footer', 8, NULL, 1, '2022-10-27 15:38:56', '2022-11-20 07:59:13'),
(14, NULL, 'Home', '/', 'both', 1, 1, 1, '2022-10-28 08:34:49', '2022-11-20 07:50:15'),
(16, 6, 'Blog', 'blog', 'both', 3, 6, 1, '2022-11-17 02:35:57', '2022-11-20 07:50:56'),
(18, 10, 'Account Login', '/login', 'footer', 2, NULL, 1, '2022-11-17 00:01:03', '2022-11-20 07:50:56'),
(19, 9, 'Terms and Conditions', 'terms-and-conditions', 'footer', 9, NULL, 1, '2022-11-17 00:03:30', '2022-11-20 07:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(196) NOT NULL,
  `code` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `type` enum('static','dynamic') NOT NULL DEFAULT 'dynamic',
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `url`, `code`, `data`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Schema', 'schema', 'schema', '{\"title\":\"All the Schemas\",\"title_small\":\"Our Investment Plans\",\"title_big\":\"The plans we offer is specifically made for you.\",\"left_top_img\":\"global\\/images\\/I68p4rslg9zW4R83R9sN.png\",\"meta_keywords\":\"All the Schemas\",\"meta_description\":\"All the Schemas\"}', 'static', 1, NULL, '2022-11-16 19:02:23'),
(2, 'How It Works', 'how-it-works', 'howitworks', '{\"title\":\"How it Works\",\"title_small\":null,\"title_big\":\"The process and steps of the application\",\"section_id\":\"9\",\"meta_keywords\":\"How it Works\",\"meta_description\":\"How it Works\"}', 'static', 1, NULL, '2022-11-16 19:53:34'),
(3, 'About Us', 'about-us', 'about', '{\"title\":\"About Us\",\"left_img_badge\":\"High Yield Hyip Investment\",\"title_small\":\"Who We Are\",\"title_big\":\"Explore us from the experience\",\"side_content\":\"In no event shall Company Name, nor any of its officers, directors and employees, shall be held liable for anything arising out of or in any way connected with your use of this Website whether such liability is under contract.  Company Name, including its officers, directors and employees shall not be held liable for any indirect, consequential or special liability arising out of or in any way related to your use of this Website. Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa, aperiam eum impedit sit facilis itaque tempore dicta mollitia error quibusdam. Obcaecati at velit ipsam incidunt quidem eius, repellat voluptatem in. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Inventore ratione facere, veritatis sunt voluptatibus corrupti blanditiis cum autem dolorem. Quos esse est voluptate labore unde, soluta deleniti. Temporibus, cum deserunt. Lorem ipsum dolor sit amet, consectetur adipisicing elitss\\r\\n\\r\\nLorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente totam dicta qui quae ut incidunt aliquam vel veritatis quasi laudantium! Ullam accusamus dolorum recusandae ratione. Quis praesentium id alias ullam? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quas fugiat enim corrupti, adipisci dolores perferendis vero sit tempora recusandae laboriosam officiis inventore distinctio. A eos quam, autem deserunt voluptates libero!ss\",\"content\":\"<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Culpa, aperiam eum impedit sit facilis itaque tempore dicta mollitia error quibusdam. Obcaecati at velit ipsam incidunt quidem eius, repellat voluptatem in. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Inventore ratione facere, veritatis sunt voluptatibus corrupti blanditiis cum autem dolorem. Quos esse est voluptate labore unde, soluta deleniti. Temporibus, cum deserunt. Lorem ipsum dolor sit amet, consectetur adipisicing elit<\\/p>\\n\\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Sapiente totam dicta qui quae ut incidunt aliquam vel veritatis quasi laudantium! Ullam accusamus dolorum recusandae ratione. Quis praesentium id alias ullam? Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quas fugiat enim corrupti, adipisci dolores perferendis vero sit tempora recusandae laboriosam officiis inventore distinctio. A eos quam, autem deserunt voluptates<\\/p>\",\"aboutusLeftImg\":\"global\\/images\\/g4xp4oSimXAEZGvOKugJ.png\",\"meta_keywords\":\"About Us\",\"meta_description\":\"About Us\"}', 'static', 1, NULL, '2022-11-17 17:35:10'),
(4, 'FAQ ', 'faq', 'faq', '{\"title\":\"FAQ Page\",\"title_small\":\"sdfgsdfsd\",\"title_big\":\"Explore Your Questions\",\"section_id\":\"9\",\"button_icon\":\"anticon-mail\",\"button_level\":\"Still No Luck?\",\"button_url\":\"https:\\/\\/gomeek.net\\/contact\",\"hero_button2_target\":\"_self\",\"meta_keywords\":\"FAQ Page\",\"meta_description\":\"FAQ Page\"}', 'static', 1, NULL, '2023-03-15 10:21:38'),
(5, 'Rankings ', 'rankings', 'ranking', '{\"title\":\"Rankings Page\",\"title_small\":\"Achievements\",\"title_big\":\"Explore all the badges here\",\"button_icon\":\"anticon-mail\",\"button_level\":\"Still No Luck?\",\"button_url\":\"$\",\"hero_button2_target\":\"_blank\",\"content\":\"<p><br><\\/p>\",\"meta_keywords\":\"Rankings Page\",\"meta_description\":\"Rankings Page\"}', 'static', 0, NULL, '2023-03-15 08:13:08'),
(6, 'Blog ', 'blog', 'blog', '{\"title\":\"All Blogs\",\"title_small\":\"Blog Title Smallss\",\"title_big\":\"Our Latest News\",\"sidebar_widget_title\":\"Other Blog Posts\",\"sidebar_widget_title_2\":\"Recent Blogss\",\"meta_keywords\":\"All Blogs\",\"meta_description\":\"All Blogs\"}', 'static', 0, NULL, '2023-03-15 08:13:26'),
(7, 'Contact Us', 'contact', 'contact', '{\"title\":\"Contact Us\",\"title_small\":\"Get In Touch\",\"title_big\":\"Say Hi to us\",\"meta_keywords\":\"Contact Us\",\"meta_description\":\"Contact Us\"}', 'static', 1, NULL, '2022-11-16 23:42:33'),
(8, 'Privacy Policy', 'privacy-policy', 'privacy', '{\"title\":\"Privacy Policy\",\"content\":\"<p><b>Privacy Policy for Hyiprio<\\/b><\\/p>\\r\\n\\r\\n<p><\\/p>\\r\\n\\r\\n<p>At Hyiprio, accessible at hyiprio.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by Website Name and how we use it.If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us through email at info@hyiprio.com<\\/p>\\r\\n\\r\\n<p>This privacy policy applies only to our online activities and is valid for visitors to our website with regard to the information that they shared and\\/or collect in the hyiprio.com. This policy is not applicable to any information collected offline or via channels other than this website.<\\/p>\\r\\n\\r\\n<p>Consent<\\/p>\\r\\n\\r\\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.\\u00a0Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/p>\\r\\n\\r\\n<p>Information we collect<\\/p>\\r\\n\\r\\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.\\u00a0If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and\\/or attachments you may send us, and any other information you may choose to provide.<\\/p>\\r\\n\\r\\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.\\u00a0Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/p>\\r\\n\\r\\n<p>How we use your information<\\/p>\\r\\n\\r\\n<p>We use the information we collect in various ways, including to:<\\/p>\\r\\n\\r\\n<p>Provide, operate, and maintain our websiteImprove, personalize, and expand our websiteUnderstand and analyze how you use our websiteDevelop new products, services, features, and functionalityCommunicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposesSend you emailsFind and prevent fraud<\\/p>\\r\\n\\r\\n<p>Log Files<\\/p>\\r\\n\\r\\n<p>Hyiprio follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring\\/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.<\\/p>\\r\\n\\r\\n<p>Cookies and Web Beacons<\\/p>\\r\\n\\r\\n<p>Like any other website, Website Name uses \\u2018cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and\\/or other information.<\\/p>\\r\\n\\r\\n<p>DoubleClick DART Cookie<\\/p>\\r\\n\\r\\n<p>Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL \\u2013 https:\\/\\/policies.google.com\\/technologies\\/ads.<\\/p>\\r\\n\\r\\n<p>Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.\\u00a0Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/p>\\r\\n\\r\\n<p>Google<\\/p>\\r\\n\\r\\n<p>https:\\/\\/policies.google.com\\/technologies\\/ads<\\/p>\\r\\n\\r\\n<p>Advertising Partners Privacy Policies<\\/p>\\r\\n\\r\\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of Website Name.<\\/p>\\r\\n\\r\\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Website Name, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and\\/or to personalize the advertising content that you see on websites that you visit.\\u00a0Note that Website Name has no access to or control over these cookies that are used by third-party advertisers.<\\/p>\\r\\n\\r\\n<p>Third-Party Privacy Policies<\\/p>\\r\\n\\r\\n<p>Website Name\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You may find a complete list of these Privacy Policies and their links here: Privacy Policy Links.<\\/p>\\r\\n\\r\\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites. What Are Cookies?<\\/p>\\r\\n\\r\\n<p>CCPA Privacy Policy (Do Not Sell My Personal Information)<\\/p>\\r\\n\\r\\n<p>Under the CCPA, among other rights, California consumers have the right to:<\\/p>\\r\\n\\r\\n<p>Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.\\u00a0Request that a business deletes any personal data about the consumer that a business has collected.\\u00a0Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.\\u00a0If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.\\u00a0Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/p>\\r\\n\\r\\n<p>GDPR Privacy Policy (Data Protection Rights)<\\/p>\\r\\n\\r\\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:<\\/p>\\r\\n\\r\\n<p>The right to access \\u2013 You have the right to request copies of your personal data. We may charge you a small fee for this service.\\u00a0The right to rectification \\u2013 You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.<\\/p>\\r\\n\\r\\n<p>The right to erasure \\u2013 You have the right to request that we erase your personal data, under certain conditions.\\u00a0The right to restrict processing \\u2013 You have the right to request that we restrict the processing of your personal data, under certain conditions.\\u00a0The right to object to processing \\u2013 You have the right to object to our processing of your personal data, under certain conditions.\\u00a0The right to data portability \\u2013 You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.\\u00a0If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.<\\/p>\\r\\n\\r\\n<p>Children\'s Information<\\/p>\\r\\n\\r\\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and\\/or monitor and guide their online activity.\\u00a0Website Name does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.<\\/p>\",\"files\":\"global\\/images\\/h0hwylrv2QFLC0bAHxQk.jpg\",\"meta_keywords\":\"Privacy Policy\",\"meta_description\":\"Privacy Policy\"}', 'static', 1, NULL, '2023-01-23 12:06:16'),
(9, 'Terms and Conditions', 'terms-and-conditions', 'terms', '{\"title\":\"Terms and Conditions\",\"content\":\"<h4><span style=\\\"font-weight:normal;\\\">Introduction<\\/span><\\/h4>\\n\\n<p>These Website Standard Terms and Conditions written on this webpage shall manage your use of our website,\\u00a0Hyiprio accessible at\\u00a0hyiprio.com.<span>Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/span><\\/p>\\n\\n<p>These Terms will be applied fully and affect to your use of this Website. By using this Website, you agreed to accept all terms and conditions written in here. You must not use this Website if you disagree with any of these Website Standard Terms and Conditions.<span>Minors or people below 18 years old are not allowed to use this Website.<\\/span><\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Intellectual Property Rights<\\/span><\\/h4>\\n\\n<p>Other than the content you own, under these Terms,\\u00a0Company Name\\u00a0and\\/or its licensors own all the intellectual property rights and materials contained in this Website.\\u00a0<span>You are granted limited license only for purposes of viewing the material contained on this Website.<\\/span><\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Restrictions<\\/span><\\/h4>\\n\\n<p>You are specifically restricted from all of the following:<\\/p>\\n\\n<ul><li>publishing any Website material in any other media;<\\/li><li>selling, sublicensing and\\/or otherwise commercializing any Website material;<\\/li><li>publicly performing and\\/or showing any Website material;<\\/li><li>using this Website in any way that is or may be damaging to this Website;<\\/li><li>using this Website in any way that impacts user access to this Website;<\\/li><li>using this Website contrary to applicable laws and regulations, or in any way may cause harm to the Website, or to any person or business entity;<\\/li><li>engaging in any data mining, data harvesting, data extracting or any other similar activity in relation to this Website;<\\/li><li>using this Website to engage in any advertising or marketing.<\\/li><\\/ul>\\n\\n<p>Certain areas of this Website are restricted from being access by you and\\u00a0Company Name\\u00a0may further restrict access by you to any areas of this Website, at any time, in absolute discretion. Any user ID and password you may have for this Website are confidential and you must maintain confidentiality as well.<\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Your Content<\\/span><\\/h4>\\n\\n<p>In these Website Standard Terms and Conditions, \\u201cYour Content\\u201d shall mean any audio, video text, images or other material you choose to display on this Website. By displaying Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/p>\\n\\n<p>Your Content must be your own and must not be invading any third-party\'s rights.\\u00a0Company Name\\u00a0reserves the right to remove any of Your Content from this Website at any time without notice.<\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">No warranties<\\/span><\\/h4>\\n\\n<p>This Website is provided \\u201cas is,\\u201d with all faults, and\\u00a0Company Name\\u00a0express no representations or warranties, of any kind related to this Website or the materials contained on this Website. Also, nothing contained on this Website shall be interpreted as advising you.<\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Limitation of liability<\\/span><\\/h4>\\n\\n<p>In no event shall\\u00a0Company Name, nor any of its officers, directors and employees, shall be held liable for anything arising out of or in any way connected with your use of this Website whether such liability is under contract. \\u00a0Company Name, including its officers, directors and employees shall not be held liable for any indirect, consequential or special liability arising out of or in any way related to your use of this Website.<\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Indemnification<\\/span><\\/h4>\\n\\n<h5><span style=\\\"font-weight:normal;\\\">You hereby indemnify to the fullest extent\\u00a0Company Name\\u00a0from and against any and\\/or all liabilities, costs, demands, causes of action, damages and expenses arising in any way related to your breach of any of the provisions of these Terms.<\\/span><\\/h5>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Severability<\\/span><\\/h4>\\n\\n<p>If any provision of these Terms is found to be invalid under any applicable law, such provisions shall be deleted without affecting the remaining provisions herein.\\u00a0<span>Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/span><\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Variation of Terms<\\/span><\\/h4>\\n\\n<p>Company Name\\u00a0is permitted to revise these Terms at any time as it sees fit, and by using this Website you are expected to review these Terms on a regular basis.\\u00a0<span>Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/span><\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Assignment<\\/span><\\/h4>\\n\\n<p>The\\u00a0Company Name\\u00a0is allowed to assign, transfer, and subcontract its rights and\\/or obligations under these Terms without any notification. However, you are not allowed to assign, transfer, or subcontract any of your rights and\\/or obligations under these Terms.<\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Entire Agreement<\\/span><\\/h4>\\n\\n<p>These Terms constitute the entire agreement between\\u00a0Company Name\\u00a0and you in relation to your use of this Website, and supersede all prior agreements and understandings.\\u00a0<span>Your Content, you grant Company Name a non-exclusive, worldwide irrevocable, sub licensable license to use, reproduce, adapt, publish, translate and distribute it in any and all media.<\\/span><\\/p>\\n\\n<h4><span style=\\\"font-weight:normal;\\\">Governing Law &amp; Jurisdiction<\\/span><\\/h4>\\n\\n<p>These Terms will be governed by and interpreted in accordance with the laws of the State of\\u00a0Country, and you submit to the non-exclusive jurisdiction of the state and federal courts located in\\u00a0Country\\u00a0for the resolution of any disputes.<\\/p>\",\"files\":\"global\\/images\\/1gcQReqxFvALwGLLItbu.jpg\",\"meta_keywords\":\"Terms and Conditions\",\"meta_description\":\"Terms and Conditions\"}', 'static', 1, NULL, '2022-11-17 17:40:00'),
(10, 'Login', '/login', 'login', '{\"title\":\"\\ud83d\\udc4b Welcome Back!\",\"bottom_text\":\"Sign in to continue with Gomeek User Panel\"}', 'static', 1, NULL, '2023-03-15 10:18:30'),
(11, 'Registration', '/registration', 'registration', '{\"title\":\"\\ud83d\\udcaa Create an account\",\"bottom_text\":\"Register to continue with Gomeek\"}', 'static', 1, NULL, '2023-03-15 10:18:07'),
(12, 'Forgot Password', '/forgot-password', 'forgetpassword', '{\"title\":\"Password Reset\",\"bottom_text\":\"Reset your Password\"}', 'static', 1, NULL, '2022-11-16 09:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `page_settings`
--

CREATE TABLE `page_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_settings`
--

INSERT INTO `page_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'breadcrumb', 'global/images/YxeYfLzaEsagR8a7OWXw.jpg', NULL, '2022-11-16 18:59:29'),
(2, 'basic_page_background', '#1bb12c', NULL, '2022-10-25 14:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('wd2rasel@gmail.com', 'sCXuCkTAdcUAeQz4mLrUPAEwGyLR63UB3ibZg64nNIBW4u8W6VK4t0lBAkyK5Uim', '2023-02-15 12:40:04'),
('wd2rasel@gmail.com', 'u3HOIEuFl9rDWmtLcfqOV4Nnw9iE60YQdpvBLB3Mmw9ntQhhsVQiPAI4OwJ2ksM7', '2023-02-15 14:18:27'),
('wd2rasel@gmail.com', 'YeIyq3fvoIQGoNjir7rZ6F5cdV36hkssFvlBN48Npbv2Nrw6yrZJnWgU0ZbuExBg', '2023-02-15 14:21:22'),
('wd2rasel@gmail.com', 'YSslD3WtLPattrDyvY37Wqh6rP6OCfDVj0w0cRyYzkXXxa2XzmQM5aToGp7hNxBg', '2023-02-15 14:21:39'),
('wd2rasel@gmail.com', 'dQdT26SUVxlHRYGkGkZWyXc2ydxGL4C1zs1M5FYVvhv4HpgMrqWTlFaem8iWHjEA', '2023-02-15 14:22:20'),
('wd2rasel@gmail.com', 'SuUzIMDZvwisxpsgD2WwZmQdvLmAkTKQGginnuE5ezfpLphCqYhj3iQ94OPPmzIN', '2023-02-15 14:22:43'),
('wd2rasel@gmail.com', '0dgfoT3JJvWjR5fFDOQN31Qd6FAeSJiXSPLJDr6b5jcSvE2ZVy3PgeriWovjXIsm', '2023-02-15 14:23:50'),
('wd2rasel@gmail.com', 'LfVR6tTbCKgV6SRATgL2Z9O0p0qRREBQUV7qCiu0GjAAthKceeqPAS3vUi2eld9i', '2023-02-15 14:24:01'),
('wd2rasel@gmail.com', '5peukU8wCdgHy1y3doO0yNkos4OTqih2AKDhTJ8bEW6pgB3B3XGKNTv5i53ILqab', '2023-02-15 14:24:12'),
('wd2rasel@gmail.com', 'GKP5PTbC4ovnLWdhyh0lVY3UjCuT1DnGGRuViUJ1NCjwD8tOAHKPQWMK6eyJsNM2', '2023-02-15 14:24:22'),
('wd2rasel@gmail.com', 'axcJtAfadM5BaubASgXylYUf7YLS3XfONqgJWByjTN4jZOLmwr9ntSDsMGaCG6dR', '2023-02-15 14:24:35'),
('wd2rasel@gmail.com', 'cf8u4lWPN6EPkBDNshNEAGo9lVgJ7lvk6DJqvZJsn6v3hIoZ4GVfMb0yGNox5ySv', '2023-02-15 14:29:22'),
('wd2rasel@gmail.com', 'RJwlTlWZnYWdZBNq7wWOlaeBpYzYEz2ZP7CP6OQsui15gpcGHvXNTgywYOaOgoxd', '2023-02-15 14:30:18'),
('wd2rasel@gmail.com', 'DRVvk4bfIYFrGozTWGVNDbZhNwetWQJcBKF4Eu4IBvauHobT3LcLTDgKgJ5WGxPn', '2023-02-15 14:31:56'),
('wd2rasel@gmail.com', 'Ni4oZKGDGIxKaPiw5sMSDkmESAjZYCoOtyZWA3MTcjLiRQ6iQMb0crkKKQZgQf9j', '2023-02-15 14:32:03'),
('wd2rasel@gmail.com', 'wYg5kZixLdOESgCF1KzRGtuStsR4fX5j40y0HOsqjNjaFcJ5Z5BSYtCXWLg6xmqm', '2023-02-15 14:34:06'),
('wd2rasel@gmail.com', 'QkjilouDwFL6J5UzT9Gh1eZ2s1p1Q6iq7wZsx619r7172QL3RJjMbwLzJz6Gf3Yc', '2023-02-15 14:37:46'),
('wd2rasel@gmail.com', 'KtI0Yi5ujn79ToTPenihFfYIoKZSXyWnfDVuoWJk70E7Hdth2WhOZCGV4b2Qi9hV', '2023-02-15 14:39:34'),
('wd2rasel@gmail.com', 'iZ9hksGIzQCbBz63Kg6liuO4PeKvpWTRTxEucidEKN02j8FB1pHM0zio0jlO9VIi', '2023-02-15 14:39:45'),
('wd2rasel@gmail.com', 'rutEwIteu7NnGGpkcW9uoWcgVgvEF9ipEoBnC30wDWVTFOynUBbblty3KceO6atA', '2023-02-15 14:40:52'),
('wd2rasel@gmail.com', 'F0qzHEoyGiqUJ5QdEwTwYNFSbSuA2D7JgebNK7syQi4wh6eG0SR04rPT2oY2QRoC', '2023-02-15 14:41:49'),
('wd2rasel@gmail.com', '6kWlSu9GOplP8ec9LJHJfBbxPRRav4DOwykMVDa414xAoCjUPRFZGqtdzqezB5K9', '2023-02-15 14:42:25'),
('wd2rasel@gmail.com', 'O5bnLoaoNQaOBj4T9Z9SQhITD30emLpCnHoM01Ihq5tSK7WCs8nixTU3f7CasLQ6', '2023-02-15 15:28:53'),
('wd2rasel@gmail.com', 'Hxer8SvaJip7DoyrLyixz1iGVpdIavuq9rPpKFZm2zww0FpSqlALDEqegJjvD2yh', '2023-02-16 07:59:49'),
('wd2rasel@gmail.com', 'Pwhyinna3XqLeLlrzGNrzpAOMoTZekGGgrQoYm5rVRKL0MFQKbEzqKs1daSfZzJC', '2023-02-16 08:32:09'),
('wd2rasel@gmail.com', 'OW9RFCDg5pBitI95G3k9R95n2bdwCafujiUvfqltC3wdgEzd8m0d7z0ANsW2KyzY', '2023-02-16 09:04:52'),
('wd2rasel@gmail.com', 'SApmSovJ46EtBYO1oAkFjVaiiknmIt5EzDfB4osGnaw4PtvqFM8MgQ3VZCnCB2lb', '2023-02-16 09:05:50'),
('wd2rasel@gmail.com', 'QlpodtimBq20F9ThpSYTyU554aa9w8iVj0oZB8VmYuxcmTcfheBaaY7Q2dbYnttX', '2023-02-16 09:06:01'),
('wd2rasel@gmail.com', 'GQ91KV4jgQGN4Iv86t2v8UerLbBJLLZt7pHKXYfJ1SGDb9osPywb0PUZrI8WqkNc', '2023-02-16 09:06:28'),
('wd2rasel@gmail.com', 'uJQCN6vMIYqfOjRuQSDG6eWHnyjHZiCqtEhsTrMCfPjHL7JsP8o96ufr3wK6gQcI', '2023-02-16 09:06:51'),
('wd2rasel@gmail.com', 'gvGMvaxqkc7W4mLHzuno24TRuBSy7vNBgmGfKCj81LK4Vo1cQ5kDGzWgj7j0yLvi', '2023-02-16 09:07:22'),
('wd2rasel@gmail.com', 'yW3o1C2Kh4qIOsqqz03RNyJmz5WTLVDDwcMWil4lrlLGWUovBZc19fGRpdVafKwn', '2023-02-16 09:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `category`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Customer Management', 'customer-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(2, 'Customer Management', 'customer-login', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(3, 'Customer Management', 'customer-mail-send', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(4, 'Customer Management', 'customer-basic-manage', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(5, 'Customer Management', 'customer-balance-add-or-subtract', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(6, 'Customer Management', 'customer-change-password', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(7, 'Customer Management', 'all-type-status', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(8, 'Kyc Management', 'kyc-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(9, 'Kyc Management', 'kyc-action', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(10, 'Kyc Management', 'kyc-form-manage', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(11, 'Role Management', 'role-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(12, 'Role Management', 'role-create', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(13, 'Role Management', 'role-edit', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(14, 'Staff Management', 'staff-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(15, 'Staff Management', 'staff-create', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(16, 'Staff Management', 'staff-edit', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(17, 'Plan Management', 'schedule-manage', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(18, 'Plan Management', 'schema-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(19, 'Plan Management', 'schema-create', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(20, 'Plan Management', 'schema-edit', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(21, 'Transaction Management', 'transaction-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(22, 'Transaction Management', 'investment-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(23, 'Transaction Management', 'profit-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(24, 'Deposit Management', 'automatic-gateway-manage', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(25, 'Deposit Management', 'manual-gateway-manage', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(26, 'Deposit Management', 'deposit-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(27, 'Deposit Management', 'deposit-action', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(28, 'Withdraw Management', 'withdraw-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(29, 'Withdraw Management', 'withdraw-method-manage', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(30, 'Withdraw Management', 'withdraw-action', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(31, 'Withdraw Management', 'withdraw-schedule', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(32, 'Referral Management', 'target-manage', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(33, 'Referral Management', 'referral-create', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(34, 'Referral Management', 'referral-list', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(35, 'Referral Management', 'referral-edit', 'admin', '2023-02-19 07:32:02', '2023-02-19 07:32:02'),
(36, 'Referral Management', 'referral-delete', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(37, 'Ranking Management', 'ranking-list', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(38, 'Ranking Management', 'ranking-create', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(39, 'Ranking Management', 'ranking-edit', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(40, 'Frontend Management', 'landing-page-manage', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(41, 'Frontend Management', 'page-manage', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(42, 'Frontend Management', 'footer-manage', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(43, 'Frontend Management', 'navigation-manage', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(44, 'Subscriber Management', 'subscriber-list', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(45, 'Subscriber Management', 'subscriber-mail-send', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(46, 'Support Ticket Management', 'support-ticket-list', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(47, 'Support Ticket Management', 'support-ticket-action', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(48, 'Setting Management', 'site-setting', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(49, 'Setting Management', 'email-setting', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(50, 'Setting Management', 'plugin-setting', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(51, 'Setting Management', 'language-setting', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(52, 'Setting Management', 'page-setting', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(53, 'Setting Management', 'custom-css', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03'),
(54, 'Setting Management', 'email-template', 'admin', '2023-02-19 07:32:03', '2023-02-19 07:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE `plugins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(196) DEFAULT NULL,
  `data` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`id`, `icon`, `name`, `description`, `data`, `status`, `created_at`, `updated_at`) VALUES
(1, 'global/plugin/tawk.png', 'Tawk Chat', 'Free Instant Messaging system\n\n', '{\"property_id\":\"640d4e754247f20fefe55c8a\",\"widget_id\":\"f2354a9ddfd59245fadb9dc7ca14e275daec5437\"}', 1, NULL, '2023-03-15 07:24:49'),
(2, 'global/plugin/reCaptcha.png', 'Google reCaptcha', 'reCAPTCHA protects your website from fraud and abuse without creating friction\r\n\r\n\r\n\r\n', '{\"google_recaptcha_key\":\"6LeZjgElAAAAAGrttsYaGOv_ScYNxIs8sqIL0P_I\",\"google_recaptcha_secret\":\"6LeZjgElAAAAAL2fBd2jQ2aLCsAwSyAOpPMZOmA2\"}', 1, NULL, '2023-03-15 06:54:04'),
(3, 'global/plugin/analytics.png', 'Google Analytics', 'Analytics will help you to collect data for your website\r\n\r\n\r\n\r\n', '{\"app_id\":\"G-7HRHJEHBN1\"}', 1, NULL, '2023-03-15 07:06:56'),
(4, 'global/plugin/fb.png', 'Facebook Messenger', 'Messenger is a proprietary instant messaging app and platform developed by Meta\n\n\n', '{\"page_id\":\"990335491009901\"}', 0, NULL, '2023-02-09 22:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE `rankings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `ranking` varchar(255) NOT NULL,
  `ranking_name` varchar(255) NOT NULL,
  `minimum_earnings` double NOT NULL,
  `bonus` double NOT NULL DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rankings`
--

INSERT INTO `rankings` (`id`, `icon`, `ranking`, `ranking_name`, `minimum_earnings`, `bonus`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'global/images/sCQgIyl0OKzFiO73nmWF.svg', 'Level 1', 'Gomeek Member', 5600, 150, 'By signing up to the account', 1, '2022-10-15 09:55:23', '2023-03-15 09:52:04'),
(2, 'global/images/TQDUvbD48kmhmV9qifzh.svg', 'Level 2', 'Gomeek Leader', 10200, 225, 'By earning $10200 from the site', 1, '2022-10-15 10:14:53', '2023-03-15 09:53:03'),
(3, 'global/images/hGHllGGCIYfpx5Z2VKrW.svg', 'Level 3', 'Gomeek Captain', 25780, 520, 'By earning $25780 from the site', 1, '2022-10-15 18:16:59', '2023-03-15 09:54:13'),
(4, 'global/images/SaNfYL7WD2pzAAME8Sqb.svg', 'Level 4', 'Gomeek Victor', 67620, 1286, 'By earning $67620 from the site', 1, '2022-10-15 18:18:23', '2023-03-15 09:55:10');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referral_target_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('investment','deposit') NOT NULL,
  `bounty` double NOT NULL,
  `target_amount` double DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `referral_target_id`, `type`, `bounty`, `target_amount`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'investment', 3, 1000, 'First Target of the investment bonus', 1, '2022-11-17 03:07:54', '2023-03-15 09:56:04'),
(2, 1, 'deposit', 2, 1000, 'First Target of the Deposit Bonus', 1, '2022-11-17 03:08:25', '2023-03-15 09:56:41'),
(3, 2, 'investment', 7, 2500, 'Second Target of the investment bonus', 1, '2022-11-17 03:09:12', '2023-03-15 09:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `referral_links`
--

CREATE TABLE `referral_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referral_program_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_links`
--

INSERT INTO `referral_links` (`id`, `user_id`, `referral_program_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '5ba33836-c349-11ed-8d38-cd968a7d82dc', '2023-03-15 15:52:15', '2023-03-15 15:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `referral_programs`
--

CREATE TABLE `referral_programs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `lifetime_minutes` int(11) NOT NULL DEFAULT 10080,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_programs`
--

INSERT INTO `referral_programs` (`id`, `name`, `uri`, `lifetime_minutes`, `created_at`, `updated_at`) VALUES
(1, 'sign_up_referral', 'register', 10080, '2022-10-10 07:59:56', '2022-10-10 07:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `referral_relationships`
--

CREATE TABLE `referral_relationships` (
  `id` int(10) UNSIGNED NOT NULL,
  `referral_link_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_targets`
--

CREATE TABLE `referral_targets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referral_targets`
--

INSERT INTO `referral_targets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Target #1', '2022-10-09 03:11:24', '2022-10-15 04:04:27'),
(2, 'Target #2', '2022-10-09 04:15:59', '2022-10-09 04:15:59'),
(3, 'Target #3', '2022-10-09 04:16:06', '2022-10-09 04:16:06'),
(4, 'Target #4', '2022-10-09 04:16:10', '2022-10-09 04:16:10'),
(5, 'Target #5', '2022-10-09 04:16:18', '2022-10-09 04:16:18'),
(6, 'Target #6', '2022-10-09 04:19:02', '2022-10-09 04:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'admin', '2022-08-24 03:03:35', '2022-08-24 03:03:35'),
(2, 'Manager', 'admin', '2022-09-03 03:29:43', '2022-10-31 15:16:03'),
(3, 'Editor', 'admin', '2022-10-31 14:46:15', '2022-10-31 15:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `name`, `time`, `created_at`, `updated_at`) VALUES
(1, 'Hour', 1, '2022-08-28 11:40:42', '2022-11-16 21:46:51'),
(2, 'Daily', 24, '2022-08-28 11:40:54', '2022-08-28 11:48:38'),
(3, 'Weekly', 168, '2022-08-28 11:41:18', '2022-11-12 04:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `schemas`
--

CREATE TABLE `schemas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('fixed','range') NOT NULL,
  `fixed_amount` double NOT NULL DEFAULT 0,
  `min_amount` double NOT NULL DEFAULT 0,
  `max_amount` double NOT NULL DEFAULT 0,
  `capital_back` tinyint(1) NOT NULL DEFAULT 0,
  `badge` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `interest_type` enum('percentage','fixed') NOT NULL,
  `return_interest` double NOT NULL,
  `return_period` int(11) NOT NULL,
  `return_type` enum('period','lifetime') NOT NULL,
  `number_of_period` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schemas`
--

INSERT INTO `schemas` (`id`, `icon`, `name`, `type`, `fixed_amount`, `min_amount`, `max_amount`, `capital_back`, `badge`, `featured`, `status`, `interest_type`, `return_interest`, `return_period`, `return_type`, `number_of_period`, `created_at`, `updated_at`) VALUES
(1, 'global/images/D7JO6pA0Wj2vbyp9FJsK.png', 'Starter Plan', 'fixed', 2, 0, 0, 0, 'TEST SCHEMA', 1, 1, 'percentage', 3, 2, 'period', 180, '2022-08-28 11:50:48', '2023-03-15 10:10:21'),
(2, 'global/images/gn6bCbbpkTCtTWIuPzzP.png', 'Standard Plan', 'range', 0, 10, 10000, 1, 'BEST SCHEMA', 1, 1, 'percentage', 3, 2, 'period', 180, '2022-08-28 11:54:58', '2023-03-18 18:50:11'),
(3, 'global/images/I79d1j4CUeMfRtGHs1nQ.png', 'Advanced Plan', 'fixed', 500, 0, 0, 0, NULL, 0, 0, 'fixed', 11, 1, 'lifetime', 0, '2022-08-28 12:18:03', '2023-03-15 10:11:23'),
(4, 'global/images/7oF6RLsG8iAPmNCCKnC7.png', 'Pro Plan', 'fixed', 1000, 0, 0, 1, NULL, 0, 0, 'fixed', 10, 2, 'period', 80, '2022-10-26 08:45:21', '2023-03-15 10:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `val` text NOT NULL,
  `type` char(20) NOT NULL DEFAULT 'string',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `type`, `created_at`, `updated_at`) VALUES
(1, 'currency_symbol', '$', 'string', '2022-08-24 10:01:01', '2022-11-07 08:29:26'),
(2, 'site_title', 'Gomeek - Passive Income Platform', 'string', '2022-08-24 10:01:01', '2023-03-15 07:37:26'),
(3, 'site_email', 'info@gomeek.net', 'string', '2022-08-24 10:01:01', '2023-03-15 07:37:26'),
(4, 'copyright_text', 'All rights reserved @tdevs 2022', 'string', '2022-08-24 10:01:01', '2022-08-24 10:01:01'),
(5, 'site_currency', 'USD', 'string', '2022-08-24 10:01:08', '2022-08-24 10:01:08'),
(6, 'login_bg', 'global/images/bdVMA7Po89q8yjy8LIVh.jpg', 'string', '2022-08-28 02:25:00', '2022-11-17 04:41:41'),
(7, 'site_logo', 'global/images/nW0fEvaLbWOy9B5mcfh5.png', 'string', '2022-08-28 02:25:14', '2023-03-15 07:39:28'),
(8, 'site_favicon', 'global/images/dXxWXFfPMXh1N1gcVEdl.png', 'string', '2022-08-28 02:25:14', '2022-11-16 06:18:11'),
(9, 'maintenance_mode', '0', 'boolean', '2022-09-20 14:29:38', '2022-11-14 01:32:48'),
(10, 'maintenance_title', 'Site is not under maintenance', 'string', '2022-09-20 14:29:38', '2022-09-20 14:29:38'),
(11, 'maintenance_text', 'Sorry for interrupting! The site will be live soon.', 'string', '2022-09-20 14:29:38', '2022-09-20 15:04:34'),
(12, 'min_send', '10', 'double', '2022-09-21 08:35:47', '2022-11-13 07:34:21'),
(13, 'max_send', '5000', 'double', '2022-09-21 08:35:47', '2022-11-17 01:40:19'),
(14, 'send_charge_type', 'percentage', 'string', '2022-09-21 08:35:47', '2022-09-21 11:26:22'),
(15, 'send_charge', '1.5', 'double', '2022-09-21 08:35:47', '2023-03-15 07:38:14'),
(16, 'referral_commission', '21', 'double', '2022-10-10 04:34:02', '2022-10-10 04:34:02'),
(17, 'referral_bonus', '0', 'double', '2022-10-10 14:17:10', '2023-03-15 07:38:14'),
(18, 'signup_bonus', '2', 'double', '2022-10-10 14:17:10', '2023-03-15 07:38:14'),
(19, 'email_verification', '1', 'boolean', '2022-10-12 05:14:39', '2023-03-15 07:37:39'),
(20, 'kyc_verification', '1', 'boolean', '2022-10-12 05:14:39', '2022-11-06 04:41:45'),
(21, 'fa_verification', '0', 'boolean', '2022-10-12 05:14:39', '2022-11-11 00:56:52'),
(22, 'account_creation', '1', 'boolean', '2022-10-12 05:14:39', '2022-10-12 05:14:39'),
(23, 'user_deposit', '1', 'boolean', '2022-10-12 05:14:39', '2022-10-12 05:14:39'),
(24, 'user_withdraw', '1', 'boolean', '2022-10-12 05:14:39', '2022-11-17 20:46:38'),
(25, 'sign_up_referral', '1', 'boolean', '2022-10-12 05:14:39', '2022-10-12 05:14:39'),
(26, 'referral_signup_bonus', '1', 'boolean', '2022-10-12 05:14:39', '2022-10-12 05:15:15'),
(27, 'investment_referral_bounty', '1', 'boolean', '2022-10-12 05:14:39', '2022-10-12 05:14:39'),
(28, 'deposit_referral_bounty', '1', 'boolean', '2022-10-12 05:14:39', '2022-10-12 05:14:39'),
(29, 'email_from_name', 'Gomeek', 'string', '2022-10-29 14:11:51', '2023-03-15 07:33:03'),
(30, 'email_from_address', 'support@gomeek.net', 'string', '2022-10-29 14:11:51', '2023-03-15 07:33:03'),
(31, 'email_footer', 'Best Regard, \r\nTeam of  [[msg]]', 'string', '2022-10-29 14:11:51', '2022-10-29 16:15:30'),
(32, 'mailing_driver', 'smtp', 'string', '2022-10-29 14:11:51', '2022-10-29 14:50:36'),
(33, 'mail_host', 'smtp.hostinger.com', 'string', '2022-10-29 14:11:51', '2023-03-15 07:33:03'),
(34, 'mail_port', '465', 'integer', '2022-10-29 14:11:51', '2022-11-22 03:25:01'),
(35, 'mail_secure', 'tls', 'string', '2022-10-29 14:11:51', '2023-02-15 11:26:49'),
(36, 'mail_username', 'support@gomeek.net', 'string', '2022-10-29 15:05:23', '2023-03-15 07:33:03'),
(37, 'mail_password', 'Gimnadi@123', 'string', '2022-10-29 15:05:23', '2023-03-15 07:33:03'),
(38, 'site_animation', '0', 'boolean', '2022-11-06 10:24:22', '2022-11-16 16:21:00'),
(39, 'support_email', 'support@gomeek.net', 'string', '2022-11-07 08:29:03', '2023-03-15 07:37:26'),
(40, 'wallet_exchange_charge_type', 'percentage', 'string', '2022-11-11 05:31:21', '2022-11-11 05:31:21'),
(41, 'wallet_exchange_charge', '0', 'string', '2022-11-11 05:31:21', '2023-03-18 18:44:19'),
(42, 'secret_key', 'secret', 'string', '2022-11-14 01:32:48', '2022-11-14 01:32:48'),
(43, 'transfer_status', '1', 'boolean', '2022-11-16 08:16:07', '2022-11-16 08:17:08'),
(44, 'back_to_top', '1', 'boolean', '2022-11-16 08:16:07', '2022-11-16 08:16:07'),
(45, 'referral_deposit_bonus', '2.4', 'double', '2023-02-04 03:39:35', '2023-02-04 03:39:35'),
(46, 'site_timezone', 'UTC', 'string', '2023-02-15 08:26:05', '2023-02-18 02:41:46'),
(47, 'debug_mode', '1', 'boolean', '2023-02-15 14:07:46', '2023-02-20 16:03:33'),
(48, 'gdpr_status', '1', 'boolean', '2023-03-15 07:38:58', '2023-03-15 07:38:58'),
(49, 'gdpr_text', 'Please allow us to collect data about how you use our website. We will use it to improve our website, make your browsing experience and our business decisions better. Learn more', 'string', '2023-03-15 07:38:58', '2023-03-15 07:38:58'),
(50, 'gdpr_button_label', 'Learn More', 'string', '2023-03-15 07:38:58', '2023-03-15 07:38:58'),
(51, 'gdpr_button_url', '/privacy-policy', 'string', '2023-03-15 07:38:58', '2023-03-15 07:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon_name` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `attach` varchar(196) DEFAULT NULL,
  `priority` varchar(255) NOT NULL DEFAULT 'low',
  `status` varchar(255) NOT NULL DEFAULT 'open',
  `is_resolved` tinyint(1) NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED DEFAULT NULL,
  `from_model` varchar(255) NOT NULL DEFAULT 'User',
  `target_id` bigint(20) DEFAULT NULL,
  `target_type` varchar(256) DEFAULT NULL,
  `tnx` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `charge` varchar(255) NOT NULL DEFAULT '0',
  `final_amount` varchar(255) NOT NULL DEFAULT '0',
  `method` varchar(255) DEFAULT NULL,
  `pay_currency` varchar(256) DEFAULT NULL,
  `pay_amount` double DEFAULT NULL,
  `manual_field_data` text DEFAULT NULL,
  `approval_cause` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `from_user_id`, `from_model`, `target_id`, `target_type`, `tnx`, `description`, `amount`, `type`, `charge`, `final_amount`, `method`, `pay_currency`, `pay_amount`, `manual_field_data`, `approval_cause`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'User', NULL, NULL, 'TRXKXM5IRGXVP', 'Ranking Bonus From Level 1', '150', 'bonus', '0', '150', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-15 15:51:25', '2023-03-15 15:51:25'),
(2, 1, NULL, 'User', NULL, NULL, 'TRXWMDGURVX6K', 'Signup Bonus', '2', 'signup_bonus', '0', '2', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-15 15:51:25', '2023-03-15 15:51:25'),
(3, 1, NULL, 'User', NULL, NULL, 'TRXBNDA1WC3CR', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'failed', '2023-03-16 12:59:45', '2023-03-16 12:59:46'),
(4, 1, NULL, 'User', NULL, NULL, 'TRXXEOXTYWAQS', 'Deposit With Payer Url CoinPayments', '10', 'deposit', '0', '10', 'coinpayments', 'USD', 4448.1, '[]', 'none', 'failed', '2023-03-16 13:02:01', '2023-03-16 13:02:01'),
(5, 1, NULL, 'User', NULL, NULL, 'TRXCFMLLC6QCP', 'Deposit With Payer Url CoinPayments', '10', 'deposit', '0', '10', 'coinpayments', 'USD', 4448.1, '[]', 'none', 'failed', '2023-03-16 13:11:17', '2023-03-16 13:11:18'),
(6, 1, NULL, 'User', NULL, NULL, 'TRXFJ45EISRLX', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'pending', '2023-03-16 13:34:37', '2023-03-16 13:34:37'),
(7, 1, NULL, 'User', NULL, NULL, 'TRXCYYGGKMCJC', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'failed', '2023-03-16 13:36:03', '2023-03-16 13:36:03'),
(8, 1, NULL, 'User', NULL, NULL, 'TRXQQG1TNJYUZ', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'failed', '2023-03-16 13:36:20', '2023-03-16 13:36:20'),
(9, 1, NULL, 'User', NULL, NULL, 'TRXP03KJWUCAK', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'pending', '2023-03-16 13:37:59', '2023-03-16 13:37:59'),
(10, 1, NULL, 'User', NULL, NULL, 'TRXVY9JLBLCDP', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'pending', '2023-03-16 13:39:09', '2023-03-16 13:39:09'),
(11, 1, NULL, 'User', NULL, NULL, 'TRXSICKJDUK3F', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'failed', '2023-03-16 13:39:23', '2023-03-16 13:39:24'),
(12, 1, NULL, 'User', NULL, NULL, 'TRX4USIH0ERVQ', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'pending', '2023-03-16 13:40:22', '2023-03-16 13:40:22'),
(13, 1, NULL, 'User', NULL, NULL, 'TRXUBSHOBGUZS', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'pending', '2023-03-16 13:42:18', '2023-03-16 13:42:18'),
(14, 1, NULL, 'User', NULL, NULL, 'TRXOYCHUGURL5', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'failed', '2023-03-16 13:43:25', '2023-03-16 13:43:26'),
(15, 1, NULL, 'User', NULL, NULL, 'TRXAODSB2GJLN', 'Deposit With Payer Url CoinPayments', '10', 'deposit', '0', '10', 'coinpayments', 'USD', 4448.1, '[]', 'none', 'failed', '2023-03-16 13:54:01', '2023-03-16 13:54:02'),
(16, 1, NULL, 'User', NULL, NULL, 'TRXBURB3B4V4B', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'failed', '2023-03-16 15:50:32', '2023-03-16 15:50:33'),
(17, 1, NULL, 'User', NULL, NULL, 'TRX9WOJQXDQPL', 'Deposit With Payer Url CoinPayments', '100', 'deposit', '0', '100', 'coinpayments', 'USD', 44481, '[]', 'none', 'failed', '2023-03-16 16:39:40', '2023-03-16 16:39:40'),
(18, 1, NULL, 'User', NULL, NULL, 'TRXZZOQP5L0J3', 'Deposit With Payer Url CoinPayments', '10', 'deposit', '0', '10', 'coinpayments', 'USD', 4448.1, '[]', 'none', 'failed', '2023-03-16 16:59:24', '2023-03-16 16:59:25'),
(19, 1, NULL, 'User', NULL, NULL, 'TRXVGKPTFKPSB', 'Deposit With Payer Url CoinPayments', '10', 'deposit', '0', '10', 'coinpayments', 'USD', 4448.1, '[]', 'none', 'failed', '2023-03-16 18:38:10', '2023-03-16 18:38:11'),
(20, 1, NULL, 'User', NULL, NULL, 'TRXUOE0QRFOYN', 'Deposit With Payer Url CoinPayments', '10', 'deposit', '0', '10', 'coinpayments', 'USD', 4448.1, '[]', 'none', 'failed', '2023-03-17 02:47:34', '2023-03-17 02:47:34'),
(21, 1, 1, 'Admin', NULL, NULL, 'TRXC2SGDNNSG8', 'Money Deposit From Admin', '20', 'deposit', '0', '20', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-17 03:23:30', '2023-03-17 03:23:30'),
(22, 1, 1, 'Admin', NULL, NULL, 'TRXMKIURJDQ31', 'Money Deposit From Admin', '20', 'deposit', '0', '20', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-17 03:24:01', '2023-03-17 03:24:01'),
(23, 1, 1, 'Admin', NULL, NULL, 'TRXEKYQDOHLHS', 'Money Deposit From Admin', '10', 'deposit', '0', '10', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-17 03:29:39', '2023-03-17 03:29:39'),
(24, 1, NULL, 'User', NULL, NULL, 'TRXIEDRUINEIR', 'Deposit With Payer Url CoinPayments', '30', 'deposit', '0', '30', 'coinpayments', 'USD', 13344.3, '[]', 'none', 'failed', '2023-03-17 03:30:28', '2023-03-17 03:30:29'),
(25, 1, NULL, 'User', NULL, NULL, 'TRXB95TY0OBAC', 'Starter Plan Plan Invested', '2', 'investment', '0', '2', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-17 04:35:53', '2023-03-17 04:35:53'),
(26, 1, NULL, 'User', NULL, NULL, 'TRXXHRB0JOFXH', 'Deposit With Payer Url CoinPayments', '10', 'deposit', '0', '10', 'coinpayments', 'USD', 4448.1, '[]', 'none', 'failed', '2023-03-17 04:37:46', '2023-03-17 04:37:47'),
(27, 1, NULL, 'User', NULL, NULL, 'TRXLXCEJ3ZX7J', 'Deposit With Payer Url CoinPayments', '11', 'deposit', '0', '11', 'coinpayments', 'USD', 4892.91, '[]', 'none', 'failed', '2023-03-17 04:45:07', '2023-03-17 04:45:08'),
(28, 1, NULL, 'User', NULL, NULL, 'TRXIVLSF0W35M', 'Deposit With CoinPayments', '20', 'deposit', '10', '30', 'coinpayments', 'USD', 13344.3, '[]', 'none', 'pending', '2023-03-17 04:57:54', '2023-03-17 04:57:54'),
(29, 1, NULL, 'User', NULL, NULL, 'TRXOSRFAI91NV', 'Deposit With CoinPayments', '20', 'deposit', '10', '30', 'coinpayments', 'USD', 13344.3, '[]', 'none', 'pending', '2023-03-17 05:01:49', '2023-03-17 05:01:49'),
(30, 1, NULL, 'User', NULL, NULL, 'TRXX88RVUQLS8', 'Deposit With CoinPayments', '20', 'deposit', '10', '30', 'coinpayments', 'USD', 13344.3, '[]', 'none', 'failed', '2023-03-17 05:03:20', '2023-03-17 05:03:21'),
(31, 1, NULL, 'User', NULL, NULL, 'TRXMONIJWEMMG', 'Deposit With CoinPayments', '120', 'deposit', '10', '130', 'coinpayments', 'USD', 57825.3, '[]', 'none', 'failed', '2023-03-17 05:03:53', '2023-03-17 05:03:53'),
(32, 1, NULL, 'User', NULL, NULL, 'TRX1K3QVNBMHB', 'Deposit With CoinPayments', '102', 'deposit', '10', '112', 'coinpayments', 'USD', 49818.72, '[]', 'none', 'pending', '2023-03-17 05:05:48', '2023-03-17 05:05:48'),
(33, 1, NULL, 'User', NULL, NULL, 'TRXTDI3SCCD6I', 'Deposit With PayerUrl', '22', 'manual_deposit', '0', '22', 'payerurl', 'USD', 9785.82, '{\"Public Key:\":\"8098\"}', 'none', 'pending', '2023-03-17 17:20:16', '2023-03-17 17:20:16'),
(34, 1, NULL, 'User', NULL, NULL, 'TRXXTPCYSAPHU', 'Deposit With CoinPayments', '220', 'deposit', '10', '230', 'coinpayments', 'USD', 102306.3, '[]', 'none', 'failed', '2023-03-17 17:21:43', '2023-03-17 17:21:44'),
(35, 1, NULL, 'User', NULL, NULL, 'TRXXV6VU9LJAU', 'Deposit With PayerUrl', '11', 'deposit', '0', '11', 'payerurl', 'Binance Pay', 4892.91, '[]', 'none', 'pending', '2023-03-17 18:15:48', '2023-03-17 18:15:48'),
(36, 1, NULL, 'User', NULL, NULL, 'TRX3KQT67N9A9', 'Deposit With PayerUrl', '100', 'deposit', '0', '100', 'payerurl', 'Binance Pay', 44481, '[]', 'none', 'pending', '2023-03-17 18:16:32', '2023-03-17 18:16:32'),
(37, 1, NULL, 'User', NULL, NULL, 'TRXJZJ4GG3OFO', 'Deposit With PayerUrl', '10', 'deposit', '0', '10', 'payerurl', 'Binance Pay', 4448.1, '[]', 'none', 'pending', '2023-03-18 04:12:19', '2023-03-18 04:12:19'),
(38, 1, NULL, 'User', NULL, NULL, 'TRXK0HSPYS225', 'Starter Plan Plan Interest', '0.06', 'interest', '0', '0.06', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-18 04:36:01', '2023-03-18 04:36:01'),
(39, 1, NULL, 'User', NULL, NULL, 'TRXAKERNKTUNP', 'Deposit With PayerUrl', '10', 'deposit', '0', '10', 'payerurl', 'Binance Pay', 4448.1, '[]', 'none', 'pending', '2023-03-18 05:57:13', '2023-03-18 05:57:13'),
(40, 1, NULL, 'User', NULL, NULL, 'TRXQZLAMW7UUC', 'Deposit With PayerUrl', '12', 'deposit', '0.24', '12.24', 'payerurl', 'Binance Pay', 5444.4744, '[]', 'none', 'pending', '2023-03-18 09:17:32', '2023-03-18 09:17:32'),
(41, 1, NULL, 'User', NULL, NULL, 'TRXLI8JPAOCFP', 'Deposit With PayerUrl', '100', 'deposit', '2', '102', 'payerurl', 'Binance Pay', 45370.62, '[]', 'none', 'pending', '2023-03-18 10:24:21', '2023-03-18 10:24:21'),
(42, 1, NULL, 'User', NULL, NULL, 'TRXSBGM3BAIS9', 'Deposit With PayerUrl', '100', 'deposit', '2', '102', 'payerurl', 'Binance Pay', 45370.62, '[]', 'none', 'pending', '2023-03-18 10:25:08', '2023-03-18 10:25:08'),
(43, 1, NULL, 'User', NULL, NULL, 'TRXYV5R3KGEUN', 'Deposit With PayerUrl', '100', 'deposit', '2', '102', 'payerurl', 'Binance Pay', 45370.62, '[]', 'none', 'pending', '2023-03-18 10:26:32', '2023-03-18 10:26:32'),
(44, 1, NULL, 'User', NULL, NULL, 'TRXQ1QMAIM64X', 'Deposit With PayerUrl', '100', 'deposit', '2', '102', 'payerurl', 'Binance Pay', 45370.62, '[]', 'none', 'pending', '2023-03-18 10:27:19', '2023-03-18 10:27:19'),
(45, 1, NULL, 'User', NULL, NULL, 'TRXWCFBE3Q2BY', 'Deposit With PayerUrl', '100', 'deposit', '2', '102', 'payerurl', 'Binance Pay', 45370.62, '[]', 'none', 'pending', '2023-03-18 10:27:36', '2023-03-18 10:27:36'),
(46, 1, NULL, 'User', NULL, NULL, 'TRX1EQBGTVJHQ', 'Deposit With PayerUrl', '100', 'deposit', '2', '102', 'payerurl', 'Binance Pay', 45370.62, '[]', 'none', 'pending', '2023-03-18 10:34:18', '2023-03-18 10:34:18'),
(47, 1, NULL, 'User', NULL, NULL, 'TRXQZ2MFVK7PK', 'Deposit With PayerUrl', '100', 'deposit', '2', '102', 'payerurl', 'Binance Pay', 45370.62, '[]', 'none', 'pending', '2023-03-18 10:39:38', '2023-03-18 10:39:38'),
(48, 1, NULL, 'User', NULL, NULL, 'TRXLNIBPMNZIN', 'Deposit With PayerUrl', '100', 'deposit', '2', '102', 'payerurl', 'Binance Pay', 45370.62, '[]', 'none', 'pending', '2023-03-18 11:07:22', '2023-03-18 11:07:22'),
(49, 1, NULL, 'User', NULL, NULL, 'TRXX5PIAQPEI5', 'Deposit With PayerUrl', '12', 'deposit', '0.24', '12.24', 'payerurl', 'Binance Pay', 5444.4744, '[]', 'none', 'pending', '2023-03-18 11:21:05', '2023-03-18 11:21:05'),
(50, 1, NULL, 'User', NULL, NULL, 'TRXDPWYF2FGOP', 'Deposit With PayerUrl', '11', 'deposit', '0.22', '11.22', 'payerurl', 'Binance Pay', 4990.7682, '[]', 'none', 'pending', '2023-03-18 12:38:36', '2023-03-18 12:38:36'),
(51, 1, NULL, 'User', NULL, NULL, 'TRXRCP1LXBIPL', 'Deposit With Binance Pay,USDT,BTC,ETH', '11', 'deposit', '0', '11', 'payerurl', 'USDT', 11, '[]', 'none', 'pending', '2023-03-18 13:47:28', '2023-03-18 13:47:28'),
(52, 1, NULL, 'User', NULL, NULL, 'TRX7LLSZBOOBC', 'Profit to Main Wallet Exchanged', '152.06', 'exchange', '0', '152.06', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-18 18:44:48', '2023-03-18 18:44:48'),
(53, 1, NULL, 'User', NULL, NULL, 'TRXXBEDNXTIFH', 'Starter Plan Plan Invested', '2', 'investment', '0', '2', 'system', NULL, NULL, '[]', 'none', 'success', '2023-03-18 20:08:45', '2023-03-18 20:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ranking_id` bigint(20) DEFAULT NULL,
  `rankings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` enum('male','female','other','') NOT NULL DEFAULT '',
  `date_of_birth` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `balance` float(10,2) NOT NULL DEFAULT 0.00,
  `profit_balance` float(10,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `kyc` tinyint(1) NOT NULL DEFAULT 0,
  `kyc_credential` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `google2fa_secret` text DEFAULT NULL,
  `two_fa` tinyint(1) NOT NULL DEFAULT 0,
  `deposit_status` tinyint(1) NOT NULL DEFAULT 1,
  `withdraw_status` tinyint(1) NOT NULL DEFAULT 1,
  `transfer_status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ranking_id`, `rankings`, `avatar`, `first_name`, `last_name`, `country`, `phone`, `username`, `email`, `gender`, `date_of_birth`, `city`, `zip_code`, `address`, `balance`, `profit_balance`, `status`, `kyc`, `kyc_credential`, `google2fa_secret`, `two_fa`, `deposit_status`, `withdraw_status`, `transfer_status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, '[1]', NULL, 'yazan', 'bader', 'Jordan', '+962 788476690', 'ybader', 'baderyazan1990@gmail.com', '', NULL, NULL, NULL, NULL, 198.06, 0.00, 1, 0, NULL, NULL, 0, 1, 1, 1, '2023-03-15 15:52:15', '$2y$10$fBi7XPlBPUiMk0VzhO/iFO94GilFtvFP2ugPj4d009ZDa9UJXs7.C', '9umoBwCKqAgIWqKWyHuL5RqWB9l0BmpF7h95N51wt4evjB9zTO6YK1pySzWf', '2023-03-15 15:51:25', '2023-03-18 20:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_schedules`
--

CREATE TABLE `withdrawal_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawal_schedules`
--

INSERT INTO `withdrawal_schedules` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sunday', 0, NULL, '2023-03-15 09:59:13'),
(2, 'Monday', 0, NULL, '2023-03-15 09:59:13'),
(3, 'Tuesday', 0, NULL, '2023-03-15 09:59:13'),
(4, 'Wednesday', 0, NULL, '2023-03-15 09:59:13'),
(5, 'Thursday', 0, NULL, '2023-03-15 09:59:13'),
(6, 'Friday', 1, NULL, '2023-03-15 09:59:13'),
(7, 'Saturday', 0, NULL, '2023-03-15 09:59:13');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_accounts`
--

CREATE TABLE `withdraw_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `withdraw_method_id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `credentials` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `rate` double NOT NULL,
  `required_time` varchar(255) NOT NULL,
  `required_time_format` varchar(255) NOT NULL,
  `charge` double NOT NULL,
  `charge_type` varchar(255) NOT NULL,
  `min_withdraw` varchar(255) NOT NULL,
  `max_withdraw` varchar(255) NOT NULL,
  `fields` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `icon`, `name`, `currency`, `rate`, `required_time`, `required_time_format`, `charge`, `charge_type`, `min_withdraw`, `max_withdraw`, `fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 'global/images/Bji2A16SZgfICUsc7hIY.png', 'Bank Trasfer', 'USD', 1, '5', 'day', 2, 'percentage', '2000', '2000', '{\"1\":{\"name\":\"Bank Name\",\"type\":\"text\",\"validation\":\"required\"},\"2\":{\"name\":\"Bank Account Number\",\"type\":\"text\",\"validation\":\"required\"},\"3\":{\"name\":\"Bank Country\",\"type\":\"text\",\"validation\":\"required\"},\"4\":{\"name\":\"Bank Holder Name\",\"type\":\"text\",\"validation\":\"required\"},\"5\":{\"name\":\"Bank Branch\",\"type\":\"text\",\"validation\":\"required\"},\"6\":{\"name\":\"Bank Routing Numbe\",\"type\":\"text\",\"validation\":\"required\"},\"7\":{\"name\":\"IBN Number\",\"type\":\"textarea\",\"validation\":\"nullable\"},\"8\":{\"name\":\"photo\",\"type\":\"file\",\"validation\":\"required\"}}', 0, '2022-09-22 11:58:00', '2023-01-31 03:36:36'),
(2, 'global/images/LaDficlayzNPatGOnaAU.png', 'Mobile Money', 'USD', 1, '2', 'day', 2, 'percentage', '20', '2000', '{\"1\":{\"name\":\"Mobile Number\",\"type\":\"text\",\"validation\":\"required\"}}', 0, '2022-10-19 17:52:26', '2023-03-15 09:57:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_css`
--
ALTER TABLE `custom_css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_gateway_code_unique` (`gateway_code`);

--
-- Indexes for table `invests`
--
ALTER TABLE `invests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kycs_name_unique` (`name`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_contents`
--
ALTER TABLE `landing_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_locale_unique` (`locale`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `page_settings`
--
ALTER TABLE `page_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page_settings_key_unique` (`key`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rankings_ranking_unique` (`ranking`),
  ADD UNIQUE KEY `rankings_ranking_name_unique` (`ranking_name`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_links`
--
ALTER TABLE `referral_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referral_links_referral_program_id_user_id_unique` (`referral_program_id`,`user_id`),
  ADD KEY `referral_links_code_index` (`code`);

--
-- Indexes for table `referral_programs`
--
ALTER TABLE `referral_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_relationships`
--
ALTER TABLE `referral_relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_targets`
--
ALTER TABLE `referral_targets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schemas`
--
ALTER TABLE `schemas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_email_unique` (`email`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_tnx_unique` (`tnx`),
  ADD KEY `transactions_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `withdrawal_schedules`
--
ALTER TABLE `withdrawal_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_accounts`
--
ALTER TABLE `withdraw_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_css`
--
ALTER TABLE `custom_css`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `invests`
--
ALTER TABLE `invests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landing_contents`
--
ALTER TABLE `landing_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `page_settings`
--
ALTER TABLE `page_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rankings`
--
ALTER TABLE `rankings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `referral_links`
--
ALTER TABLE `referral_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referral_programs`
--
ALTER TABLE `referral_programs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referral_relationships`
--
ALTER TABLE `referral_relationships`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_targets`
--
ALTER TABLE `referral_targets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schemas`
--
ALTER TABLE `schemas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawal_schedules`
--
ALTER TABLE `withdrawal_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `withdraw_accounts`
--
ALTER TABLE `withdraw_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
