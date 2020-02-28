DROP TABLE IF EXISTS `char_shipment`;
CREATE TABLE `char_shipment` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CriteriaID` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeForShipment` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellCreation` int(10) unsigned NOT NULL DEFAULT '0',
  `ShipmentResultItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellCastAtGetting` int(10) unsigned NOT NULL DEFAULT '0',
  `ShipmentConteinerID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ChampionPackID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pvp_talent_unlock`;
CREATE TABLE `pvp_talent_unlock` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TierID` int(10) unsigned NOT NULL DEFAULT '0',
  `ColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `HonorLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pvp_talent`;
CREATE TABLE `pvp_talent` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `OverrideSpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Desc` text,
  `TierID` int(10) unsigned NOT NULL DEFAULT '0',
  `ColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `ClassID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpecializationID` int(10) unsigned NOT NULL DEFAULT '0',
  `Role` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
