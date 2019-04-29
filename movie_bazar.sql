-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2018 at 11:53 AM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_bazar`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, 'CODEX@123', 0, 0, 0, NULL, '2018-05-09 13:34:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_api_users`
--

CREATE TABLE `tbl_api_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email_id` varchar(500) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `sex` tinyint(4) NOT NULL,
  `security_code` bigint(20) NOT NULL,
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_api_users`
--

INSERT INTO `tbl_api_users` (`id`, `first_name`, `last_name`, `email_id`, `password`, `username`, `mobile`, `sex`, `security_code`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Gobind', 'Kumar', 'gobind@filmbazaarworldwide.com', 'ca762676c74f1b27011e944093b7e929', 'admin', '', 0, 0, '2018-07-08 07:19:47', '2015-12-25 10:35:16', '2015-12-25 10:35:16'),
(2, 'Gobind', 'Kumar', 'gobind@filmbazaarworldwide.com1', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811496', 0, 0, '2018-07-08 07:38:06', '2018-07-08 07:35:50', '2018-07-08 00:35:50'),
(3, 'Nagendra', 'Kumar', 'nagendra@filmbazaarworldwide.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811496', 0, 0, '2018-08-22 07:50:06', '2018-07-08 07:39:32', '2018-07-08 00:39:32'),
(4, 'Nagendra', 'Kumar', 'nagendra87k@gmail.com', '6ca29d9bb530402bd09fe026ee838148', '', '9643811496', 0, 683763, '2018-08-01 20:10:35', '2018-07-08 08:22:50', '2018-07-08 01:22:50'),
(5, 'Umesh', 'Taneja', 'umeshTaneja@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', '9729385603', 0, 0, '2018-07-10 19:14:21', '2018-07-10 19:13:56', '2018-07-10 12:13:56'),
(6, 'Nagendra', 'Kumar', 'Govind87k@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811499', 0, 0, '2018-07-10 23:05:09', '2018-07-11 06:05:09', '2018-07-10 23:05:09'),
(7, 'Nagendra', 'Kumar', 'Govind@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811499', 0, 0, '2018-07-10 23:36:13', '2018-07-11 06:36:13', '2018-07-10 23:36:13'),
(8, 'Raju', 'Taneja', 'umesh@gmail.com', '9f853909c6f9908377f4201ba6a13ac4', '', '9729385604', 0, 996294, '2018-07-29 12:44:23', '2018-07-11 16:49:59', '2018-07-11 09:49:59'),
(9, 'Ram', 'Singh', 'nagendra88k@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811496', 0, 0, '2018-09-18 18:53:32', '2018-07-11 18:34:16', '2018-07-11 11:34:16'),
(10, 'Ram', 'Singh', 'umesht@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811496', 0, 0, '2018-07-11 12:39:03', '2018-07-11 19:39:03', '2018-07-11 12:39:03'),
(11, '', '', 'jcjc', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 0, 0, '2018-07-11 23:06:22', '2018-07-12 06:06:22', '2018-07-11 23:06:22'),
(12, 'Raju', 'Taneja', 'sonu@gmail.com', '9f853909c6f9908377f4201ba6a13ac4', '', '9729385604', 0, 0, '2018-07-13 12:30:28', '2018-07-13 19:30:28', '2018-07-13 12:30:28'),
(13, 'umeshh', 'taneja', 'umeshh@gmail.com', '91e6a73ad2ef643b520d9ce29027a399', '', '9729385603', 0, 0, '2018-07-13 19:47:50', '2018-07-13 19:47:24', '2018-07-13 12:47:24'),
(14, 'Go', 'gooo', 'nagendra.index@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', '9643811496', 0, 0, '2018-07-13 19:53:55', '2018-07-13 19:51:27', '2018-07-13 12:51:27'),
(15, 'umes', 'umes@1234', 'umes@1234', 'e943bb52062f5de654c98a14c17f21e4', '', '9729385603', 0, 0, '2018-07-13 13:03:05', '2018-07-13 20:03:05', '2018-07-13 13:03:05'),
(16, 'raju', 'taneja', 'raju@gmail.com', 'fe783d3587fb00d99a0045324acb861c', '', '9729385603', 0, 0, '2018-07-13 13:05:32', '2018-07-13 20:05:32', '2018-07-13 13:05:32'),
(17, 'Ram', 'Singh', 'ram@gmail.com', '25f9e794323b453885f5181f1b624d0b', '', '9643811496', 0, 0, '2018-07-13 20:08:07', '2018-07-13 20:07:47', '2018-07-13 13:07:47'),
(18, 'pol', 'lol', 'pol@gmail.com', '627a1f8f3e1f8a2a0cbb9aedc33ade8c', '', '9729385603', 0, 0, '2018-07-13 13:38:10', '2018-07-13 20:38:10', '2018-07-13 13:38:10'),
(19, 'Ram', 'Singh', 'umeshtaneja.123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811496', 0, 846513, '2018-07-14 07:28:22', '2018-07-14 14:28:22', '2018-07-14 07:28:22'),
(20, 'Ram', 'Singh', 'umeshtanea.123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811496', 0, 669173, '2018-07-14 07:57:08', '2018-07-14 14:57:08', '2018-07-14 07:57:08'),
(21, 'Ram', 'Singh', 'umeshtana.123@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811496', 0, 0, '2018-07-14 07:57:23', '2018-07-14 14:57:23', '2018-07-14 07:57:23'),
(22, 'Govind', 'Kumar', 'gobind.info8@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '8745022948', 0, 448947, '2018-10-24 17:49:49', '2018-07-15 09:31:49', '2018-07-15 02:31:49'),
(23, 'pol', 'Singh', 'pl@gmail.com', '7c8843a8c304bb888a8e7770356b0ed5', '', '9643811496', 0, 0, '2018-07-16 09:24:12', '2018-07-16 16:24:12', '2018-07-16 09:24:12'),
(24, 'pp', 'pp', 'pp@gmail.com', 'f0d0ccd4e2c631ae28d1c4d3cdb8950c', '', '3649758312', 0, 0, '2018-07-16 09:24:42', '2018-07-16 16:24:42', '2018-07-16 09:24:42'),
(25, 'ok', 'ok', 'ok@gmail.com', 'a7c471cfd3c42dc6d6a8552ac2c0a22c', '', '3694675689', 0, 0, '2018-07-16 09:25:58', '2018-07-16 16:25:58', '2018-07-16 09:25:58'),
(26, 'Ram', 'Singh', 'raj@filmbazaarworldwide.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '9643811496', 0, 148384, '2018-07-17 08:16:08', '2018-07-17 15:16:08', '2018-07-17 08:16:08'),
(27, 'Radhe', 'shayam', 'abc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '8745022947', 0, 798648, '2018-07-17 20:49:35', '2018-07-17 20:49:24', '2018-07-17 13:49:24'),
(28, 'Raj', 'kumar', 'raj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '852536321', 0, 0, '2018-07-18 16:28:39', '2018-07-18 16:27:09', '2018-07-18 09:27:09'),
(29, 'Prag', 'taneja', 'pragtaneja.456@gmail.com', '51a3436221669d1eb47980e8cbb654d0', '', '8569984718', 0, 0, '2018-08-18 00:50:05', '2018-08-05 02:38:33', '2018-08-04 19:38:33'),
(30, 'u', 't', 'umeshtaneja.1234@gmail.com', '5a581963c68d1a0b0f75d7039b66295b', '', '9729385603', 0, 0, '2018-08-19 04:01:46', '2018-08-19 03:58:01', '2018-08-18 20:58:01'),
(31, 'rajkumar', 'chodheri', 'rajfilmbazaar@gmail.com', '789ea74df93a5819665b21b8fc018f4b', '', '9811095005', 0, 0, '2018-10-19 20:51:01', '2018-09-11 07:34:29', '2018-09-11 00:34:29'),
(32, '', '', 'text', 'd41d8cd98f00b204e9800998ecf8427e', '', '', 0, 161167, '2018-10-17 23:56:39', '2018-10-18 06:56:39', '2018-10-17 23:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast_crew`
--

