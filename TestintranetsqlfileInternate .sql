-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.17-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for intranettest
CREATE DATABASE IF NOT EXISTS `intranettest` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `intranettest`;

-- Dumping structure for table intranettest.department
CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  `orgId` int(11) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT 'Y',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastmodifyDate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `orgId` (`orgId`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`orgId`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table intranettest.organization
CREATE TABLE IF NOT EXISTS `organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organizationName` varchar(255) NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT 'Y',
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastmodifyDate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
