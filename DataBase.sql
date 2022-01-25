-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 05:02 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `charityfunding`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `parentid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `goalprice` varchar(225) NOT NULL DEFAULT '0',
  `code` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `name`, `goalprice`, `code`, `description`, `isdeleted`, `createdat`, `updatedat`) VALUES
(3, 'lol', '100000', 'ggggg', 'hhhh', 0, '2022-01-25 03:04:59', '2022-01-25 02:52:13'),
(4, 'hello', '20000', 'dadjsd', 'dsadasdads', 0, '2022-01-25 03:05:13', '2022-01-25 03:05:13'),
(15, 'lol', '40000', 'cddd', 'dddd', 0, '2022-01-25 03:09:07', '2022-01-25 03:09:07'),
(16, 'lol', '40000', 'cddd', 'dddd', 0, '2022-01-25 03:09:14', '2022-01-25 03:09:14'),
(17, 'uuuu', 'uuu', 'uuu', 'uuu', 0, '2022-01-25 03:09:29', '2022-01-25 03:09:29'),
(18, 'uuuu', 'uuu', 'uuu', 'uuu', 1, '2022-01-25 03:09:40', '2022-01-25 02:38:07'),
(19, 'rrrrrrrr', '23333', '2222', '1111', 0, '2022-01-25 03:10:00', '2022-01-25 03:10:00'),
(20, 'yyyyyy', '55555', 'rrrrr', 'ffff', 0, '2022-01-25 03:10:19', '2022-01-25 03:10:19'),
(24, 'rrrrrrrrr', '6666', 'fff', 'gg', 0, '2022-01-25 03:11:15', '2022-01-25 03:11:15'),
(27, 'xxxxxxxxxxxxxx', '100000', 'gggggggggggggg', 'gggggggggggggg', 0, '2022-01-25 03:20:26', '2022-01-25 03:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `customizedreport`
--

CREATE TABLE `customizedreport` (
  `id` int(11) NOT NULL,
  `reportname` varchar(225) NOT NULL,
  `userid` int(11) NOT NULL,
  `sqlstatement` text NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `Id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `updatedat` timestamp NULL DEFAULT current_timestamp(),
  `createdat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donationdetails`
--

