DROP TABLE IF EXISTS `journal_encounter_creature`;
CREATE TABLE `journal_encounter_creature` (
  `CreatureDisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `EncounterID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `journal_encounter_creature_locale`;
CREATE TABLE `journal_encounter_creature_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `journal_encounter_item`;
CREATE TABLE `journal_encounter_item` (
  `ItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `EncounterID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk2` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `journal_encounter`;
CREATE TABLE `journal_encounter` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkFloat` float NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `UnkShort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkShort2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkShort3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `JournalInstanceID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkByte` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkInt` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkInt2` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `journal_encounter_locale`;
CREATE TABLE `journal_encounter_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `journal_instance`;
CREATE TABLE `journal_instance` (
  `UnkInt` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkInt2` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkInt3` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkInt4` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkShort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkByte` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `journal_instance_locale`;
CREATE TABLE `journal_instance_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
