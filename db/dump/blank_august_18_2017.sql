-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 19, 2017 at 12:49 AM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blank`
--

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `website_name` varchar(100) NOT NULL,
  `smtp_server` varchar(100) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `email_login` varchar(150) NOT NULL,
  `email_pass` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `verify_url` varchar(255) NOT NULL,
  `email_act` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `website_name`, `smtp_server`, `smtp_port`, `email_login`, `email_pass`, `from_name`, `from_email`, `transport`, `verify_url`, `email_act`) VALUES
(1, 'Local Testing Server', 'smtp.emailsrvr.com', 587, 'info@gokabam.com', 'apple-8-nun-shall-pass', 'Will', 'info@gokabam.com', 'tls', 'http://localhost/wip', 0);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stripe_ts` varchar(255) NOT NULL,
  `stripe_tp` varchar(255) NOT NULL,
  `stripe_ls` varchar(255) NOT NULL,
  `stripe_lp` varchar(255) NOT NULL,
  `recap_pub` varchar(100) NOT NULL,
  `recap_pri` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `note_batches`
--

CREATE TABLE IF NOT EXISTS `note_batches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `when_uploaded` datetime NOT NULL,
  `page_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `when_uploaded` (`when_uploaded`),
  KEY `page_name` (`page_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `note_batches`
--

INSERT INTO `note_batches` (`id`, `user_id`, `when_uploaded`, `page_name`) VALUES
(1, 1, '2017-05-01 01:55:19', 'pages/postit.php'),
(2, 1, '2017-05-01 01:56:36', 'pages/postit.php'),
(3, 1, '2017-05-01 03:00:46', 'pages/postit.php'),
(4, 1, '2017-05-01 03:02:08', 'pages/postit.php'),
(5, 1, '2017-05-01 03:02:29', 'pages/solutions.php'),
(6, 1, '2017-05-01 03:07:01', 'pages/solutions.php'),
(7, 1, '2017-05-01 03:07:54', 'pages/carriers.php'),
(8, 1, '2017-05-01 03:08:14', 'pages/solutions.php'),
(9, 1, '2017-05-01 03:08:38', 'pages/solutions.php'),
(10, 1, '2017-05-01 03:12:32', 'pages/solutions.php'),
(11, 1, '2017-05-01 03:13:22', 'pages/solutions.php'),
(12, 1, '2017-05-01 03:14:07', 'pages/solutions.php'),
(13, 1, '2017-05-01 03:14:52', 'pages/solutions.php'),
(14, 1, '2017-05-01 03:15:37', 'pages/solutions.php'),
(15, 1, '2017-05-01 03:16:01', 'pages/solutions.php'),
(16, 1, '2017-05-01 03:16:18', 'pages/solutions.php'),
(17, 1, '2017-05-01 03:17:07', 'pages/solutions.php'),
(18, 1, '2017-05-01 03:17:52', 'pages/solutions.php'),
(19, 1, '2017-05-01 03:18:37', 'pages/solutions.php'),
(20, 1, '2017-05-01 03:19:22', 'pages/solutions.php'),
(21, 1, '2017-05-01 03:20:53', 'pages/solutions.php'),
(22, 1, '2017-05-01 03:23:07', 'pages/solutions.php'),
(23, 1, '2017-05-01 03:36:22', 'pages/solutions.php'),
(24, 1, '2017-05-01 03:41:45', 'pages/solutions.php'),
(25, 1, '2017-05-01 03:42:27', 'pages/solutions.php'),
(26, 1, '2017-05-01 03:42:51', 'pages/solutions.php'),
(27, 1, '2017-05-01 03:49:22', 'pages/solutions.php'),
(28, 1, '2017-05-01 03:51:25', 'pages/about_us.php'),
(29, 1, '2017-05-02 10:33:53', 'pages/veterans.php'),
(30, 1, '2017-05-02 10:34:41', 'pages/veterans.php'),
(31, 1, '2017-05-08 21:02:36', 'pages/about_us.php'),
(32, 1, '2017-05-09 15:25:49', 'pages/home.php'),
(33, 1, '2017-05-09 15:29:35', 'pages/veterans.php'),
(34, 1, '2017-05-09 15:41:21', 'pages/home.php'),
(35, 1, '2017-05-09 15:50:24', 'pages/home.php'),
(36, 1, '2017-05-09 15:51:33', 'pages/home.php'),
(37, 1, '2017-05-09 15:52:29', 'pages/home.php'),
(38, 1, '2017-05-09 15:54:07', 'pages/home.php'),
(39, 1, '2017-05-09 15:55:37', 'pages/home.php'),
(40, 1, '2017-05-09 15:56:07', 'pages/home.php'),
(41, 1, '2017-05-09 15:56:58', 'pages/home.php'),
(42, 1, '2017-05-09 15:58:30', 'pages/home.php'),
(43, 1, '2017-05-09 16:01:00', 'pages/save_notes.php'),
(44, 1, '2017-05-09 16:01:10', 'pages/save_notes.php'),
(45, 1, '2017-05-09 16:02:03', 'pages/home.php'),
(46, 1, '2017-05-09 16:03:54', 'pages/home.php'),
(47, 1, '2017-05-09 16:05:00', 'pages/home.php'),
(48, 1, '2017-05-09 16:05:48', 'pages/home.php'),
(49, 1, '2017-05-09 16:05:55', 'pages/home.php'),
(50, 1, '2017-05-09 16:06:05', 'pages/home.php'),
(51, 1, '2017-05-09 16:18:47', 'pages/veterans.php'),
(52, 1, '2017-05-09 16:24:53', 'pages/solutions.php'),
(53, 1, '2017-05-09 16:35:27', 'pages/about_us.php'),
(54, 1, '2017-05-09 17:35:06', 'pages/carriers.php'),
(55, 1, '2017-05-17 14:41:09', 'pages/carriers.php');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(100) NOT NULL,
  `private` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `private`) VALUES
(1, 'index.php', 0),
(2, 'z_us_root.php', 1),
(3, 'users/account.php', 1),
(4, 'users/admin.php', 1),
(5, 'users/admin_page.php', 1),
(6, 'users/admin_pages.php', 1),
(7, 'users/admin_permission.php', 1),
(8, 'users/admin_permissions.php', 1),
(9, 'users/admin_user.php', 1),
(10, 'users/admin_users.php', 1),
(11, 'users/edit_profile.php', 1),
(12, 'users/email_settings.php', 1),
(13, 'users/email_test.php', 1),
(14, 'users/forgot_password.php', 0),
(15, 'users/forgot_password_reset.php', 0),
(16, 'users/index.php', 0),
(17, 'users/init.php', 1),
(18, 'users/join.php', 0),
(19, 'users/joinThankYou.php', 0),
(20, 'users/login.php', 0),
(21, 'users/logout.php', 0),
(22, 'users/profile.php', 1),
(23, 'users/times.php', 1),
(24, 'users/user_settings.php', 1),
(25, 'users/verify.php', 0),
(26, 'users/verify_resend.php', 0),
(27, 'users/view_all_users.php', 1),
(28, 'usersc/empty.php', 1),
(29, 'info.php', 1),
(35, 'users/private_init.php', 1),
(41, 'pages/index.php', 1),
(46, 'users/private_init.example.php', 1),
(47, 'pages/ping_alive.php', 1),
(49, 'pages/help.php', 1),
(50, 'phinx.php', 1),
(51, 'users/init.cli.php', 1),
(55, 'pages/home.php', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `permission_page_matches`
--

CREATE TABLE IF NOT EXISTS `permission_page_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(15) NOT NULL,
  `page_id` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `permission_page_matches`
--

INSERT INTO `permission_page_matches` (`id`, `permission_id`, `page_id`) VALUES
(2, 2, 27),
(3, 1, 24),
(4, 1, 22),
(5, 2, 13),
(6, 2, 12),
(7, 1, 11),
(8, 2, 10),
(9, 2, 9),
(10, 2, 8),
(11, 2, 7),
(12, 2, 6),
(13, 2, 5),
(14, 2, 4),
(15, 1, 3),
(16, 2, 29),
(19, 2, 31),
(21, 2, 36),
(25, 2, 38),
(28, 2, 39),
(29, 2, 40),
(30, 2, 42),
(31, 2, 41),
(35, 2, 43),
(39, 2, 44),
(42, 2, 45),
(45, 2, 47),
(51, 1, 49),
(54, 2, 53),
(55, 2, 54),
(56, 1, 55),
(57, 2, 55),
(58, 1, 56),
(59, 2, 56),
(60, 1, 60),
(61, 2, 60),
(62, 1, 57),
(63, 2, 57),
(64, 1, 58),
(65, 2, 58),
(66, 2, 49),
(67, 1, 61),
(68, 2, 61),
(71, 1, 62),
(74, 1, 63),
(75, 1, 64);

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE IF NOT EXISTS `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`) VALUES
(1, 1, '<h1>This is the Admin''s bio.</h1>'),
(2, 2, 'This is your bio'),
(18, 18, 'This is your bio');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `recaptcha` int(1) NOT NULL DEFAULT '0',
  `force_ssl` int(1) NOT NULL,
  `login_type` varchar(20) NOT NULL,
  `css_sample` int(1) NOT NULL,
  `us_css1` varchar(255) NOT NULL,
  `us_css2` varchar(255) NOT NULL,
  `us_css3` varchar(255) NOT NULL,
  `css1` varchar(255) NOT NULL,
  `css2` varchar(255) NOT NULL,
  `css3` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `language` varchar(255) NOT NULL,
  `track_guest` int(1) NOT NULL,
  `site_offline` int(1) NOT NULL,
  `force_pr` int(1) NOT NULL,
  `reserved1` varchar(100) NOT NULL,
  `reserverd2` varchar(100) NOT NULL,
  `custom1` varchar(100) NOT NULL,
  `custom2` varchar(100) NOT NULL,
  `custom3` varchar(100) NOT NULL,
  `website_url` varchar(255) DEFAULT NULL,
  `s3_bucket_name` varchar(255) DEFAULT NULL,
  `view_timeout_seconds` int(11) NOT NULL DEFAULT '900',
  `sns_arn` varchar(255) DEFAULT NULL,
  `user_profile_config` varchar(255) DEFAULT NULL,
  `email_alert_to` varchar(255) DEFAULT NULL,
  `email_cc_alert_to` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `recaptcha`, `force_ssl`, `login_type`, `css_sample`, `us_css1`, `us_css2`, `us_css3`, `css1`, `css2`, `css3`, `site_name`, `language`, `track_guest`, `site_offline`, `force_pr`, `reserved1`, `reserverd2`, `custom1`, `custom2`, `custom3`, `website_url`, `s3_bucket_name`, `view_timeout_seconds`, `sns_arn`, `user_profile_config`, `email_alert_to`, `email_cc_alert_to`) VALUES
