-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2022 at 11:51 PM
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
  `code` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` int(225) NOT NULL,
  `code` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `paymentmethodoptvalue`
--

CREATE TABLE `paymentmethodoptvalue` (
  `id` int(11) NOT NULL,
  `pmopid` int(11) NOT NULL,
  `value` text NOT NULL,
  `donationid` int(11) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `createdat` timestamp NULL DEFAULT current_timestamp(),
  `updatedat` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `donationdetailsid` int(11) NOT NULL,
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
  `usermail` varchar(225) NOT NULL,
  `userage` int(11) NOT NULL,
  `userpassword` varchar(128) NOT NULL,
  `joindate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ipaddress` varchar(225) NOT NULL,
  `updatedat` timestamp NOT NULL DEFAULT current_timestamp(),
  `isdeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD KEY `donationid` (`donationid`,`campaignid`),
  ADD KEY `campaignid` (`campaignid`);

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
  ADD KEY `filetypeid` (`filetypeid`,`userid`),
  ADD KEY `userid` (`userid`);

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
  ADD KEY `participationid` (`participationid`,`eventid`),
  ADD KEY `eventid` (`eventid`);

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
  ADD KEY `paymentid` (`paymentid`,`optionid`),
  ADD KEY `optionid` (`optionid`);

--
-- Indexes for table `paymentmethodoptvalue`
--
ALTER TABLE `paymentmethodoptvalue`
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
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `transid` (`transid`,`wordid`,`transwordid`),
  ADD KEY `wordid` (`wordid`),
  ADD KEY `transwordid` (`transwordid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `useradressess`
--
ALTER TABLE `useradressess`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `adressid` (`adressid`);

--
-- Indexes for table `usermessege`
--
ALTER TABLE `usermessege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messegeid` (`messegeid`,`userid`),
  ADD KEY `userid` (`userid`);

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
  ADD KEY `usertypeid` (`usertypeid`,`pageid`),
  ADD KEY `pageid` (`pageid`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `paymentmethodoptvalue`
--
ALTER TABLE `paymentmethodoptvalue`
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
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `paymentmethodoptvalue`
--
ALTER TABLE `paymentmethodoptvalue`
  ADD CONSTRAINT `paymentmethodoptvalue_ibfk_1` FOREIGN KEY (`donationid`) REFERENCES `donation` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `translationdetails`
--
ALTER TABLE `translationdetails`
  ADD CONSTRAINT `translationdetails_ibfk_1` FOREIGN KEY (`wordid`) REFERENCES `word` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `translationdetails_ibfk_2` FOREIGN KEY (`transwordid`) REFERENCES `word` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `translationdetails_ibfk_3` FOREIGN KEY (`transid`) REFERENCES `translation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userusertypes` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Constraints for table `usertype`
--
ALTER TABLE `usertype`
  ADD CONSTRAINT `usertype_ibfk_1` FOREIGN KEY (`id`) REFERENCES `userusertypes` (`usertypeid`) ON DELETE CASCADE ON UPDATE CASCADE;

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
  ADD CONSTRAINT `userusertypes_ibfk_1` FOREIGN KEY (`usertypeid`) REFERENCES `usertype` (`id`),
  ADD CONSTRAINT `userusertypes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `word`
--
ALTER TABLE `word`
  ADD CONSTRAINT `word_ibfk_1` FOREIGN KEY (`languageid`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