CREATE TABLE `donationdetails` (
  `id` int(11) NOT NULL,
  `donationid` int(11) NOT NULL,
  `campaignid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `updatedat` timestamp NULL DEFAULT current_timestamp(),
  `createdat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `donation_list`
-- (See below for the actual view)
--
CREATE TABLE `donation_list` (
`userid` int(11)
,`username` varchar(128)
,`name` varchar(225)
,`value` text
,`createdat` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `location` text NOT NULL,
  `isdeleted` tinyint(1) NOT NULL DEFAULT 0,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `code`, `description`, `location`, `isdeleted`, `createdat`, `updatedat`) VALUES
(15, 'charity', 'ffff', 'this event is event', 'hadaba', 1, '2022-01-22 00:43:21', '2022-01-25 00:41:55'),
(16, 'isdeleted', 'dsjdosifjoisfdj', 'asfasfasf', 'ddd', 0, '2022-01-22 00:45:35', '2022-01-25 00:24:54'),
(17, 'gamed', 'gamed', 'gamedygdan', 'gamed', 1, '2022-01-22 01:11:48', '2022-01-25 00:42:08'),
(18, 'charity evnt ', 'idsuifhsdihsduhids', 'this event is an event that has sometimes a big events', 'roma', 0, '2022-01-22 01:27:10', '2022-01-22 01:27:10'),
(19, 'freeforall', 'dsjdosifjoisfdj', 'this event is an event taht sometimes has some events', 'el haram odam xdxdxd', 0, '2022-01-24 00:45:01', '2022-01-24 00:45:01'),
(20, 'fsffsdffdsf', 'asdaff', 'asfasfasf', 'wadaff', 0, '2022-01-24 00:57:09', '2022-01-24 00:57:09'),
(21, 'clkajdlkasjdlsadj', 'fsjdjfdslfjl', 'asjdlasdjalsj', 'adjlsadjalsdjasldj', 0, '2022-01-24 16:06:59', '2022-01-24 16:06:59'),
(22, 'ooo', 'oo', 'oo', 'oo', 0, '2022-01-24 20:31:14', '2022-01-25 00:13:08'),
(23, 'lolo', 'ffff', 'aaaa', 'ddd', 0, '2022-01-24 20:31:17', '2022-01-24 20:31:17'),
(24, 'lolo', 'ffff', 'aaaa', 'ddd', 0, '2022-01-24 20:37:38', '2022-01-24 20:37:38'),
(25, 'asldjasldjasl', 'dlksadlaskdk', 'dlkadlkasd', 'amdlsmadm', 0, '2022-01-24 20:57:34', '2022-01-24 20:57:34'),
(26, 'asldjasldjasl', 'dlksadlaskdk', 'dlkadlkasd', 'amdlsmadm', 0, '2022-01-24 20:57:39', '2022-01-24 20:57:39'),
(27, 'asldjasldjasl', 'dlksadlaskdk', 'dlkadlkasd', 'amdlsmadm', 0, '2022-01-24 21:04:34', '2022-01-24 21:04:34'),
(28, 'asldjasldjasl', 'dlksadlaskdk', 'dlkadlkasd', 'amdlsmadm', 0, '2022-01-24 21:05:43', '2022-01-24 21:05:43'),
(29, 'asldjasldjasl', 'dlksadlaskdk', 'dlkadlkasd', 'amdlsmadm', 0, '2022-01-24 21:06:25', '2022-01-24 21:06:25'),
(30, 'gamed', 'gamed', 'gamedygdan', 'gamed', 0, '2022-01-24 23:06:55', '2022-01-24 23:06:55'),
(31, 'gamed', 'gamed', 'gamedygdan', 'gamed', 0, '2022-01-24 23:07:01', '2022-01-24 23:07:01'),
(32, 'gamedf', 'gamedff', 'gamedygdanf', 'fff', 0, '2022-01-25 00:28:59', '2022-01-25 00:28:59'),
(33, 'hh', 'hh', 'hh', 'hh', 0, '2022-01-25 00:29:10', '2022-01-25 00:29:10'),
(34, 'hh', 'hh', 'hh', 'hh', 0, '2022-01-25 00:29:15', '2022-01-25 00:29:15'),
(35, 'dssldsj', 'sndald', 'ldalsad', 'dsjdlskjf', 0, '2022-01-25 03:26:18', '2022-01-25 03:26:18'),
(36, 'dssldsj', 'sndald', 'ldalsad', 'dsjdlskjf', 0, '2022-01-25 03:26:22', '2022-01-25 03:26:22'),
(37, 'dssldsj', 'sndald', 'ldalsad', 'dsjdlskjf', 0, '2022-01-25 03:26:25', '2022-01-25 03:26:25'),
(38, 'dssldsj', 'sndald', 'ldalsad', 'dsjdlskjf', 0, '2022-01-25 03:26:27', '2022-01-25 03:26:27'),
(39, 'dssldsj', 'sndald', 'ldalsad', 'dsjdlskjf', 0, '2022-01-25 03:26:28', '2022-01-25 03:26:28'),
(40, 'dssldsj', 'sndald', 'ldalsad', 'dsjdlskjf', 0, '2022-01-25 03:26:29', '2022-01-25 03:26:29'),
(41, 'dssldsj', 'sndald', 'ldalsad', 'dsjdlskjf', 0, '2022-01-25 03:26:29', '2022-01-25 03:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `path` varchar(225) NOT NULL,
  `filetypeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `filetype`
--

CREATE TABLE `filetype` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messeges`
--

CREATE TABLE `messeges` (
  `id` int(11) NOT NULL,
  `messegetemplate` text NOT NULL,
  `messegetypeid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messegetype`
--

CREATE TABLE `messegetype` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` int(11) NOT NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `type` varchar(225) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `linkadress` varchar(225) NOT NULL,
  `HTML` text NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `updatedat` timestamp NULL DEFAULT current_timestamp(),
  `createdat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `participation`
--

CREATE TABLE `participation` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `userid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `updatedat` timestamp NULL DEFAULT current_timestamp(),
  `createdat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `participation_list`
-- (See below for the actual view)
--
CREATE TABLE `participation_list` (
`username` varchar(128)
,`name` varchar(225)
,`description` text
,`createdat` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `partipationdetails`
--

CREATE TABLE `partipationdetails` (
  `id` int(11) NOT NULL,
  `participationid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` int(11) DEFAULT NULL,
  `updatedat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodid`
--

CREATE TABLE `paymentmethodid` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodoptions`
--

CREATE TABLE `paymentmethodoptions` (
  `id` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `optionid` int(11) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `isdeleted` tinyint(1) NOT NULL,
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodopvalue`
--

CREATE TABLE `paymentmethodopvalue` (
  `id` int(11) NOT NULL,
  `pmopid` int(11) NOT NULL,
  `value` text NOT NULL,
  `donationid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statusdonationdetails`
--

CREATE TABLE `statusdonationdetails` (
  `id` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `donationdetailsid	i` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `statusparent`
--

CREATE TABLE `statusparent` (
  `id` int(11) NOT NULL,
  `statusid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `HTML` text NOT NULL,
  `positionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `translation`
--

CREATE TABLE `translation` (
  `id` int(11) NOT NULL,
  `translationname` varchar(225) NOT NULL,
  `firstlangcode` varchar(225) NOT NULL,
  `secondlangcode` varchar(225) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `translationdetails`
--

CREATE TABLE `translationdetails` (
  `id` int(11) NOT NULL,
  `transid` int(11) NOT NULL,
  `wordid` int(11) NOT NULL,
  `transwordid` int(11) NOT NULL,
  `isdeleted` int(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `userfullname` varchar(225) NOT NULL,
  `useremail` varchar(225) NOT NULL,
  `userage` int(11) NOT NULL,
  `userpassword` varchar(128) NOT NULL,
  `usertypeid` int(11) NOT NULL DEFAULT 1,
  `joindate` timestamp(6) NULL DEFAULT NULL,
  `ipaddress` varchar(255) NOT NULL,
  `updatedat` timestamp(6) NULL DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `userfullname`, `useremail`, `userage`, `userpassword`, `usertypeid`, `joindate`, `ipaddress`, `updatedat`, `isdeleted`) VALUES
(2, 'admin', 'admin', 'admin@admin.admin', 10, '$2y$10$1l/Uk7TC4SxzPEXwTIwZgOq0qcS9aZ6dT3/awhD9dA8/U2n8r/VnK', 2, '2021-12-31 20:49:49.000000', '127.0.0.1', NULL, NULL),
(12, 'omar', 'omar eid', 'omar@omar.omar', 10, '$2y$10$h9VxF9AyJ1BJNYWqzMYA1.jQHx.uZXRhkarYeG0QWmcl3ubHB.yrS', 1, '2021-12-31 20:49:49.000000', '127.0.0.1', NULL, NULL),
(17, 'Developer', 'Developer', 'Developer@Developer.Developer', 10, '$2y$10$gCBGCPK2e1qO8wCscE8tj.eFOkigD7H10HrmxpQX3Nt7iHJZXfkKu', 3, '2022-01-07 22:33:44.000000', '127.0.0.1', NULL, NULL),
(18, 'qdwwq', 'adaw', 'asdwa@asdad.com', 12, '$2y$10$s2wMfoWj0pvEv.huISTePe70Aoa0iZbzOJSobyY1h7Y6IFLKLxcty', 1, '2022-01-10 11:49:13.000000', '127.0.0.1', NULL, NULL),
(19, 'lolol', 'lol', 'loo@lol.com', 12, '$2y$10$2Mq098.Z/RuMAu0QMeJk8Oez49LfkqWRQEWR5rXYYyzQ2GERsGd0C', 1, '2022-01-10 12:04:09.000000', '127.0.0.1', NULL, NULL),
(20, 'yehiaaaaa', 'yehia', 'loololollol@loo.com', 12, '$2y$10$D9QPv0ZSQC0cIbfc6Ct5rOFIrUxDAIfHS2pbRzcQP0U/mj/lOi3pe', 1, '2022-01-10 12:11:01.000000', '127.0.0.1', NULL, NULL),
(21, 'ahmed', 'mohamed', 'mohamed@ahmed.com', 29, '$2y$10$6zbtbyapeNT65pQfeqy.n.dUrvn8YIjRj9LTHXR0KRLIfwjfOyow6', 1, '2022-01-10 12:25:50.000000', '127.0.0.1', NULL, NULL),
(22, 'fefewf', 'efewf', 'wfeges@esfes.com', 13, '$2y$10$YqFJsZ63F4Gt9IJRHqpRvuErfyuEhYzXi4YXga6iGAv7wuRuFptwS', 1, '2022-01-16 21:10:48.000000', '127.0.0.1', NULL, NULL),
(23, 'gameddw', 'gamed', 'gamd@gamdd.com', 32, '$2y$10$PBinc.DvJHcYV0qTc5.UXeGmGvGJC5Pr1q/51IJwWVg6mWbIwnSoq', 1, '2022-01-16 22:21:12.000000', '127.0.0.1', NULL, NULL),
(24, 'uuuu', 'uu', 'uua@uu.com', 19, '$2y$10$kYlipPDkQIgCqyF6qugcv.Agmcc7.iVO3.sPspV.My/ilQSwa8G02', 1, '2022-01-18 23:21:53.000000', '127.0.0.1', NULL, NULL),
(25, 'lololo', 'lol', 'lol@lol.com', 21, '$2y$10$Y0Pl8oqTeV4gLVdTBWZVBOZFwmxJDXAD5W7I/vWiNwsUUHACxAIwu', 1, '2022-01-19 17:45:32.000000', '127.0.0.1', NULL, NULL),
(26, 'lololo', 'lol', 'yy@yy.com', 55, 'yyyyyy', 2, NULL, 'gugiugig', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `useradressess`
--

CREATE TABLE `useradressess` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `adressid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usermessege`
--

CREATE TABLE `usermessege` (
  `id` int(11) NOT NULL,
  `messegeid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` int(11) NOT NULL DEFAULT current_timestamp(),
  `updatedat` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usertypepages`
--

CREATE TABLE `usertypepages` (
  `id` int(11) NOT NULL,
  `usertypeid` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `ordervalue` int(11) NOT NULL,
  `isdeleted` int(1) NOT NULL,
  `createdat` int(11) NOT NULL DEFAULT current_timestamp(),
  `updatedat` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userusertypes`
--

CREATE TABLE `userusertypes` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `usertypeid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` int(11) NOT NULL DEFAULT current_timestamp(),
  `updatedat` int(11) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `Id` int(11) NOT NULL,
  `word` varchar(225) NOT NULL,
  `languageid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure for view `donation_list`
--
DROP TABLE IF EXISTS `donation_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `donation_list`  AS SELECT `user`.`userid` AS `userid`, `user`.`username` AS `username`, `campaign`.`name` AS `name`, `paymentmethodopvalue`.`value` AS `value`, `donation`.`createdat` AS `createdat` FROM ((((`user` join `campaign`) join `paymentmethodopvalue`) join `donationdetails`) join `donation`) WHERE `user`.`userid` = `donation`.`userid` AND `donationdetails`.`donationid` = `donation`.`Id` AND `campaign`.`id` = `donationdetails`.`campaignid` AND `paymentmethodopvalue`.`donationid` = `donation`.`Id` ;

-- --------------------------------------------------------

--
-- Structure for view `participation_list`
--
DROP TABLE IF EXISTS `participation_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `participation_list`  AS SELECT `user`.`username` AS `username`, `event`.`name` AS `name`, `participation`.`description` AS `description`, `participation`.`createdat` AS `createdat` FROM (((`user` join `event`) join `participation`) join `partipationdetails`) WHERE `user`.`userid` = `participation`.`userid` AND `partipationdetails`.`participationid` = `participation`.`id` AND `event`.`id` = `partipationdetails`.`eventid` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customizedreport`
--
ALTER TABLE `customizedreport`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `donationdetails`
--
ALTER TABLE `donationdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donationid` (`donationid`,`campaignid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filetypeid` (`filetypeid`);

--
-- Indexes for table `filetype`
--
ALTER TABLE `filetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messeges`
--
ALTER TABLE `messeges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messegetypeid` (`messegetypeid`);

--
-- Indexes for table `messegetype`
--
ALTER TABLE `messegetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `partipationdetails`
--
ALTER TABLE `partipationdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participationid` (`participationid`,`eventid`);

--
-- Indexes for table `paymentmethodid`
--
ALTER TABLE `paymentmethodid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentmethodoptions`
--
ALTER TABLE `paymentmethodoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paymentid` (`paymentid`,`optionid`);

--
-- Indexes for table `paymentmethodopvalue`
--
ALTER TABLE `paymentmethodopvalue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pmopid` (`pmopid`,`donationid`),
  ADD KEY `donationid` (`donationid`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statusdonationdetails`
--
ALTER TABLE `statusdonationdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statusid` (`statusid`,`donationdetailsid	i`,`userid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `donationdetailsid	i` (`donationdetailsid	i`);

--
-- Indexes for table `statusparent`
--
ALTER TABLE `statusparent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statusid` (`statusid`,`parentid`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`),
  ADD KEY `positionid` (`positionid`);

--
-- Indexes for table `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translationdetails`
--
ALTER TABLE `translationdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transid` (`transid`,`wordid`,`transwordid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `usertypeid` (`usertypeid`);

--
-- Indexes for table `useradressess`
--
ALTER TABLE `useradressess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`,`adressid`);

--
-- Indexes for table `usermessege`
--
ALTER TABLE `usermessege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messegeid` (`messegeid`,`userid`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usertypepages`
--
ALTER TABLE `usertypepages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usertypeid` (`usertypeid`,`pageid`);

--
-- Indexes for table `userusertypes`
--
ALTER TABLE `userusertypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`,`usertypeid`),
  ADD KEY `usertypeid` (`usertypeid`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `languageid` (`languageid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `customizedreport`
--
ALTER TABLE `customizedreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donationdetails`
--
ALTER TABLE `donationdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filetype`
--
ALTER TABLE `filetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messeges`
--
ALTER TABLE `messeges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messegetype`
--
ALTER TABLE `messegetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partipationdetails`
--
ALTER TABLE `partipationdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentmethodid`
--
ALTER TABLE `paymentmethodid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentmethodoptions`
--
ALTER TABLE `paymentmethodoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentmethodopvalue`
--
ALTER TABLE `paymentmethodopvalue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statusdonationdetails`
--
ALTER TABLE `statusdonationdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statusparent`
--
ALTER TABLE `statusparent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation`
--
ALTER TABLE `translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translationdetails`
--
ALTER TABLE `translationdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `useradressess`
--
ALTER TABLE `useradressess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usermessege`
--
ALTER TABLE `usermessege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertypepages`
--
ALTER TABLE `usertypepages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userusertypes`
--
ALTER TABLE `userusertypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`id`) REFERENCES `useradressess` (`adressid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customizedreport`
--
ALTER TABLE `customizedreport`
  ADD CONSTRAINT `customizedreport_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donationdetails`
--
ALTER TABLE `donationdetails`
  ADD CONSTRAINT `donationdetails_ibfk_1` FOREIGN KEY (`donationid`) REFERENCES `donation` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `donationdetails_ibfk_2` FOREIGN KEY (`campaignid`) REFERENCES `campaign` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`filetypeid`) REFERENCES `filetype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `files_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messeges`
--
ALTER TABLE `messeges`
  ADD CONSTRAINT `messeges_ibfk_1` FOREIGN KEY (`messegetypeid`) REFERENCES `messegetype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participation`
--
ALTER TABLE `participation`
  ADD CONSTRAINT `participation_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `partipationdetails`
--
ALTER TABLE `partipationdetails`
  ADD CONSTRAINT `partipationdetails_ibfk_1` FOREIGN KEY (`participationid`) REFERENCES `participation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `partipationdetails_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paymentmethodoptions`
--
ALTER TABLE `paymentmethodoptions`
  ADD CONSTRAINT `paymentmethodoptions_ibfk_1` FOREIGN KEY (`paymentid`) REFERENCES `paymentmethodid` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paymentmethodoptions_ibfk_2` FOREIGN KEY (`optionid`) REFERENCES `options` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paymentmethodopvalue`
--
ALTER TABLE `paymentmethodopvalue`
  ADD CONSTRAINT `paymentmethodopvalue_ibfk_1` FOREIGN KEY (`donationid`) REFERENCES `donation` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `paymentmethodopvalue_ibfk_2` FOREIGN KEY (`pmopid`) REFERENCES `paymentmethodoptions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `statusdonationdetails`
--
ALTER TABLE `statusdonationdetails`
  ADD CONSTRAINT `statusdonationdetails_ibfk_1` FOREIGN KEY (`statusid`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `statusdonationdetails_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `statusdonationdetails_ibfk_3` FOREIGN KEY (`donationdetailsid	i`) REFERENCES `donationdetails` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `statusparent`
--
ALTER TABLE `statusparent`
  ADD CONSTRAINT `statusparent_ibfk_1` FOREIGN KEY (`statusid`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `translationdetails`
--
ALTER TABLE `translationdetails`
  ADD CONSTRAINT `translationdetails_ibfk_1` FOREIGN KEY (`wordid`) REFERENCES `word` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `translationdetails_ibfk_2` FOREIGN KEY (`transwordid`) REFERENCES `word` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `translationdetails_ibfk_3` FOREIGN KEY (`transid`) REFERENCES `translation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `useradressess`
--
ALTER TABLE `useradressess`
  ADD CONSTRAINT `useradressess_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `useradressess_ibfk_2` FOREIGN KEY (`adressid`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usermessege`
--
ALTER TABLE `usermessege`
  ADD CONSTRAINT `usermessege_ibfk_1` FOREIGN KEY (`messegeid`) REFERENCES `messeges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usermessege_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `usertypepages`
--
ALTER TABLE `usertypepages`
  ADD CONSTRAINT `usertypepages_ibfk_1` FOREIGN KEY (`pageid`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usertypepages_ibfk_2` FOREIGN KEY (`usertypeid`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userusertypes`
--
ALTER TABLE `userusertypes`
  ADD CONSTRAINT `userusertypes_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userusertypes_ibfk_2` FOREIGN KEY (`usertypeid`) REFERENCES `usertype` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
