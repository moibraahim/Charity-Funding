-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 11:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

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
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `ParentId` int(11) NOT NULL,
  `Isdeleted` tinyint(1) NOT NULL,
  `Createdat` varchar(225) NOT NULL,
  `UpdatedAt` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Code` varchar(225) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Isdeleted` varchar(225) NOT NULL,
  `Lastupdated` varchar(225) NOT NULL,
  `Createdat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donationdetails`
--

CREATE TABLE `donationdetails` (
  `Id` int(11) NOT NULL,
  `DonationId` int(11) NOT NULL,
  `CampaignID` int(11) NOT NULL,
  `Isdeleted` binary(1) NOT NULL,
  `LastUpdated` varchar(225) NOT NULL,
  `Createdat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Id` int(11) NOT NULL,
  `Name` int(225) NOT NULL,
  `Code` varchar(225) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Path` varchar(225) NOT NULL,
  `FiletypeId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messeges`
--

CREATE TABLE `messeges` (
  `Id` int(11) NOT NULL,
  `MessegeTemplate` text NOT NULL,
  `TypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Type` varchar(225) NOT NULL,
  `Isdeleted` tinyint(1) NOT NULL,
  `Createdat` varchar(225) NOT NULL,
  `UpdatedAt` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Linkadress` varchar(225) NOT NULL,
  `HTML` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `participation`
--

CREATE TABLE `participation` (
  `Id` int(11) NOT NULL,
  `Name` int(11) NOT NULL,
  `Code` varchar(225) NOT NULL,
  `Description` text NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `partipationdetails`
--

CREATE TABLE `partipationdetails` (
  `Id` int(11) NOT NULL,
  `ParticipationId` int(11) NOT NULL,
  `EventId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodid`
--

CREATE TABLE `paymentmethodid` (
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL,
  `Isdeleted` tinyint(1) NOT NULL,
  `Createdat` varchar(225) NOT NULL,
  `UpdatedAt` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodoptions`
--

CREATE TABLE `paymentmethodoptions` (
  `Id` int(11) NOT NULL,
  `PaymentId` int(11) NOT NULL,
  `OptionId` int(11) NOT NULL,
  `Createdat` varchar(225) NOT NULL,
  `Isdeleted` tinyint(1) NOT NULL,
  `UpdatedAt` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethodoptvalue`
--

CREATE TABLE `paymentmethodoptvalue` (
  `Id` int(11) NOT NULL,
  `PMOpId` int(11) NOT NULL,
  `Value` text NOT NULL,
  `DonationId` int(11) NOT NULL,
  `Isdeleted` tinyint(1) NOT NULL,
  `Createdat` varchar(225) NOT NULL,
  `UpdatedAt` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `translation`
--

CREATE TABLE `translation` (
  `Id` int(11) NOT NULL,
  `TranslationName` varchar(225) NOT NULL,
  `FirstLangCode` varchar(225) NOT NULL,
  `SecondLangCode` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `translationdetails`
--

CREATE TABLE `translationdetails` (
  `Id` int(11) NOT NULL,
  `TransId` int(11) NOT NULL,
  `WordId` int(11) NOT NULL,
  `TransWordId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `userfullname` varchar(128) NOT NULL,
  `useremail` varchar(128) NOT NULL,
  `userage` int(11) NOT NULL,
  `userpassword` varchar(255) NOT NULL,
  `usertypeid` int(11) NOT NULL,
  `joindate` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `ipaddress` varchar(128) NOT NULL,
  `lastupdate` varchar(225) NOT NULL,
  `isdeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `userfullname`, `useremail`, `userage`, `userpassword`, `usertypeid`, `joindate`, `ipaddress`, `lastupdate`, `isdeleted`) VALUES
(32, 'Ahmed5050', 'Ahmed', 'Ahmed@Ahmed.Ahmed', 50, '$2y$10$coB6PSqynaHMHphxXJImV.Bn1qlXdPLNFEYV52S8Zz3OCRlGig3eu', 0, '2021-12-28 23:57:28.000000', '127.0.0.1', '', 0),
(35, 'Mohamed', 'Mohamed Ibrahim', 'Mohamed@Mohamed.Mohamed', 12, '$2y$10$SYASZnCJq.W.eJsvI5hze.2X7oNaiN.RCop8341iSiMY/3Kh3fkrO', 0, '2021-12-29 00:36:16.000000', '127.0.0.1', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userdonations`
--

CREATE TABLE `userdonations` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `DonationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usermessege`
--

CREATE TABLE `usermessege` (
  `Id` int(11) NOT NULL,
  `MessegeId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Datetimestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userparticipation`
--

CREATE TABLE `userparticipation` (
  `Id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `ParticipationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `Id` int(11) NOT NULL,
  `Name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `usertypepages`
--

CREATE TABLE `usertypepages` (
  `Id` int(11) NOT NULL,
  `UsertypeId` int(11) NOT NULL,
  `PageId` int(11) NOT NULL,
  `Ordervalue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `Id` int(11) NOT NULL,
  `Word` varchar(225) NOT NULL,
  `LanguageId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `donationdetails`
--
ALTER TABLE `donationdetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `partipationdetails`
--
ALTER TABLE `partipationdetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `translation`
--
ALTER TABLE `translation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `translationdetails`
--
ALTER TABLE `translationdetails`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `userdonations`
--
ALTER TABLE `userdonations`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usermessege`
--
ALTER TABLE `usermessege`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `userparticipation`
--
ALTER TABLE `userparticipation`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `usertypepages`
--
ALTER TABLE `usertypepages`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donationdetails`
--
ALTER TABLE `donationdetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participation`
--
ALTER TABLE `participation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partipationdetails`
--
ALTER TABLE `partipationdetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation`
--
ALTER TABLE `translation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translationdetails`
--
ALTER TABLE `translationdetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `userdonations`
--
ALTER TABLE `userdonations`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usermessege`
--
ALTER TABLE `usermessege`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userparticipation`
--
ALTER TABLE `userparticipation`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertypepages`
--
ALTER TABLE `usertypepages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
