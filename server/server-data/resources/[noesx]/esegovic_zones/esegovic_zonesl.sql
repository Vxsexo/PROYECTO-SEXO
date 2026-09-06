-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.4.19-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank Struktur für es_extended
CREATE DATABASE IF NOT EXISTS `es_extended` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `es_extended`;

-- Exportiere Struktur von Tabelle es_extended.esegovic_zones
CREATE TABLE IF NOT EXISTS `esegovic_zones` (
  `zone` varchar(40) NOT NULL,
  `owner` varchar(40) NOT NULL DEFAULT 'noowner',
  `job` varchar(50) DEFAULT 'nojob',
  `x` varchar(50) DEFAULT '0',
  `y` varchar(50) DEFAULT '0',
  `z` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Exportiere Daten aus Tabelle es_extended.esegovic_zones: ~3 rows (ungefähr)
/*!40000 ALTER TABLE `esegovic_zones` DISABLE KEYS */;
INSERT IGNORE INTO `esegovic_zones` (`zone`, `owner`, `job`, `x`, `y`, `z`) VALUES
	('South LS', 'noowner', 'nojob', '153.56', '-1640.12', '31.32'),
	('Downtown', 'noowner', 'nojob', '195.0', '-933.84', '30.68'),
	('Vespucci', 'noowner', 'nojob', '-1115.84', '-1310.68', '5.2');
/*!40000 ALTER TABLE `esegovic_zones` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
