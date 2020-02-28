DROP TABLE IF EXISTS `char_shipment`;
CREATE TABLE `char_shipment` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CriteriaID` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeForShipment` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellCreation` int(10) unsigned NOT NULL DEFAULT '0',
  `ShipmentResultItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `Spell_unk` int(10) unsigned NOT NULL DEFAULT '0',
  `ChampionPackID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ShipmentConteinerID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `char_shipment_container`;
CREATE TABLE `char_shipment_container` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `unt3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BuildingType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `garType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk12` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxShipments` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enotherID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fractionType` tinyint(4) NOT NULL DEFAULT '0',
  `unk16` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `scenario`;
CREATE TABLE `scenario` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Data` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
