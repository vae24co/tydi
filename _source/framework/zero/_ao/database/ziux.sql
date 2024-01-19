-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6463
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ziux
DROP DATABASE IF EXISTS `ziux`;
CREATE DATABASE IF NOT EXISTS `ziux` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ziux`;

-- Dumping structure for table ziux.networko
DROP TABLE IF EXISTS `networko`;
CREATE TABLE IF NOT EXISTS `networko` (
  `auid` bigint(20) NOT NULL AUTO_INCREMENT,
  `puid` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suid` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuid` char(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `luid` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry` varchar(80) COLLATE utf8_unicode_ci DEFAULT 'ORIGIN',
  `author` varchar(90) COLLATE utf8_unicode_ci DEFAULT 'ORIGIN',
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `oauthid` char(70) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acronym` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `staging` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `web` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `android` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ios` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `project` json DEFAULT NULL,
  PRIMARY KEY (`auid`) USING BTREE,
  UNIQUE KEY `puid` (`puid`) USING BTREE,
  UNIQUE KEY `suid` (`suid`) USING BTREE,
  UNIQUE KEY `tuid` (`tuid`) USING BTREE,
  UNIQUE KEY `staging` (`staging`) USING BTREE,
  UNIQUE KEY `web` (`web`) USING BTREE,
  UNIQUE KEY `android` (`android`) USING BTREE,
  UNIQUE KEY `ios` (`ios`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING BTREE,
  KEY `luid` (`luid`) USING BTREE,
  KEY `created` (`created`) USING BTREE,
  KEY `updated` (`updated`) USING BTREE,
  KEY `entry` (`entry`) USING BTREE,
  KEY `author` (`author`) USING BTREE,
  KEY `oauthid` (`oauthid`) USING BTREE,
  KEY `name` (`name`) USING BTREE,
  KEY `acronym` (`acronym`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table ziux.networko: ~4 rows (approximately)
REPLACE INTO `networko` (`auid`, `puid`, `suid`, `tuid`, `luid`, `entry`, `author`, `created`, `updated`, `oauthid`, `name`, `acronym`, `description`, `staging`, `web`, `android`, `ios`, `key`, `project`) VALUES
	(1, 'x6O872D7ZtB1o6eq442W', 'L85adr741Xi5O7e9B1cwmh8A8NIEv1FxJlyb0o46', 'J4j9d02amh9N156HpT9cAG4x5K313vBgnSqMWriw8Of67DeoE6tyFI275kLb', NULL, 'ORIGIN', 'ORIGIN', '2022-02-26 23:26:15', '2022-03-03 12:06:57', NULL, 'WOCA Network', 'WOCA', 'The WOCA Network', 'STAGjaPz9K122M7reC5', 'WEBu1p5h28y9KG7FD05IT8bz479a03X2k', 'DROID224436n73c95tF7r9s78A45181oCuY', 'iOS89uice167Pw8j00B4b27U4x6v11259', '0993bDo82n07155seRKJ40Xc7jO4675MI2W8w499', NULL),
	(2, 'CZR6vF9jAT7W1Gl50Q5e', '4V8c7p3144Tz57lL0ojfFS67yIMe1RWQDJqnUrXv', 'AW5a45CpR61o55t7ZByE9lYM9z63gnXVxOIs73vwS1bDu8j4r9c3fkq1Jd2T', NULL, 'ORIGIN', 'ORIGIN', '2022-02-26 23:29:31', '2022-02-26 23:32:10', NULL, 'Patrevo', 'PCD', 'The Patrevo Catholic Dating Platform', 'STAGz35E2017qes257h', 'WEBYqdTiUV1875v97z8202EX309Jrfnay', 'DROIDz4496Lrv7V241SBd7379x568ib315l', 'iOSd638437IsH0nzGX1g8rF9y318Pa4wj', 'a8pCEY8g22kob0986843tvw4M0670n3747U9q214', NULL),
	(3, '4SZl23IY8L5D6GsVeUMu', 'N2p0si1Q1oJKaYT47Dkz1V4vFSrlO4WHng1fqBGx', 'FeA4H91g58X3k8GV41vSzcfZ5o89IKJrR09TDntEsBiaPml7wWLq5xh0pMU1', NULL, 'ORIGIN', 'ORIGIN', '2022-02-26 23:30:14', '2022-02-26 23:32:06', NULL, 'WOWCatholic', 'WOW', 'The WOWCatholic Social Media Platform', 'STAGZW56c84u5I1dUjw', 'WEB3U34S962NzB56s0192tZY7E80M1w89', 'DROIDJ322vg179ue485k106f06D12T4U36a', 'iOS5a05FedBLKC2f0380suU7T32P9z461', '23Uea5VR80LfFTi3xYhB8c1D2p76lm5K65suC417', NULL),
	(4, 'MHr14ozsw60x37IecVW5', '821vPqHGU4394KFmbewJ4n0DI9gT750arkNz1Vd9', 'D6eg71k0m1I123OLvyqdApBGY91Vb5Pf4T36cwtJu36KF5xla747W40CMiZh', NULL, 'ORIGIN', 'ORIGIN', '2022-02-26 23:31:43', '2022-02-26 23:32:03', NULL, 'HarvestPad', 'HP', 'The HarvestPad Platform', 'STAG803DH4GliZg641Y', 'WEBkR9fhD133n41246782B1xwj205G35Q', 'DROIDOQ46E01q973Xi9r8355p641AhYZ8V7', 'iOS76S9aW6ZN0uxtz4Jq7CYf8l3V94gh7', '38fVs9v09CkYd1495Fi28D7q6Gwj42X571OT0W65', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
