-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for mirandadb
CREATE DATABASE IF NOT EXISTS `mirandadb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mirandadb`;

-- Dumping structure for table mirandadb.product
CREATE TABLE IF NOT EXISTS `product` (
  `Product_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Product_name` text NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
-- Dumping structure for table mirandadb.register
CREATE TABLE IF NOT EXISTS `register` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` text NOT NULL,
  `LASTNAME` text NOT NULL,
  `USERNAME` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `CONFIRM PASSWORD` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
