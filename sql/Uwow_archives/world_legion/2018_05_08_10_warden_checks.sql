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
  `comment` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

/*Data for the table `warden_checks` */

insert  into `warden_checks`(`id`,`os`,`type`,`data`,`str`,`address`,`length`,`result`,`banreason`,`action`,`comment`) values (1,'Win',3,'A444519CC419521B6D39990C1D95329C8D94B59226CBAA98','',16507,32,'E9','WPE PRO',2,''),(4,'Wn64',8,'','WAP.EXE',0,0,'E9','WoW Admin Panel',2,''),(2,'Wn64',3,'A444519CC419521B6D39990C1D95329C8D94B59226CBAA98','',16507,32,'E9','WPE PRO',2,''),(3,'Win',8,'','WAP.EXE',0,0,'E9','WoW Admin Panel',2,''),(51,'',0,'','',0,0,'','Unknown bot program',2,''),(18,'Wn64',8,'','RECLASS.EXE',0,0,'E9','ReClass',2,''),(17,'Win',8,'','RECLASS.EXE',0,0,'E9','ReClass',2,''),(16,'Wn64',8,'','AM801.EXE',0,0,'E9','Artmoney',2,''),(15,'Win',8,'','AM801.EXE',0,0,'E9','Artmoney',2,''),(14,'Wn64',8,'','WINDBG.EXE',0,0,'E9','WinDbg',2,''),(13,'Win',8,'','WINDBG.EXE',0,0,'E9','WinDbg',2,''),(12,'Wn64',8,'','OLLYDBG.EXE',0,0,'E9','OllyDbg',2,''),(11,'Win',8,'','OLLYDBG.EXE',0,0,'E9','OllyDbg',2,''),(10,'Wn64',8,'','X64DBG.EXE',0,0,'E9','xDbg',2,''),(9,'Win',8,'','X32DBG.EXE',0,0,'E9','xDbg',2,''),(5,'Win',8,'','CHEAT ENGINE.EXE',0,0,'E9','Cheat Engine',2,''),(6,'Wn64',8,'','CHEAT ENGINE.EXE',0,0,'E9','Cheat Engine',2,''),(7,'Win',8,'','CHEATENGINE-X86_64.EXE',0,0,'E9','Cheat Engine',2,''),(8,'Wn64',8,'','CHEATENGINE-X86_64.EXE',0,0,'E9','Cheat Engine',2,''),(50,'',0,'','',0,0,'','Client integrity compromised',2,''),(52,'',0,'','',0,0,'','Unknown rotation bot program',2,''),(53,'',0,'','',0,0,'','Unknown cheat program',4,'');
