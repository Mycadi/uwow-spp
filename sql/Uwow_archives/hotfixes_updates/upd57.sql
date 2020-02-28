DROP TABLE IF EXISTS `holiday_names`;
CREATE TABLE `holiday_names` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `HolidayName` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `holiday_names_locale`;
CREATE TABLE `holiday_names_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `HolidayName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pvp_scaling_effect`;
CREATE TABLE `pvp_scaling_effect` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Scalar` float NOT NULL DEFAULT '0',
  `ScallingEffectType` int(10) unsigned NOT NULL DEFAULT '0',
  `SpecializationID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pvp_scaling_effect_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pvp_scaling_effect_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ScalingStatName` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pvp_scaling_effect_type_locale`;
CREATE TABLE `pvp_scaling_effect_type_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `ScalingStatName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

 DROP TABLE IF EXISTS `map_challenge_mode`;
 CREATE TABLE `map_challenge_mode` (
   `ID` int(10) unsigned NOT NULL DEFAULT '0',
   `Name` text,
   `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
   `ChestTimer1` smallint(5) unsigned NOT NULL DEFAULT '0',
   `ChestTimer2` smallint(5) unsigned NOT NULL DEFAULT '0',
   `ChestTimer3` smallint(5) unsigned NOT NULL DEFAULT '0',
   `unk5` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ID`)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 
DROP TABLE IF EXISTS `map_challenge_mode_locale`;
CREATE TABLE `map_challenge_mode_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
