DROP TABLE IF EXISTS `adventure_map_poi`;
CREATE TABLE `adventure_map_poi` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unkFloat1` float NOT NULL DEFAULT '0',
  `unkFloat2` float NOT NULL DEFAULT '0',
  `unkInt0` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `unkByte` smallint(6) NOT NULL DEFAULT '0',
  
  `cond` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestID` int(10) unsigned NOT NULL DEFAULT '0',

  `unkInt1` int(10) unsigned NOT NULL DEFAULT '0',
  `unkInt2` int(10) unsigned NOT NULL DEFAULT '0',
  `unkInt3` int(10) unsigned NOT NULL DEFAULT '0',
  `unkInt4` int(10) unsigned NOT NULL DEFAULT '0',
  `unkInt5` int(10) unsigned NOT NULL DEFAULT '0',
  `unkInt6` int(10) unsigned NOT NULL DEFAULT '0',
  
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `adventure_map_poi_locale`;
CREATE TABLE `adventure_map_poi_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;