CREATE TABLE `tbl_cast_crew` (
  `id` bigint(20) NOT NULL,
  `video_id` bigint(20) NOT NULL,
  `starring` varchar(2000) CHARACTER SET latin1 NOT NULL,
  `screenplay_by` varchar(2000) NOT NULL,
  `story_by` varchar(2000) NOT NULL,
  `music_by` varchar(2000) NOT NULL,
  `cinematography` varchar(2000) NOT NULL,
  `edited_by` varchar(2000) NOT NULL,
  `produced_by` varchar(2000) NOT NULL,
  `production_company` varchar(2000) NOT NULL,
  `distributed_by` varchar(500) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `tbl_cast_crew`
--

INSERT INTO `tbl_cast_crew` (`id`, `video_id`, `starring`, `screenplay_by`, `story_by`, `music_by`, `cinematography`, `edited_by`, `produced_by`, `production_company`, `distributed_by`, `is_deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 'Madhuri', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 1, 2, '2018-09-11 18:19:34', 0, '0000-00-00 00:00:00'),
(2, 2, 'Mehmood, Aruna Irani, Amitabh Bachchan, Shatrughan Sinha, Anwar Ali', 'Rajendra Krishan (dialogue) (as Rajinder Krishan), Usilai Somanathan ', 'Usalai Somanathan', 'Rahul Dev Burman ', '', '', '', 'Mehmood Productions', '', 1, 2, '2018-09-13 19:48:22', 0, '0000-00-00 00:00:00'),
(3, 3, 'Ryan Reynolds, Chris Pratt, Vin Diesel', 'Steve Alex', 'Rawat Aalfw', 'RA Alaxander', '', '', '', 'Eros', '', 1, 2, '2018-09-13 19:58:21', 0, '0000-00-00 00:00:00'),
(4, 5, 'Saif Ali Khan, Nawazuddin Siddiqui, Radhika Apte, Neeraj Kabi', '', '', 'Rachita Arora', '', '', 'Netflix', 'Netflix', '', 0, 2, '2018-09-13 20:23:22', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(500) CHARACTER SET utf16 NOT NULL,
  `isDeleted` tinyint(4) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) NOT NULL,
  `updatedDtm` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category_name`, `isDeleted`, `created_by`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'Movie', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 'Movies', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'Tv Shows', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'Kids', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'Short Movies', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(6, 'Plays', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(7, 'Music', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.41.27', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(2, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.41.27', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(3, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.41.27', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(4, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.41.27', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(5, 9, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Gobind Kumar\"}', '106.210.41.27', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(6, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.41.27', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(7, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.41.27', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(8, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.43.123', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(9, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.43.123', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(10, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.246.110', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(11, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.246.110', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(12, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.78.93.150', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', NULL),
(13, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '118.185.136.34', 'Chrome 65.0.3325.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.162 Safari/537.36', 'Windows 10', NULL),
(14, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.126.227', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(15, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '118.185.136.34', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(16, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.28.171', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(17, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.223.232.7', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(18, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.217.103', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(19, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.223.158.255', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(20, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.223.157.159', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(21, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.223.157.159', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(22, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '182.68.142.169', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(23, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '118.185.136.34', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(24, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.78.95.27', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(25, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.223.96.28', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(26, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.223.96.28', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(27, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.223.96.124', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(28, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.223.96.124', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(29, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.199.11.63', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(30, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.78.73.243', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(31, 1, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\"}', '106.210.38.255', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(32, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.78.93.130', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(33, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '1.39.28.13', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(34, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(35, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.228.22', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(36, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.228.22', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(37, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.228.22', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Mac OS X', NULL),
(38, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.228.22', 'Safari 604.4.7', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/604.4.7 (KHTML, like Gecko) Version/11.0.2 Safari/604.4.7', 'Mac OS X', NULL),
(39, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.10.137', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(40, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.13.172', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(41, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.69.204', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(42, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.67.36', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(43, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.67.12', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(44, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.78.89.247', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(45, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.67.12', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(46, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.78.72.26', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(47, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.67.12', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(48, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.211.30.163', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(49, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(50, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(51, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(52, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(53, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(54, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(55, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(56, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(57, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.37.208', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(58, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.224.134', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(59, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 65.0.3325.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 'Windows 10', NULL),
(60, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.205.0.115', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(61, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.253.77', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(62, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.243.227', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(63, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.246.157', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(64, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.246.157', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(65, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.246.157', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(66, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.246.157', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(67, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.42.205', 'Chrome 66.0.3359.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'Mac OS X', NULL),
(68, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.15.222', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(69, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.15.222', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(70, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.15.222', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(71, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.15.222', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(72, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '106.210.15.222', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(73, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.15.222', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(74, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '106.210.15.222', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(75, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.15.222', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(76, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.15.222', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(77, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.234.76', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(78, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '106.223.234.76', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(79, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.234.76', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(80, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '106.223.234.76', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(81, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.234.76', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(82, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.5.247', 'Chrome 66.0.3359.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'Mac OS X', NULL),
(83, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.71.186.210', 'Chrome 66.0.3359.117', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.117 Safari/537.36', 'Mac OS X', NULL),
(84, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.121.184', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(85, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '223.181.121.184', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(86, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.121.184', 'Firefox 59.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:59.0) Gecko/20100101 Firefox/59.0', 'Mac OS X', NULL),
(87, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '118.185.136.34', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(88, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.255.222', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(89, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.255.222', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(90, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '182.68.255.222', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(91, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '118.185.136.34', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(92, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.20.204', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(93, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.225.118.168', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(94, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.93.195', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(95, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.170.48', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(96, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.225.115.0', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(97, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.75.31', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(98, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.75.31', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(99, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.75.31', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(100, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.75.31', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(101, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.225.119.192', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(102, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.78.72.206', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(103, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.78.94.250', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(104, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.70.165', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(105, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.80.99', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(106, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '47.30.121.141', 'Chrome 66.0.3359.139', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 'Mac OS X', NULL),
(107, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.221.213', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(108, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.221.213', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(109, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.221.213', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(110, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.202.187.114', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(111, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.202.187.114', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(112, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.202.187.114', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(113, 15, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '106.202.187.114', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(114, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.202.187.114', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(115, 16, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '106.202.187.114', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(116, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.255.42', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(117, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.129.5', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(118, 15, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '106.223.129.5', 'Chrome 53.0.2785.146', 'Mozilla/5.0 (Linux; U; Android 7.0; en-us; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.146 Mobile Safari/537.36 XiaoMi/MiuiBrowser/9.5.6', 'Android', NULL),
(119, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.134.149', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(120, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.134.149', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(121, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '47.31.32.99', 'Chrome 66.0.3359.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Windows 10', NULL),
(122, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.71.69', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(123, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.64.192', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(124, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.247.113', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(125, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.115.52', 'Chrome 66.0.3359.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Windows 10', NULL),
(126, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.60.128', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(127, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.233.52', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(128, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.63.32', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(129, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.109.40', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(130, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.163.247', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(131, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.163.247', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(132, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.202.229.105', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(133, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.239.20', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(134, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.47.126', 'Chrome 66.0.3359.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Windows 10', NULL),
(135, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.68.34', 'Chrome 66.0.3359.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Windows 10', NULL),
(136, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.235.71', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(137, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '192.127.94.7', 'Chrome 66.0.3359.181', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', 'Windows 10', NULL),
(138, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.191.153', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(139, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.69.13', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows 10', NULL),
(140, 15, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '47.31.92.78', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(141, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.66.192', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows 10', NULL),
(142, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '157.38.228.187', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(143, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.225.218', 'Firefox 60.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0) Gecko/20100101 Firefox/60.0', 'Mac OS X', NULL),
(144, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.225.218', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(145, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.0.18', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows 10', NULL),
(146, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.0.18', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows 10', NULL),
(147, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '157.38.236.196', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(148, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.159.130', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows 10', NULL),
(149, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.14.107.184', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows 10', NULL),
(150, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.127.141', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Safari/537.36', 'Windows 10', NULL),
(151, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.231.86', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(152, 17, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Employee1\"}', '182.68.231.86', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(153, 17, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Employee1\"}', '49.33.60.209', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Linux; Android 8.0.0; SM-G960F Build/R16NW) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36', 'Android', NULL),
(154, 17, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Employee1\"}', '27.106.122.39', 'Safari 605.1.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/11.1.1 Safari/605.1.15', 'Mac OS X', NULL),
(155, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.93.119', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(156, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.9.207', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(157, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.99.92', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(158, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '192.127.94.7', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(159, 17, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Employee1\"}', '43.248.68.214', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(160, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.202.190', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(161, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '182.68.202.190', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(162, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '182.68.236.153', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(163, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.236.153', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(164, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '182.68.236.153', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(165, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.236.153', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(166, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '182.68.236.153', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(167, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.236.153', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(168, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '182.68.202.190', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(169, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.56.255', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(170, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '223.181.56.255', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(171, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.56.255', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(172, 2, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Manager\"}', '223.181.56.255', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(173, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '223.181.56.255', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(174, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.147.162', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(175, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.210.79.209', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(176, 17, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Employee1\"}', '49.15.147.162', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(177, 17, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Employee1\"}', '49.15.147.162', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(178, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.104.250', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(179, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.169.126', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(180, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.169.126', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(181, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.169.126', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(182, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.127.16', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(183, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.128.213', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(184, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.132.69', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(185, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.132.69', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(186, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.9.30', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(187, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.134.189', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(188, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.98.110', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(189, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.6.49', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(190, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.232.208', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(191, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.232.208', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(192, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.242.90', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(193, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.233.88', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(194, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.79.51.233', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(195, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.199.79', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(196, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.199.79', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(197, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.123.190', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(198, 17, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Employee1\"}', '1.187.123.190', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(199, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.123.190', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(200, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.84.141', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(201, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.184.5', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(202, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.224.87', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(203, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.142.217', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL);
INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(204, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.60.234', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(205, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.142.217', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(206, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.142.217', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(207, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.124.146', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(208, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.124.146', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(209, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.142.217', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(210, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.142.217', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(211, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.113.11', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(212, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.113.11', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(213, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.113.11', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(214, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.72.97', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(215, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.72.97', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(216, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.145.96', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(217, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '106.223.142.217', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(218, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.203.90', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(219, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.150', 'Chrome 61.0.3163.128', 'Mozilla/5.0 (Linux; U; Android 6.0.1; en-in; Redmi 4 Build/MMB29M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/61.0.3163.128 Mobile Safari/537.36 XiaoMi/MiuiBrowser/9.7.3', 'Android', NULL),
(220, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.203.90', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(221, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.203.90', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(222, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.226', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(223, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.129.107', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(224, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.25', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(225, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '192.127.94.7', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(226, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '192.127.94.7', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(227, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '42.111.33.134', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(228, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '42.111.34.236', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(229, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.148.226', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(230, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.208', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(231, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.208', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(232, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.208', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(233, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.205.160', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(234, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.205.160', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(235, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.205.160', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(236, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.205.160', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(237, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '42.111.32.90', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(238, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.125.209', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(239, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.92', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(240, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.92', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Mac OS X', NULL),
(241, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.21.102', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(242, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.19.234', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(243, 20, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Raj\"}', '106.67.19.234', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(244, 20, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Raj\"}', '106.67.19.234', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(245, 24, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Monty Yadav\"}', '106.67.19.234', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(246, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.20.102', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(247, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.33', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(248, 24, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Monty Yadav\"}', '112.110.98.196', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(249, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.98.196', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(250, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.98.196', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(251, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.98.196', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(252, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.2.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(253, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.224', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(254, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.23.30', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(255, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.27.57', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(256, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.121.113', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(257, 20, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Raj\"}', '112.110.121.113', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(258, 26, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Aarav Rao\"}', '106.67.105.120', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(259, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.146', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(260, 20, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Raj\"}', '192.127.94.7', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(261, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '192.127.94.7', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(262, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.11.121', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(263, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.70.17', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(264, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.70.17', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(265, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.195', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(266, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.247', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(267, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.28.203', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(268, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.218.74', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(269, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.5.148', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(270, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.237.125', 'Chrome 68.0.3440.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'Windows 10', NULL),
(271, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.119.247', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(272, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.79.48.102', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(273, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.67.12', 'Chrome 68.0.3440.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'Windows 10', NULL),
(274, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.79.54.10', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(275, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.217.251', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(276, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.127.163', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(277, 30, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Abc@gmail.com\"}', '1.187.127.163', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(278, 30, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Abc@gmail.com\"}', '1.187.127.163', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(279, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.238.60', 'Chrome 68.0.3440.84', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.84 Safari/537.36', 'Windows 10', NULL),
(280, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.98', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(281, 31, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Atul Arora\"}', '112.110.99.141', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(282, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.99.141', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(283, 30, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Abc@gmail.com\"}', '112.110.99.141', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(284, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.124', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(285, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.116.203', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(286, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.107.126', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(287, 32, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Monty\"}', '49.14.96.196', 'Chrome 53.0.2785.134', 'Mozilla/5.0 (Linux; U; Android 8.1.0; en-gb; CPH1859 Build/O11019) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 OppoBrowser/1.0.0', 'Android', NULL),
(288, 32, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Monty\"}', '49.14.96.196', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1859 Build/O11019) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36', 'Android', NULL),
(289, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.2', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 7', NULL),
(290, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.1.52', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(291, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.209.135', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(292, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.110.185', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(293, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '59.162.60.153', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(294, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.209.135', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(295, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.24.12', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(296, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.58.124', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(297, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.87.81', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(298, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.118.163', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(299, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.11.125', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(300, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.87.81', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(301, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.41', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(302, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '27.6.207.59', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(303, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '27.6.207.59', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(304, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.79.48.202', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(305, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.87.81', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(306, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.70.202.73', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(307, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.87.81', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(308, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.243', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(309, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.96.188', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(310, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.243', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(311, 33, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '42.111.9.29', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(312, 33, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '42.111.32.243', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(313, 33, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '42.111.32.243', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(314, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.96.188', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(315, 35, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Vibha\"}', '106.67.96.188', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(316, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.96.188', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(317, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.96.188', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(318, 34, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '42.111.33.167', 'Chrome 67.0.3396.87', 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.87 Mobile Safari/537.36', 'Android', NULL),
(319, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.139', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(320, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.139', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(321, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.131.157', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(322, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(323, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(324, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.131.157', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(325, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.159', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(326, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.174.235', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(327, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.109.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(328, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.174.235', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(329, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.109.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(330, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(331, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(332, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.213.77', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(333, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.114.209', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(334, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.3.183', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(335, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.174.235', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(336, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.29', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(337, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.174.235', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(338, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.145', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(339, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.174.235', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(340, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.174.235', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(341, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.125.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(342, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.174.235', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(343, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.79.60.143', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(344, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 67.0.3396.99', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36', 'Windows 10', NULL),
(345, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.181.197', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(346, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.104.150', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(347, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.13', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(348, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.20.35', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(349, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(350, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.181.197', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(351, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.19.65', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(352, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.161', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(353, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.161', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(354, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.117.188', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(355, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.161', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(356, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.181.197', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(357, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.95', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(358, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.95', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(359, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.15.231', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(360, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.181.197', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(361, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.181.197', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(362, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.158', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(363, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.99.26', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(364, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.181.197', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(365, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.44', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(366, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(367, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(368, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.110.112', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(369, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(370, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.75.156', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(371, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.75.156', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(372, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(373, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.19.209', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(374, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.127.100', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(375, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(376, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(377, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.114', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(378, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.114', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(379, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.127.100', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(380, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(381, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.145', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(382, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(383, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(384, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.110.3', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(385, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.14', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(386, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.14', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(387, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.191.49', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(388, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(389, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.15.62', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(390, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(391, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(392, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.15.62', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(393, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.247', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL);
INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(394, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.25', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(395, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(396, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.236.234', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(397, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.55.163', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(398, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.46', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(399, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.191.49', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(400, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.21.142', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(401, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.21.142', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(402, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(403, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.251.143', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(404, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.249.44', 'Firefox 61.0', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:61.0) Gecko/20100101 Firefox/61.0', 'Windows 8.1', NULL),
(405, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.37.170', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(406, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.37.170', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(407, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.16.46', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(408, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(409, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.190', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(410, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.190', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(411, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.63.29', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(412, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.73.225', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(413, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.130', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(414, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(415, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(416, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.38', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(417, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.107.237', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(418, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.107.237', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(419, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(420, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.19.200', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 7', NULL),
(421, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.173.181', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(422, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.206', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(423, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.173.181', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(424, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.11.9', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(425, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.11.9', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(426, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.113.33', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(427, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.220', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(428, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.220', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(429, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.220', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(430, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.220', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(431, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.122.25', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(432, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.122.25', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(433, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.174', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(434, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.174', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(435, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.174', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(436, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.174', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(437, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.174', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(438, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.33.174', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(439, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.187', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(440, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.187', 'Firefox 61.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:61.0) Gecko/20100101 Firefox/61.0', 'Mac OS X', NULL),
(441, 29, '{\"role\":\"2\",\"roleText\":\"Manager\",\"name\":\"Nagendra Kumar\"}', '42.111.35.157', 'Chrome 68.0.3440.91', 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36', 'Android', NULL),
(442, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.124.189', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(443, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.254.183', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(444, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.105.108', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(445, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.73.93', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(446, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.74.56', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(447, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.74.56', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(448, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.220', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(449, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '103.240.192.220', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(450, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(451, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.57.215', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(452, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.57.215', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(453, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(454, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.79.52.220', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(455, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.104', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(456, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.175.252', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(457, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.242.175.252', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(458, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.66.218', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(459, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.104', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(460, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.66.218', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(461, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.104', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', NULL),
(462, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.125.54', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(463, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.125.54', 'Spartan 17.17134', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', 'Windows 10', NULL),
(464, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.122.236', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(465, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.3.23', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(466, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.70.110', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(467, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.238.22', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(468, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '150.129.238.22', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(469, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.107.50', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(470, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.35.125', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(471, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.79.243', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(472, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '157.38.196.38', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(473, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.16.130', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(474, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.244.50', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(475, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.149.90', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(476, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.102.128', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(477, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '49.15.68.243', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(478, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.248.154', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(479, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.7', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(480, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.12.59', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(481, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.55.74', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Windows 10', NULL),
(482, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '182.68.139.202', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(483, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.6.235', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', NULL),
(484, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.38.73', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(485, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.32.67', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(486, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.243.42', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(487, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '106.67.38.54', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', NULL),
(488, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.246.53', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(489, 9, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind Kumar\"}', '42.111.34.152', 'Firefox 62.0', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:62.0) Gecko/20100101 Firefox/62.0', 'Mac OS X', NULL),
(490, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.251.254', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(491, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.246.202', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', NULL),
(492, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '14.140.240.82', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', NULL),
(493, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '1.187.252.190', 'Chrome 66.0.3359.158', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 5 Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', 'Android', NULL),
(494, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.28.132', 'Chrome 70.0.3538.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', 'Windows 10', NULL),
(495, 11, '{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"Gobind\"}', '112.110.28.132', 'Chrome 70.0.3538.67', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.67 Safari/537.36', 'Windows 10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan`
--

CREATE TABLE `tbl_plan` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) CHARACTER SET utf16 NOT NULL,
  `alias_name` varchar(200) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` text NOT NULL,
  `days` int(11) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_plan`
--

INSERT INTO `tbl_plan` (`id`, `name`, `alias_name`, `amount`, `description`, `days`, `is_deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 'R匮‴㤰', 'Annual', 0, 'This plan valid for an Annual.', 0, 1, 0, '0000-00-00 00:00:00', 9, '2018-05-27 07:27:42'),
(2, 'R匮″㔰', 'Half Yearly', 0, 'This plan valid for a Half Yearly.', 0, 1, 0, '0000-00-00 00:00:00', 11, '2018-06-03 06:53:49'),
(3, '卵扳捲楢攠祯畲⁰污渠†㔰⁰敲⁭潮瑨', '400', 0, 'This plan valid for a month.', 0, 1, 2, '2018-04-08 04:01:56', 11, '2018-08-26 20:36:36'),
(4, '₹ 200 Monthly', ' 400', 100, 'This plan valid for a  quarterly.', 5, 0, 2, '2018-04-08 04:19:55', 2, '2018-09-02 11:07:46'),
(5, '剳⸠㠰〠䙯爠瑷漠祥慲', 'abc', 0, 'dhidsjf jggoiriugoiuer', 0, 1, 2, '2018-04-09 15:09:27', 9, '2018-05-27 07:28:09'),
(6, '₹ 50 Weekly', '300', 300, 'This is demo amount.', 20, 0, 2, '2018-08-07 06:11:48', 2, '2018-09-02 11:06:54'),
(7, '₹ 20 per day', '200', 200, '200 per month plan', 30, 0, 2, '2018-08-07 06:13:20', 2, '2018-09-02 11:07:30'),
(8, '卵扳捲楢攠祯畲⁰污渠慴⁜甲あ㤠㔰〠灥爠祥慲', '', 0, '', 0, 1, 2, '2018-08-07 06:48:03', 11, '2018-08-16 20:01:06'),
(9, '卵扳捲楢攠剳‸〰', '', 0, '', 0, 1, 2, '2018-08-08 17:00:22', 11, '2018-08-29 18:16:21'),
(10, 'A', '', 0, '', 0, 1, 2, '2018-08-18 17:17:41', 11, '2018-08-18 17:17:47'),
(11, '₹ 600 for one Year', '? 800', 800, 'This plan is valid for 2 years.', 2, 0, 2, '2018-08-29 17:08:57', 2, '2018-09-02 11:08:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(3, 'gobind@moviebazar.com', 'LG9vFyqVroH3MXc', 'Chrome 66.0.3359.158', '47.30.88.139', 0, 1, '2018-05-26 15:52:35', NULL, NULL),
(4, 'gobind@moviebazar.com', 'Istdlk4JnUVqMe9', 'Chrome 66.0.3359.139', '47.30.75.31', 0, 1, '2018-05-26 21:04:04', NULL, NULL),
(5, 'nagendra@gamooz.com', 'kRwzIYsNvqSECPT', 'Firefox 60.0', '182.68.255.42', 0, 1, '2018-05-30 04:17:14', NULL, NULL),
(8, 'gobind.info8@gmail.com', 'zCHjGks8ahXd52D', 'Chrome 67.0.3396.99', '106.67.96.188', 0, 1, '2018-08-12 17:46:10', NULL, NULL),
(9, 'gobind.info8@gmail.com', 'd1VO7IP84rbMfwL', 'Chrome 68.0.3440.106', '106.67.15.62', 0, 1, '2018-08-21 18:17:52', NULL, NULL),
(10, 'gobind.info8@gmail.com', 'U1WLCz2VAJq0XGk', 'Chrome 68.0.3440.106', '14.140.240.82', 0, 1, '2018-09-04 11:56:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_showcase`
--

CREATE TABLE `tbl_showcase` (
  `id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `showcase_img_uri` varchar(2000) CHARACTER SET utf16 NOT NULL,
  `movie_id` bigint(20) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` bigint(20) NOT NULL,
  `modified_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_showcase`
--

INSERT INTO `tbl_showcase` (`id`, `category_id`, `showcase_img_uri`, `movie_id`, `is_active`, `is_deleted`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, '1-1.jpg', 1, 0, 1, 2, '2018-09-11 18:07:53', 2, '2018-09-11 18:08:16'),
(2, 2, '2-2.jpg', 3, 0, 1, 2, '2018-09-13 20:11:36', 2, '2018-09-18 19:57:07'),
(3, 2, '3-2.jpg', 2, 0, 1, 2, '2018-09-13 20:11:52', 2, '2018-09-18 19:56:07'),
(4, 2, '4-2.jpg', 4, 0, 1, 2, '2018-09-13 20:12:11', 2, '2018-09-18 18:57:17'),
(5, 3, '5-3.jpg', 5, 0, 1, 2, '2018-09-25 18:35:19', 9, '2018-09-25 18:43:06'),
(6, 2, '6-2.jpg', 2, 0, 0, 2, '2018-09-26 17:48:59', 2, '2018-09-26 17:49:08'),
(7, 2, '7-2.jpg', 3, 0, 0, 2, '2018-09-26 17:57:25', 2, '2018-09-26 17:58:20'),
(8, 2, '8-2.jpg', 4, 0, 0, 2, '2018-09-26 18:37:05', 2, '2018-09-30 03:10:09'),
(9, 2, '9-2.png', 4, 0, 1, 2, '2018-09-30 03:11:28', 9, '2018-09-30 03:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription`
--

CREATE TABLE `tbl_subscription` (
  `id` int(11) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscription_plan`
--

CREATE TABLE `tbl_subscription_plan` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `transaction_id` bigint(20) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `expiry_days` int(11) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `expired_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscription_plan`
--

INSERT INTO `tbl_subscription_plan` (`id`, `uid`, `plan_id`, `transaction_id`, `amount`, `expiry_days`, `purchase_date`, `expired_date`) VALUES
(2, 9, 10, 9223372036854775807, '400', 30, '2018-08-30 17:30:03', '2018-09-29 17:30:03'),
(3, 9, 10, 9223372036854775807, '400', 30, '2018-08-30 18:51:24', '2018-09-29 18:51:24'),
(4, 9, 10, 9223372036854775807, '400', 30, '2018-09-02 09:55:57', '2018-10-02 09:55:57'),
(5, 9, 10, 9223372036854775807, '400', 30, '2018-09-02 10:07:55', '2018-10-02 10:07:55'),
(6, 9, 10, 9223372036854775807, '400', 30, '2018-09-02 10:13:55', '2018-10-02 10:13:55'),
(7, 22, 4, 87654324, '400', 1, '2018-09-02 10:38:52', '2018-09-03 10:38:52'),
(8, 22, 7, 87654324, '400', 1, '2018-09-02 10:40:58', '2018-09-03 10:40:58'),
(9, 22, 6, 87654324, '400', 1, '2018-09-02 10:43:01', '2018-09-03 10:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_categories`
--

CREATE TABLE `tbl_sub_categories` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf16 NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_categories`
--

INSERT INTO `tbl_sub_categories` (`id`, `cat_id`, `name`, `is_deleted`, `created_by`, `created_on`, `updated_by`, `updated_on`) VALUES
(1, 1, 'Romantic', 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 2, 'Bollywood', 0, 0, '0000-00-00 00:00:00', 9, '2018-09-30 04:05:44'),
(3, 2, 'Hollywood', 0, 0, '0000-00-00 00:00:00', 9, '2018-09-30 04:06:13'),
(4, 3, 'Drama & Thriller', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `is_approved` tinyint(4) NOT NULL,
  `token` varchar(500) NOT NULL,
  `is_verify` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `is_approved`, `token`, `is_verify`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(29, 'nagendra87k@gmail.com', '$2y$10$ZksoXBxiUrhH2UeoiQJ0NOEnC.crzsx5PLOwB2MUYleQdkoZ9vvgW', 'Nagendra Kumar', '9643811496', 2, 0, '900150983cd24fb0d6963f7d28e17f72', 1, 0, 0, '2018-07-31 20:34:23', NULL, NULL),
(2, 'manager@moviebazar.com', '$2y$10$juQarv285Jg1DuwyfvjCKOCcrx/7c3Jcvp.vZDhfJreve.co4a5Ia', 'Manager', '9890098900', 2, 0, '', 0, 0, 1, '2016-12-09 17:49:56', 9, '2018-05-05 02:54:35'),
(3, 'employee@moviebazar.com', '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', '9890098900', 3, 0, '', 0, 1, 1, '2016-12-09 17:50:22', 1, '2018-03-31 08:01:26'),
(9, 'gobind@moviebazar.com', '$2y$10$/aBIHu8NADg0sUFA9p8O.OX7No8t3CQ8J4SKsm8x5ug/i5hznGqqW', 'Gobind Kumar', '9643811496', 1, 0, '', 0, 0, 1, '2018-03-17 18:26:04', NULL, NULL),
(10, 'nagendra7k@gmail.com', '$2y$10$f40JxitoP2MtVtmLh0rtGuLTM/8t48Tp7k0wkAreiSixv/YkYEptO', 'Nagendra', '9643811496', 3, 0, '', 0, 1, 1, '2018-03-31 08:00:35', 9, '2018-04-01 15:46:24'),
(11, 'gobind.info8@gmail.com', '$2y$10$95/7iTzdMGoXZUkR05LwD.yPuoQvChSpY//4Ktt4kviWmfToKf7/e', 'Gobind', '8745022948', 1, 0, '', 0, 0, 9, '2018-03-31 18:47:16', 11, '2018-07-29 14:39:08'),
(12, 'raj@gmail.com', '$2y$10$m80kIzT/KOgLTKvy0CFtme3LdecWfgpfjnyLgb9XmD4kk8jozYO02', 'Raj Kumar', '8756345098', 2, 0, '', 0, 1, 9, '2018-04-01 15:45:52', 9, '2018-05-26 21:04:16'),
(13, 'Raghav@gmail.com', '$2y$10$TmKJgU8iPMhhO4JygSseZOi7ZC6b9hJf6CbJxKbXSowMVWni0evUu', 'Raghav', '8756909876', 3, 0, '', 0, 0, 9, '2018-04-08 05:42:19', NULL, NULL),
(14, 'ravi@gmail.com', '$2y$10$XRvJc0bZJldkLEo0.BAnGelBZaWhlO7GBu4SAX42OCwC9K1PjEZgu', 'Ravi', '9876543210', 3, 0, '', 0, 0, 9, '2018-04-09 15:00:25', NULL, NULL),
(28, 'nagendra87k@gmail.com', '$2y$10$JFA.5YZ6Dou6R3nCB.QxZ.kehdzMYZFE0q4dPh7UAImWuq5Iku.Fy', 'Nagendra Kumar', '9643811496', 2, 0, '900150983cd24fb0d6963f7d28e17f72', 0, 0, 0, '2018-07-31 20:33:53', NULL, NULL),
(16, 'nagendra@gamooz.com', '$2y$10$QiUxLjpr3gS1RgkUM56vquiPCBzxpPs5fzX.ywFTmY/kll7U603Si', 'Nagendra Kumar', '9643811496', 2, 1, '900150983cd24fb0d6963f7d28e17f72', 0, 1, 9, '2018-05-29 00:22:42', 11, '2018-07-29 14:38:30'),
(17, 'employee1@filmbazaarworldwide.com', '$2y$10$FUQjKIn468b5DoiqAHhJA.5NxsmlIu1v0ShEYRhpj3ogcZ1QqKiEm', 'Employee1', '9643811496', 2, 0, '', 0, 0, 9, '2018-07-06 06:05:34', NULL, NULL),
(18, 'nagendra88k@gamil.com', '$2y$10$sxMXo9099dJ4lXY1kDY9pOyWKuJnFWUR9lBwqU3LY7LMtAN/UQCry', 'Nagendra Kumar', '9643811496', 2, 0, '', 0, 0, 0, '2018-07-28 01:58:25', 9, '2018-08-15 13:09:54'),
(19, 'nagendra89@gamil.com', '$2y$10$8ia.BJkwDArYxJEnxuLVYOcY/Yp3v8ve1BY92.vP.lDQ4PL3THGPW', 'Nagendra Kumar', '9643811496', 2, 1, '900150983cd24fb0d6963f7d28e17f72', 0, 0, 0, '2018-07-28 18:48:51', NULL, NULL),
(20, 'Raj@filmbazaarworldwide.com', '$2y$10$kKL.x.rNzdaGJxT.fncPMuB6OfNyxcW0S7JUy8rQnek12utyfSMjm', 'Raj', '9811095005', 2, 0, '', 0, 0, 0, '2018-07-28 19:17:38', 20, '2018-07-28 19:23:50'),
(21, 'Raj@filmbazaarworldwide.com', '$2y$10$R6J2w.B4OrL74dNpt8mjNOZxYen3fEf1rVqc0EvC0wpApHanfMd2W', 'Raj Chaudhary', '9811095005', 2, 0, '', 0, 0, 0, '2018-07-28 19:20:55', NULL, NULL),
(22, 'Raj@filmbazaarworldwide.com', '$2y$10$K9TUz4NvFx/XSqDYvC93OOstj507KS.cZuHjPVwLoCPhHqTN2ptVm', 'Raj Chaudhary', '8745022948', 2, 0, '', 0, 0, 0, '2018-07-28 19:21:39', NULL, NULL),
(23, 'Raj@filmbazaarworldwide.com', '$2y$10$u6rP.zGhkfGVlPC0P1g1he1NBYUxOpB0pxqeoY3rk7FSQBVqNHd0u', 'Raj', '8745022948', 2, 0, '', 0, 0, 0, '2018-07-28 19:22:37', NULL, NULL),
(24, 'monty_since1990@yahoo.com', '$2y$10$f2PuCJD0t2NL3j969G.r2O8u2lxigRxgNk0ivYcWCWZuD3nBYaiwO', 'Monty Yadav', '9914411242', 2, 0, '', 0, 0, 0, '2018-07-28 19:25:07', NULL, NULL),
(25, 'nagendra877k@gmail.com', '$2y$10$aX.CneVwsapSKxRkIsWsg.g3yfhvQMZ7Qqx6g88rc0VBAakoCsZhO', 'Nagendra Kumar', '9643811496', 2, 0, '', 0, 0, 0, '2018-07-29 09:05:14', NULL, NULL),
(26, 'aarav@gmail.com', '$2y$10$MgmV3kchsdGCs1Ef6H4Yt.gcgYuB1nI038VS3UPAKBPaxmB.4/5P.', 'Aarav Rao', '8745022948', 2, 0, '', 0, 0, 0, '2018-07-30 12:51:43', NULL, NULL),
(30, 'Abc@gmail.com', '$2y$10$/YCgB8pDLzFaSpbX2dc2TO1DdL0ZuVFzvFoMRWka3Hz5z33jSdNVu', 'Abc@gmail.com', '9914411242', 2, 0, '900150983cd24fb0d6963f7d28e17f72', 0, 0, 0, '2018-08-08 11:41:28', NULL, NULL),
(31, 'atul.arora@live.in', '$2y$10$kMS8nuZmaWEI1Mk5RXsFOuLhYs2HrPKeFIAC2.sCt38DStwwfv4My', 'Atul Arora', '9664668616', 2, 0, '900150983cd24fb0d6963f7d28e17f72', 0, 0, 0, '2018-08-08 16:29:18', NULL, NULL),
(32, 'aaaravmalhotra4@gmail.com', '$2y$10$scRQftt0PIII7fiM2uKdk.oaALP68qP4ZdmN6vkokzrqztoqp.yRS', 'Monty', '9914411242', 2, 0, '900150983cd24fb0d6963f7d28e17f72', 1, 0, 0, '2018-08-09 17:42:16', NULL, NULL),
(34, 'inbox.nagendra@gmail.com', '$2y$10$JN2pjpBPNrUSBwrRBl8HLuaJNG01PZ.TBmbNVbv1H/m3hIb3rWq2a', 'Nagendra Kumar', '9643811496', 2, 0, '900150983cd24fb0d6963f7d28e17f72', 1, 0, 0, '2018-08-12 17:43:01', NULL, NULL),
(35, 'vibha.sharma1502@gmail.com', '$2y$10$a0rEbQAG0N8hLbX5GL8V/up1i7eqjKD.9UPcYidarpr2aSx4hcw9S', 'Vibha', '8745022948', 2, 0, '900150983cd24fb0d6963f7d28e17f72', 1, 0, 0, '2018-08-12 18:02:07', NULL, NULL),
(36, 'Abd@gmail.com', '$2y$10$u5rvueGyEA25jQw6JGul/uxDpONF3Wq.M0n9a8n3cGEdSyXkwQXqi', 'Jjjj', '9914411242', 2, 0, '900150983cd24fb0d6963f7d28e17f72', 0, 0, 0, '2018-08-12 18:17:21', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_authentication`
--

CREATE TABLE `tbl_users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users_authentication`
--

INSERT INTO `tbl_users_authentication` (`id`, `users_id`, `token`, `expired_at`, `created_at`, `updated_at`) VALUES
(6, 1, '$1$.SIE3UB.$n9iHjGm3kboCAcYfoNsHl.', '2018-05-30 22:01:48', '2018-05-30 03:01:48', '2018-05-30 03:01:48'),
(7, 1, '$1$8FaCAA6e$izQmQv/AHXvsZGFauIzwQ0', '2018-05-30 22:04:37', '2018-05-30 03:04:37', '2018-05-30 03:04:37'),
(8, 1, '$1$B22Znn0S$Cu/knzy8f3fKpotDYaqQ5.', '2018-05-31 00:48:03', '2018-05-30 05:48:03', '2018-05-30 05:48:03'),
(9, 1, '$1$4JLASuRg$N4HGnZaC8FbpSIhc8hOS01', '2018-05-31 00:52:19', '2018-05-30 05:52:19', '2018-05-30 05:52:19'),
(10, 1, '$1$97WBRfEx$AJUIleY7Xn9YfLWj3XO/J1', '2018-05-31 00:53:06', '2018-05-30 05:53:06', '2018-05-30 05:53:06'),
(11, 1, '$1$pqOILRdr$4JYGZC223kMIDEYYxUaCU/', '2018-05-31 00:53:33', '2018-05-30 05:53:33', '2018-05-30 05:53:33'),
(12, 1, '$1$yFgvpdQV$qXUL6789iYPqAIWZy0Whn.', '2018-05-31 00:55:34', '2018-05-30 05:55:34', '2018-05-30 05:55:34'),
(13, 1, '$1$hT0bQoYr$qj5kAaRcVtpMnEXatY87f1', '2018-05-31 00:55:49', '2018-05-30 05:55:49', '2018-05-30 05:55:49'),
(14, 1, '$1$uT6V0fcm$PuOGPWYOcXh2KHhncuiok1', '2018-05-31 08:55:55', '2018-05-30 13:55:55', '2018-05-30 13:55:55'),
(15, 1, '$1$gzrBv9HL$q6pHgheJUi8c7uZMAtqyy.', '2018-06-08 23:47:02', '2018-06-08 04:47:02', '2018-06-08 04:47:02'),
(16, 1, '$1$w3Ew.g8A$i5f.cXVQIAMclvx.OvV9E0', '2018-06-09 08:03:00', '2018-06-08 13:03:00', '2018-06-08 13:03:00'),
(17, 1, '$1$6IJwuP14$4bA/I2qKbWRz3s2jJtGVZ.', '2018-06-09 18:16:46', '2018-06-08 13:20:01', '2018-06-09 06:16:46'),
(18, 1, '$1$Hw0X2KQd$RvgLvqiM9Sjyd8VDYjGFW.', '2018-06-09 08:23:29', '2018-06-08 13:23:29', '2018-06-08 13:23:29'),
(19, 1, '$1$QZD8IPbf$/VQnUEyyOHRxo4eXYzf8z0', '2018-06-10 06:20:40', '2018-06-09 11:20:40', '2018-06-09 11:20:40'),
(20, 1, '$1$tOLlqjkM$o2m7wBp12.HwFE2ssg0R5.', '2018-06-10 06:21:39', '2018-06-09 11:21:39', '2018-06-09 11:21:39'),
(21, 1, '$1$Gb.jEmSC$u7LUF7MVSXMHUb/LxGtEn1', '2018-06-10 08:28:45', '2018-06-09 11:24:56', '2018-09-26 17:49:19'),
(22, 1, '$1$DldP7Deo$xW7rnSH17j.Z/MEMvfWjR/', '2018-06-10 06:25:27', '2018-06-09 11:25:27', '2018-06-09 11:25:27'),
(23, 1, '$1$yOgdadGL$qfFchRsmS3dtn4gj4yEhS1', '2018-06-10 08:24:33', '2018-06-09 11:28:28', '2018-06-09 20:24:33'),
(24, 1, '$1$9k5YKFWa$IQLv0mGxeXIio5PEyznVv1', '2018-06-13 04:34:22', '2018-06-11 10:31:11', '2018-09-26 18:51:16'),
(25, 1, '$1$qRhRQ2Jw$WrhWdIKE5gkb/ubZLH9pE/', '2018-06-16 11:08:55', '2018-06-15 04:08:55', '2018-06-15 04:08:55'),
(26, 1, '$1$cYAFNWIN$M1KoKIlnpfhLA6t4ad5IJ.', '2018-06-15 23:59:26', '2018-06-15 04:09:31', '2018-06-15 11:59:26'),
(27, 1, '$1$qoSwxZee$ChdXO9wdEAnoCiEuQb2jf0', '2018-06-17 04:34:59', '2018-06-16 02:26:32', '2018-06-16 16:34:59'),
(28, 1, '$1$x1Igqvl9$LVFRRsFpTfJw/Pytnv1kl.', '2018-06-17 20:36:53', '2018-06-16 02:56:02', '2018-06-17 08:36:53'),
(29, 1, '$1$FOso8vKr$5U.XJ7YzRmy75yfyfX4K00', '2018-06-16 23:15:25', '2018-06-16 04:13:57', '2018-06-16 11:15:25'),
(30, 1, '$1$blm6R5Kf$pXpRRQ4uKdNcTS3Tid7zQ1', '2018-06-19 19:47:36', '2018-06-18 12:10:33', '2018-06-19 07:47:36'),
(31, 1, '$1$JocDmBC3$ZwOXMfoCAdfoSRdodcsVa/', '2018-06-20 05:54:46', '2018-06-19 10:52:25', '2018-06-19 17:54:46'),
(32, 1, '$1$EMnHL5BE$DUCOfNJzJVOtDvZEaEVr9/', '2018-06-22 02:02:07', '2018-06-21 06:59:56', '2018-06-21 14:02:07'),
(33, 1, '$1$z1bSNUwD$obsWr9Rr5GLCVQ2MqxkXw0', '2018-06-24 08:37:24', '2018-06-23 13:35:39', '2018-06-23 20:37:24'),
(34, 1, '$1$Er9b9ibw$fFH5JTl/hvNYNalmRmtDe0', '2018-06-28 08:22:36', '2018-06-27 11:21:19', '2018-06-27 20:22:36'),
(35, 1, '$1$.76GSP93$FXvmYMxfBW4Mgczu.PS321', '2018-06-29 08:48:35', '2018-06-28 10:57:31', '2018-06-28 20:48:35'),
(36, 1, '$1$cFwkpKrY$Uz5n.eufDShbLRn3cwVI30', '2018-07-02 08:06:22', '2018-06-29 13:44:11', '2018-07-01 20:06:22'),
(37, 1, '$1$HpWAnCtK$Evvyb9FJ9hAEB1L0JsuaY1', '2018-07-01 01:17:16', '2018-06-30 04:31:46', '2018-06-30 13:17:16'),
(38, 1, '$1$lbxxLaLa$Qdjx3BLDRVhthmmi5gdbm.', '2018-07-01 00:15:50', '2018-06-30 05:08:29', '2018-06-30 12:15:50'),
(39, 1, '$1$ZQTdwkZm$9d5bHC.ipUyEpq72UUmq0.', '2018-07-05 15:59:11', '2018-06-30 23:43:11', '2018-07-05 03:59:11'),
(40, 1, '$1$setC0BJc$kaSxqlCD4fP74b2sPrwzN.', '2018-07-02 05:49:07', '2018-07-01 10:43:33', '2018-07-01 17:49:07'),
(41, 1, '$1$dpL0UsC4$597V/5rNjV6b4NjuXw1RT.', '2018-07-04 07:12:20', '2018-07-03 12:09:57', '2018-07-03 19:12:20'),
(42, 1, '$1$Qm0NZwlZ$5BsV0hE0NaAWejjS7HmpL0', '2018-07-04 17:55:42', '2018-07-03 22:55:27', '2018-07-04 05:55:42'),
(43, 1, '$1$HJ8Dunjm$fpv2fng2eUmQbpqOnq3Kp0', '2018-07-05 09:16:27', '2018-07-04 14:03:00', '2018-07-04 21:16:27'),
(44, 1, '$1$GmYXopqD$jdKhwyFkLIyX9kGJy2qLt/', '2018-07-06 08:31:09', '2018-07-05 10:34:18', '2018-07-05 20:31:09'),
(45, 1, '$1$.UamsgvS$nrNhGYzWx3K2qWLO9xDxT1', '2018-07-06 08:56:32', '2018-07-05 12:10:41', '2018-07-05 20:56:32'),
(46, 1, '$1$Wr9rmg5/$7hJcybQO.g0VVITiAHSMT0', '2018-07-06 08:59:54', '2018-07-05 12:29:25', '2018-07-05 20:59:54'),
(47, 1, '$1$DaAVUmf4$/KD.0eewswNdqgWxKzbyJ0', '2018-07-06 21:53:37', '2018-07-06 02:22:07', '2018-07-06 09:53:37'),
(48, 1, '$1$2j.WiiKP$Qxpz.mA01oLnefN57.U3I.', '2018-07-07 18:32:01', '2018-07-06 23:24:22', '2018-07-07 06:32:01'),
(49, 1, '$1$Gg6KGJ6U$dCaxpdwBRk6iM7liErj.N0', '2018-07-07 19:24:05', '2018-07-07 00:14:08', '2018-08-30 18:50:10'),
(51, 1, '$1$YJ.JcBta$wO8XqitQL0bnp3ke7nXlx0', '2018-07-08 08:31:54', '2018-07-07 13:21:49', '2018-07-07 20:31:54'),
(52, 1, '$1$zGLceLLt$rTqaL0HmpK51XtdewENqR.', '2018-07-09 06:42:50', '2018-07-07 23:42:50', '2018-07-07 23:42:50'),
(53, 1, '$1$FtBCYyPj$eemyP20xw.SbZQ6HLxLye1', '2018-07-09 07:08:57', '2018-07-08 00:08:57', '2018-07-08 00:08:57'),
(54, 1, '$1$Ljc5O4H0$Wkmye.VnrwbSvwk3w9sqC.', '2018-07-09 07:17:40', '2018-07-08 00:17:40', '2018-07-08 00:17:40'),
(55, 1, '$1$oqc.o3ZB$wMIu6VFtXDkB/R3eZPUlD0', '2018-07-09 07:19:26', '2018-07-08 00:19:26', '2018-07-08 00:19:26'),
(56, 1, '$1$aChg8uKz$JxcHt2KvbwUTw2xAAOZXz/', '2018-07-09 07:19:43', '2018-07-08 00:19:43', '2018-07-08 00:19:43'),
(57, 1, '$1$lpjrcpwW$Z61i1DDr/GoceAPgGCtpA1', '2018-07-09 07:19:47', '2018-07-08 00:19:47', '2018-07-08 00:19:47'),
(58, 2, '$1$py0gV/jB$2yjTuodeszAYJKij.Lx7i.', '2018-07-09 07:36:43', '2018-07-08 00:36:43', '2018-07-08 00:36:43'),
(59, 2, '$1$49y6xWw4$D8CEkbB1A.TcvuFA9pdoS.', '2018-07-09 07:38:06', '2018-07-08 00:38:06', '2018-07-08 00:38:06'),
(60, 3, '$1$nDxDYALt$tVWH5JAQCZNBWGQQXT5s41', '2018-07-09 07:40:11', '2018-07-08 00:40:11', '2018-07-08 00:40:11'),
(61, 4, '$1$izEJDVEd$V8jklApi53PazfBbykq55/', '2018-07-09 08:40:54', '2018-07-08 01:40:54', '2018-07-08 01:40:54'),
(62, 4, '$1$bEH4wp6P$ezuol4lc8EF2UhPJMDo6w0', '2018-07-09 08:41:29', '2018-07-08 01:41:29', '2018-07-08 01:41:29'),
(63, 4, '$1$u2of7G.y$L5yvrSQyLWMzTvgp88.Nk/', '2018-07-09 08:42:10', '2018-07-08 01:42:10', '2018-07-08 01:42:10'),
(64, 4, '$1$E5JN9Y7n$0ksYF0BKqWfmGCbLq8d7W/', '2018-07-09 08:45:40', '2018-07-08 01:45:40', '2018-07-08 01:45:40'),
(65, 3, '$1$aT82B4wr$AMtdoTCCTYqKgG/eXfGkJ/', '2018-07-10 17:50:05', '2018-07-09 08:57:02', '2018-07-10 05:50:05'),
(66, 3, '$1$TbW2HDyi$KqIPjvQ91hslIBme9Ftt8.', '2018-07-11 17:53:17', '2018-07-10 10:53:17', '2018-07-10 10:53:17'),
(67, 3, '$1$YKRCR0nf$YPbrLMeHUyjvJXj1Sj2c20', '2018-07-11 17:53:43', '2018-07-10 10:53:43', '2018-07-10 10:53:43'),
(68, 3, '$1$7KYtHEig$lCz0eCUqQwLjPkFqezJqL0', '2018-07-11 17:54:14', '2018-07-10 10:54:14', '2018-07-10 10:54:14'),
(69, 3, '$1$gRw2PbHX$02bWJjyQxhPVI7SU2DdCU1', '2018-07-11 17:54:20', '2018-07-10 10:54:20', '2018-07-10 10:54:20'),
(70, 3, '$1$U1E4D07k$sUfExlc2.QGmbhsI9uWvi.', '2018-07-11 17:54:29', '2018-07-10 10:54:29', '2018-07-10 10:54:29'),
(71, 3, '$1$0GnLWSJG$1WxxR4qA9k/dwVF3.vNyx0', '2018-07-11 18:48:45', '2018-07-10 11:48:45', '2018-07-10 11:48:45'),
(72, 5, '$1$2qXt8HHx$VMMNXksUQIXmS6C/wyFDP0', '2018-07-11 19:14:21', '2018-07-10 12:14:21', '2018-07-10 12:14:21'),
(73, 3, '$1$dIjZeGmx$FIPVs0NC.CMApL80vnuX7.', '2018-07-12 05:11:51', '2018-07-10 22:11:51', '2018-07-10 22:11:51'),
(74, 3, '$1$H1pbF3Xz$WzBYM7kIOqWmSu/GZ6Tkp.', '2018-07-12 05:16:08', '2018-07-10 22:16:08', '2018-07-10 22:16:08'),
(75, 3, '$1$XmeBIpdp$BYPXepuB24jNKa9ehEt2J0', '2018-07-12 06:04:13', '2018-07-10 23:04:13', '2018-07-10 23:04:13'),
(76, 3, '$1$E8JL9mQS$.R9xDpxuWgCSANgIrvJaP.', '2018-07-12 06:04:47', '2018-07-10 23:04:47', '2018-07-10 23:04:47'),
(77, 3, '$1$Trt7bYg3$2m7fXpSy8MQxrzaayjmyj/', '2018-07-12 06:05:28', '2018-07-10 23:05:28', '2018-07-10 23:05:28'),
(78, 3, '$1$U/n.jWs5$0IbK9wU3v19T.oDph3Gti/', '2018-07-12 06:20:28', '2018-07-10 23:20:28', '2018-07-10 23:20:28'),
(79, 3, '$1$0ckq4KT0$0AsJjpnxh71ctWjRP36rJ1', '2018-07-12 06:40:08', '2018-07-10 23:40:08', '2018-07-10 23:40:08'),
(80, 3, '$1$2zWw7u8L$wNSVfHwvVGfSTxQVdaEIf0', '2018-07-12 07:10:31', '2018-07-11 00:10:31', '2018-07-11 00:10:31'),
(81, 3, '$1$Z67uMPg9$VPNKAJpx9hcFaO1fGRBLk0', '2018-07-12 12:33:23', '2018-07-11 05:33:23', '2018-07-11 05:33:23'),
(82, 8, '$1$tv9FT/Ro$Ofwe3DQLzRLi99iuWZpfA.', '2018-07-12 16:50:31', '2018-07-11 09:50:31', '2018-07-11 09:50:31'),
(83, 8, '$1$rM4K.6nT$E3k/rTO7tG509GtciGV/8/', '2018-07-12 16:57:33', '2018-07-11 09:57:33', '2018-07-11 09:57:33'),
(84, 8, '$1$5CvfgCo0$xRjiuAneaB5Bv.AUZUAdi.', '2018-07-12 17:03:02', '2018-07-11 10:03:02', '2018-07-11 10:03:02'),
(85, 8, '$1$mgKT2CdF$tQQcCl6OGDAS3ZxxZxuAi0', '2018-07-12 17:17:40', '2018-07-11 10:17:40', '2018-07-11 10:17:40'),
(86, 8, '$1$xRuMyE5C$jBI6iJnelfmblR4DRXQed.', '2018-07-12 05:47:21', '2018-07-11 10:17:52', '2018-07-11 17:47:21'),
(87, 8, '$1$EAsAepQ4$pnvRSeB2D4XN608BPHkJP/', '2018-07-12 17:23:21', '2018-07-11 10:23:21', '2018-07-11 10:23:21'),
(88, 8, '$1$p45OPNTA$0o3pDRrpHN6GlsSWKLGSz1', '2018-07-12 17:23:31', '2018-07-11 10:23:31', '2018-07-11 10:23:31'),
(89, 8, '$1$k86Pq0LR$cdyzv5M5Vf1XSO16wDFna0', '2018-07-12 17:44:04', '2018-07-11 10:44:04', '2018-07-11 10:44:04'),
(90, 8, '$1$TUzx61NV$gcFrcgBDGX7pXi3MOF1zZ0', '2018-07-12 17:51:02', '2018-07-11 10:51:02', '2018-07-11 10:51:02'),
(91, 8, '$1$/KQiTkwD$v7wImzFOekwB05aUNq7Fx.', '2018-07-12 17:57:40', '2018-07-11 10:57:40', '2018-07-11 10:57:40'),
(92, 8, '$1$cqIIRcBx$FpdxDybd0x/lqyrtlRbsD1', '2018-07-12 18:02:43', '2018-07-11 11:02:43', '2018-07-11 11:02:43'),
(93, 8, '$1$8CHUBxlC$1VfVyt92e176bJA0lTktJ1', '2018-07-12 18:06:03', '2018-07-11 11:06:03', '2018-07-11 11:06:03'),
(94, 8, '$1$sqbLzbPa$8KuadTulRTBiscyzA4EnS/', '2018-07-12 18:10:11', '2018-07-11 11:10:11', '2018-07-11 11:10:11'),
(95, 9, '$1$mgVyvdsT$XDGplSURrZFBvADEtoDy90', '2018-07-12 18:35:42', '2018-07-11 11:35:42', '2018-07-11 11:35:42'),
(96, 3, '$1$OxmiWoPw$rB9urwq4V.tPS259NBc2y1', '2018-07-12 07:56:58', '2018-07-11 11:38:07', '2018-07-11 19:56:58'),
(97, 8, '$1$x2XHiqyb$HYxEo2Y.kuvMcEkUcAtSh/', '2018-07-12 19:19:40', '2018-07-11 12:19:40', '2018-07-11 12:19:40'),
(98, 9, '$1$4SCP8L8K$k6/xhEgiw5791/lszMWDh/', '2018-07-12 19:26:56', '2018-07-11 12:26:56', '2018-07-11 12:26:56'),
(99, 3, '$1$1m2cNoBv$xiwVN2UltsXMBGqfXPoTE0', '2018-07-12 08:04:02', '2018-07-11 13:02:28', '2018-07-11 20:04:02'),
(100, 3, '$1$Z4RUWRsn$xWXybSZ0yNMUUXCAwLn0U1', '2018-07-12 08:04:32', '2018-07-11 13:04:23', '2018-07-11 20:04:32'),
(101, 3, '$1$n1BkJe.I$yLYbn/fZgQ2.MmjeDO7IS/', '2018-07-13 03:52:17', '2018-07-11 20:52:17', '2018-07-11 20:52:17'),
(102, 3, '$1$/WX7XtMT$RiN2FZboj8g9yjWp3Mjfo0', '2018-07-13 03:52:17', '2018-07-11 20:52:17', '2018-07-11 20:52:17'),
(103, 3, '$1$.s13ekjA$XuCREr2mkiK6/DlhqB4Tf1', '2018-07-12 17:48:26', '2018-07-11 20:52:17', '2018-07-12 05:48:26'),
(104, 3, '$1$YVlF1ZiM$aT3NsSwvPATfpS2UOtxy1.', '2018-07-12 17:48:35', '2018-07-11 22:48:33', '2018-07-12 05:48:35'),
(105, 3, '$1$hOQ5ePkb$CMwG1YZhgklqEfZrbW6N70', '2018-07-12 17:59:05', '2018-07-11 22:59:02', '2018-07-12 05:59:05'),
(106, 3, '$1$pSoRf.0t$npxOvL3OtaMnfV9e6mFLX.', '2018-07-12 18:08:59', '2018-07-11 23:08:56', '2018-07-12 06:08:59'),
(107, 3, '$1$Z0Lfd6Th$DccYNuq9B9fgO02uwT5VW0', '2018-07-12 18:25:24', '2018-07-11 23:25:20', '2018-07-12 06:25:24'),
(108, 3, '$1$IF1xjjjt$fNmHasZE8284P7SNu1mUY1', '2018-07-13 08:02:36', '2018-07-12 13:02:33', '2018-07-12 20:02:36'),
(109, 8, '$1$ajt1QKBS$G/vaulia62nokq33oxm90.', '2018-07-14 15:30:46', '2018-07-13 08:30:46', '2018-07-13 08:30:46'),
(110, 8, '$1$ytHzdixq$7Oyx/yNZ8XHwmiUfOr7wM0', '2018-07-14 15:35:07', '2018-07-13 08:35:07', '2018-07-13 08:35:07'),
(111, 8, '$1$aA6cIxnE$zsje/YCerMD4JgcvobQQ41', '2018-07-14 16:20:07', '2018-07-13 09:20:07', '2018-07-13 09:20:07'),
(112, 8, '$1$4YgTSdO0$iiC2LjdpEwdCf.HZcfkhj0', '2018-07-14 17:35:58', '2018-07-13 10:35:58', '2018-07-13 10:35:58'),
(113, 8, '$1$0Rqc7KKG$3OpUauJwduU.vEu3dtXkP0', '2018-07-14 18:21:59', '2018-07-13 11:21:59', '2018-07-13 11:21:59'),
(114, 3, '$1$1AaFLbav$4drUbjHbVyUF2VW4pdMFx/', '2018-07-14 06:30:40', '2018-07-13 11:30:17', '2018-07-13 18:30:40'),
(115, 8, '$1$DfFcQcmr$7LbPKdLEYGpzWePqvrc6/0', '2018-07-14 18:31:37', '2018-07-13 11:31:37', '2018-07-13 11:31:37'),
(116, 8, '$1$vyWQ9hIk$eAlFrLukNIwx9q5B0WTYB0', '2018-07-14 18:32:04', '2018-07-13 11:32:04', '2018-07-13 11:32:04'),
(117, 8, '$1$FTnjPiXk$zQt8AGAap505G7wtkrnx9.', '2018-07-14 06:50:04', '2018-07-13 11:47:17', '2018-07-13 18:50:04'),
(118, 13, '$1$EmT90q/L$bYnwtPs7FpoCeagUwKw0O/', '2018-07-14 07:47:52', '2018-07-13 12:47:50', '2018-07-13 19:47:52'),
(119, 14, '$1$NcwjlUiy$pbZ6Erdr33kzlaQwmw7Py0', '2018-07-14 07:53:57', '2018-07-13 12:53:55', '2018-07-13 19:53:57'),
(120, 17, '$1$dH3PKuKO$tb.nA74O2VYVT0bur6BPP0', '2018-07-14 08:08:08', '2018-07-13 13:08:07', '2018-07-13 20:08:08'),
(121, 3, '$1$jYr6DQOf$JDieTTgjr538YgGcdSLTq1', '2018-07-14 08:10:41', '2018-07-13 13:10:37', '2018-07-13 20:10:41'),
(122, 3, '$1$spDQdtQa$BjNzVJL0CodWHUj0XOEAS1', '2018-07-14 20:27:56', '2018-07-13 13:27:56', '2018-07-13 13:27:56'),
(123, 3, '$1$isgkERb8$183tA5V7mhmZiA/y96ITQ1', '2018-07-14 08:41:49', '2018-07-13 13:33:09', '2018-07-13 20:41:49'),
(125, 3, '$1$3ew0aKvM$OR4SstyBTFFQnzdFa3kzp0', '2018-07-14 08:52:08', '2018-07-13 13:52:05', '2018-07-13 20:52:08'),
(126, 3, '$1$a07J8cSg$mquL30VHOY6QbzgDz0dsb1', '2018-07-14 08:53:16', '2018-07-13 13:53:14', '2018-07-13 20:53:16'),
(127, 3, '$1$qgx/NO./$/Z6/ZrfsjUXtuEJVaZQ02.', '2018-07-14 09:00:40', '2018-07-13 13:59:44', '2018-07-13 21:00:40'),
(129, 3, '$1$Xu6ExzeE$wQyKGcIp5cEGlyO63ysgj0', '2018-07-14 09:11:23', '2018-07-13 14:11:20', '2018-07-13 21:11:23'),
(130, 3, '$1$7Q4bvHZr$HtT2uvfKrgXhRbPTDf1l7/', '2018-07-14 21:58:42', '2018-07-14 02:58:40', '2018-07-14 09:58:42'),
(131, 3, '$1$bsGEc2Nw$KksB8IdQqwVsdQVYtGn9N0', '2018-07-14 22:02:52', '2018-07-14 03:02:49', '2018-07-14 10:02:52'),
(132, 3, '$1$PXQxTdr.$.rv0hKn.E8L3GUVt7KTiK1', '2018-07-15 10:08:16', '2018-07-14 03:08:16', '2018-07-14 03:08:16'),
(133, 3, '$1$dTaQ1zEX$wLrpqKSWU4jZf8mjksGPr1', '2018-07-14 22:47:12', '2018-07-14 03:47:09', '2018-07-14 10:47:12'),
(134, 3, '$1$dJfMChkB$8/9ei1.Bs/xETbqqzaN7G1', '2018-07-14 23:38:53', '2018-07-14 04:38:49', '2018-07-14 11:38:53'),
(135, 8, '$1$aWcoTUWw$ODiNOyPixD76YtIhW0MNM0', '2018-07-15 02:02:26', '2018-07-14 07:02:24', '2018-07-14 14:02:26'),
(136, 9, '$1$RYSEgBjr$xSznQjfiXqXOWAAaPgWGy/', '2018-07-15 17:00:20', '2018-07-14 10:00:20', '2018-07-14 10:00:20'),
(137, 3, '$1$b7s34lIq$Eq.zh3Ze0XSNNxXMgWuxV.', '2018-07-15 05:05:54', '2018-07-14 10:05:06', '2018-07-14 17:05:54'),
(138, 3, '$1$DZS/.hwq$k.9VwvIepgccHc8PtxMKo.', '2018-07-15 05:20:05', '2018-07-14 10:19:56', '2018-07-14 17:20:05'),
(139, 3, '$1$7STayzVJ$j7PFbNB07BYAWZFtYkLJB1', '2018-07-15 05:22:33', '2018-07-14 10:21:40', '2018-07-14 17:22:33'),
(140, 3, '$1$vNSU4zOw$M0BB1UAE5YidlUOjZvRw70', '2018-07-15 05:54:45', '2018-07-14 10:54:41', '2018-07-14 17:54:45'),
(141, 3, '$1$fIRTI2wy$Jc7usy/1wY7Vmx/QWe9dT/', '2018-07-15 17:58:44', '2018-07-14 10:58:44', '2018-07-14 10:58:44'),
(142, 3, '$1$PTxKO1xl$darnthzGLMG5CIS0VCHHH1', '2018-07-15 06:25:31', '2018-07-14 11:21:29', '2018-07-14 18:25:31'),
(143, 3, '$1$Aq0YT6IP$wbI6WPJLz0iHdBaqaRKMx0', '2018-07-15 06:26:29', '2018-07-14 11:26:25', '2018-07-14 18:26:29'),
(147, 3, '$1$z1eYXdwK$/s8fP4HM0MzrPZOLxVUdR0', '2018-07-15 20:52:45', '2018-07-14 13:05:51', '2018-07-15 08:52:45'),
(148, 4, '$1$OGD/KVEI$fdv4DaRISagmyEBuV./4k/', '2018-07-15 18:20:12', '2018-07-14 23:12:07', '2018-07-15 06:20:12'),
(149, 4, '$1$5HJGkn7T$hxyYxbujf5rKtnwtNJiLN0', '2018-07-15 19:03:20', '2018-07-15 00:03:18', '2018-07-15 07:03:20'),
(150, 22, '$1$5yKwinPT$Exw45V1eiLJkG.3f39ZGZ.', '2018-07-15 21:32:53', '2018-07-15 02:32:10', '2018-07-15 09:32:53'),
(152, 3, '$1$LFyup6tP$09JIbdK4U2kbfIJ0hbFCM0', '2018-07-15 22:30:06', '2018-07-15 03:11:48', '2018-07-15 10:30:06'),
(153, 22, '$1$b.IjkaCo$av6IPiL4cFXUVox9V1UOW0', '2018-07-15 23:53:16', '2018-07-15 04:49:33', '2018-07-15 11:53:16'),
(162, 8, '$1$oTuo0E6b$oukHarib3LYhsCh4Jmqgg.', '2018-07-17 15:29:03', '2018-07-16 08:29:03', '2018-07-16 08:29:03'),
(167, 8, '$1$DnHiwZyi$jMCc7fGGE32ki2v1/DBbD0', '2018-07-18 07:06:09', '2018-07-17 10:53:06', '2018-07-17 19:06:09'),
(168, 9, '$1$ZdPyksRp$fdUHkdqEp49abCXf4kLfe.', '2018-07-18 06:30:39', '2018-07-17 11:28:14', '2018-07-17 18:30:39'),
(169, 8, '$1$x.M29IYl$SHWA8ENz6rI5BerUG1o9x/', '2018-07-18 08:56:48', '2018-07-17 12:08:55', '2018-07-17 20:56:48'),
(171, 8, '$1$S5NhCN5h$gpJgwb8YyWNIg.ZvhXTAa/', '2018-07-18 07:31:16', '2018-07-17 12:28:06', '2018-07-17 19:31:16'),
(172, 8, '$1$.sEbxa60$fzlmDmcO8KM4hjQ/sJuAd0', '2018-07-18 07:42:39', '2018-07-17 12:39:16', '2018-07-17 19:42:39'),
(173, 9, '$1$.iqUyKpl$XC6AnU48JqlkbWslAQaS91', '2018-07-18 07:54:48', '2018-07-17 12:53:11', '2018-09-02 10:13:55'),
(174, 8, '$1$Tf1JxHZ3$njQmVKBqHUTKCo2Rii7M/0', '2018-07-18 08:08:00', '2018-07-17 13:01:58', '2018-07-17 20:08:00'),
(178, 28, '$1$uvZbDmRE$M7h2kohA8oHd6xlnrtV5g.', '2018-07-19 04:28:24', '2018-07-18 09:27:49', '2018-07-18 16:28:24'),
(179, 28, '$1$QqQWZgxK$/ybPbljNHpFOPqLnlc5Rh.', '2018-07-19 04:30:56', '2018-07-18 09:28:39', '2018-07-18 16:30:56'),
(180, 8, '$1$Rj9eWeEq$lDpyBX2ApR.ABQRFv9aYo/', '2018-07-20 22:41:47', '2018-07-20 03:26:30', '2018-07-20 10:41:47'),
(182, 8, '$1$6/wm5JQ.$xigRMX.LM7YofsthRGgtA/', '2018-07-20 22:54:10', '2018-07-20 03:37:35', '2018-07-20 10:54:10'),
(185, 8, '$1$4kxkHj//$K6rbHRuXA9o2OHyz.8.hc.', '2018-07-20 23:19:30', '2018-07-20 04:19:10', '2018-07-20 11:19:30'),
(186, 8, '$1$Egher8kr$ZVd0SGFXWsHYZ2QwZwhX5/', '2018-07-20 23:28:27', '2018-07-20 04:24:36', '2018-07-20 11:28:27'),
(187, 8, '$1$7zBzx38b$8DC1gh6Ikm..exUocYpMd.', '2018-07-20 23:59:45', '2018-07-20 04:49:42', '2018-07-20 11:59:45'),
(188, 8, '$1$aG4aNQ.i$R60JF96yq6ckxU3.aISeS/', '2018-07-21 06:47:51', '2018-07-20 05:07:19', '2018-07-20 18:47:51'),
(189, 8, '$1$miOqtQvN$vpAOVCZJCPpGj2Lm4cvDg1', '2018-07-21 07:34:10', '2018-07-20 10:50:53', '2018-07-20 19:34:10'),
(190, 8, '$1$bI44cEbH$P/8drbUNWImfv3YimONHx.', '2018-07-21 06:44:36', '2018-07-20 11:44:04', '2018-07-20 18:44:36'),
(192, 8, '$1$J5WiPFP4$Z3uDrUToRk72SCJaDLTIt0', '2018-07-21 07:09:41', '2018-07-20 12:09:18', '2018-07-20 19:09:41'),
(193, 8, '$1$odQ2uABD$3/jsGb2f9g2y5d14zg0xv/', '2018-07-21 08:33:23', '2018-07-20 12:10:05', '2018-07-20 20:33:23'),
(194, 8, '$1$UDO7Op6e$hzujpsWUtncJ/NJTcR02A1', '2018-07-21 22:16:39', '2018-07-20 12:41:46', '2018-07-21 10:16:39'),
(195, 8, '$1$gT6ZeobL$Fiz6XU5S8CppZ.A7iqZR9/', '2018-07-21 20:13:07', '2018-07-21 01:12:11', '2018-07-21 08:13:07'),
(196, 8, '$1$pNEL92h5$zBpdWSuNwOfT6HdL90x4h0', '2018-07-21 22:02:53', '2018-07-21 01:55:22', '2018-07-21 10:02:53'),
(197, 22, '$1$J3RneAL.$vqjOiJa7V1brEDcVfNos9/', '2018-07-22 20:25:25', '2018-07-21 13:40:02', '2018-07-22 08:25:25'),
(198, 9, '$1$YsCj9ic3$KxANvBS.d3yF.iWnC9RyU0', '2018-07-22 19:39:46', '2018-07-21 23:18:30', '2018-07-22 07:39:46'),
(200, 22, '$1$j8PAkCZd$es3BQ70LybDQGzgt7zCBF.', '2018-07-23 03:52:19', '2018-07-22 01:32:14', '2018-07-22 15:52:19'),
(201, 22, '$1$fQU/g0SJ$CTSm7t.Cp4HmX3eIsl0Lo0', '2018-07-24 01:46:09', '2018-07-23 06:43:53', '2018-07-23 13:46:09'),
(202, 8, '$1$D4oQl3xs$qFghUYA9yVtGBOcza3QSg0', '2018-07-27 06:51:40', '2018-07-26 11:51:06', '2018-07-26 18:51:40'),
(203, 8, '$1$E.yQBj.w$M4Z2AsT6wdKzh/M.IuAC41', '2018-07-27 08:06:24', '2018-07-26 11:55:03', '2018-07-26 20:06:24'),
(204, 22, '$1$0Ym66iem$TXfZn8kYgxLZjaxIkntYA1', '2018-07-28 08:48:18', '2018-07-27 08:58:38', '2018-07-27 20:48:18'),
(205, 8, '$1$gtyKp.uu$AFREluK4qz2bQp5LTgVSE0', '2018-07-28 15:34:39', '2018-07-27 10:26:39', '2018-07-28 03:34:39'),
(207, 8, '$1$MEJwoHoM$sbUFsvslX.HV3koGeVnU5.', '2018-07-29 08:41:09', '2018-07-28 13:27:15', '2018-07-28 20:41:09'),
(208, 8, '$1$fJ8kftkU$Z5wGcmA8svp0AKYb9HSAk.', '2018-07-29 09:37:17', '2018-07-28 14:37:15', '2018-07-28 21:37:17'),
(209, 8, '$1$GRmOxXx1$zZQZe1W1X.VOK1awfqdHm0', '2018-07-29 17:40:28', '2018-07-28 14:40:34', '2018-07-29 05:40:28'),
(210, 8, '$1$AfIUBf9y$AHXda9zv4.BnnJLUJ4eXu/', '2018-07-29 17:45:39', '2018-07-28 22:45:36', '2018-07-29 05:45:39'),
(212, 8, '$1$h/OFOB58$paFnefSQ2GoP3fj1DRBlr/', '2018-07-29 18:33:39', '2018-07-28 23:26:29', '2018-07-29 06:33:39'),
(213, 8, '$1$ibOzxVK6$7zXOFSPjlZsduEfbSgIR60', '2018-07-29 20:13:20', '2018-07-29 00:45:22', '2018-07-29 08:13:20'),
(214, 22, '$1$Y3Q0AvGs$uTurLl2UQxPzoDNsFBZQk/', '2018-07-30 09:18:12', '2018-07-29 01:37:50', '2018-07-29 21:18:12'),
(215, 8, '$1$XYAivIUv$EyVDoAkVbO/Ojwe/QUpq7/', '2018-07-30 00:50:13', '2018-07-29 05:44:23', '2018-07-29 12:50:13'),
(218, 22, '$1$zPkySbUF$F91JJGl3p6LemOnj4WEX20', '2018-07-31 01:10:45', '2018-07-30 05:41:23', '2018-07-30 13:10:45'),
(219, 22, '$1$wqEbcPHY$K0gzXH.HxytOUhN/pYeQf/', '2018-08-01 01:12:27', '2018-07-30 23:49:07', '2018-07-31 13:12:27'),
(220, 9, '$1$/hQ1JRz3$MRYhT6eBwprxjDwPsvosk0', '2018-08-01 07:52:12', '2018-07-31 10:42:05', '2018-09-11 18:12:23'),
(221, 22, '$1$geZHLyOh$zH2rLljUziI5bhfLjENJj0', '2018-08-02 19:32:11', '2018-07-31 23:50:17', '2018-08-02 07:32:11'),
(223, 4, '$1$lsVq.aL3$pmbRG0g97xJBbT6o5kJ3c/', '2018-08-02 14:43:00', '2018-08-01 10:22:42', '2018-08-02 02:43:00'),
(224, 4, '$1$jW.iQBNS$RcFY8f.YAoz/f7OPAYoPA.', '2018-08-02 05:25:42', '2018-08-01 10:24:36', '2018-08-01 17:25:42'),
(225, 4, '$1$JV/9skm8$mjndtfp1K/O/BYZV/Lcbu0', '2018-08-02 06:34:49', '2018-08-01 11:28:30', '2018-08-01 18:34:49'),
(226, 4, '$1$5MUdmleW$5.sUSjG/AUMYeS6/kxJEF1', '2018-08-02 06:36:36', '2018-08-01 11:35:24', '2018-08-01 18:36:36'),
(227, 4, '$1$4dytFnFK$5YNj2omurB1Fj..I5B8LM/', '2018-08-02 08:11:09', '2018-08-01 13:10:35', '2018-08-01 20:11:09'),
(229, 22, '$1$I7HYhC7d$pY1908Z0EKWnxf4KNgjVO1', '2018-08-02 23:31:18', '2018-08-02 01:47:47', '2018-08-02 11:31:18'),
(231, 22, '$1$8/6Q9Aar$ZLoeR9M.bArVMfMH2/Q/N.', '2018-08-04 03:52:26', '2018-08-03 08:51:38', '2018-08-03 15:52:26'),
(232, 29, '$1$BswD3rbt$R5zE7KZvuWiwA1Tsjbcgw/', '2018-08-05 14:43:31', '2018-08-04 19:39:13', '2018-08-05 02:43:31'),
(234, 29, '$1$Rw3ON.rg$c22Hf0NngXk4vf5KL1HOJ1', '2018-08-06 06:11:16', '2018-08-05 01:05:09', '2018-08-05 18:11:16'),
(235, 22, '$1$.g/rJF2a$22C/17OZ91saE9.sc2NqP1', '2018-08-07 18:49:36', '2018-08-06 22:59:43', '2018-08-07 06:49:36'),
(236, 22, '$1$rIA0lTz5$TDU1hmCyrgBbnuaz/eI5y1', '2018-08-09 05:02:24', '2018-08-08 04:20:39', '2018-08-08 17:02:24'),
(237, 22, '$1$K52mlWuC$ozuvMUZG7hkVt7RWSiJ6W.', '2018-08-12 09:42:45', '2018-08-11 11:04:38', '2018-08-11 21:42:45'),
(238, 22, '$1$78JM1tIw$1y1AWV7Cp489q2mMz0F7S0', '2018-08-12 10:29:20', '2018-08-11 14:48:30', '2018-08-11 22:29:20'),
(239, 22, '$1$w0kn.Nmh$dxbA6enONFbsB4wg49yLE/', '2018-08-12 14:40:21', '2018-08-12 14:40:21', '2018-08-12 14:40:21'),
(241, 3, '$1$fp2iodCf$VBAH2/HJnaEyp.q/2lQhO1', '2018-08-17 10:41:14', '2018-08-17 10:41:14', '2018-08-17 10:41:14'),
(242, 3, '$1$xsPC.VN2$PRfQxOkMFKU0rV4fOWfO8.', '2018-08-17 10:43:40', '2018-08-17 10:43:40', '2018-08-17 10:43:40'),
(244, 3, '$1$66BUcF5f$gM955LwkRcDXKH1u4kOUz.', '2018-08-17 10:45:09', '2018-08-17 10:45:09', '2018-08-17 10:45:09'),
(245, 9, '$1$m6P7uW.k$6cOstlAaHPRxPDVarjI.c0', '2018-08-17 10:49:07', '2018-08-17 10:49:07', '2018-08-17 10:49:07'),
(246, 9, '$1$g6qEpy.u$/ez8SUtOugFn2EIq/P.hK.', '2018-08-17 10:49:46', '2018-08-17 10:49:46', '2018-08-17 17:53:06'),
(247, 22, '$1$5UPds3m2$v3xPDa.TtRyXCSuB3GpAD1', '2018-08-17 11:41:02', '2018-08-17 11:41:02', '2018-08-18 09:10:44'),
(249, 22, '$1$WC9ZbUf3$5q5FLi9XTENqS.UhHPuZM1', '2018-08-18 02:24:09', '2018-08-18 02:24:09', '2018-08-23 19:12:28'),
(251, 30, '$1$bFRz3K4x$6zB4VjXXe60t.6mfctNCR/', '2018-08-18 21:01:46', '2018-08-18 21:01:46', '2018-08-19 04:02:29'),
(252, 3, '$1$FV4MlsiV$idifaPwFCsX1PijXJLsw/0', '2018-08-22 00:50:06', '2018-08-22 00:50:06', '2018-08-22 07:50:56'),
(254, 9, '$1$TEHyKnJL$l2O8pqm6YYYTG50Ttk6xr0', '2018-08-28 12:37:49', '2018-08-28 12:37:49', '2018-08-28 12:37:49'),
(255, 22, '$1$zlbumkRT$BIS4yAtAtDKrB2VwIPGjE.', '2018-09-02 07:20:32', '2018-09-02 07:20:32', '2018-09-08 10:01:54'),
(258, 22, '$1$Gf06sqIT$WccCtRJcESWW6ZgV1KQk50', '2018-09-09 09:02:06', '2018-09-09 09:02:06', '2018-09-09 16:02:46'),
(259, 22, '$1$8X1DZSpO$Qna6YjXW2c9pbU62PUq4x/', '2018-09-09 12:02:17', '2018-09-09 12:02:17', '2018-09-13 20:47:23'),
(260, 22, '$1$RtqqoP9B$XOCVPVs3jSP57h/ASxP4h/', '2018-09-10 09:46:58', '2018-09-10 09:46:58', '2018-09-20 20:04:11'),
(263, 9, '$1$29De84hG$riHoIEEgjnmWMeDhrt6P5.', '2018-09-18 11:53:32', '2018-09-18 11:53:32', '2018-09-18 18:57:24'),
(264, 22, '$1$E/Yod.rm$hMj2U2KRu006OVG6Sg/6//', '2018-09-24 09:16:30', '2018-09-24 09:16:30', '2018-09-24 16:27:09'),
(265, 22, '$1$TvYxejlZ$SbvaflRQuHghgSQxU0nNc.', '2018-09-24 09:28:27', '2018-09-24 09:28:27', '2018-10-17 20:21:14'),
(266, 31, '$1$UZnTtPHd$nFTaJhuQbxrQgUCC7foC./', '2018-09-27 12:08:15', '2018-09-27 12:08:15', '2018-10-17 12:32:29'),
(267, 22, '$1$1nv8qlcb$Ri7xA8/j7U74cQha8vnIR1', '2018-10-19 12:47:24', '2018-10-19 12:47:24', '2018-10-19 19:47:27'),
(268, 31, '$1$EHfFduzD$3IN/VNV2FgAJpFpISJY940', '2018-10-19 13:12:19', '2018-10-19 13:12:19', '2018-10-19 20:42:43'),
(269, 31, '$1$lpzav5aO$/kaYAPpynofwSDeAD.CHg0', '2018-10-19 13:51:01', '2018-10-19 13:51:01', '2018-10-24 13:49:50'),
(270, 22, '$1$pIfah9cD$YXdoSznE.Kz6VYyDuo/sc/', '2018-10-20 08:23:44', '2018-10-20 08:23:44', '2018-10-23 17:01:12'),
(271, 22, '$1$5oZrYLJg$3XpzJbtlJRp4DMbC8YwO6/', '2018-10-23 10:45:10', '2018-10-23 10:45:10', '2018-10-24 17:34:58'),
(272, 22, '$1$vPJaL4Mr$E3YFLVPGFAHl6ZKFVKDSt1', '2018-10-24 10:49:49', '2018-10-24 10:49:49', '2018-10-24 17:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_videos`
--

CREATE TABLE `tbl_videos` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `plan_id` bigint(20) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `poster` varchar(1500) NOT NULL,
  `directed_by` varchar(1500) NOT NULL,
  `tags` varchar(2000) NOT NULL,
  `studio` varchar(1500) NOT NULL,
  `language` varchar(500) NOT NULL,
  `hours_duration` varchar(1500) NOT NULL,
  `minutes_duration` varchar(1500) NOT NULL,
  `release_year` datetime NOT NULL,
  `subtitle` varchar(1500) NOT NULL,
  `audio` varchar(1500) NOT NULL,
  `trailer` varchar(1500) NOT NULL,
  `full_video` varchar(1500) NOT NULL,
  `video_url` varchar(1500) NOT NULL,
  `subscription` int(11) NOT NULL,
  `budget` varchar(1500) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `description` text CHARACTER SET utf16 NOT NULL,
  `is_published` int(11) NOT NULL,
  `is_deleted` int(11) NOT NULL,
  `is_approved` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `modified_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_videos`
--

INSERT INTO `tbl_videos` (`id`, `category_id`, `sub_category_id`, `plan_id`, `name`, `poster`, `directed_by`, `tags`, `studio`, `language`, `hours_duration`, `minutes_duration`, `release_year`, `subtitle`, `audio`, `trailer`, `full_video`, `video_url`, `subscription`, `budget`, `rating`, `description`, `is_published`, `is_deleted`, `is_approved`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 1, NULL, 'Mohabbat', '1-1.jpg', 'Reema Rakesh Nath', '', '', '', '', '', '0000-00-00 00:00:00', 'English', 'Normal', '', '', '', 0, '', '', '', 1, 1, 0, 9, '2018-09-11 18:07:09', 0, '0000-00-00 00:00:00'),
(2, 2, 2, NULL, 'Bombay to Goa (1972)', '2-2.jpg', 'S. Ramanathan', '', '', 'Hindi', '2', '30', '1972-03-03 00:00:00', 'Urdu', 'Normal', '2-2.mp4', '', '', 1, '50 Lakh INR', '8.7 IMDB Rating', 'College student Mala has dreams of becoming a Bollywood movie actress; her dreams began materializing into reality when she is approached by Mr. Sharma and his assistant Mr. Verma who promises to take her to the way of stardom. Unfortunately when her parents learn about this they oppose to this and decide to arrange her marriage so that she will be restricted to go above her limits forcing her to approach Sharma for advice who asks her to run-away with huge sums of cash. Greed over comes the duo resulting in Sharma killing Verma', 1, 0, 0, 11, '2018-09-13 19:40:48', 9, '2018-09-30 03:31:26'),
(3, 2, 3, NULL, 'Deadpool (2016)', '3-2.jpg', 'Tim Miller', 'Thriller', '', 'English', '2', '10', '2018-09-13 00:00:00', 'Urdu', 'Normal', '3-2.mp4', '', '', 1, '$58,000,000', 'IMDB : 8.6', 'This is the origin story of former Special Forces operative turned mercenary Wade Wilson, who after being subjected to a rogue experiment that leaves him with accelerated healing powers, adopts the alter ego Deadpool. Armed with his new abilities and a dark, twisted sense of humor, Deadpool hunts down the man who nearly destroyed his life.', 1, 0, 0, 11, '2018-09-13 19:56:11', 9, '2018-09-30 03:32:33'),
(4, 2, 3, NULL, 'Pearl Harbor (2001)', '4-2.jpg', 'Michael Bay', '', '', '', '', '', '2018-09-13 00:00:00', 'Urdu', 'Normal', '4-2.mp4', '', '', 0, '25.5 crores USD', '8.9 IMDB Rating', 'A tale of war and romance mixed in with history. The story follows two lifelong friends and a beautiful nurse who are caught up in the horror of an infamous Sunday morning in 1941', 1, 0, 0, 11, '2018-09-13 20:08:43', 9, '2018-09-30 03:38:17'),
(5, 3, 4, NULL, 'Sacred Games (2018)', '5-3.jpg', 'Anurag Kashyap &  Vikramaditya Motwane', '', '', 'Hindi', '1', '02', '1970-01-01 00:00:00', 'Urdu', 'Normal', '5-3.mp4', '', '', 1, '7 crores USD', '9.1 IMDB Rating', 'A link in their pasts leads an honest cop to a fugitive gang boss, whose cryptic warning spurs the officer on a quest to save Mumbai from cataclysm.', 1, 0, 0, 11, '2018-09-13 20:18:34', 11, '2018-09-13 20:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_watchlist`
--

CREATE TABLE `tbl_watchlist` (
  `id` bigint(20) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `video_id` bigint(20) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_watchlist`
--

INSERT INTO `tbl_watchlist` (`id`, `uid`, `video_id`, `is_active`, `is_deleted`, `created_on`, `modified_on`) VALUES
(1, 9, 29, 0, 1, '2018-07-20 20:07:20', '2018-08-01 18:30:02'),
(2, 8, 30, 0, 0, '2018-07-20 20:08:24', '0000-00-00 00:00:00'),
(3, 8, 33, 0, 0, '2018-07-20 20:21:38', '0000-00-00 00:00:00'),
(4, 8, 17, 0, 0, '2018-07-20 20:25:00', '0000-00-00 00:00:00'),
(5, 8, 22, 0, 0, '2018-07-20 20:28:53', '0000-00-00 00:00:00'),
(6, 8, 8, 0, 0, '2018-07-20 20:30:30', '0000-00-00 00:00:00'),
(7, 8, 35, 0, 0, '2018-07-20 20:33:11', '0000-00-00 00:00:00'),
(8, 8, 14, 0, 0, '2018-07-21 08:13:02', '2018-08-01 18:28:53'),
(9, 8, 12, 0, 0, '2018-07-21 08:18:27', '0000-00-00 00:00:00'),
(10, 22, 10, 0, 0, '2018-07-21 20:48:05', '2018-08-19 09:48:30'),
(11, 22, 24, 0, 0, '2018-07-22 06:55:19', '0000-00-00 00:00:00'),
(12, 22, 31, 0, 0, '2018-07-22 07:25:32', '2018-08-20 18:12:41'),
(13, 22, 29, 0, 0, '2018-07-22 07:25:48', '2018-09-03 18:30:37'),
(14, 22, 33, 0, 1, '2018-07-22 08:28:23', '2018-08-08 16:58:25'),
(15, 22, 23, 0, 1, '2018-07-22 10:03:54', '2018-08-02 07:26:36'),
(16, 22, 34, 0, 1, '2018-07-22 10:04:12', '2018-08-03 15:52:26'),
(17, 22, 21, 0, 1, '2018-07-22 15:38:51', '2018-08-08 11:21:25'),
(18, 22, 15, 0, 0, '2018-07-22 15:39:20', '0000-00-00 00:00:00'),
(19, 22, 20, 0, 0, '2018-07-30 07:44:25', '0000-00-00 00:00:00'),
(20, 22, 27, 0, 1, '2018-07-30 08:00:00', '2018-08-19 09:51:11'),
(21, 9, 44, 0, 0, '2018-07-31 19:31:15', '2018-07-31 19:31:54'),
(22, 22, 32, 0, 0, '2018-08-01 11:42:49', '2018-08-01 11:42:53'),
(23, 4, 18, 0, 1, '2018-08-01 18:19:13', '2018-08-01 19:13:11'),
(24, 4, 32, 0, 1, '2018-08-01 18:19:46', '2018-08-01 20:19:02'),
(25, 4, 31, 0, 1, '2018-08-01 18:26:00', '2018-08-01 18:36:30'),
(26, 4, 30, 0, 0, '2018-08-01 18:40:00', '2018-08-01 18:40:01'),
(27, 4, 27, 0, 1, '2018-08-01 18:41:07', '2018-08-01 19:04:00'),
(28, 4, 12, 0, 1, '2018-08-01 18:56:27', '2018-08-01 18:56:39'),
(29, 4, 16, 0, 1, '2018-08-01 19:03:28', '2018-08-01 19:03:40'),
(30, 4, 33, 0, 1, '2018-08-01 19:12:26', '2018-08-01 19:12:58'),
(31, 4, 23, 0, 1, '2018-08-01 19:13:56', '2018-08-01 19:22:17'),
(32, 22, 12, 0, 1, '2018-08-02 08:49:36', '2018-08-08 16:58:06'),
(33, 29, 31, 0, 1, '2018-08-05 02:39:37', '2018-08-05 02:40:01'),
(34, 29, 32, 0, 1, '2018-08-05 02:40:11', '2018-08-05 02:40:22'),
(35, 29, 33, 0, 1, '2018-08-05 08:15:53', '2018-08-05 08:15:57'),
(36, 22, 16, 0, 0, '2018-08-08 13:55:40', '2018-08-08 13:55:42'),
(37, 30, 32, 0, 0, '2018-08-19 04:00:19', '2018-08-19 04:00:19'),
(38, 30, 31, 0, 0, '2018-08-19 04:00:43', '2018-08-19 04:00:43'),
(39, 22, 9, 0, 1, '2018-08-20 21:15:08', '2018-09-02 10:56:05'),
(40, 22, 40, 0, 0, '2018-08-20 21:47:03', '2018-08-28 17:45:48'),
(41, 22, 41, 0, 0, '2018-08-23 18:12:40', '2018-09-08 17:51:37'),
(42, 22, 37, 0, 0, '2018-09-02 08:56:53', '2018-09-02 08:56:54'),
(43, 22, 26, 0, 0, '2018-09-09 13:33:23', '2018-09-09 13:33:24'),
(44, 22, 39, 0, 1, '2018-09-09 15:24:45', '2018-09-09 15:24:48'),
(45, 31, 31, 0, 0, '2018-09-11 08:16:37', '2018-09-11 08:16:38'),
(46, 31, 1, 0, 0, '2018-09-12 06:45:33', '2018-09-12 06:45:33'),
(47, 22, 2, 0, 0, '2018-09-13 20:37:36', '2018-09-13 20:37:37'),
(48, 31, 2, 0, 1, '2018-09-14 07:45:53', '2018-10-07 08:18:55'),
(49, 31, 4, 0, 0, '2018-09-27 19:14:38', '2018-09-27 19:14:38'),
(50, 22, 3, 0, 1, '2018-09-30 04:22:12', '2018-09-30 04:22:26'),
(51, 31, 5, 0, 0, '2018-10-03 15:59:52', '2018-10-03 15:59:53'),
(52, 22, 5, 0, 1, '2018-10-24 17:17:52', '2018-10-24 17:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created`, `modified`, `status`) VALUES
(1, 'Nagendra', 'Kumar', 'nagendra@gmail.com', '9643811496', '2018-05-08 17:57:50', '2018-05-08 17:57:50', '1'),
(2, 'Nagendra', 'Kumar', 'nagendra@gmail.com', '9643811496', '2018-05-08 17:58:21', '2018-05-08 17:58:21', '1'),
(3, 'Nagendra', 'Kumar', 'nagendra1@gmail.com', '9643811496', '2018-05-08 18:00:44', '2018-05-08 18:00:44', '1'),
(4, 'Nagendra', 'Kumar', 'nagendra12@gmail.com', '9643811496', '2018-05-14 15:41:16', '2018-05-14 15:41:16', '1'),
(5, 'Govind', 'Kumar', 'nagendra1@gmail.com', '9643811496', '2018-05-23 17:27:09', '2018-05-23 17:27:09', '1'),
(6, 'Govind', 'Kumar', 'nagendra1@gmail.com', '9643811496', '2018-05-28 09:55:31', '2018-05-28 09:55:31', '1'),
(7, 'Govind', 'Kumar', 'gobind.info8@gmail.com', '8745022956', '2018-05-29 07:51:48', '2018-05-29 07:51:48', '1'),
(8, 'Govind', 'kumar', 'dff', '566', '2018-05-29 07:58:52', '2018-05-29 07:58:52', '1'),
(9, 'Govind', 'kumar', 'dff', '566', '2018-05-29 07:59:00', '2018-05-29 07:59:00', '1'),
(10, 'xg', 'hxdh', 'gxdhd', '852445', '2018-05-29 09:28:45', '2018-05-29 09:28:45', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_api_users`
--
ALTER TABLE `tbl_api_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `tbl_cast_crew`
--
ALTER TABLE `tbl_cast_crew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_showcase`
--
ALTER TABLE `tbl_showcase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscription`
--
ALTER TABLE `tbl_subscription`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_subscription_plan`
--
ALTER TABLE `tbl_subscription_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_categories`
--
ALTER TABLE `tbl_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_users_authentication`
--
ALTER TABLE `tbl_users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_videos`
--
ALTER TABLE `tbl_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_watchlist`
--
ALTER TABLE `tbl_watchlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_api_users`
--
ALTER TABLE `tbl_api_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_cast_crew`
--
ALTER TABLE `tbl_cast_crew`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- AUTO_INCREMENT for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_showcase`
--
ALTER TABLE `tbl_showcase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_subscription`
--
ALTER TABLE `tbl_subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subscription_plan`
--
ALTER TABLE `tbl_subscription_plan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_sub_categories`
--
ALTER TABLE `tbl_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_users_authentication`
--
ALTER TABLE `tbl_users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `tbl_videos`
--
ALTER TABLE `tbl_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_watchlist`
--
ALTER TABLE `tbl_watchlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
