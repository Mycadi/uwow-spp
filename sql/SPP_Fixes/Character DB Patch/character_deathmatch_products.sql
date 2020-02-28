-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.43-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table characters.character_deathmatch_products
DROP TABLE IF EXISTS `character_deathmatch_products`;
CREATE TABLE IF NOT EXISTS `character_deathmatch_products` (
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `product` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY (`product`,`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table characters.character_deathmatch_products: ~12 rows (approximately)
DELETE FROM `character_deathmatch_products`;
/*!40000 ALTER TABLE `character_deathmatch_products` DISABLE KEYS */;
INSERT INTO `character_deathmatch_products` (`name`, `type`, `product`, `cost`) VALUES
	('fatliner', 1, '{rt1}Champion of Fatliner{rt1}  : ', 90),
	('Veil', 1, '{rt1}Guardian of Veil{rt1}  : ', 90),
	('thewolfow', 1, '{rt2}Brave of TheWolfOW{rt2} : ', 90),
	('ED', 1, '{rt2}Erectile{rt4}Dysfunctia{rt2} : ', 68),
	('69', 1, '{rt3}Nice{rt3}  : ', 69),
	('jhonjoe', 1, '{rt4}Seeker of jhonJOE{rt4}  : ', 90),
	('mdic', 1, '{rt5}All Praise MDIC {rt5}  : ', 90),
	('SPP', 1, '{rt5}SPP Supporter{rt5} : ', 10),
	('koosh', 1, '{rt6}Prodigy of kooSH{rt6} : ', 90),
	('Redfast', 1, '{rt7}Follower Of R3DF4ST{rt7} : ', 90),
	('warlord', 1, '{rt8}Amani Warlord Zul\'Jin{rt8} : ', 90),
	('500', 1, '{rt8}Body Collector{rt8} : ', 50),
	('Conan', 1, '{rt8}Descendent Of ConanHun{rt8} : ', 90);
/*!40000 ALTER TABLE `character_deathmatch_products` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
