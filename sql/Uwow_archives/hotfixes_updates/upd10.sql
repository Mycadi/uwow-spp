DROP TABLE IF EXISTS `pvp_talent_unlock`;
CREATE TABLE `pvp_talent_unlock` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Row` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Column` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HonorLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pvp_talent`;
CREATE TABLE `pvp_talent` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Row` int(10) unsigned NOT NULL DEFAULT '0',
  `Column` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown4` int(10) unsigned NOT NULL DEFAULT '0',
  `ClassID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpecializationID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `OverrideSpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Desc` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pvp_talent_locale`;
CREATE TABLE `pvp_talent_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Desc_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
