DROP TABLE IF EXISTS `curve`;
CREATE TABLE `curve` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unused` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_modified_appearance`;
CREATE TABLE `item_modified_appearance` (
  `ItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `AppearanceID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AppearanceModID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VariationID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SourceType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_bonus_list_level_delta`;
CREATE TABLE `item_bonus_list_level_delta` (
  `Delta` smallint(6) NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
