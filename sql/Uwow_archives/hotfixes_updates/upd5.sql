DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE `difficulty` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `FallbackDifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InstanceType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `OldEnumValue` tinyint(4) NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ToggleDifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GroupSizeHealthCurveID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GroupSizeDmgCurveID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GroupSizeSpellPointsCurveID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemBonusTreeModID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `difficulty_locale`;
CREATE TABLE `difficulty_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
