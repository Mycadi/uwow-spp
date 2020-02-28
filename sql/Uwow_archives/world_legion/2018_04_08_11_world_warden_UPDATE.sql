/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `warden_checks` */

DROP TABLE IF EXISTS `warden_checks`;

CREATE TABLE `warden_checks` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `os` varchar(4) NOT NULL DEFAULT '',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` varchar(48) NOT NULL DEFAULT '',
  `str` varchar(512) NOT NULL DEFAULT '',
  `address` int(10) unsigned NOT NULL DEFAULT '0',
  `length` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `result` varchar(100) NOT NULL DEFAULT '',
  `banreason` varchar(100) NOT NULL DEFAULT '',
  `action` tinyint(3) NOT NULL DEFAULT '0',
  `bantime` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

/*Data for the table `warden_checks` */

insert  into `warden_checks`(`id`,`os`,`type`,`data`,`str`,`address`,`length`,`result`,`banreason`,`action`,`bantime`,`comment`) values (1,'Win',3,'A444519CC419521B6D39990C1D95329C8D94B59226CBAA98','',16507,32,'E9','WPE PRO',2,2592000,''),(5,'Win',8,'','WROBOT.EXE',0,0,'E9','WRobot Bot',2,2592000,''),(4,'Wn64',8,'','WAP.EXE',0,0,'E9','WoW Admin Panel',2,2592000,''),(2,'Wn64',3,'A444519CC419521B6D39990C1D95329C8D94B59226CBAA98','',16507,32,'E9','WPE PRO',2,2592000,''),(3,'Win',8,'','WAP.EXE',0,0,'E9','WoW Admin Panel',2,2592000,''),(6,'Wn64',8,'','WROBOT.EXE',0,0,'E9','WRobot Bot',2,2592000,''),(100,'Win',0,'','',0,0,'','Unknown cheat program',2,2592000,''),(7,'Win',8,'','HONORBUDDY.EXE',0,0,'E9','Honorbuddy Bot',2,2592000,''),(8,'Wn64',8,'','HONORBUDDY.EXE',0,0,'E9','Honorbuddy Bot',2,2592000,''),(9,'Win',8,'','GAME HACKING TOOLS.EXE',0,0,'E9','GHT Tools',2,2592000,''),(10,'Wn64',8,'','GAME HACKING TOOLS.EXE',0,0,'E9','GHT Tools',2,2592000,''),(11,'Win',8,'','GHT.TROUBLESHOOTER.EXE',0,0,'E9','GHT Tools',2,2592000,''),(12,'Wn64',8,'','GHT.TROUBLESHOOTER.EXE',0,0,'E9','GHT Tools',2,2592000,''),(13,'Win',8,'','FIREHACK.EXE',0,0,'E9','Firehack',2,2592000,''),(14,'Wn64',8,'','FIREHACK.EXE',0,0,'E9','Firehack',2,2592000,''),(15,'Win',8,'','SOAPBOX LAUNCHER.EXE',0,0,'E9','Soapbox Rotations',2,2592000,''),(16,'Wn64',8,'','SOAPBOX LAUNCHER.EXE',0,0,'E9','Soapbox Rotations',2,2592000,''),(17,'Win',8,'','CHEAT ENGINE.EXE',0,0,'E9','Cheat Engine',2,604800,''),(18,'Wn64',8,'','CHEAT ENGINE.EXE',0,0,'E9','Cheat Engine',2,604800,''),(19,'Win',8,'','CHEATENGINE-X86_64.EXE',0,0,'E9','Cheat Engine',2,604800,''),(20,'Wn64',8,'','CHEATENGINE-X86_64.EXE',0,0,'E9','Cheat Engine',2,604800,''),(99,'Win',0,'','',0,0,'','Unknown cheat program',2,2592000,''),(101,'Win',0,'','',0,0,'','Unknown cheat program',2,2592000,''),(102,'Win',0,'','',0,0,'','Unknown bot program',2,2592000,'');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
