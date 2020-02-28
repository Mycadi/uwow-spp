DROP TABLE IF EXISTS `area_table`;
CREATE TABLE `area_table` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags1` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `ZoneName` text,
  `AmbientMultiplier` float NOT NULL DEFAULT '0',
  `AreaName` text,
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParentAreaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaBit` smallint(6) NOT NULL DEFAULT '0',
  `AmbienceID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ZoneMusic` smallint(5) unsigned NOT NULL DEFAULT '0',
  `IntroSound` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LiquidTypeID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LiquidTypeID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LiquidTypeID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LiquidTypeID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UWIntroMusic` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UWZoneMusic` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UWAmbience` smallint(5) unsigned NOT NULL DEFAULT '0',
  `WorldPvPID` tinyint(4) NOT NULL DEFAULT '0',
  `WindSettingsID` tinyint(4) NOT NULL DEFAULT '0',
  `SoundProviderPref` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SoundProviderPrefUnderwater` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ExplorationLevel` tinyint(4) NOT NULL DEFAULT '0',
  `FactionGroupMask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MountFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `WildBattlePetLevelMin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `WildBattlePetLevelMax` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battlemaster_list`;
CREATE TABLE `battlemaster_list` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NameLang` text,
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `GametypeLang` text,
  `MapID1` smallint(6) NOT NULL DEFAULT '0',
  `MapID2` smallint(6) NOT NULL DEFAULT '0',
  `MapID3` smallint(6) NOT NULL DEFAULT '0',
  `MapID4` smallint(6) NOT NULL DEFAULT '0',
  `MapID5` smallint(6) NOT NULL DEFAULT '0',
  `MapID6` smallint(6) NOT NULL DEFAULT '0',
  `MapID7` smallint(6) NOT NULL DEFAULT '0',
  `MapID8` smallint(6) NOT NULL DEFAULT '0',
  `MapID9` smallint(6) NOT NULL DEFAULT '0',
  `MapID10` smallint(6) NOT NULL DEFAULT '0',
  `MapID11` smallint(6) NOT NULL DEFAULT '0',
  `MapID12` smallint(6) NOT NULL DEFAULT '0',
  `MapID13` smallint(6) NOT NULL DEFAULT '0',
  `MapID14` smallint(6) NOT NULL DEFAULT '0',
  `MapID15` smallint(6) NOT NULL DEFAULT '0',
  `MapID16` smallint(6) NOT NULL DEFAULT '0',
  `HolidayWorldState` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CritreriaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `InstanceType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GroupsAllowed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxGroupSize` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Minlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Maxlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RatedPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battlemaster_list_locale`;
CREATE TABLE `battlemaster_list_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `NameLang_lang` text,
  `GametypeLang_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `conversation_line`;
CREATE TABLE `conversation_line` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `tesxID` int(10) unsigned NOT NULL DEFAULT '0',
  `duration` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk` smallint(6) NOT NULL DEFAULT '0',
  `nextID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mount_capability`;
CREATE TABLE `mount_capability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `SpeedModSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredRidingSkill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredArea` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMap` smallint(6) NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredAura` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_species_x_ability`;
CREATE TABLE `battle_pet_species_x_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `speciesID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `abilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `requiredLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `char_shipment`;
CREATE TABLE `char_shipment` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ShipmentConteinerID` int(10) unsigned NOT NULL DEFAULT '0',
  `CriteriaID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeForShipment` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellCreation` int(10) unsigned NOT NULL DEFAULT '0',
  `ShipmentResultItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `char_shipment_conteiner`;
CREATE TABLE `char_shipment_conteiner` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `BuildingType` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `unt3` int(10) unsigned NOT NULL DEFAULT '0',
  `unk4` int(10) unsigned NOT NULL DEFAULT '0',
  `unk5` int(10) unsigned NOT NULL DEFAULT '0',
  `unk6` int(10) unsigned NOT NULL DEFAULT '0',
  `unk7` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxShipments` int(10) unsigned NOT NULL DEFAULT '0',
  `Description` text,
  `enotherID` int(10) unsigned NOT NULL DEFAULT '0',
  `fractionType` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `char_shipment_conteiner_locale`;
CREATE TABLE `char_shipment_conteiner_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `taxi_path_node`;
CREATE TABLE `taxi_path_node` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LocX` float NOT NULL DEFAULT '0',
  `LocY` float NOT NULL DEFAULT '0',
  `LocZ` float NOT NULL DEFAULT '0',
  `Delay` int(10) unsigned NOT NULL DEFAULT '0',
  `PathID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ArrivalEventID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DepartureEventID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `NodeIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `spell_effect_scaling`;
CREATE TABLE `spell_effect_scaling` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Coefficient` float NOT NULL DEFAULT '0',
  `Variance` float NOT NULL DEFAULT '0',
  `OtherCoefficient` float NOT NULL DEFAULT '0',
  `SpellEffectId` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

