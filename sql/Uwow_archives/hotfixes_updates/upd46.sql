DROP TABLE IF EXISTS `adventure`;
CREATE TABLE `adventure` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unkFloat1` float NOT NULL DEFAULT '0',
  `unkFloat2` float NOT NULL DEFAULT '0',
  `unkInt0` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `unkByte` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Condition` int(10) unsigned NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `adventure_locale`;
CREATE TABLE `adventure_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `wmo_area_table`;
CREATE TABLE `wmo_area_table` (
  `WMOGroupID` int(11) NOT NULL DEFAULT '0',
  `AreaName` text,
  `WMOID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AmbienceID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ZoneMusic` smallint(5) unsigned NOT NULL DEFAULT '0',
  `IntroSound` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaTableID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UWIntroSound` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UWAmbience` smallint(5) unsigned NOT NULL DEFAULT '0',
  `NameSet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SoundProviderPref` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SoundProviderPrefUnderwater` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `UWZoneMusic` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `wmo_area_table_locale`;
CREATE TABLE `wmo_area_table_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `AreaName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_ability_effect`;
CREATE TABLE `battle_pet_ability_effect` (
  `TurnID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TriggerAbility` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EffectPropertiesID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PropertyValue1` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue2` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue3` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue4` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue5` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue6` smallint(6) NOT NULL DEFAULT '0',
  `Effect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `scenario`;
CREATE TABLE `scenario` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkLegion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkLegion2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_follower`;
CREATE TABLE `garr_follower` (
  `HordeCreatureID` int(10) unsigned NOT NULL DEFAULT '0',
  `AllianceCreatureID` int(10) unsigned NOT NULL DEFAULT '0',
  `HordeSourceText` text,
  `AllianceSourceText` text,
  `HordePortraitIconID` int(10) unsigned NOT NULL DEFAULT '0',
  `AlliancePortraitIconID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk6` int(10) unsigned NOT NULL DEFAULT '0',
  `unk7` int(10) unsigned NOT NULL DEFAULT '0',
  `HordeGarrFollItemSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllianceGarrFollItemSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemLevelWeapon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemLevelArmor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk12` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk13` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk14` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HordeUiAnimRaceInfoID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllianceUiAnimRaceInfoID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HordeGarrClassSpecID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllianceGarrClassSpecID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unknown1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unknown2` tinyint(4) NOT NULL DEFAULT '0',
  `Unknown3` tinyint(4) NOT NULL DEFAULT '0',
  `garType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk26` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk27` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk28` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk29` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mission`;
CREATE TABLE `garr_mission` (
  `MissionDuration` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferDuration` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `Location` text,
  `Unk4` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseXP` int(10) unsigned NOT NULL DEFAULT '0',
  `unk7` float NOT NULL DEFAULT '0',
  `unk8` float NOT NULL DEFAULT '0',
  `unk9` float NOT NULL DEFAULT '0',
  `unk10` float NOT NULL DEFAULT '0',
  `ReqFollowersItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CriteriaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewCurrencyID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk16` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrMechanicTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ReqFollowersCount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk20` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrMissionTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk22` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseChance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk24` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `garType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk27` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqResourcesCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unk29` int(10) unsigned NOT NULL DEFAULT '0',
  `unk30` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `world_map_transforms`;
CREATE TABLE `world_map_transforms` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RegionMinX` float NOT NULL DEFAULT '0',
  `RegionMinY` float NOT NULL DEFAULT '0',
  `RegionMinZ` float NOT NULL DEFAULT '0',
  `RegionMaxX` float NOT NULL DEFAULT '0',
  `RegionMaxY` float NOT NULL DEFAULT '0',
  `RegionMaxZ` float NOT NULL DEFAULT '0',
  `RegionOffsetX` float NOT NULL DEFAULT '0',
  `RegionOffsetY` float NOT NULL DEFAULT '0',
  `RegionScale` float NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `NewMapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `NewDungeonMapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `NewAreaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `creature_model_data`;
CREATE TABLE `creature_model_data` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ModelScale` float NOT NULL DEFAULT '0',
  `FootprintTextureLength` float NOT NULL DEFAULT '0',
  `FootprintTextureWidth` float NOT NULL DEFAULT '0',
  `FootprintParticleScale` float NOT NULL DEFAULT '0',
  `CollisionWidth` float NOT NULL DEFAULT '0',
  `CollisionHeight` float NOT NULL DEFAULT '0',
  `MountHeight` float NOT NULL DEFAULT '0',
  `GeoBoxMin1` float NOT NULL DEFAULT '0',
  `GeoBoxMin2` float NOT NULL DEFAULT '0',
  `GeoBoxMin3` float NOT NULL DEFAULT '0',
  `GeoBoxMax1` float NOT NULL DEFAULT '0',
  `GeoBoxMax2` float NOT NULL DEFAULT '0',
  `GeoBoxMax3` float NOT NULL DEFAULT '0',
  `WorldEffectScale` float NOT NULL DEFAULT '0',
  `AttachedEffectScale` float NOT NULL DEFAULT '0',
  `MissileCollisionRadius` float NOT NULL DEFAULT '0',
  `MissileCollisionPush` float NOT NULL DEFAULT '0',
  `MissileCollisionRaise` float NOT NULL DEFAULT '0',
  `OverrideLootEffectScale` float NOT NULL DEFAULT '0',
  `OverrideNameScale` float NOT NULL DEFAULT '0',
  `OverrideSelectionRadius` float NOT NULL DEFAULT '0',
  `TamedPetBaseScale` float NOT NULL DEFAULT '0',
  `HoverHeight` float NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `FileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `SizeClass` int(10) unsigned NOT NULL DEFAULT '0',
  `BloodID` int(10) unsigned NOT NULL DEFAULT '0',
  `FootprintTextureID` int(10) unsigned NOT NULL DEFAULT '0',
  `FoleyMaterialID` int(10) unsigned NOT NULL DEFAULT '0',
  `FootstepEffectID` int(10) unsigned NOT NULL DEFAULT '0',
  `DeathThudEffectID` int(10) unsigned NOT NULL DEFAULT '0',
  `FootstepShakeSize` int(10) unsigned NOT NULL DEFAULT '0',
  `DeathThudShakeSize` int(10) unsigned NOT NULL DEFAULT '0',
  `SoundID` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureGeosetDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