(1, 1, 0, '', 1, '../users/css/color_schemes/spacelab.bootstrap.css', '../users/css/blank.css', '../users/css/us-admin.css', '', '', '', 'Blank', 'en', 0, 0, 0, '', '', '', '', '', 'http://localhost/blank', '', 0, 'arn:aws:sns:us-west-2:963635107936:gokobam-alerts', NULL, 'willwoodlief@gmail.com', 'willwoodlief+cc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(155) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL,
  `logins` int(100) NOT NULL,
  `account_owner` tinyint(4) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `stripe_cust_id` varchar(255) NOT NULL,
  `billing_phone` varchar(20) NOT NULL,
  `billing_srt1` varchar(255) NOT NULL,
  `billing_srt2` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_state` varchar(255) NOT NULL,
  `billing_zip_code` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT '0',
  `vericode` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `active` int(1) NOT NULL,
  `custom1` varchar(255) NOT NULL,
  `custom2` varchar(255) NOT NULL,
  `custom3` varchar(255) NOT NULL,
  `custom4` varchar(255) NOT NULL,
  `custom5` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `EMAIL` (`email`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `fname`, `lname`, `permissions`, `logins`, `account_owner`, `account_id`, `company`, `stripe_cust_id`, `billing_phone`, `billing_srt1`, `billing_srt2`, `billing_city`, `billing_state`, `billing_zip_code`, `join_date`, `last_login`, `email_verified`, `vericode`, `title`, `active`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`) VALUES
