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

-- Dumping structure for table mirandadb.login
CREATE TABLE IF NOT EXISTS `login` (
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table mirandadb.login: ~2 rows (approximately)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`username`, `password`) VALUES
	('ruth', '1c509a02f7a2cbd460c2513a1d507899'),
	('ruth', '1c509a02f7a2cbd460c2513a1d507899'),
	('ruth', '1c509a02f7a2cbd460c2513a1d507899');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Dumping structure for table mirandadb.register
CREATE TABLE IF NOT EXISTS `register` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` text NOT NULL,
  `LASTNAME` text NOT NULL,
  `USERNAME` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `CONFIRM PASSWORD` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table mirandadb.register: ~6 rows (approximately)
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`ID`, `FIRSTNAME`, `LASTNAME`, `USERNAME`, `PASSWORD`, `CONFIRM PASSWORD`) VALUES
	(1, 'ruth', 'miranda', 'miranda22', '7411612723cdc865f0ea35e6e608f463', '0'),
	(2, 'cherry', 'sorio', 'mira', '7fe4771c008a22eb763df47d19e2c6aa', '0'),
	(3, 'ghjgh', 'fgfhgj', 'th', '18bd9197cb1d833bc352f47535c00320', '0'),
	(4, 'cherry', 'sorio', 'blossom', '495bf9840649ee1ec953d99f8e769889', '0'),
	(5, 'a', 'b', 'c', '8277e0910d750195b448797616e091ad', '0'),
	(6, 'c', 'd', 'e', '8fa14cdd754f91cc6554c9e71929cce7', '0'),
	(7, 'tedted', 'enoria', 'ted', '6ea9ab1baa0efb9e19094440c317e21b', '0');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
