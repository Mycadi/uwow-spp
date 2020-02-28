DROP TABLE IF EXISTS `group_finder_activity`;
CREATE TABLE `group_finder_activity` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `NameAlt` text,
  `RequiredItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ZoneID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CategoryID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Order2` tinyint(4) NOT NULL DEFAULT '0',
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unknown11` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `group_finder_activity_locale`;
CREATE TABLE `group_finder_activity_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `NameAlt_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `group_finder_activity_grp`;
CREATE TABLE `group_finder_activity_grp` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GroupName` text,
  `Unknown1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `group_finder_activity_grp_locale`;
CREATE TABLE `group_finder_activity_grp_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `GroupName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `group_finder_category`;
CREATE TABLE `group_finder_category` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CategoryName` text,
  `Unknown1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unknown2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `group_finder_category_locale`;
CREATE TABLE `group_finder_category_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `CategoryName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