(1, 'willwoodlief+ht+admin@gmail.com', 'admin', '$2y$12$9R4u4lVraHZeJJ6YVJxO4e43./LZQLwC3VVlS1BvSN1IsZJDOooFK', 'Admin', 'Woodlief', 1, 51, 1, 0, 'UserSpice', '', '', '', '', '', '', '', '2016-01-01 00:00:00', '2017-08-19 01:12:01', 1, '322418', '', 0, '', '', '', '', ''),
(2, 'noreply@userspice.com', 'user', '$2y$12$HZa0/d7evKvuHO8I3U8Ff.pOjJqsGTZqlX8qURratzP./EvWetbkK', 'user', 'user', 1, 0, 1, 0, 'none', '', '', '', '', '', '', '', '2016-01-02 00:00:00', '2016-01-02 00:00:00', 1, '970748', '', 1, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `session` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE IF NOT EXISTS `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uagent` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_permission_matches`
--

CREATE TABLE IF NOT EXISTS `user_permission_matches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `user_permission_matches`
--

INSERT INTO `user_permission_matches` (`id`, `user_id`, `permission_id`) VALUES
(100, 1, 1),
(101, 1, 2),
(102, 2, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `note_batches`
--
ALTER TABLE `note_batches`
  ADD CONSTRAINT `note_batches_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
