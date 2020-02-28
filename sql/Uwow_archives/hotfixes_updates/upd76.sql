DROP TABLE IF EXISTS `item_level_selector_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_level_selector_quality` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemBonusListID` int(10) unsigned NOT NULL DEFAULT '0',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemLevelSelectorQualitySetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `item_level_selector_quality_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_level_selector_quality_set` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemLevelMin` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemLevelMax` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `spell_power_difficulty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_power_difficulty` (
  `DifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PowerIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `sound_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sound_kit` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VolumeFloat` float NOT NULL DEFAULT '0',
  `MinDistance` float NOT NULL DEFAULT '0',
  `DistanceCutoff` float NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SoundEntriesAdvancedID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SoundType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DialogType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EAXDef` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VolumeVariationPlus` float NOT NULL DEFAULT '0',
  `VolumeVariationMinus` float NOT NULL DEFAULT '0',
  `PitchVariationPlus` float NOT NULL DEFAULT '0',
  `PitchVariationMinus` float NOT NULL DEFAULT '0',
  `PitchAdjust` float NOT NULL DEFAULT '0',
  `BusOverwriteID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxInstances` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `transport_rotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_rotation` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `X` float NOT NULL DEFAULT '0',
  `Y` float NOT NULL DEFAULT '0',
  `Z` float NOT NULL DEFAULT '0',
  `W` float NOT NULL DEFAULT '0',
  `TransportID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `sandbox_scaling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sandbox_scaling` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MinLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_ability_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_ability_category` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_ability_category_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_ability_category_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `PrimaryCurrencyTypeId` int(10) unsigned NOT NULL DEFAULT '0',
  `SecondaryCurrencyTypeId` int(10) unsigned NOT NULL DEFAULT '0',
  `ExpansionId` int(10) unsigned NOT NULL DEFAULT '0',
  `MapIDs1` int(10) unsigned NOT NULL DEFAULT '0',
  `MapIDs2` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_building_doodad_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_building_doodad_set` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrBuildingId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllianceDoodadSet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HordeDoodadSet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpecializationId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_follower_level_x_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `garr_follower_level_x_p` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `XpToNextLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ShipmentXP` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FollowerLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FollowerTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_follower_set_x_follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_follower_set_x_follower` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrFollowerId` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkInt` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_encounter_set_x_encounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_encounter_set_x_encounter` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `xEncounter` int(10) unsigned NOT NULL DEFAULT '0',
  `Encounter` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_foll_item_set_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_foll_item_set_member` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemId` int(10) unsigned NOT NULL DEFAULT '0',
  `MinItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemSlot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_foll_support_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_foll_support_spell` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AllianceSpellId` int(10) unsigned NOT NULL DEFAULT '0',
  `HordeSpellId` int(10) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unused` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_mission_type_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_mission_type_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_mission_x_follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_mission_x_follower` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrFollowerId` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrFollowerSetId` int(10) unsigned NOT NULL DEFAULT '0',
  `Unused` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_mssn_bonus_ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_mssn_bonus_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Radius` float NOT NULL DEFAULT '0',
  `DurationSecs` int(11) NOT NULL DEFAULT '0',
  `GarrAbilityId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrFollowerTypeId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrMissionTextureId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_specialization` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Tooltip` text,
  `IconFileDataId` int(11) NOT NULL DEFAULT '0',
  `Param1` float NOT NULL DEFAULT '0',
  `Param2` float NOT NULL DEFAULT '0',
  `BuildingType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpecType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredUpgradeLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_specialization_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_specialization_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Tooltip_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_follower_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_follower_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxFollowers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxFollowerBuildingType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrTypeId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LevelRangeBias` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemLevelRangeBias` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_item_level_upgrade_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_item_level_upgrade_data` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Operation` int(10) unsigned NOT NULL DEFAULT '0',
  `MinItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `FollowerTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_mission_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_mission_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `UiTextureAtlasMemberId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UiTextureKitId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `keychain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keychain` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Key1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key7` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key8` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key10` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key11` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key12` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key13` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key14` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key15` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key16` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key17` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key18` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key19` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key20` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key21` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key22` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key23` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key24` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key25` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key26` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key27` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key28` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key29` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key30` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key31` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Key32` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE `achievement` ADD COLUMN `Supercedes` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `achievement` ADD COLUMN `UiOrder` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `achievement` ADD COLUMN `SharesCriteria` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `achievement` ADD COLUMN `Faction` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `achievement` ADD COLUMN `Points` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `achievement` ADD COLUMN `MinimumCriteria` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `achievement` DROP COLUMN `ParentAchievement`;
ALTER TABLE `achievement` DROP COLUMN `OrderInCategory`;
ALTER TABLE `achievement` DROP COLUMN `RefAchievement`;
ALTER TABLE `achievement` DROP COLUMN `FactionFlag`;
ALTER TABLE `achievement` DROP COLUMN `RewardPoints`;
ALTER TABLE `achievement` DROP COLUMN `Amount`;
ALTER TABLE `achievement` MODIFY COLUMN `CriteriaTree` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `achievement` MODIFY COLUMN `Reward` TEXT COLLATE utf8_general_ci AFTER `Description`;
ALTER TABLE `achievement` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinimumCriteria`;
ALTER TABLE `achievement` MODIFY COLUMN `IconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `achievement` MODIFY COLUMN `CriteriaTree` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `IconFileDataID`;
ALTER TABLE `achievement` MODIFY COLUMN `Supercedes` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `achievement` MODIFY COLUMN `UiOrder` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CategoryID`;
ALTER TABLE `achievement` MODIFY COLUMN `SharesCriteria` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UiOrder`;
ALTER TABLE `achievement` MODIFY COLUMN `Faction` TINYINT(4) NOT NULL DEFAULT 0 AFTER `SharesCriteria`;
ALTER TABLE `achievement` MODIFY COLUMN `Points` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Faction`;
ALTER TABLE `achievement` MODIFY COLUMN `MinimumCriteria` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Points`;

ALTER TABLE `adventure_journal` ADD COLUMN `Name` TEXT COLLATE utf8_general_ci;
ALTER TABLE `adventure_journal` ADD COLUMN `RewardDescription` TEXT COLLATE utf8_general_ci;
ALTER TABLE `adventure_journal` ADD COLUMN `ContinueDescription` TEXT COLLATE utf8_general_ci;
ALTER TABLE `adventure_journal` ADD COLUMN `TextureFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `ItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `BattlemasterListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `BonusPlayerConditionId1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `BonusPlayerConditionId2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `CurrencyType` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `ButtonActionType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `PriorityMin` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `PriorityMax` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `BonusValue1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `BonusValue2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `CurrencyQuantity` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` ADD COLUMN `ItemQuantity` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` DROP COLUMN `Title`;
ALTER TABLE `adventure_journal` DROP COLUMN `Icon`;
ALTER TABLE `adventure_journal` DROP COLUMN `RewardItemID`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk3`;
ALTER TABLE `adventure_journal` DROP COLUMN `ObjectiveText`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk4`;
ALTER TABLE `adventure_journal` DROP COLUMN `PlayedConditionIDUnk21`;
ALTER TABLE `adventure_journal` DROP COLUMN `PlayedConditionIDUnk22`;
ALTER TABLE `adventure_journal` DROP COLUMN `CurrencyID`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk9`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk10`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk12`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk13`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk141`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk142`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk15`;
ALTER TABLE `adventure_journal` DROP COLUMN `Unk17`;
ALTER TABLE `adventure_journal` CHANGE COLUMN `LFGDungeonID` `LfgDungeonID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_journal` MODIFY COLUMN `Type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorldMapAreaID`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `RewardDescription` TEXT COLLATE utf8_general_ci AFTER `ButtonText`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `ContinueDescription` TEXT COLLATE utf8_general_ci AFTER `RewardDescription`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `TextureFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ContinueDescription`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `ItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `TextureFileDataID`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `BattlemasterListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `QuestID`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `BonusPlayerConditionId1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlemasterListID`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `BonusPlayerConditionId2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BonusPlayerConditionId1`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `CurrencyType` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BonusPlayerConditionId2`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Type`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `ButtonActionType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `PriorityMin` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ButtonActionType`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `PriorityMax` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PriorityMin`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `BonusValue1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PriorityMax`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `BonusValue2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BonusValue1`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `CurrencyQuantity` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BonusValue2`;
ALTER TABLE `adventure_journal` MODIFY COLUMN `ItemQuantity` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PlayerConditionID`;

ALTER TABLE `adventure_journal_locale` ADD COLUMN `Name_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `adventure_journal_locale` ADD COLUMN `RewardDescription_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `adventure_journal_locale` ADD COLUMN `ContinueDescription_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `adventure_journal_locale` DROP COLUMN `Title_lang`;
ALTER TABLE `adventure_journal_locale` DROP COLUMN `Unk3_lang`;
ALTER TABLE `adventure_journal_locale` DROP COLUMN `ObjectiveText_lang`;
ALTER TABLE `adventure_journal_locale` MODIFY COLUMN `Name_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;
ALTER TABLE `adventure_journal_locale` MODIFY COLUMN `RewardDescription_lang` TEXT COLLATE utf8_general_ci AFTER `ButtonText_lang`;
ALTER TABLE `adventure_journal_locale` MODIFY COLUMN `ContinueDescription_lang` TEXT COLLATE utf8_general_ci AFTER `RewardDescription_lang`;

ALTER TABLE `adventure_map_poi` ADD COLUMN `Title` TEXT COLLATE utf8_general_ci;
ALTER TABLE `adventure_map_poi` ADD COLUMN `WorldPositionX` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `adventure_map_poi` ADD COLUMN `WorldPositionY` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `adventure_map_poi` ADD COLUMN `RewardItemId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_map_poi` ADD COLUMN `LfgDungeonId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_map_poi` ADD COLUMN `UiTextureKitId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_map_poi` ADD COLUMN `DungeonMapId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_map_poi` DROP COLUMN `PosX`;
ALTER TABLE `adventure_map_poi` DROP COLUMN `PosY`;
ALTER TABLE `adventure_map_poi` DROP COLUMN `unkInt0`;
ALTER TABLE `adventure_map_poi` DROP COLUMN `Name`;
ALTER TABLE `adventure_map_poi` DROP COLUMN `unkInt1`;
ALTER TABLE `adventure_map_poi` DROP COLUMN `unkInt3`;
ALTER TABLE `adventure_map_poi` DROP COLUMN `unkInt5`;
ALTER TABLE `adventure_map_poi` CHANGE COLUMN `UiTextureAtlasMemberID` `UiTextureAtlasMemberId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `adventure_map_poi` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Title`;
ALTER TABLE `adventure_map_poi` MODIFY COLUMN `Title` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `adventure_map_poi` MODIFY COLUMN `WorldPositionX` FLOAT NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `adventure_map_poi` MODIFY COLUMN `WorldPositionY` FLOAT NOT NULL DEFAULT 0 AFTER `WorldPositionX`;
ALTER TABLE `adventure_map_poi` MODIFY COLUMN `RewardItemId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorldPositionY`;
ALTER TABLE `adventure_map_poi` MODIFY COLUMN `LfgDungeonId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `QuestID`;
ALTER TABLE `adventure_map_poi` MODIFY COLUMN `UiTextureKitId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UiTextureAtlasMemberId`;
ALTER TABLE `adventure_map_poi` MODIFY COLUMN `DungeonMapId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorldMapAreaID`;

ALTER TABLE `adventure_map_poi_locale` ADD COLUMN `Title_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `adventure_map_poi_locale` DROP COLUMN `Name_lang`;
ALTER TABLE `adventure_map_poi_locale` MODIFY COLUMN `Title_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;

ALTER TABLE `anim_kit` MODIFY COLUMN `LowDefAnimKitID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `anim_kit` MODIFY COLUMN `OneShotDuration` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `anim_kit` MODIFY COLUMN `OneShotDuration` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `anim_kit` MODIFY COLUMN `OneShotStopAnimKitID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `OneShotDuration`;

ALTER TABLE `area_group_member` MODIFY COLUMN `AreaID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `area_table` ADD COLUMN `PvpCombatWorldStateId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_table` DROP COLUMN `WorldPvPID`;
ALTER TABLE `area_table` MODIFY COLUMN `ZoneName` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `area_table` MODIFY COLUMN `AreaName` TEXT COLLATE utf8_general_ci AFTER `ZoneName`;
ALTER TABLE `area_table` MODIFY COLUMN `PvpCombatWorldStateId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UWAmbience`;

ALTER TABLE `area_trigger` MODIFY COLUMN `MapID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_trigger` MODIFY COLUMN `PhaseUseFlags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_trigger` MODIFY COLUMN `PhaseID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_trigger` MODIFY COLUMN `PhaseGroupID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_trigger` MODIFY COLUMN `ShapeType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_trigger` MODIFY COLUMN `ShapeID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_trigger` MODIFY COLUMN `AreaTriggerActionSetID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_trigger` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `area_trigger` MODIFY COLUMN `PosX` FLOAT NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `area_trigger` MODIFY COLUMN `PosY` FLOAT NOT NULL DEFAULT 0 AFTER `PosX`;
ALTER TABLE `area_trigger` MODIFY COLUMN `PosZ` FLOAT NOT NULL DEFAULT 0 AFTER `PosY`;
ALTER TABLE `area_trigger` MODIFY COLUMN `Radius` FLOAT NOT NULL DEFAULT 0 AFTER `PosZ`;
ALTER TABLE `area_trigger` MODIFY COLUMN `BoxLength` FLOAT NOT NULL DEFAULT 0 AFTER `Radius`;
ALTER TABLE `area_trigger` MODIFY COLUMN `BoxWidth` FLOAT NOT NULL DEFAULT 0 AFTER `BoxLength`;
ALTER TABLE `area_trigger` MODIFY COLUMN `BoxHeight` FLOAT NOT NULL DEFAULT 0 AFTER `BoxWidth`;
ALTER TABLE `area_trigger` MODIFY COLUMN `BoxYaw` FLOAT NOT NULL DEFAULT 0 AFTER `BoxHeight`;
ALTER TABLE `area_trigger` MODIFY COLUMN `MapID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `BoxYaw`;
ALTER TABLE `area_trigger` MODIFY COLUMN `PhaseID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `area_trigger` MODIFY COLUMN `PhaseGroupID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseID`;
ALTER TABLE `area_trigger` MODIFY COLUMN `ShapeID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseGroupID`;
ALTER TABLE `area_trigger` MODIFY COLUMN `AreaTriggerActionSetID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ShapeID`;
ALTER TABLE `area_trigger` MODIFY COLUMN `PhaseUseFlags` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaTriggerActionSetID`;
ALTER TABLE `area_trigger` MODIFY COLUMN `ShapeType` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseUseFlags`;
ALTER TABLE `area_trigger` MODIFY COLUMN `Flags` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ShapeType`;

ALTER TABLE `artifact_appearance` ADD COLUMN `UiCameraID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `artifact_appearance` DROP COLUMN `Unknown`;
ALTER TABLE `artifact_appearance` MODIFY COLUMN `UiCameraID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ArtifactAppearanceSetID`;

ALTER TABLE `artifact_appearance_set` ADD COLUMN `Description` TEXT COLLATE utf8_general_ci;
ALTER TABLE `artifact_appearance_set` ADD COLUMN `ForgeAttachmentOverride` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `artifact_appearance_set` DROP COLUMN `Name2`;
ALTER TABLE `artifact_appearance_set` DROP COLUMN `AttachmentPoint`;
ALTER TABLE `artifact_appearance_set` MODIFY COLUMN `DisplayIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AltHandUICameraID`;
ALTER TABLE `artifact_appearance_set` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ForgeAttachmentOverride`;
ALTER TABLE `artifact_appearance_set` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `artifact_appearance_set` MODIFY COLUMN `ArtifactID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `artifact_appearance_set` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `artifact_appearance_set` MODIFY COLUMN `ForgeAttachmentOverride` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DisplayIndex`;

ALTER TABLE `artifact_appearance_set_locale` ADD COLUMN `Description_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `artifact_appearance_set_locale` DROP COLUMN `Name2_lang`;
ALTER TABLE `artifact_appearance_set_locale` MODIFY COLUMN `Description_lang` TEXT COLLATE utf8_general_ci AFTER `Name_lang`;

ALTER TABLE `artifact_power` MODIFY COLUMN `ArtifactTier` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `artifact_power_rank` ADD COLUMN `ItemBonusListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `artifact_power_rank` DROP COLUMN `UnkShot2`;
ALTER TABLE `artifact_power_rank` MODIFY COLUMN `Rank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemBonusListID`;
ALTER TABLE `artifact_power_rank` MODIFY COLUMN `ArtifactPowerID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Rank`;
ALTER TABLE `artifact_power_rank` MODIFY COLUMN `ItemBonusListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Value`;

ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty1` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty2` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty3` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty4` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty5` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty6` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty7` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty8` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty9` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` ADD COLUMN `Difficulty10` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp1`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp2`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp3`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp4`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp5`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp6`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp7`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp8`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp9`;
ALTER TABLE `artifact_quest_xp` DROP COLUMN `Exp10`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty1` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty2` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty1`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty3` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty2`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty4` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty3`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty5` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty4`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty6` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty5`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty7` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty6`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty8` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty7`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty9` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty8`;
ALTER TABLE `artifact_quest_xp` MODIFY COLUMN `Difficulty10` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Difficulty9`;

ALTER TABLE `artifact_unlock` ADD COLUMN `ItemBonusListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `artifact_unlock` ADD COLUMN `PowerRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `artifact_unlock` ADD COLUMN `PowerID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `artifact_unlock` DROP COLUMN `BonusID`;
ALTER TABLE `artifact_unlock` DROP COLUMN `UnkByte2`;
ALTER TABLE `artifact_unlock` DROP COLUMN `unk5`;
ALTER TABLE `artifact_unlock` MODIFY COLUMN `PlayerConditionID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerID`;
ALTER TABLE `artifact_unlock` MODIFY COLUMN `ArtifactID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PlayerConditionID`;
ALTER TABLE `artifact_unlock` MODIFY COLUMN `ItemBonusListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `artifact_unlock` MODIFY COLUMN `PowerRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemBonusListID`;
ALTER TABLE `artifact_unlock` MODIFY COLUMN `PowerID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerRank`;

ALTER TABLE `auction_house` MODIFY COLUMN `FactionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `auction_house` MODIFY COLUMN `DepositRate` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `auction_house` MODIFY COLUMN `ConsignmentRate` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `banned_addons` ADD COLUMN `Name` TEXT COLLATE utf8_general_ci;
ALTER TABLE `banned_addons` ADD COLUMN `Version` TEXT COLLATE utf8_general_ci;
ALTER TABLE `banned_addons` DROP COLUMN `NameMD5`;
ALTER TABLE `banned_addons` DROP COLUMN `VersionMD5`;
ALTER TABLE `banned_addons` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `banned_addons` MODIFY COLUMN `Version` TEXT COLLATE utf8_general_ci AFTER `Name`;

ALTER TABLE `battle_pet_ability` ADD COLUMN `IconFileDataID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability` ADD COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability` ADD COLUMN `PetTypeEnum` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability` DROP COLUMN `IconFileID`;
ALTER TABLE `battle_pet_ability` DROP COLUMN `AuraAbilityID`;
ALTER TABLE `battle_pet_ability` DROP COLUMN `School`;
ALTER TABLE `battle_pet_ability` CHANGE COLUMN `flags` `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `battle_pet_ability` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `battle_pet_ability` MODIFY COLUMN `IconFileDataID` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `battle_pet_ability` MODIFY COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `IconFileDataID`;
ALTER TABLE `battle_pet_ability` MODIFY COLUMN `PetTypeEnum` TINYINT(4) NOT NULL DEFAULT 0 AFTER `BattlePetVisualID`;

ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `BattlePetAbilityTurnID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `AuraBattlePetAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `BattlePetEffectPropertiesID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `Param1` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `Param2` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `Param3` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `Param4` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `Param5` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `Param6` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `abilityTurnId`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `visualId`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `triggerAbility`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `effect`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `prop1`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `prop2`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `prop3`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `prop4`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `prop5`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `prop6`;
ALTER TABLE `battle_pet_ability_effect` DROP COLUMN `effectIndex`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `BattlePetAbilityTurnID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetAbilityTurnID`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `AuraBattlePetAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetVisualID`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `BattlePetEffectPropertiesID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraBattlePetAbilityID`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `Param1` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `BattlePetEffectPropertiesID`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `Param2` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Param1`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `Param3` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Param2`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `Param4` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Param3`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `Param5` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Param4`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `Param6` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Param5`;
ALTER TABLE `battle_pet_ability_effect` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Param6`;

ALTER TABLE `battle_pet_ability_state` ADD COLUMN `BattlePetStateID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_state` ADD COLUMN `BattlePetAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_state` DROP COLUMN `AbilityID`;
ALTER TABLE `battle_pet_ability_state` DROP COLUMN `StateID`;
ALTER TABLE `battle_pet_ability_state` MODIFY COLUMN `BattlePetStateID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Value`;
ALTER TABLE `battle_pet_ability_state` MODIFY COLUMN `BattlePetAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetStateID`;

ALTER TABLE `battle_pet_ability_turn` ADD COLUMN `BattlePetAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_turn` ADD COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_turn` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_turn` ADD COLUMN `TurnTypeEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_turn` ADD COLUMN `EventTypeEnum` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_ability_turn` DROP COLUMN `AbilityID`;
ALTER TABLE `battle_pet_ability_turn` DROP COLUMN `StateID`;
ALTER TABLE `battle_pet_ability_turn` DROP COLUMN `Turn`;
ALTER TABLE `battle_pet_ability_turn` DROP COLUMN `HasProcType`;
ALTER TABLE `battle_pet_ability_turn` DROP COLUMN `ProcType`;
ALTER TABLE `battle_pet_ability_turn` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EventTypeEnum`;
ALTER TABLE `battle_pet_ability_turn` MODIFY COLUMN `BattlePetAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `battle_pet_ability_turn` MODIFY COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetAbilityID`;
ALTER TABLE `battle_pet_ability_turn` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetVisualID`;
ALTER TABLE `battle_pet_ability_turn` MODIFY COLUMN `TurnTypeEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `OrderIndex`;
ALTER TABLE `battle_pet_ability_turn` MODIFY COLUMN `EventTypeEnum` TINYINT(4) NOT NULL DEFAULT 0 AFTER `TurnTypeEnum`;

ALTER TABLE `battle_pet_breed_quality` ADD COLUMN `StateMultiplier` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_breed_quality` ADD COLUMN `QualityEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_breed_quality` DROP COLUMN `Modifier`;
ALTER TABLE `battle_pet_breed_quality` DROP COLUMN `Quality`;
ALTER TABLE `battle_pet_breed_quality` MODIFY COLUMN `StateMultiplier` FLOAT NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `battle_pet_breed_quality` MODIFY COLUMN `QualityEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `StateMultiplier`;

ALTER TABLE `battle_pet_breed_state` ADD COLUMN `BattlePetStateId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_breed_state` DROP COLUMN `StateID`;
ALTER TABLE `battle_pet_breed_state` MODIFY COLUMN `BreedID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetStateId`;
ALTER TABLE `battle_pet_breed_state` MODIFY COLUMN `BattlePetStateId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Value`;

ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamLabel1` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamLabel2` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamLabel3` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamLabel4` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamLabel5` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamLabel6` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamTypeNum1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamTypeNum2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamTypeNum3` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamTypeNum4` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamTypeNum5` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_effect_properties` ADD COLUMN `ParamTypeNum6` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `Description1`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `Description2`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `Description3`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `Description4`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `Description5`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `Description6`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `Flags`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `IsAura1`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `IsAura2`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `IsAura3`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `IsAura4`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `IsAura5`;
ALTER TABLE `battle_pet_effect_properties` DROP COLUMN `IsAura6`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamLabel1` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamLabel2` TEXT COLLATE utf8_general_ci AFTER `ParamLabel1`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamLabel3` TEXT COLLATE utf8_general_ci AFTER `ParamLabel2`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamLabel4` TEXT COLLATE utf8_general_ci AFTER `ParamLabel3`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamLabel5` TEXT COLLATE utf8_general_ci AFTER `ParamLabel4`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamLabel6` TEXT COLLATE utf8_general_ci AFTER `ParamLabel5`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ParamLabel6`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamTypeNum1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetVisualID`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamTypeNum2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ParamTypeNum1`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamTypeNum3` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ParamTypeNum2`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamTypeNum4` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ParamTypeNum3`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamTypeNum5` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ParamTypeNum4`;
ALTER TABLE `battle_pet_effect_properties` MODIFY COLUMN `ParamTypeNum6` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ParamTypeNum5`;

ALTER TABLE `battle_pet_species` ADD COLUMN `SourceText` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_species` ADD COLUMN `SummonSpellId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species` ADD COLUMN `PetTypeEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species` ADD COLUMN `SourceTypeEnum` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species` ADD COLUMN `CardUIModelSceneId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species` ADD COLUMN `LoadoutUIModelSceneId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species` DROP COLUMN `SpellID`;
ALTER TABLE `battle_pet_species` DROP COLUMN `Source`;
ALTER TABLE `battle_pet_species` DROP COLUMN `Type`;
ALTER TABLE `battle_pet_species` DROP COLUMN `ObtainmentCategoryDescription`;
ALTER TABLE `battle_pet_species` DROP COLUMN `CardModelSceneID`;
ALTER TABLE `battle_pet_species` DROP COLUMN `LoadoutModelSceneID`;
ALTER TABLE `battle_pet_species` CHANGE COLUMN `IconFileDataID` `IconFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `SourceText`;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `CreatureID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `IconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CreatureID`;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `SourceText` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `SummonSpellId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `IconFileDataId`;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `PetTypeEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `SourceTypeEnum` TINYINT(4) NOT NULL DEFAULT 0 AFTER `PetTypeEnum`;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `CardUIModelSceneId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `battle_pet_species` MODIFY COLUMN `LoadoutUIModelSceneId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CardUIModelSceneId`;

ALTER TABLE `battle_pet_species_locale` ADD COLUMN `SourceText_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_species_locale` DROP COLUMN `Source_lang`;
ALTER TABLE `battle_pet_species_locale` MODIFY COLUMN `SourceText_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;

ALTER TABLE `battle_pet_species_state` ADD COLUMN `BattlePetStateId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species_state` DROP COLUMN `StateID`;
ALTER TABLE `battle_pet_species_state` MODIFY COLUMN `SpeciesID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetStateId`;
ALTER TABLE `battle_pet_species_state` MODIFY COLUMN `BattlePetStateId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Value`;

ALTER TABLE `battle_pet_species_x_ability` ADD COLUMN `BattlePetAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species_x_ability` ADD COLUMN `RequiredLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species_x_ability` ADD COLUMN `SlotEnum` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species_x_ability` ADD COLUMN `BattlePetSpeciesID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_species_x_ability` DROP COLUMN `SpeciesID`;
ALTER TABLE `battle_pet_species_x_ability` DROP COLUMN `AbilityID`;
ALTER TABLE `battle_pet_species_x_ability` DROP COLUMN `Level`;
ALTER TABLE `battle_pet_species_x_ability` DROP COLUMN `Tier`;
ALTER TABLE `battle_pet_species_x_ability` MODIFY COLUMN `BattlePetAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `battle_pet_species_x_ability` MODIFY COLUMN `RequiredLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetAbilityID`;
ALTER TABLE `battle_pet_species_x_ability` MODIFY COLUMN `SlotEnum` TINYINT(4) NOT NULL DEFAULT 0 AFTER `RequiredLevel`;
ALTER TABLE `battle_pet_species_x_ability` MODIFY COLUMN `BattlePetSpeciesID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SlotEnum`;

ALTER TABLE `battle_pet_state` ADD COLUMN `LuaName` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battle_pet_state` ADD COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battle_pet_state` DROP COLUMN `StateName`;
ALTER TABLE `battle_pet_state` DROP COLUMN `ParentState`;
ALTER TABLE `battle_pet_state` MODIFY COLUMN `Flags` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BattlePetVisualID`;
ALTER TABLE `battle_pet_state` MODIFY COLUMN `LuaName` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `battle_pet_state` MODIFY COLUMN `BattlePetVisualID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `LuaName`;

ALTER TABLE `battlemaster_list` ADD COLUMN `GameType` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battlemaster_list` ADD COLUMN `RequiredPlayerConditionId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `battlemaster_list` DROP COLUMN `GametypeLang`;
ALTER TABLE `battlemaster_list` DROP COLUMN `CritreriaID`;
ALTER TABLE `battlemaster_list` MODIFY COLUMN `ShortDescription` TEXT COLLATE utf8_general_ci AFTER `GameType`;
ALTER TABLE `battlemaster_list` MODIFY COLUMN `LongDescription` TEXT COLLATE utf8_general_ci AFTER `ShortDescription`;
ALTER TABLE `battlemaster_list` MODIFY COLUMN `IconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LongDescription`;
ALTER TABLE `battlemaster_list` MODIFY COLUMN `GameType` TEXT COLLATE utf8_general_ci AFTER `NameLang`;
ALTER TABLE `battlemaster_list` MODIFY COLUMN `RequiredPlayerConditionId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `HolidayWorldState`;

ALTER TABLE `battlemaster_list_locale` ADD COLUMN `GameType_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `battlemaster_list_locale` DROP COLUMN `GametypeLang_lang`;
ALTER TABLE `battlemaster_list_locale` MODIFY COLUMN `GameType_lang` TEXT COLLATE utf8_general_ci AFTER `NameLang_lang`;

ALTER TABLE `broadcast_text` ADD COLUMN `EmotesId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `broadcast_text` DROP COLUMN `UnkEmoteID`;
ALTER TABLE `broadcast_text` MODIFY COLUMN `PlayerConditionID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Type`;
ALTER TABLE `broadcast_text` MODIFY COLUMN `EmotesId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `EmoteDelay3`;

ALTER TABLE `char_shipment` ADD COLUMN `TreasureID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment` ADD COLUMN `Duration` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment` ADD COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment` ADD COLUMN `DummyItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment` ADD COLUMN `OnCompleteSpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment` ADD COLUMN `ContainerID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment` ADD COLUMN `GarrFollowerID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment` ADD COLUMN `MaxShipments` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment` DROP COLUMN `CriteriaID`;
ALTER TABLE `char_shipment` DROP COLUMN `TimeForShipment`;
ALTER TABLE `char_shipment` DROP COLUMN `SpellCreation`;
ALTER TABLE `char_shipment` DROP COLUMN `ResultItemID`;
ALTER TABLE `char_shipment` DROP COLUMN `SpellCastAtGetting`;
ALTER TABLE `char_shipment` DROP COLUMN `ShipmentContainerID`;
ALTER TABLE `char_shipment` DROP COLUMN `ChampionPackID`;
ALTER TABLE `char_shipment` DROP COLUMN `unk`;
ALTER TABLE `char_shipment` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxShipments`;
ALTER TABLE `char_shipment` MODIFY COLUMN `TreasureID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `char_shipment` MODIFY COLUMN `Duration` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `TreasureID`;
ALTER TABLE `char_shipment` MODIFY COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration`;
ALTER TABLE `char_shipment` MODIFY COLUMN `DummyItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellID`;
ALTER TABLE `char_shipment` MODIFY COLUMN `OnCompleteSpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `DummyItemID`;
ALTER TABLE `char_shipment` MODIFY COLUMN `ContainerID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `OnCompleteSpellID`;
ALTER TABLE `char_shipment` MODIFY COLUMN `GarrFollowerID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ContainerID`;
ALTER TABLE `char_shipment` MODIFY COLUMN `MaxShipments` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrFollowerID`;

ALTER TABLE `char_shipment_container` ADD COLUMN `PendingText` TEXT COLLATE utf8_general_ci;
ALTER TABLE `char_shipment_container` ADD COLUMN `WorkingSpellVisualID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `UiTextureKitID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `WorkingDisplayInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `SmallDisplayInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `MediumDisplayInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `LargeDisplayInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `CrossFactionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `BaseCapacity` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `GarrBuildingType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `MediumThreshold` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `LargeThreshold` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `Faction` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` ADD COLUMN `CompleteSpellVisualID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `char_shipment_container` DROP COLUMN `Name`;
ALTER TABLE `char_shipment_container` DROP COLUMN `ActiveVisualID`;
ALTER TABLE `char_shipment_container` DROP COLUMN `TextureKitID`;
ALTER TABLE `char_shipment_container` DROP COLUMN `OverrideDisplayID1`;
ALTER TABLE `char_shipment_container` DROP COLUMN `OverrideDisplayID2`;
ALTER TABLE `char_shipment_container` DROP COLUMN `OverrideIfAmountMet1`;
ALTER TABLE `char_shipment_container` DROP COLUMN `OverrideIfAmountMet2`;
ALTER TABLE `char_shipment_container` DROP COLUMN `unk8`;
ALTER TABLE `char_shipment_container` DROP COLUMN `Flags`;
ALTER TABLE `char_shipment_container` DROP COLUMN `BuildingType`;
ALTER TABLE `char_shipment_container` DROP COLUMN `ShipmentAmountNeeded1`;
ALTER TABLE `char_shipment_container` DROP COLUMN `ShipmentAmountNeeded2`;
ALTER TABLE `char_shipment_container` DROP COLUMN `fractionType`;
ALTER TABLE `char_shipment_container` DROP COLUMN `unk16`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `PendingText` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `WorkingSpellVisualID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `UiTextureKitID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorkingSpellVisualID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `WorkingDisplayInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UiTextureKitID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `SmallDisplayInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorkingDisplayInfoID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `MediumDisplayInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SmallDisplayInfoID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `LargeDisplayInfoID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MediumDisplayInfoID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `CrossFactionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `LargeDisplayInfoID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `BaseCapacity` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CrossFactionID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `GarrBuildingType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BaseCapacity`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `MediumThreshold` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrTypeID`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `LargeThreshold` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MediumThreshold`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `Faction` TINYINT(4) NOT NULL DEFAULT 0 AFTER `LargeThreshold`;
ALTER TABLE `char_shipment_container` MODIFY COLUMN `CompleteSpellVisualID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Faction`;

ALTER TABLE `char_shipment_container_locale` ADD COLUMN `PendingText_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `char_shipment_container_locale` DROP COLUMN `Name_lang`;
ALTER TABLE `char_shipment_container_locale` MODIFY COLUMN `PendingText_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;

ALTER TABLE `char_start_outfit` MODIFY COLUMN `ClassID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PetDisplayID`;
ALTER TABLE `char_start_outfit` MODIFY COLUMN `GenderID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ClassID`;
ALTER TABLE `char_start_outfit` MODIFY COLUMN `OutfitID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GenderID`;
ALTER TABLE `char_start_outfit` MODIFY COLUMN `PetFamilyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `OutfitID`;

ALTER TABLE `character_loadout` ADD COLUMN `ChrClassID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `character_loadout` DROP COLUMN `ClassID`;
ALTER TABLE `character_loadout` MODIFY COLUMN `Racemask` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `character_loadout` MODIFY COLUMN `ChrClassID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Racemask`;
ALTER TABLE `character_loadout_item` ADD COLUMN `CharacterLoadoutID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `character_loadout_item` DROP COLUMN `LoadOutID`;
ALTER TABLE `character_loadout_item` MODIFY COLUMN `ItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `character_loadout_item` MODIFY COLUMN `ItemID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `character_loadout_item` MODIFY COLUMN `CharacterLoadoutID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID`;

ALTER TABLE `chat_channels` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `chat_channels` MODIFY COLUMN `Shortcut` TEXT COLLATE utf8_general_ci AFTER `Name`;

ALTER TABLE `chr_classes` ADD COLUMN `StartingLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_classes` ADD COLUMN `DisplayPower` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_classes` ADD COLUMN `PrimaryStatPriority` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_classes` DROP COLUMN `PowerType`;
ALTER TABLE `chr_classes` DROP COLUMN `Unk1`;
ALTER TABLE `chr_classes` MODIFY COLUMN `LowResScreenFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SelectScreenFileDataID`;
ALTER TABLE `chr_classes` MODIFY COLUMN `Flags` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `StartingLevel`;
ALTER TABLE `chr_classes` MODIFY COLUMN `CinematicSequenceID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `chr_classes` MODIFY COLUMN `DefaultSpec` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CinematicSequenceID`;
ALTER TABLE `chr_classes` MODIFY COLUMN `SpellClassSet` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DisplayPower`;
ALTER TABLE `chr_classes` MODIFY COLUMN `AttackPowerPerStrength` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellClassSet`;
ALTER TABLE `chr_classes` MODIFY COLUMN `AttackPowerPerAgility` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AttackPowerPerStrength`;
ALTER TABLE `chr_classes` MODIFY COLUMN `RangedAttackPowerPerAgility` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AttackPowerPerAgility`;
ALTER TABLE `chr_classes` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PrimaryStatPriority`;
ALTER TABLE `chr_classes` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `chr_classes` MODIFY COLUMN `StartingLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `IconFileDataID`;
ALTER TABLE `chr_classes` MODIFY COLUMN `DisplayPower` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DefaultSpec`;
ALTER TABLE `chr_classes` MODIFY COLUMN `PrimaryStatPriority` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RangedAttackPowerPerAgility`;

ALTER TABLE `chr_classes_x_power_types` MODIFY COLUMN `PowerType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `chr_races` ADD COLUMN `LowercaseName` TEXT COLLATE utf8_general_ci;
ALTER TABLE `chr_races` ADD COLUMN `LowercaseNameFemale` TEXT COLLATE utf8_general_ci;
ALTER TABLE `chr_races` ADD COLUMN `StartingLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `UIDisplayOrder` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `HeritageArmorAchievementID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `MaleCorpseBonesModelFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `FemaleCorpseBonesModelFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `AlteredFormTransitionSpellVisualID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `AlteredFormTransitionSpellVisualID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `AlteredFormTransitionSpellVisualID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `AlteredFormTransitionSpellVisualKitID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `AlteredFormTransitionSpellVisualKitID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` ADD COLUMN `AlteredFormTransitionSpellVisualKitID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` DROP COLUMN `NameMale`;
ALTER TABLE `chr_races` DROP COLUMN `FacialHairCustomization1`;
ALTER TABLE `chr_races` DROP COLUMN `FacialHairCustomization2`;
ALTER TABLE `chr_races` DROP COLUMN `HairCustomization`;
ALTER TABLE `chr_races` DROP COLUMN `Unk1`;
ALTER TABLE `chr_races` DROP COLUMN `Unk2`;
ALTER TABLE `chr_races` DROP COLUMN `Unk3`;
ALTER TABLE `chr_races` MODIFY COLUMN `MaleDisplayID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` MODIFY COLUMN `FemaleDisplayID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `chr_races` MODIFY COLUMN `ClientPrefix` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `chr_races` MODIFY COLUMN `ClientFileString` TEXT COLLATE utf8_general_ci AFTER `ClientPrefix`;
ALTER TABLE `chr_races` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ClientFileString`;
ALTER TABLE `chr_races` MODIFY COLUMN `NameFemale` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `chr_races` MODIFY COLUMN `Flags` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LowercaseNameFemale`;
ALTER TABLE `chr_races` MODIFY COLUMN `MaleDisplayID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `chr_races` MODIFY COLUMN `FemaleDisplayID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaleDisplayID`;
ALTER TABLE `chr_races` MODIFY COLUMN `CreateScreenFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `FemaleDisplayID`;
ALTER TABLE `chr_races` MODIFY COLUMN `SelectScreenFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CreateScreenFileDataID`;
ALTER TABLE `chr_races` MODIFY COLUMN `MaleCustomizeOffset1` FLOAT NOT NULL DEFAULT 0 AFTER `SelectScreenFileDataID`;
ALTER TABLE `chr_races` MODIFY COLUMN `MaleCustomizeOffset2` FLOAT NOT NULL DEFAULT 0 AFTER `MaleCustomizeOffset1`;
ALTER TABLE `chr_races` MODIFY COLUMN `MaleCustomizeOffset3` FLOAT NOT NULL DEFAULT 0 AFTER `MaleCustomizeOffset2`;
ALTER TABLE `chr_races` MODIFY COLUMN `FemaleCustomizeOffset1` FLOAT NOT NULL DEFAULT 0 AFTER `MaleCustomizeOffset3`;
ALTER TABLE `chr_races` MODIFY COLUMN `FemaleCustomizeOffset2` FLOAT NOT NULL DEFAULT 0 AFTER `FemaleCustomizeOffset1`;
ALTER TABLE `chr_races` MODIFY COLUMN `FemaleCustomizeOffset3` FLOAT NOT NULL DEFAULT 0 AFTER `FemaleCustomizeOffset2`;
ALTER TABLE `chr_races` MODIFY COLUMN `LowResScreenFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `FemaleCustomizeOffset3`;
ALTER TABLE `chr_races` MODIFY COLUMN `FactionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UIDisplayOrder`;
ALTER TABLE `chr_races` MODIFY COLUMN `ResSicknessSpellID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FactionID`;
ALTER TABLE `chr_races` MODIFY COLUMN `SplashSoundID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ResSicknessSpellID`;
ALTER TABLE `chr_races` MODIFY COLUMN `CinematicSequenceID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SplashSoundID`;
ALTER TABLE `chr_races` MODIFY COLUMN `BaseLanguage` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CinematicSequenceID`;
ALTER TABLE `chr_races` MODIFY COLUMN `CreatureType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BaseLanguage`;
ALTER TABLE `chr_races` MODIFY COLUMN `TeamID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CreatureType`;
ALTER TABLE `chr_races` MODIFY COLUMN `RaceRelated` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `TeamID`;
ALTER TABLE `chr_races` MODIFY COLUMN `UnalteredVisualRaceID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RaceRelated`;
ALTER TABLE `chr_races` MODIFY COLUMN `CharComponentTextureLayoutID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `UnalteredVisualRaceID`;
ALTER TABLE `chr_races` MODIFY COLUMN `DefaultClassID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CharComponentTextureLayoutID`;
ALTER TABLE `chr_races` MODIFY COLUMN `NeutralRaceID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DefaultClassID`;
ALTER TABLE `chr_races` MODIFY COLUMN `ItemAppearanceFrameRaceID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `NeutralRaceID`;
ALTER TABLE `chr_races` MODIFY COLUMN `CharComponentTexLayoutHiResID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemAppearanceFrameRaceID`;
ALTER TABLE `chr_races` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CharComponentTexLayoutHiResID`;
ALTER TABLE `chr_races` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `AlteredFormTransitionSpellVisualKitID3`;
ALTER TABLE `chr_races` MODIFY COLUMN `LowercaseName` TEXT COLLATE utf8_general_ci AFTER `NameFemale`;
ALTER TABLE `chr_races` MODIFY COLUMN `LowercaseNameFemale` TEXT COLLATE utf8_general_ci AFTER `LowercaseName`;
ALTER TABLE `chr_races` MODIFY COLUMN `StartingLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LowResScreenFileDataID`;
ALTER TABLE `chr_races` MODIFY COLUMN `UIDisplayOrder` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `StartingLevel`;
ALTER TABLE `chr_races` MODIFY COLUMN `HeritageArmorAchievementID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `HighResFemaleDisplayID`;
ALTER TABLE `chr_races` MODIFY COLUMN `MaleCorpseBonesModelFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `HeritageArmorAchievementID`;
ALTER TABLE `chr_races` MODIFY COLUMN `FemaleCorpseBonesModelFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaleCorpseBonesModelFileDataID`;
ALTER TABLE `chr_races` MODIFY COLUMN `AlteredFormTransitionSpellVisualID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `FemaleCorpseBonesModelFileDataID`;
ALTER TABLE `chr_races` MODIFY COLUMN `AlteredFormTransitionSpellVisualID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AlteredFormTransitionSpellVisualID1`;
ALTER TABLE `chr_races` MODIFY COLUMN `AlteredFormTransitionSpellVisualID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AlteredFormTransitionSpellVisualID2`;
ALTER TABLE `chr_races` MODIFY COLUMN `AlteredFormTransitionSpellVisualKitID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AlteredFormTransitionSpellVisualID3`;
ALTER TABLE `chr_races` MODIFY COLUMN `AlteredFormTransitionSpellVisualKitID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AlteredFormTransitionSpellVisualKitID1`;
ALTER TABLE `chr_races` MODIFY COLUMN `AlteredFormTransitionSpellVisualKitID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AlteredFormTransitionSpellVisualKitID2`;

ALTER TABLE `chr_races_locale` ADD COLUMN `LowercaseName_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `chr_races_locale` ADD COLUMN `LowercaseNameFemale_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `chr_races_locale` DROP COLUMN `ClientPrefix_lang`;
ALTER TABLE `chr_races_locale` DROP COLUMN `ClientFileString_lang`;
ALTER TABLE `chr_races_locale` DROP COLUMN `NameMale_lang`;
ALTER TABLE `chr_races_locale` DROP COLUMN `FacialHairCustomization1_lang`;
ALTER TABLE `chr_races_locale` DROP COLUMN `FacialHairCustomization2_lang`;
ALTER TABLE `chr_races_locale` DROP COLUMN `HairCustomization_lang`;
ALTER TABLE `chr_races_locale` MODIFY COLUMN `Name_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;
ALTER TABLE `chr_races_locale` MODIFY COLUMN `NameFemale_lang` TEXT COLLATE utf8_general_ci AFTER `Name_lang`;
ALTER TABLE `chr_races_locale` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `LowercaseNameFemale_lang`;
ALTER TABLE `chr_races_locale` MODIFY COLUMN `LowercaseName_lang` TEXT COLLATE utf8_general_ci AFTER `NameFemale_lang`;
ALTER TABLE `chr_races_locale` MODIFY COLUMN `LowercaseNameFemale_lang` TEXT COLLATE utf8_general_ci AFTER `LowercaseName_lang`;

ALTER TABLE `chr_specialization` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `chr_specialization` MODIFY COLUMN `Name2` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `chr_specialization` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name2`;

ALTER TABLE `conversation_line` ADD COLUMN `AnimKitID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `conversation_line` ADD COLUMN `StartAnimation` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `conversation_line` ADD COLUMN `EndAnimation` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `conversation_line` DROP COLUMN `Unk1`;
ALTER TABLE `conversation_line` DROP COLUMN `Unk2`;
ALTER TABLE `conversation_line` DROP COLUMN `Unk3`;
ALTER TABLE `conversation_line` MODIFY COLUMN `AnimKitID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `NextLineID`;
ALTER TABLE `conversation_line` MODIFY COLUMN `StartAnimation` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Yell`;
ALTER TABLE `conversation_line` MODIFY COLUMN `EndAnimation` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `StartAnimation`;

ALTER TABLE `creature_difficulty` ADD COLUMN `Flags6` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` ADD COLUMN `Flags7` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` ADD COLUMN `ExpansionID` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` DROP COLUMN `UnkLegion`;
ALTER TABLE `creature_difficulty` DROP COLUMN `UnkLegion2`;
ALTER TABLE `creature_difficulty` DROP COLUMN `Expansion`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `CreatureID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags1` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags2` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags3` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags4` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags5` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags1`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags2`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags3`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags5` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags4`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `FactionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags7`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `MinLevel` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ExpansionID`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `MaxLevel` TINYINT(4) NOT NULL DEFAULT 0 AFTER `MinLevel`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `CreatureID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxLevel`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags6` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Flags5`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `Flags7` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Flags6`;
ALTER TABLE `creature_difficulty` MODIFY COLUMN `ExpansionID` TINYINT(4) NOT NULL DEFAULT 0 AFTER `FactionID`;

ALTER TABLE `creature_display_info` MODIFY COLUMN `PortraitTextureFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ExtendedDisplayInfoID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `CreatureModelAlpha` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PortraitTextureFileDataID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `SoundID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CreatureModelAlpha`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `PlayerModelScale` FLOAT NOT NULL DEFAULT 0 AFTER `SoundID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `PortraitCreatureDisplayInfoID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PlayerModelScale`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `BloodID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PortraitCreatureDisplayInfoID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `ParticleColorID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BloodID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `CreatureGeosetData` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ParticleColorID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `ObjectEffectPackageID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CreatureGeosetData`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `AnimReplacementSetID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ObjectEffectPackageID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `UnarmedWeaponSubclass` TINYINT(4) NOT NULL DEFAULT 0 AFTER `AnimReplacementSetID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `StateSpellVisualKitID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UnarmedWeaponSubclass`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `InstanceOtherPlayerPetScale` FLOAT NOT NULL DEFAULT 0 AFTER `StateSpellVisualKitID`;
ALTER TABLE `creature_display_info` MODIFY COLUMN `MountSpellVisualKitID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `InstanceOtherPlayerPetScale`;

ALTER TABLE `creature_family` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `creature_family` MODIFY COLUMN `MinScaleLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PetFoodMask`;

ALTER TABLE `criteria` MODIFY COLUMN `ModifyTree` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `criteria` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `criteria` MODIFY COLUMN `EligibilityWorldStateID` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `criteria` MODIFY COLUMN `EligibilityWorldStateValue` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `criteria` MODIFY COLUMN `ModifyTree` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FailAsset`;
ALTER TABLE `criteria` MODIFY COLUMN `EligibilityWorldStateID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `StartTimer`;
ALTER TABLE `criteria` MODIFY COLUMN `Type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `EligibilityWorldStateID`;
ALTER TABLE `criteria` MODIFY COLUMN `StartEvent` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Type`;
ALTER TABLE `criteria` MODIFY COLUMN `FailEvent` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `StartEvent`;

ALTER TABLE `criteria_tree` MODIFY COLUMN `Parent` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `criteria_tree` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `criteria_tree` MODIFY COLUMN `Flags` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Amount`;
ALTER TABLE `criteria_tree` MODIFY COLUMN `Operator` TINYINT(4) NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `criteria_tree` MODIFY COLUMN `CriteriaID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Operator`;

ALTER TABLE `currency_types` ADD COLUMN `InventoryIconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `currency_types` DROP COLUMN `InventoryIcon1`;
ALTER TABLE `currency_types` DROP COLUMN `InventoryIcon2`;
ALTER TABLE `currency_types` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `currency_types` MODIFY COLUMN `MaxQty` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `currency_types` MODIFY COLUMN `MaxEarnablePerWeek` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxQty`;
ALTER TABLE `currency_types` MODIFY COLUMN `Flags` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxEarnablePerWeek`;
ALTER TABLE `currency_types` MODIFY COLUMN `CategoryID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `currency_types` MODIFY COLUMN `SpellCategory` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CategoryID`;
ALTER TABLE `currency_types` MODIFY COLUMN `Quality` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellCategory`;
ALTER TABLE `currency_types` MODIFY COLUMN `SpellWeight` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `InventoryIconFileDataID`;
ALTER TABLE `currency_types` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `SpellWeight`;
ALTER TABLE `currency_types` MODIFY COLUMN `InventoryIconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Quality`;

ALTER TABLE `currency_types_locale` DROP COLUMN `InventoryIcon1_lang`;
ALTER TABLE `currency_types_locale` DROP COLUMN `InventoryIcon2_lang`;
ALTER TABLE `currency_types_locale` MODIFY COLUMN `Description_lang` TEXT COLLATE utf8_general_ci AFTER `Name_lang`;
ALTER TABLE `currency_types_locale` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Description_lang`;

ALTER TABLE `curve` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `curve` DROP COLUMN `Unused`;
ALTER TABLE `curve` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Type`;

ALTER TABLE `emotes` MODIFY COLUMN `RaceMask` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `emotes` MODIFY COLUMN `RaceMask` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `faction` MODIFY COLUMN `ReputationRaceMask1` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `faction` MODIFY COLUMN `ReputationRaceMask2` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `faction` MODIFY COLUMN `ReputationRaceMask3` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `faction` MODIFY COLUMN `ReputationRaceMask4` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `faction` MODIFY COLUMN `ReputationRaceMask1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `faction` MODIFY COLUMN `ReputationRaceMask2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ReputationRaceMask1`;
ALTER TABLE `faction` MODIFY COLUMN `ReputationRaceMask3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ReputationRaceMask2`;
ALTER TABLE `faction` MODIFY COLUMN `ReputationRaceMask4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ReputationRaceMask3`;
ALTER TABLE `faction` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ReputationRaceMask4`;
ALTER TABLE `faction` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;

ALTER TABLE `gameobjects` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `gameobjects` MODIFY COLUMN `PositionX` FLOAT NOT NULL DEFAULT 0 AFTER `Name`;
ALTER TABLE `gameobjects` MODIFY COLUMN `PositionY` FLOAT NOT NULL DEFAULT 0 AFTER `PositionX`;
ALTER TABLE `gameobjects` MODIFY COLUMN `PositionZ` FLOAT NOT NULL DEFAULT 0 AFTER `PositionY`;
ALTER TABLE `gameobjects` MODIFY COLUMN `RotationX` FLOAT NOT NULL DEFAULT 0 AFTER `PositionZ`;
ALTER TABLE `gameobjects` MODIFY COLUMN `RotationY` FLOAT NOT NULL DEFAULT 0 AFTER `RotationX`;
ALTER TABLE `gameobjects` MODIFY COLUMN `RotationZ` FLOAT NOT NULL DEFAULT 0 AFTER `RotationY`;
ALTER TABLE `gameobjects` MODIFY COLUMN `RotationO` FLOAT NOT NULL DEFAULT 0 AFTER `RotationZ`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Size` FLOAT NOT NULL DEFAULT 0 AFTER `RotationO`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Data1` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Size`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Data2` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Data1`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Data3` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Data2`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Data4` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Data3`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Data5` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Data4`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Data6` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Data5`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Data7` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Data6`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Data8` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Data7`;
ALTER TABLE `gameobjects` MODIFY COLUMN `MapID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Data8`;
ALTER TABLE `gameobjects` MODIFY COLUMN `DisplayID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `gameobjects` MODIFY COLUMN `PhaseID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `DisplayID`;
ALTER TABLE `gameobjects` MODIFY COLUMN `PhaseUseFlags` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseID`;
ALTER TABLE `gameobjects` MODIFY COLUMN `PhaseGroupID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseUseFlags`;
ALTER TABLE `gameobjects` MODIFY COLUMN `Type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseGroupID`;

ALTER TABLE `garr_ability` ADD COLUMN `Flags` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability` DROP COLUMN `AbilityType`;
ALTER TABLE `garr_ability` MODIFY COLUMN `Flags` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `IconFileDataID`;

ALTER TABLE `garr_ability_effect` ADD COLUMN `CombatWeightBase` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `CombatWeightMax` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `ActionValueFlat` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `ActionRecordId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `GarrAbilityId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `AbilityAction` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `AbilityTargetType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `GarrMechanicTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `ActionRace` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` ADD COLUMN `ActionHours` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_ability_effect` DROP COLUMN `ModMin`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `ModMax`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `Amount`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `classSpec`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `AbilityID`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `EffectType`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `TargetMask`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `CounterMechanicTypeID`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `MiscValueA`;
ALTER TABLE `garr_ability_effect` DROP COLUMN `MiscValueB`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `CombatWeightBase` FLOAT NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `CombatWeightMax` FLOAT NOT NULL DEFAULT 0 AFTER `CombatWeightBase`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `ActionValueFlat` FLOAT NOT NULL DEFAULT 0 AFTER `CombatWeightMax`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `ActionRecordId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ActionValueFlat`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `GarrAbilityId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ActionRecordId`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `AbilityAction` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrAbilityId`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `AbilityTargetType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AbilityAction`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `GarrMechanicTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AbilityTargetType`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `ActionRace` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `garr_ability_effect` MODIFY COLUMN `ActionHours` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ActionRace`;

ALTER TABLE `garr_building` ADD COLUMN `CurrencyTypeId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `HordeUiTextureKitId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `AllianceUiTextureKitId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `AllianceSceneScriptPackageId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `HordeSceneScriptPackageId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `GarrAbilityId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `BonusGarrAbilityId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `GarrSiteID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `BuildingType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `UpgradeLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `ShipmentCapacity` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `BuildSeconds` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `CurrencyQty` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` ADD COLUMN `MaxAssignments` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` DROP COLUMN `CostCurrencyID`;
ALTER TABLE `garr_building` DROP COLUMN `HordeTexPrefixKitID`;
ALTER TABLE `garr_building` DROP COLUMN `AllianceTexPrefixKitID`;
ALTER TABLE `garr_building` DROP COLUMN `AllianceActivationScenePackageID`;
ALTER TABLE `garr_building` DROP COLUMN `HordeActivationScenePackageID`;
ALTER TABLE `garr_building` DROP COLUMN `FollowerRequiredGarrAbilityID`;
ALTER TABLE `garr_building` DROP COLUMN `FollowerGarrAbilityEffectID`;
ALTER TABLE `garr_building` DROP COLUMN `unk16`;
ALTER TABLE `garr_building` DROP COLUMN `Type`;
ALTER TABLE `garr_building` DROP COLUMN `Level`;
ALTER TABLE `garr_building` DROP COLUMN `BuildingCategory`;
ALTER TABLE `garr_building` DROP COLUMN `MaxShipments`;
ALTER TABLE `garr_building` DROP COLUMN `BuildDuration`;
ALTER TABLE `garr_building` DROP COLUMN `CostCurrencyAmount`;
ALTER TABLE `garr_building` DROP COLUMN `BonusAmount`;
ALTER TABLE `garr_building` CHANGE COLUMN `IconFileDataID` `IconFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building` MODIFY COLUMN `NameAlliance` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `garr_building` MODIFY COLUMN `NameHorde` TEXT COLLATE utf8_general_ci AFTER `NameAlliance`;
ALTER TABLE `garr_building` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `NameHorde`;
ALTER TABLE `garr_building` MODIFY COLUMN `Tooltip` TEXT COLLATE utf8_general_ci AFTER `Description`;
ALTER TABLE `garr_building` MODIFY COLUMN `CurrencyTypeId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `IconFileDataId`;
ALTER TABLE `garr_building` MODIFY COLUMN `HordeUiTextureKitId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyTypeId`;
ALTER TABLE `garr_building` MODIFY COLUMN `AllianceUiTextureKitId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `HordeUiTextureKitId`;
ALTER TABLE `garr_building` MODIFY COLUMN `AllianceSceneScriptPackageId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AllianceUiTextureKitId`;
ALTER TABLE `garr_building` MODIFY COLUMN `HordeSceneScriptPackageId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AllianceSceneScriptPackageId`;
ALTER TABLE `garr_building` MODIFY COLUMN `GarrAbilityId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `HordeSceneScriptPackageId`;
ALTER TABLE `garr_building` MODIFY COLUMN `BonusGarrAbilityId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrAbilityId`;
ALTER TABLE `garr_building` MODIFY COLUMN `GarrSiteID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CostMoney`;
ALTER TABLE `garr_building` MODIFY COLUMN `BuildingType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrSiteID`;
ALTER TABLE `garr_building` MODIFY COLUMN `UpgradeLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BuildingType`;
ALTER TABLE `garr_building` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeLevel`;
ALTER TABLE `garr_building` MODIFY COLUMN `ShipmentCapacity` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `garr_building` MODIFY COLUMN `BuildSeconds` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrTypeID`;
ALTER TABLE `garr_building` MODIFY COLUMN `CurrencyQty` INTEGER(11) NOT NULL DEFAULT 0 AFTER `BuildSeconds`;
ALTER TABLE `garr_building` MODIFY COLUMN `MaxAssignments` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyQty`;

ALTER TABLE `garr_building_plot_inst` ADD COLUMN `MapOffsetX` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_building_plot_inst` ADD COLUMN `MapOffsetY` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_building_plot_inst` DROP COLUMN `LandmarkOffsetX`;
ALTER TABLE `garr_building_plot_inst` DROP COLUMN `LandmarkOffsetY`;
ALTER TABLE `garr_building_plot_inst` CHANGE COLUMN `UiTextureAtlasMemberID` `UiTextureAtlasMemberId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building_plot_inst` CHANGE COLUMN `GarrSiteLevelPlotInstID` `GarrSiteLevelPlotInstId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building_plot_inst` CHANGE COLUMN `GarrBuildingID` `GarrBuildingId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_building_plot_inst` MODIFY COLUMN `MapOffsetX` FLOAT NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `garr_building_plot_inst` MODIFY COLUMN `MapOffsetY` FLOAT NOT NULL DEFAULT 0 AFTER `MapOffsetX`;

ALTER TABLE `garr_class_spec` ADD COLUMN `ClassSpec` TEXT COLLATE utf8_general_ci;
ALTER TABLE `garr_class_spec` ADD COLUMN `ClassSpecMale` TEXT COLLATE utf8_general_ci;
ALTER TABLE `garr_class_spec` ADD COLUMN `ClassSpecFemale` TEXT COLLATE utf8_general_ci;
ALTER TABLE `garr_class_spec` ADD COLUMN `UiTextureAtlasMemberId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_class_spec` ADD COLUMN `FollowerClassLimit` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_class_spec` DROP COLUMN `NameMale`;
ALTER TABLE `garr_class_spec` DROP COLUMN `NameFemale`;
ALTER TABLE `garr_class_spec` DROP COLUMN `NameGenderless`;
ALTER TABLE `garr_class_spec` DROP COLUMN `ClassAtlasID`;
ALTER TABLE `garr_class_spec` DROP COLUMN `Limit`;
ALTER TABLE `garr_class_spec` CHANGE COLUMN `GarrFollItemSetID` `GarrFollItemSetId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_class_spec` MODIFY COLUMN `ClassSpec` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `garr_class_spec` MODIFY COLUMN `ClassSpecMale` TEXT COLLATE utf8_general_ci AFTER `ClassSpec`;
ALTER TABLE `garr_class_spec` MODIFY COLUMN `ClassSpecFemale` TEXT COLLATE utf8_general_ci AFTER `ClassSpecMale`;
ALTER TABLE `garr_class_spec` MODIFY COLUMN `UiTextureAtlasMemberId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ClassSpecFemale`;
ALTER TABLE `garr_class_spec` MODIFY COLUMN `FollowerClassLimit` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrFollItemSetId`;

ALTER TABLE `garr_class_spec_locale` ADD COLUMN `ClassSpec_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `garr_class_spec_locale` ADD COLUMN `ClassSpecMale_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `garr_class_spec_locale` ADD COLUMN `ClassSpecFemale_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `garr_class_spec_locale` DROP COLUMN `NameMale_lang`;
ALTER TABLE `garr_class_spec_locale` DROP COLUMN `NameFemale_lang`;
ALTER TABLE `garr_class_spec_locale` DROP COLUMN `NameGenderless_lang`;
ALTER TABLE `garr_class_spec_locale` MODIFY COLUMN `ClassSpec_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;
ALTER TABLE `garr_class_spec_locale` MODIFY COLUMN `ClassSpecMale_lang` TEXT COLLATE utf8_general_ci AFTER `ClassSpec_lang`;
ALTER TABLE `garr_class_spec_locale` MODIFY COLUMN `ClassSpecFemale_lang` TEXT COLLATE utf8_general_ci AFTER `ClassSpecMale_lang`;

ALTER TABLE `garr_class_spec_player_cond` ADD COLUMN `IconFileDataId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_class_spec_player_cond` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_class_spec_player_cond` ADD COLUMN `PlayerConditionId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_class_spec_player_cond` ADD COLUMN `FlavorGarrStringId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_class_spec_player_cond` DROP COLUMN `IconFieldID`;
ALTER TABLE `garr_class_spec_player_cond` DROP COLUMN `unk1`;
ALTER TABLE `garr_class_spec_player_cond` DROP COLUMN `ConditionQuestID`;
ALTER TABLE `garr_class_spec_player_cond` DROP COLUMN `unk4`;
ALTER TABLE `garr_class_spec_player_cond` CHANGE COLUMN `GarrClassSpecID` `GarrClassSpecId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_class_spec_player_cond` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `garr_class_spec_player_cond` MODIFY COLUMN `IconFileDataId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Name`;
ALTER TABLE `garr_class_spec_player_cond` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `IconFileDataId`;
ALTER TABLE `garr_class_spec_player_cond` MODIFY COLUMN `PlayerConditionId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `GarrClassSpecId`;
ALTER TABLE `garr_class_spec_player_cond` MODIFY COLUMN `FlavorGarrStringId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `PlayerConditionId`;

ALTER TABLE `garr_encounter` ADD COLUMN `CreatureId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_encounter` ADD COLUMN `UiAnimScale` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_encounter` ADD COLUMN `UiAnimHeight` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_encounter` ADD COLUMN `PortraitFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_encounter` ADD COLUMN `UiTextureKitId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_encounter` DROP COLUMN `CreatureEntry`;
ALTER TABLE `garr_encounter` DROP COLUMN `Mod`;
ALTER TABLE `garr_encounter` DROP COLUMN `Mod1`;
ALTER TABLE `garr_encounter` DROP COLUMN `SomeFileDataID`;
ALTER TABLE `garr_encounter` DROP COLUMN `unk5`;
ALTER TABLE `garr_encounter` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `garr_encounter` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PortraitFileDataId`;
ALTER TABLE `garr_encounter` MODIFY COLUMN `CreatureId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Name`;
ALTER TABLE `garr_encounter` MODIFY COLUMN `UiAnimScale` FLOAT NOT NULL DEFAULT 0 AFTER `CreatureId`;
ALTER TABLE `garr_encounter` MODIFY COLUMN `UiAnimHeight` FLOAT NOT NULL DEFAULT 0 AFTER `UiAnimScale`;
ALTER TABLE `garr_encounter` MODIFY COLUMN `PortraitFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UiAnimHeight`;
ALTER TABLE `garr_encounter` MODIFY COLUMN `UiTextureKitId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `garr_encounter_x_mechanic` ADD COLUMN `GarrMechanicId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_encounter_x_mechanic` ADD COLUMN `GarrMechanicSetId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_encounter_x_mechanic` ADD COLUMN `GarrEncounterID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_encounter_x_mechanic` DROP COLUMN `EncounterID`;
ALTER TABLE `garr_encounter_x_mechanic` DROP COLUMN `MechanicID`;
ALTER TABLE `garr_encounter_x_mechanic` DROP COLUMN `xMechanic`;
ALTER TABLE `garr_encounter_x_mechanic` MODIFY COLUMN `GarrMechanicId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `garr_encounter_x_mechanic` MODIFY COLUMN `GarrMechanicSetId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrMechanicId`;
ALTER TABLE `garr_encounter_x_mechanic` MODIFY COLUMN `GarrEncounterID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrMechanicSetId`;

ALTER TABLE `garr_follower` ADD COLUMN `Gender` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower` ADD COLUMN `HordeSourceTypeEnum` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower` ADD COLUMN `AllianceSourceTypeEnum` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower` DROP COLUMN `Unknown1`;
ALTER TABLE `garr_follower` DROP COLUMN `Unknown2`;
ALTER TABLE `garr_follower` DROP COLUMN `Unknown3`;
ALTER TABLE `garr_follower` MODIFY COLUMN `HordeSourceText` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `garr_follower` MODIFY COLUMN `AllianceSourceText` TEXT COLLATE utf8_general_ci AFTER `HordeSourceText`;
ALTER TABLE `garr_follower` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `AllianceSourceText`;
ALTER TABLE `garr_follower` MODIFY COLUMN `Gender` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Level`;
ALTER TABLE `garr_follower` MODIFY COLUMN `HordeSourceTypeEnum` TINYINT(4) NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `garr_follower` MODIFY COLUMN `AllianceSourceTypeEnum` TINYINT(4) NOT NULL DEFAULT 0 AFTER `HordeSourceTypeEnum`;

ALTER TABLE `garr_follower_level_x_p` ADD COLUMN `XpToNextLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_level_x_p` ADD COLUMN `ShipmentXP` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_level_x_p` ADD COLUMN `FollowerLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_level_x_p` DROP COLUMN `NextLevelXP`;
ALTER TABLE `garr_follower_level_x_p` DROP COLUMN `Unk`;
ALTER TABLE `garr_follower_level_x_p` DROP COLUMN `Level`;
ALTER TABLE `garr_follower_level_x_p` MODIFY COLUMN `XpToNextLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `garr_follower_level_x_p` MODIFY COLUMN `ShipmentXP` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `XpToNextLevel`;
ALTER TABLE `garr_follower_level_x_p` MODIFY COLUMN `FollowerLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ShipmentXP`;

ALTER TABLE `garr_follower_quality` ADD COLUMN `ShipmentXP` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_quality` ADD COLUMN `AbilityCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_quality` ADD COLUMN `TraitCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_quality` ADD COLUMN `GarrFollowerTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_quality` ADD COLUMN `ClassSpecId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_quality` DROP COLUMN `Unk`;
ALTER TABLE `garr_follower_quality` DROP COLUMN `unk4`;
ALTER TABLE `garr_follower_quality` DROP COLUMN `Order`;
ALTER TABLE `garr_follower_quality` DROP COLUMN `FollowerTypeID`;
ALTER TABLE `garr_follower_quality` DROP COLUMN `Unused`;
ALTER TABLE `garr_follower_quality` MODIFY COLUMN `ShipmentXP` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `XpToNextQuality`;
ALTER TABLE `garr_follower_quality` MODIFY COLUMN `AbilityCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Quality`;
ALTER TABLE `garr_follower_quality` MODIFY COLUMN `TraitCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AbilityCount`;
ALTER TABLE `garr_follower_quality` MODIFY COLUMN `GarrFollowerTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `TraitCount`;
ALTER TABLE `garr_follower_quality` MODIFY COLUMN `ClassSpecId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrFollowerTypeId`;

ALTER TABLE `garr_follower_type` ADD COLUMN `MaxFollowers` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_type` ADD COLUMN `MaxFollowerBuildingType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_type` ADD COLUMN `LevelRangeBias` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_type` ADD COLUMN `ItemLevelRangeBias` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_type` DROP COLUMN `SoftCap`;
ALTER TABLE `garr_follower_type` DROP COLUMN `SoftCapBuildingIncreaseID`;
ALTER TABLE `garr_follower_type` DROP COLUMN `UnkByte4`;
ALTER TABLE `garr_follower_type` DROP COLUMN `UnkByte5`;
ALTER TABLE `garr_follower_type` CHANGE COLUMN `GarrTypeID` `GarrTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_type` MODIFY COLUMN `MaxFollowers` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxItemLevel`;
ALTER TABLE `garr_follower_type` MODIFY COLUMN `MaxFollowerBuildingType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxFollowers`;
ALTER TABLE `garr_follower_type` MODIFY COLUMN `LevelRangeBias` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrTypeId`;
ALTER TABLE `garr_follower_type` MODIFY COLUMN `ItemLevelRangeBias` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LevelRangeBias`;

ALTER TABLE `garr_follower_x_ability` ADD COLUMN `GarrAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_x_ability` ADD COLUMN `GarrFollowerID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_follower_x_ability` DROP COLUMN `FollowerID`;
ALTER TABLE `garr_follower_x_ability` DROP COLUMN `AbilityID`;
ALTER TABLE `garr_follower_x_ability` MODIFY COLUMN `FactionIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrAbilityID`;
ALTER TABLE `garr_follower_x_ability` MODIFY COLUMN `GarrAbilityID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `garr_follower_x_ability` MODIFY COLUMN `GarrFollowerID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FactionIndex`;

ALTER TABLE `garr_item_level_upgrade_data` ADD COLUMN `Operation` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_item_level_upgrade_data` ADD COLUMN `MinItemLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_item_level_upgrade_data` DROP COLUMN `UpgradeType`;
ALTER TABLE `garr_item_level_upgrade_data` DROP COLUMN `Unused`;
ALTER TABLE `garr_item_level_upgrade_data` MODIFY COLUMN `Operation` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `garr_item_level_upgrade_data` MODIFY COLUMN `MinItemLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Operation`;

ALTER TABLE `garr_mechanic` ADD COLUMN `Factor` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_mechanic` DROP COLUMN `Mod`;
ALTER TABLE `garr_mechanic` MODIFY COLUMN `Factor` FLOAT NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `garr_mechanic_set_x_mechanic` ADD COLUMN `GarrMechanicSetId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mechanic_set_x_mechanic` DROP COLUMN `xMechanic`;
ALTER TABLE `garr_mechanic_set_x_mechanic` MODIFY COLUMN `GarrMechanicSetId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `garr_mission` ADD COLUMN `MissionDuration` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `OfferDuration` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `MapPos_X` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `MapPos_Y` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `WorldPosX` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `WorldPosY` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `TargetItemLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `MissionCostCurrencyTypesId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `TargetLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `EnvGarrMechanicTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `MaxFollowers` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `OfferedGarrMissionTextureId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `GarrMissionTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `GarrFollowerTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `BaseCompletionChance` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `FollowerDeathChance` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `PlayerConditionId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `MissionCost` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `BaseFollowerXP` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `AreaId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `OvermaxRewardPackId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` ADD COLUMN `EnvGarrMechanicId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission` DROP COLUMN `Duration`;
ALTER TABLE `garr_mission` DROP COLUMN `OfferTime`;
ALTER TABLE `garr_mission` DROP COLUMN `unk7`;
ALTER TABLE `garr_mission` DROP COLUMN `unk8`;
ALTER TABLE `garr_mission` DROP COLUMN `unk9`;
ALTER TABLE `garr_mission` DROP COLUMN `unk10`;
ALTER TABLE `garr_mission` DROP COLUMN `RequiredItemLevel`;
ALTER TABLE `garr_mission` DROP COLUMN `RewCurrencyID`;
ALTER TABLE `garr_mission` DROP COLUMN `RequiredLevel`;
ALTER TABLE `garr_mission` DROP COLUMN `GarrMechanicTypeRecID`;
ALTER TABLE `garr_mission` DROP COLUMN `RequiredFollowersCount`;
ALTER TABLE `garr_mission` DROP COLUMN `Category`;
ALTER TABLE `garr_mission` DROP COLUMN `MissionType`;
ALTER TABLE `garr_mission` DROP COLUMN `FollowerType`;
ALTER TABLE `garr_mission` DROP COLUMN `BaseBonusChance`;
ALTER TABLE `garr_mission` DROP COLUMN `LostChance`;
ALTER TABLE `garr_mission` DROP COLUMN `Unk3`;
ALTER TABLE `garr_mission` DROP COLUMN `CurrencyCost`;
ALTER TABLE `garr_mission` DROP COLUMN `RewardFollowerExperience`;
ALTER TABLE `garr_mission` DROP COLUMN `ZoneID`;
ALTER TABLE `garr_mission` DROP COLUMN `unk30`;
ALTER TABLE `garr_mission` DROP COLUMN `unk16`;
ALTER TABLE `garr_mission` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `garr_mission` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `garr_mission` MODIFY COLUMN `Location` TEXT COLLATE utf8_general_ci AFTER `Description`;
ALTER TABLE `garr_mission` MODIFY COLUMN `MissionDuration` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Location`;
ALTER TABLE `garr_mission` MODIFY COLUMN `OfferDuration` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MissionDuration`;
ALTER TABLE `garr_mission` MODIFY COLUMN `MapPos_X` FLOAT NOT NULL DEFAULT 0 AFTER `OfferDuration`;
ALTER TABLE `garr_mission` MODIFY COLUMN `MapPos_Y` FLOAT NOT NULL DEFAULT 0 AFTER `MapPos_X`;
ALTER TABLE `garr_mission` MODIFY COLUMN `WorldPosX` FLOAT NOT NULL DEFAULT 0 AFTER `MapPos_Y`;
ALTER TABLE `garr_mission` MODIFY COLUMN `WorldPosY` FLOAT NOT NULL DEFAULT 0 AFTER `WorldPosX`;
ALTER TABLE `garr_mission` MODIFY COLUMN `TargetItemLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorldPosY`;
ALTER TABLE `garr_mission` MODIFY COLUMN `MissionCostCurrencyTypesId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UiTextureKitId`;
ALTER TABLE `garr_mission` MODIFY COLUMN `TargetLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MissionCostCurrencyTypesId`;
ALTER TABLE `garr_mission` MODIFY COLUMN `EnvGarrMechanicTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `TargetLevel`;
ALTER TABLE `garr_mission` MODIFY COLUMN `MaxFollowers` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `EnvGarrMechanicTypeId`;
ALTER TABLE `garr_mission` MODIFY COLUMN `OfferedGarrMissionTextureId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxFollowers`;
ALTER TABLE `garr_mission` MODIFY COLUMN `GarrMissionTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `OfferedGarrMissionTextureId`;
ALTER TABLE `garr_mission` MODIFY COLUMN `GarrFollowerTypeId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrMissionTypeId`;
ALTER TABLE `garr_mission` MODIFY COLUMN `BaseCompletionChance` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrFollowerTypeId`;
ALTER TABLE `garr_mission` MODIFY COLUMN `FollowerDeathChance` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BaseCompletionChance`;
ALTER TABLE `garr_mission` MODIFY COLUMN `PlayerConditionId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CriteriaID`;
ALTER TABLE `garr_mission` MODIFY COLUMN `MissionCost` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PlayerConditionId`;
ALTER TABLE `garr_mission` MODIFY COLUMN `BaseFollowerXP` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `garr_mission` MODIFY COLUMN `AreaId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `BaseFollowerXP`;
ALTER TABLE `garr_mission` MODIFY COLUMN `OvermaxRewardPackId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaId`;
ALTER TABLE `garr_mission` MODIFY COLUMN `EnvGarrMechanicId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `OvermaxRewardPackId`;
ALTER TABLE `garr_mission` ADD COLUMN `CriteriaID` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `TravelDuration`;


ALTER TABLE `garr_mission_x_encounter` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission_x_encounter` ADD COLUMN `GarrMissionID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission_x_encounter` ADD COLUMN `GarrEncounterSetId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_mission_x_encounter` DROP COLUMN `unk0`;
ALTER TABLE `garr_mission_x_encounter` DROP COLUMN `MissionID`;
ALTER TABLE `garr_mission_x_encounter` DROP COLUMN `xEncounter`;
ALTER TABLE `garr_mission_x_encounter` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `garr_mission_x_encounter` MODIFY COLUMN `GarrMissionID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `garr_mission_x_encounter` MODIFY COLUMN `GarrEncounterSetId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EncounterID`;

ALTER TABLE `garr_plot` ADD COLUMN `AllianceConstructObjId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_plot` ADD COLUMN `HordeConstructObjId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_plot` ADD COLUMN `UiCategoryId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_plot` ADD COLUMN `UpgradeRequirement1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_plot` ADD COLUMN `UpgradeRequirement2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_plot` DROP COLUMN `AllianceConstructionGameObjectID`;
ALTER TABLE `garr_plot` DROP COLUMN `HordeConstructionGameObjectID`;
ALTER TABLE `garr_plot` DROP COLUMN `GarrPlotUICategoryID`;
ALTER TABLE `garr_plot` DROP COLUMN `MinCount`;
ALTER TABLE `garr_plot` DROP COLUMN `MaxCount`;
ALTER TABLE `garr_plot` MODIFY COLUMN `AllianceConstructObjId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Name`;
ALTER TABLE `garr_plot` MODIFY COLUMN `HordeConstructObjId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AllianceConstructObjId`;
ALTER TABLE `garr_plot` MODIFY COLUMN `UiCategoryId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `HordeConstructObjId`;
ALTER TABLE `garr_plot` MODIFY COLUMN `UpgradeRequirement1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `garr_plot` MODIFY COLUMN `UpgradeRequirement2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeRequirement1`;

ALTER TABLE `garr_plot_building` ADD COLUMN `GarrBuildingID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_plot_building` DROP COLUMN `BuildingID`;
ALTER TABLE `garr_plot_building` MODIFY COLUMN `GarrBuildingID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrPlotID`;

ALTER TABLE `garr_site_level` ADD COLUMN `TownHallUiPosX` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` ADD COLUMN `TownHallUiPosY` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` ADD COLUMN `UpgradeMovieId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` ADD COLUMN `UpgradeCost` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` ADD COLUMN `UpgradeGoldCost` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` ADD COLUMN `GarrLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` ADD COLUMN `GarrSiteId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` ADD COLUMN `MaxBuildingLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` DROP COLUMN `TownHallX`;
ALTER TABLE `garr_site_level` DROP COLUMN `TownHallY`;
ALTER TABLE `garr_site_level` DROP COLUMN `MovieID`;
ALTER TABLE `garr_site_level` DROP COLUMN `UpgradeResourceCost`;
ALTER TABLE `garr_site_level` DROP COLUMN `UpgradeMoneyCost`;
ALTER TABLE `garr_site_level` DROP COLUMN `Level`;
ALTER TABLE `garr_site_level` DROP COLUMN `SiteID`;
ALTER TABLE `garr_site_level` DROP COLUMN `Level2`;
ALTER TABLE `garr_site_level` CHANGE COLUMN `UITextureKitID` `UiTextureKitId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level` MODIFY COLUMN `TownHallUiPosX` FLOAT NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `garr_site_level` MODIFY COLUMN `TownHallUiPosY` FLOAT NOT NULL DEFAULT 0 AFTER `TownHallUiPosX`;
ALTER TABLE `garr_site_level` MODIFY COLUMN `UpgradeMovieId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UiTextureKitId`;
ALTER TABLE `garr_site_level` MODIFY COLUMN `UpgradeCost` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `UpgradeMovieId`;
ALTER TABLE `garr_site_level` MODIFY COLUMN `UpgradeGoldCost` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `UpgradeCost`;
ALTER TABLE `garr_site_level` MODIFY COLUMN `GarrLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeGoldCost`;
ALTER TABLE `garr_site_level` MODIFY COLUMN `GarrSiteId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrLevel`;
ALTER TABLE `garr_site_level` MODIFY COLUMN `MaxBuildingLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrSiteId`;

ALTER TABLE `garr_site_level_plot_inst` ADD COLUMN `UIMarkerSize` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_site_level_plot_inst` DROP COLUMN `Unknown`;
ALTER TABLE `garr_site_level_plot_inst` MODIFY COLUMN `UIMarkerSize` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GarrPlotInstanceID`;

ALTER TABLE `garr_talent` ADD COLUMN `IconFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `ResearchDurationSecs` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `Tier` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `UiOrder` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `Flags` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `GarrTalentTreeId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `PlayerConditionId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `ResearchCost` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `ResearchCostCurrencyTypesId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `ResearchGoldCost` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `PerkSpellId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `PerkPlayerConditionId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `RespecCost` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `RespecCostCurrencyTypesId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `RespecDurationSecs` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` ADD COLUMN `RespecGoldCost` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` DROP COLUMN `Unknown0`;
ALTER TABLE `garr_talent` DROP COLUMN `ResearchTime`;
ALTER TABLE `garr_talent` DROP COLUMN `LineIdx`;
ALTER TABLE `garr_talent` DROP COLUMN `OptionIdx`;
ALTER TABLE `garr_talent` DROP COLUMN `Unknown6`;
ALTER TABLE `garr_talent` DROP COLUMN `TalentTreeID`;
ALTER TABLE `garr_talent` DROP COLUMN `UnkCriteria`;
ALTER TABLE `garr_talent` DROP COLUMN `ResearchPriceCost`;
ALTER TABLE `garr_talent` DROP COLUMN `ResearchPriceCurrency`;
ALTER TABLE `garr_talent` DROP COLUMN `Unknown13`;
ALTER TABLE `garr_talent` DROP COLUMN `SpellAura`;
ALTER TABLE `garr_talent` DROP COLUMN `ChangeCriteria2`;
ALTER TABLE `garr_talent` DROP COLUMN `ChangePriceCost`;
ALTER TABLE `garr_talent` DROP COLUMN `ChangePriceCurrency`;
ALTER TABLE `garr_talent` DROP COLUMN `ChangeResearchTime`;
ALTER TABLE `garr_talent` DROP COLUMN `Unknown19`;
ALTER TABLE `garr_talent` CHANGE COLUMN `GarrAbilityID` `GarrAbilityId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `garr_talent` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `garr_talent` MODIFY COLUMN `IconFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `garr_talent` MODIFY COLUMN `ResearchDurationSecs` INTEGER(11) NOT NULL DEFAULT 0 AFTER `IconFileDataId`;
ALTER TABLE `garr_talent` MODIFY COLUMN `Tier` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ResearchDurationSecs`;
ALTER TABLE `garr_talent` MODIFY COLUMN `UiOrder` TINYINT(4) NOT NULL DEFAULT 0 AFTER `Tier`;
ALTER TABLE `garr_talent` MODIFY COLUMN `Flags` TINYINT(4) NOT NULL DEFAULT 0 AFTER `UiOrder`;
ALTER TABLE `garr_talent` MODIFY COLUMN `GarrTalentTreeId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `garr_talent` MODIFY COLUMN `PlayerConditionId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `GarrAbilityId`;
ALTER TABLE `garr_talent` MODIFY COLUMN `ResearchCost` INTEGER(11) NOT NULL DEFAULT 0 AFTER `PlayerConditionId`;
ALTER TABLE `garr_talent` MODIFY COLUMN `ResearchCostCurrencyTypesId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ResearchCost`;
ALTER TABLE `garr_talent` MODIFY COLUMN `ResearchGoldCost` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ResearchCostCurrencyTypesId`;
ALTER TABLE `garr_talent` MODIFY COLUMN `PerkSpellId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ResearchGoldCost`;
ALTER TABLE `garr_talent` MODIFY COLUMN `PerkPlayerConditionId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `PerkSpellId`;
ALTER TABLE `garr_talent` MODIFY COLUMN `RespecCost` INTEGER(11) NOT NULL DEFAULT 0 AFTER `PerkPlayerConditionId`;
ALTER TABLE `garr_talent` MODIFY COLUMN `RespecCostCurrencyTypesId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `RespecCost`;
ALTER TABLE `garr_talent` MODIFY COLUMN `RespecDurationSecs` INTEGER(11) NOT NULL DEFAULT 0 AFTER `RespecCostCurrencyTypesId`;
ALTER TABLE `garr_talent` MODIFY COLUMN `RespecGoldCost` INTEGER(11) NOT NULL DEFAULT 0 AFTER `RespecDurationSecs`;

ALTER TABLE `garr_talent_tree` ADD COLUMN `UiTextureKitId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent_tree` ADD COLUMN `MaxTiers` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent_tree` ADD COLUMN `UiOrder` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent_tree` ADD COLUMN `ClassId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent_tree` ADD COLUMN `GarrTypeId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `garr_talent_tree` DROP COLUMN `Unknown0`;
ALTER TABLE `garr_talent_tree` DROP COLUMN `Unknown1`;
ALTER TABLE `garr_talent_tree` DROP COLUMN `Class`;
ALTER TABLE `garr_talent_tree` DROP COLUMN `Unknown3`;
ALTER TABLE `garr_talent_tree` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `GarrTypeId`;
ALTER TABLE `garr_talent_tree` MODIFY COLUMN `UiTextureKitId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `garr_talent_tree` MODIFY COLUMN `MaxTiers` TINYINT(4) NOT NULL DEFAULT 0 AFTER `UiTextureKitId`;
ALTER TABLE `garr_talent_tree` MODIFY COLUMN `UiOrder` TINYINT(4) NOT NULL DEFAULT 0 AFTER `MaxTiers`;
ALTER TABLE `garr_talent_tree` MODIFY COLUMN `ClassId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UiOrder`;
ALTER TABLE `garr_talent_tree` MODIFY COLUMN `GarrTypeId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ClassId`;

ALTER TABLE `glyph_required_spec` MODIFY COLUMN `ChrSpecializationID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `group_finder_activity` ADD COLUMN `FullName` TEXT COLLATE utf8_general_ci;
ALTER TABLE `group_finder_activity` ADD COLUMN `ShortName` TEXT COLLATE utf8_general_ci;
ALTER TABLE `group_finder_activity` ADD COLUMN `MinGearLevelSuggestion` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity` ADD COLUMN `AreaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity` ADD COLUMN `GroupFinderCategoryId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity` ADD COLUMN `GroupFinderActivityGrpId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity` ADD COLUMN `OrderIndex` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity` ADD COLUMN `MaxLevelSuggestion` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity` ADD COLUMN `DisplayType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity` DROP COLUMN `Name`;
ALTER TABLE `group_finder_activity` DROP COLUMN `NameAlt`;
ALTER TABLE `group_finder_activity` DROP COLUMN `RequiredItemLevel`;
ALTER TABLE `group_finder_activity` DROP COLUMN `ZoneID`;
ALTER TABLE `group_finder_activity` DROP COLUMN `CategoryID`;
ALTER TABLE `group_finder_activity` DROP COLUMN `Order`;
ALTER TABLE `group_finder_activity` DROP COLUMN `Order2`;
ALTER TABLE `group_finder_activity` DROP COLUMN `MaxLevel`;
ALTER TABLE `group_finder_activity` DROP COLUMN `Unknown11`;
ALTER TABLE `group_finder_activity` DROP COLUMN `Type`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `FullName` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `ShortName` TEXT COLLATE utf8_general_ci AFTER `FullName`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `MinGearLevelSuggestion` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ShortName`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `AreaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `GroupFinderCategoryId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaId`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `GroupFinderActivityGrpId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GroupFinderCategoryId`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `OrderIndex` TINYINT(4) NOT NULL DEFAULT 0 AFTER `GroupFinderActivityGrpId`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `MaxLevelSuggestion` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinLevel`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `group_finder_activity` MODIFY COLUMN `DisplayType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;

ALTER TABLE `group_finder_activity_grp` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_activity_grp` DROP COLUMN `Unknown1`;
ALTER TABLE `group_finder_activity_grp` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GroupName`;

ALTER TABLE `group_finder_activity_locale` ADD COLUMN `FullName_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `group_finder_activity_locale` ADD COLUMN `ShortName_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `group_finder_activity_locale` DROP COLUMN `Name_lang`;
ALTER TABLE `group_finder_activity_locale` DROP COLUMN `NameAlt_lang`;
ALTER TABLE `group_finder_activity_locale` MODIFY COLUMN `FullName_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;
ALTER TABLE `group_finder_activity_locale` MODIFY COLUMN `ShortName_lang` TEXT COLLATE utf8_general_ci AFTER `FullName_lang`;

ALTER TABLE `group_finder_category` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_category` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `group_finder_category` DROP COLUMN `Unknown1`;
ALTER TABLE `group_finder_category` DROP COLUMN `Unknown2`;
ALTER TABLE `group_finder_category` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CategoryName`;
ALTER TABLE `group_finder_category` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;

ALTER TABLE `heirloom` ADD COLUMN `StaticUpgradedItemId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `heirloom` ADD COLUMN `UpgradeItemID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `heirloom` ADD COLUMN `UpgradeItemBonusListId1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `heirloom` ADD COLUMN `UpgradeItemBonusListId2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `heirloom` ADD COLUMN `UpgradeItemBonusListId3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `heirloom` ADD COLUMN `SourceTypeEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `heirloom` DROP COLUMN `Source`;
ALTER TABLE `heirloom` DROP COLUMN `NextDifficultyItemID`;
ALTER TABLE `heirloom` DROP COLUMN `ItemBonusListID1`;
ALTER TABLE `heirloom` DROP COLUMN `ItemBonusListID2`;
ALTER TABLE `heirloom` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `heirloom` MODIFY COLUMN `SourceText` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `heirloom` MODIFY COLUMN `ItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SourceText`;
ALTER TABLE `heirloom` MODIFY COLUMN `OldItem1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID`;
ALTER TABLE `heirloom` MODIFY COLUMN `OldItem2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `OldItem1`;
ALTER TABLE `heirloom` MODIFY COLUMN `UpgradeItemID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `StaticUpgradedItemId`;
ALTER TABLE `heirloom` MODIFY COLUMN `UpgradeItemID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeItemID1`;
ALTER TABLE `heirloom` MODIFY COLUMN `Flags` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeItemBonusListId3`;
ALTER TABLE `heirloom` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SourceTypeEnum`;
ALTER TABLE `heirloom` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `heirloom` MODIFY COLUMN `StaticUpgradedItemId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `OldItem2`;
ALTER TABLE `heirloom` MODIFY COLUMN `UpgradeItemID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeItemID2`;
ALTER TABLE `heirloom` MODIFY COLUMN `UpgradeItemBonusListId1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeItemID3`;
ALTER TABLE `heirloom` MODIFY COLUMN `UpgradeItemBonusListId2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeItemBonusListId1`;
ALTER TABLE `heirloom` MODIFY COLUMN `UpgradeItemBonusListId3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpgradeItemBonusListId2`;
ALTER TABLE `heirloom` MODIFY COLUMN `SourceTypeEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;

ALTER TABLE `holidays` ADD COLUMN `TextureFileDataID1` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `holidays` ADD COLUMN `TextureFileDataID2` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `holidays` ADD COLUMN `TextureFileDataID3` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `holidays` DROP COLUMN `TextureFilename`;
ALTER TABLE `holidays` CHANGE COLUMN `HolidayNameID` `HolidayNameId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `holidays` MODIFY COLUMN `Priority` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `holidays` ENGINE = MyISAM, ROW_FORMAT = FIXED;
ALTER TABLE `holidays` MODIFY COLUMN `Duration1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Date16`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration1`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration2`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration3`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration5` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration4`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration6` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration5`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration7` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration6`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration8` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration7`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration9` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration8`;
ALTER TABLE `holidays` MODIFY COLUMN `Duration10` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration9`;
ALTER TABLE `holidays` MODIFY COLUMN `Region` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Duration10`;
ALTER TABLE `holidays` MODIFY COLUMN `Looping` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Region`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Looping`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags1`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags3` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags2`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags4` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags3`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags5` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags4`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags6` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags5`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags7` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags6`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags8` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags7`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags9` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags8`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFlags10` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags9`;
ALTER TABLE `holidays` MODIFY COLUMN `Priority` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFlags10`;
ALTER TABLE `holidays` MODIFY COLUMN `CalendarFilterType` TINYINT(4) NOT NULL DEFAULT 0 AFTER `Priority`;
ALTER TABLE `holidays` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CalendarFilterType`;
ALTER TABLE `holidays` MODIFY COLUMN `HolidayNameID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `holidays` MODIFY COLUMN `HolidayDescriptionID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `HolidayNameId`;
ALTER TABLE `holidays` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `TextureFileDataID3`;
ALTER TABLE `holidays` MODIFY COLUMN `TextureFileDataID1` INTEGER(11) NOT NULL DEFAULT 0 AFTER `HolidayDescriptionID`;
ALTER TABLE `holidays` MODIFY COLUMN `TextureFileDataID2` INTEGER(11) NOT NULL DEFAULT 0 AFTER `TextureFileDataID1`;
ALTER TABLE `holidays` MODIFY COLUMN `TextureFileDataID3` INTEGER(11) NOT NULL DEFAULT 0 AFTER `TextureFileDataID2`;

ALTER TABLE `hotfix_data` ADD COLUMN `Timestamp` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `hotfix_data` DROP INDEX `PRIMARY`;
ALTER TABLE `hotfix_data` MODIFY COLUMN `Id` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `hotfix_data` MODIFY COLUMN `TableHash` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `hotfix_data` CHANGE COLUMN `RecordId` `RecordID` INTEGER(10) NOT NULL;
ALTER TABLE `hotfix_data` ADD PRIMARY KEY USING BTREE (`Id`, `TableHash`, `RecordID`, `Timestamp`) COMMENT '';
ALTER TABLE `hotfix_data` MODIFY COLUMN `Deleted` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Timestamp`;
ALTER TABLE `hotfix_data` MODIFY COLUMN `Timestamp` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `RecordID`;

ALTER TABLE `item_bonus` ADD COLUMN `Value3` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `item_bonus` MODIFY COLUMN `BonusListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Value3`;
ALTER TABLE `item_bonus` MODIFY COLUMN `Type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BonusListID`;
ALTER TABLE `item_bonus` MODIFY COLUMN `Index` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Type`;
ALTER TABLE `item_bonus` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Index`;
ALTER TABLE `item_bonus` MODIFY COLUMN `Value3` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Value2`;

ALTER TABLE `item_bonus_tree_node` MODIFY COLUMN `SubTreeID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `item_bonus_tree_node` MODIFY COLUMN `BonusListID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SubTreeID`;
ALTER TABLE `item_bonus_tree_node` MODIFY COLUMN `ItemLevelSelectorID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BonusListID`;
ALTER TABLE `item_bonus_tree_node` MODIFY COLUMN `BonusTreeModID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemLevelSelectorID`;

ALTER TABLE `item_child_equipment` MODIFY COLUMN `AltItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `item_child_equipment` MODIFY COLUMN `AltEquipmentSlot` TINYINT(4) NOT NULL DEFAULT 0 AFTER `AltItemID`;

ALTER TABLE `item_class` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;

ALTER TABLE `item_disenchant_loot` ADD COLUMN `Expansion` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `item_disenchant_loot` MODIFY COLUMN `ItemSubClass` TINYINT(4) NOT NULL DEFAULT 0 AFTER `SkillRequired`;
ALTER TABLE `item_disenchant_loot` MODIFY COLUMN `Quality` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemSubClass`;
ALTER TABLE `item_disenchant_loot` MODIFY COLUMN `ItemClass` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Expansion`;
ALTER TABLE `item_disenchant_loot` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemClass`;
ALTER TABLE `item_disenchant_loot` MODIFY COLUMN `Expansion` TINYINT(4) NOT NULL DEFAULT 0 AFTER `Quality`;

ALTER TABLE `item_effect` MODIFY COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `item_effect` MODIFY COLUMN `Cooldown` INTEGER(11) NOT NULL DEFAULT 0 AFTER `SpellID`;
ALTER TABLE `item_effect` MODIFY COLUMN `CategoryCooldown` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Cooldown`;
ALTER TABLE `item_effect` MODIFY COLUMN `Charges` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `CategoryCooldown`;
ALTER TABLE `item_effect` MODIFY COLUMN `Category` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Charges`;
ALTER TABLE `item_effect` MODIFY COLUMN `SpecID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Category`;
ALTER TABLE `item_effect` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpecID`;
ALTER TABLE `item_effect` MODIFY COLUMN `Trigger` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `OrderIndex`;

ALTER TABLE `item_extended_cost` ADD COLUMN `ItemId1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemId2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemId3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemId4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemId5` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyCount1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyCount2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyCount3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyCount4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyCount5` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemCount1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemCount2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemCount3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemCount4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ItemCount5` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `RequiredArenaRating` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyId1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyId2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyId3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyId4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `CurrencyId5` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `ArenaBracket` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `MinFactionId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `MinReputation` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` ADD COLUMN `RequiredAchievement` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItem1`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItem2`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItem3`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItem4`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItem5`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrencyCount1`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrencyCount2`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrencyCount3`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrencyCount4`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrencyCount5`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItemCount1`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItemCount2`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItemCount3`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItemCount4`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredItemCount5`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredPersonalArenaRating`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrency1`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrency2`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrency3`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrency4`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredCurrency5`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredArenaSlot`;
ALTER TABLE `item_extended_cost` DROP COLUMN `ItemPurchaseGroup`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredFactionId`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequirementFlags`;
ALTER TABLE `item_extended_cost` DROP COLUMN `RequiredFactionStanding`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemId1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemId2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemId1`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemId3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemId2`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemId4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemId3`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemId5` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemId4`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyCount1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemId5`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyCount2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyCount1`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyCount3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyCount2`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyCount4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyCount3`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyCount5` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyCount4`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemCount1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyCount5`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemCount2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount1`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemCount3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount2`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemCount4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount3`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ItemCount5` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount4`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `RequiredArenaRating` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount5`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyId1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RequiredArenaRating`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyId2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyId1`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyId3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyId2`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyId4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyId3`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `CurrencyId5` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyId4`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `ArenaBracket` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyId5`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `MinFactionId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ArenaBracket`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `MinReputation` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinFactionId`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinReputation`;
ALTER TABLE `item_extended_cost` MODIFY COLUMN `RequiredAchievement` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;

ALTER TABLE `item_level_selector` ADD COLUMN `ItemLevelSelectorQualitySetID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_level_selector` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemLevelSelectorQualitySetID`;
ALTER TABLE `item_level_selector` MODIFY COLUMN `ItemLevelSelectorQualitySetID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemLevel`;

ALTER TABLE `item_modified_appearance` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_modified_appearance` ADD COLUMN `TransmogSourceTypeEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `item_modified_appearance` DROP COLUMN `VariationID`;
ALTER TABLE `item_modified_appearance` DROP COLUMN `SourceType`;
ALTER TABLE `item_modified_appearance` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID`;
ALTER TABLE `item_modified_appearance` MODIFY COLUMN `AppearanceModID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `item_modified_appearance` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AppearanceID`;
ALTER TABLE `item_modified_appearance` MODIFY COLUMN `TransmogSourceTypeEnum` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `OrderIndex`;

ALTER TABLE `item_set_spell` MODIFY COLUMN `ChrSpecID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellID`;
ALTER TABLE `item_set_spell` MODIFY COLUMN `Threshold` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ChrSpecID`;

ALTER TABLE `item_spec_override` MODIFY COLUMN `SpecID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `item_x_bonus_tree` MODIFY COLUMN `BonusTreeID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `itemsparse` ADD COLUMN `Flags4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `PriceRandomValue` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `PriceVariance` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `VendorStackCount` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor1` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor2` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor3` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor4` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor5` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor6` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor7` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor8` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor9` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentEditor10` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket1` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket2` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket3` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket4` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket5` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket6` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket7` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket8` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket9` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `StatPercentageOfSocket10` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `ItemRange` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `QualityModifier` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `DurationInInventory` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` ADD COLUMN `DmgVariance` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` DROP COLUMN `UnkFloat1`;
ALTER TABLE `itemsparse` DROP COLUMN `UnkFloat2`;
ALTER TABLE `itemsparse` DROP COLUMN `BuyCount`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation1`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation2`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation3`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation4`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation5`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation6`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation7`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation8`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation9`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatAllocation10`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier1`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier2`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier3`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier4`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier5`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier6`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier7`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier8`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier9`;
ALTER TABLE `itemsparse` DROP COLUMN `ItemStatSocketCostMultiplier10`;
ALTER TABLE `itemsparse` DROP COLUMN `RangedModRange`;
ALTER TABLE `itemsparse` DROP COLUMN `ArmorDamageModifier`;
ALTER TABLE `itemsparse` DROP COLUMN `Duration`;
ALTER TABLE `itemsparse` DROP COLUMN `StatScalingFactor`;
ALTER TABLE `itemsparse` MODIFY COLUMN `AllowableRace` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `itemsparse` MODIFY COLUMN `AllowableRace` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Name1` TEXT COLLATE utf8_general_ci AFTER `AllowableRace`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Name2` TEXT COLLATE utf8_general_ci AFTER `Name1`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Name3` TEXT COLLATE utf8_general_ci AFTER `Name2`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Name4` TEXT COLLATE utf8_general_ci AFTER `Name3`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name4`;
ALTER TABLE `itemsparse` MODIFY COLUMN `BuyPrice` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `VendorStackCount`;
ALTER TABLE `itemsparse` MODIFY COLUMN `SellPrice` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `BuyPrice`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredSpell` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SellPrice`;
ALTER TABLE `itemsparse` MODIFY COLUMN `MaxCount` INTEGER(11) NOT NULL DEFAULT 0 AFTER `RequiredSpell`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Stackable` INTEGER(11) NOT NULL DEFAULT 0 AFTER `MaxCount`;
ALTER TABLE `itemsparse` MODIFY COLUMN `BagFamily` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemRange`;
ALTER TABLE `itemsparse` MODIFY COLUMN `AllowableClass` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `DmgVariance`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AllowableClass`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredSkill` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemLevel`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredSkillRank` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RequiredSkill`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredReputationFaction` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RequiredSkillRank`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue1` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `RequiredReputationFaction`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue2` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue1`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue3` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue2`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue4` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue3`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue5` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue4`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue6` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue5`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue7` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue6`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue8` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue7`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue9` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue8`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatValue10` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemStatValue9`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ScalingStatDistribution` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemStatValue10`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Delay` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ScalingStatDistribution`;
ALTER TABLE `itemsparse` MODIFY COLUMN `PageText` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Delay`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StartQuest` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PageText`;
ALTER TABLE `itemsparse` MODIFY COLUMN `LockID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `StartQuest`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RandomProperty` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `LockID`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RandomSuffix` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RandomProperty`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemSet` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RandomSuffix`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Area` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemSet`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Map` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Area`;
ALTER TABLE `itemsparse` MODIFY COLUMN `TotemCategory` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Map`;
ALTER TABLE `itemsparse` MODIFY COLUMN `SocketBonus` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `TotemCategory`;
ALTER TABLE `itemsparse` MODIFY COLUMN `GemProperties` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SocketBonus`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemLimitCategory` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `GemProperties`;
ALTER TABLE `itemsparse` MODIFY COLUMN `HolidayID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemLimitCategory`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredTransmogHolidayID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `HolidayID`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemNameDescriptionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RequiredTransmogHolidayID`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Quality` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemNameDescriptionID`;
ALTER TABLE `itemsparse` MODIFY COLUMN `InventoryType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Quality`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredLevel` TINYINT(4) NOT NULL DEFAULT 0 AFTER `InventoryType`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredHonorRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RequiredLevel`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredCityRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RequiredHonorRank`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredReputationRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RequiredCityRank`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ContainerSlots` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RequiredReputationRank`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType1` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ContainerSlots`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType2` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType1`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType3` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType2`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType4` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType3`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType5` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType4`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType6` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType5`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType7` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType6`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType8` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType7`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType9` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType8`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemStatType10` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ItemStatType9`;
ALTER TABLE `itemsparse` MODIFY COLUMN `DamageType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemStatType10`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Bonding` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DamageType`;
ALTER TABLE `itemsparse` MODIFY COLUMN `LanguageID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Bonding`;
ALTER TABLE `itemsparse` MODIFY COLUMN `PageMaterial` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LanguageID`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Material` TINYINT(4) NOT NULL DEFAULT 0 AFTER `PageMaterial`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Sheath` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Material`;
ALTER TABLE `itemsparse` MODIFY COLUMN `SocketColor1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Sheath`;
ALTER TABLE `itemsparse` MODIFY COLUMN `SocketColor2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SocketColor1`;
ALTER TABLE `itemsparse` MODIFY COLUMN `SocketColor3` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SocketColor2`;
ALTER TABLE `itemsparse` MODIFY COLUMN `CurrencySubstitutionID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SocketColor3`;
ALTER TABLE `itemsparse` MODIFY COLUMN `CurrencySubstitutionCount` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencySubstitutionID`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ArtifactID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencySubstitutionCount`;
ALTER TABLE `itemsparse` MODIFY COLUMN `RequiredExpansion` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ArtifactID`;
ALTER TABLE `itemsparse` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `RequiredExpansion`;
ALTER TABLE `itemsparse` MODIFY COLUMN `Flags4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags3`;
ALTER TABLE `itemsparse` MODIFY COLUMN `PriceRandomValue` FLOAT NOT NULL DEFAULT 0 AFTER `Flags4`;
ALTER TABLE `itemsparse` MODIFY COLUMN `PriceVariance` FLOAT NOT NULL DEFAULT 0 AFTER `PriceRandomValue`;
ALTER TABLE `itemsparse` MODIFY COLUMN `VendorStackCount` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PriceVariance`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor1` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Stackable`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor2` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor1`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor3` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor2`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor4` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor3`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor5` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor4`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor6` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor5`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor7` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor6`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor8` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor7`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor9` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor8`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentEditor10` INTEGER(11) NOT NULL DEFAULT 0 AFTER `StatPercentEditor9`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket1` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentEditor10`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket2` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket1`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket3` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket2`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket4` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket3`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket5` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket4`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket6` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket5`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket7` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket6`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket8` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket7`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket9` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket8`;
ALTER TABLE `itemsparse` MODIFY COLUMN `StatPercentageOfSocket10` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket9`;
ALTER TABLE `itemsparse` MODIFY COLUMN `ItemRange` FLOAT NOT NULL DEFAULT 0 AFTER `StatPercentageOfSocket10`;
ALTER TABLE `itemsparse` MODIFY COLUMN `QualityModifier` FLOAT NOT NULL DEFAULT 0 AFTER `BagFamily`;
ALTER TABLE `itemsparse` MODIFY COLUMN `DurationInInventory` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `QualityModifier`;
ALTER TABLE `itemsparse` MODIFY COLUMN `DmgVariance` FLOAT NOT NULL DEFAULT 0 AFTER `DurationInInventory`;

ALTER TABLE `journal_encounter` ADD COLUMN `Map1` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` ADD COLUMN `Map2` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` ADD COLUMN `DungeonMapId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` ADD COLUMN `WorldMapAreaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` ADD COLUMN `FirstSectionId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` ADD COLUMN `DifficultyMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` ADD COLUMN `OrderIndex` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` ADD COLUMN `MapDisplayConditionId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkFloat`;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkFloat2`;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkShort`;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkShort2`;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkShort3`;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkByte`;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkByte2`;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkInt`;
ALTER TABLE `journal_encounter` DROP COLUMN `UnkInt2`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `Map1` FLOAT NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `Map2` FLOAT NOT NULL DEFAULT 0 AFTER `Map1`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `DungeonMapId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Map2`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `WorldMapAreaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `DungeonMapId`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `FirstSectionId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorldMapAreaId`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `DifficultyMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `JournalInstanceID`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyMask`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `OrderIndex` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `journal_encounter` MODIFY COLUMN `MapDisplayConditionId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `OrderIndex`;

ALTER TABLE `journal_encounter_creature` ADD COLUMN `CreatureDisplayInfoId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_creature` ADD COLUMN `FileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_creature` ADD COLUMN `JournalEncounterId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_creature` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_creature` ADD COLUMN `Unused` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_creature` DROP COLUMN `CreatureDisplayID`;
ALTER TABLE `journal_encounter_creature` DROP COLUMN `Flags`;
ALTER TABLE `journal_encounter_creature` DROP COLUMN `EncounterID`;
ALTER TABLE `journal_encounter_creature` DROP COLUMN `Unk`;
ALTER TABLE `journal_encounter_creature` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `journal_encounter_creature` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `journal_encounter_creature` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Unused`;
ALTER TABLE `journal_encounter_creature` MODIFY COLUMN `CreatureDisplayInfoId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `journal_encounter_creature` MODIFY COLUMN `FileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CreatureDisplayInfoId`;
ALTER TABLE `journal_encounter_creature` MODIFY COLUMN `JournalEncounterId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FileDataId`;
ALTER TABLE `journal_encounter_creature` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `JournalEncounterId`;
ALTER TABLE `journal_encounter_creature` MODIFY COLUMN `Unused` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `journal_encounter_item` ADD COLUMN `JournalEncounterId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_item` ADD COLUMN `DifficultyMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_item` ADD COLUMN `FactionMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_item` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_item` DROP COLUMN `EncounterID`;
ALTER TABLE `journal_encounter_item` DROP COLUMN `Unk`;
ALTER TABLE `journal_encounter_item` DROP COLUMN `Unk2`;
ALTER TABLE `journal_encounter_item` DROP COLUMN `Unk3`;
ALTER TABLE `journal_encounter_item` CHANGE COLUMN `ItemID` `ItemId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_encounter_item` MODIFY COLUMN `JournalEncounterId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemId`;
ALTER TABLE `journal_encounter_item` MODIFY COLUMN `DifficultyMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `JournalEncounterId`;
ALTER TABLE `journal_encounter_item` MODIFY COLUMN `FactionMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyMask`;
ALTER TABLE `journal_encounter_item` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FactionMask`;

ALTER TABLE `journal_instance` ADD COLUMN `ButtonFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_instance` ADD COLUMN `ButtonSmallFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_instance` ADD COLUMN `BackgroundFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_instance` ADD COLUMN `LoreFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_instance` ADD COLUMN `AreaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_instance` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_instance` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `journal_instance` DROP COLUMN `UnkInt`;
ALTER TABLE `journal_instance` DROP COLUMN `UnkInt2`;
ALTER TABLE `journal_instance` DROP COLUMN `UnkInt3`;
ALTER TABLE `journal_instance` DROP COLUMN `UnkInt4`;
ALTER TABLE `journal_instance` DROP COLUMN `UnkShort`;
ALTER TABLE `journal_instance` DROP COLUMN `UnkByte`;
ALTER TABLE `journal_instance` DROP COLUMN `UnkByte2`;
ALTER TABLE `journal_instance` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `journal_instance` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `journal_instance` MODIFY COLUMN `ButtonFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `journal_instance` MODIFY COLUMN `ButtonSmallFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ButtonFileDataId`;
ALTER TABLE `journal_instance` MODIFY COLUMN `BackgroundFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ButtonSmallFileDataId`;
ALTER TABLE `journal_instance` MODIFY COLUMN `LoreFileDataId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `BackgroundFileDataId`;
ALTER TABLE `journal_instance` MODIFY COLUMN `AreaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `journal_instance` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaId`;
ALTER TABLE `journal_instance` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `OrderIndex`;

ALTER TABLE `lfg_dungeons` ADD COLUMN `TextureFileDataID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `lfg_dungeons` ADD COLUMN `RewardIconFileDataID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `lfg_dungeons` ADD COLUMN `ProposalTextureFileDataID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `lfg_dungeons` DROP COLUMN `TextureFilename`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MinItemLevel` FLOAT NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MaxLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinItemLevel`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `TargetLevelMax` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxLevel`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MapID` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `TargetLevelMax`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `RandomID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `ScenarioID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `RandomID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `LastBossJournalEncounterID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ScenarioID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `BonusReputationAmount` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `LastBossJournalEncounterID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MentorItemLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BonusReputationAmount`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `PlayerConditionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MentorItemLevel`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MinLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PlayerConditionID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `TargetLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinLevel`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `TargetLevelMin` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `TargetLevel`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `TargetLevelMin`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `Type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `Faction` TINYINT(4) NOT NULL DEFAULT 0 AFTER `Type`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `Expansion` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Faction`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Expansion`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `GroupID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `OrderIndex`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `CountTank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `GroupID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `CountHealer` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CountTank`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `CountDamage` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CountHealer`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MinCountTank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CountDamage`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MinCountHealer` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinCountTank`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MinCountDamage` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinCountHealer`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `SubType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinCountDamage`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `MentorCharLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SubType`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ProposalTextureFileDataID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `TextureFileDataID` INTEGER(11) NOT NULL DEFAULT 0 AFTER `MentorCharLevel`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `RewardIconFileDataID` INTEGER(11) NOT NULL DEFAULT 0 AFTER `TextureFileDataID`;
ALTER TABLE `lfg_dungeons` MODIFY COLUMN `ProposalTextureFileDataID` INTEGER(11) NOT NULL DEFAULT 0 AFTER `RewardIconFileDataID`;

ALTER TABLE `liquid_type` MODIFY COLUMN `Texture1` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `liquid_type` MODIFY COLUMN `Texture2` TEXT COLLATE utf8_general_ci AFTER `Texture1`;
ALTER TABLE `liquid_type` MODIFY COLUMN `Texture3` TEXT COLLATE utf8_general_ci AFTER `Texture2`;
ALTER TABLE `liquid_type` MODIFY COLUMN `Texture4` TEXT COLLATE utf8_general_ci AFTER `Texture3`;
ALTER TABLE `liquid_type` MODIFY COLUMN `Texture5` TEXT COLLATE utf8_general_ci AFTER `Texture4`;
ALTER TABLE `liquid_type` MODIFY COLUMN `Texture6` TEXT COLLATE utf8_general_ci AFTER `Texture5`;

ALTER TABLE `lock` MODIFY COLUMN `Skill1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `lock` MODIFY COLUMN `Skill2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `lock` MODIFY COLUMN `Skill3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `lock` MODIFY COLUMN `Skill4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `lock` MODIFY COLUMN `Skill5` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `lock` MODIFY COLUMN `Skill6` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `lock` MODIFY COLUMN `Skill7` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `lock` MODIFY COLUMN `Skill8` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `managed_world_state` ADD COLUMN `CurrentStageWorldStateId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` ADD COLUMN `ProgressWorldStateId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` ADD COLUMN `UpTimeSecs` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` ADD COLUMN `DownTimeSecs` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` ADD COLUMN `OccurrencesWorldStateId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` ADD COLUMN `AccumulationStateTargetValue` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` ADD COLUMN `DepletionStateTargetValue` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` ADD COLUMN `AccumulationAmountPerMinute` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` ADD COLUMN `DepletionAmountPerMinute` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state` DROP COLUMN `WorldStateCurrentState`;
ALTER TABLE `managed_world_state` DROP COLUMN `WorldStateResourcesCollected`;
ALTER TABLE `managed_world_state` DROP COLUMN `FullLifeTimer`;
ALTER TABLE `managed_world_state` DROP COLUMN `FullUnderAtackTimer`;
ALTER TABLE `managed_world_state` DROP COLUMN `WorldStateTimerUI`;
ALTER TABLE `managed_world_state` DROP COLUMN `Unknown5`;
ALTER TABLE `managed_world_state` DROP COLUMN `TimeToDestroy`;
ALTER TABLE `managed_world_state` DROP COLUMN `Unknown7`;
ALTER TABLE `managed_world_state` DROP COLUMN `Unknown8`;
ALTER TABLE `managed_world_state` MODIFY COLUMN `CurrentStageWorldStateId` INTEGER(11) NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `managed_world_state` MODIFY COLUMN `ProgressWorldStateId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `CurrentStageWorldStateId`;
ALTER TABLE `managed_world_state` MODIFY COLUMN `UpTimeSecs` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ProgressWorldStateId`;
ALTER TABLE `managed_world_state` MODIFY COLUMN `DownTimeSecs` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UpTimeSecs`;
ALTER TABLE `managed_world_state` MODIFY COLUMN `OccurrencesWorldStateId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `DownTimeSecs`;
ALTER TABLE `managed_world_state` MODIFY COLUMN `AccumulationStateTargetValue` INTEGER(11) NOT NULL DEFAULT 0 AFTER `OccurrencesWorldStateId`;
ALTER TABLE `managed_world_state` MODIFY COLUMN `DepletionStateTargetValue` INTEGER(11) NOT NULL DEFAULT 0 AFTER `AccumulationStateTargetValue`;
ALTER TABLE `managed_world_state` MODIFY COLUMN `AccumulationAmountPerMinute` INTEGER(11) NOT NULL DEFAULT 0 AFTER `DepletionStateTargetValue`;
ALTER TABLE `managed_world_state` MODIFY COLUMN `DepletionAmountPerMinute` INTEGER(11) NOT NULL DEFAULT 0 AFTER `AccumulationAmountPerMinute`;

ALTER TABLE `managed_world_state_buff` ADD COLUMN `OccurrenceValue` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state_buff` ADD COLUMN `BuffSpellId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state_buff` ADD COLUMN `PlayerConditionId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state_buff` DROP COLUMN `NextAwardScorer`;
ALTER TABLE `managed_world_state_buff` DROP COLUMN `AwardAuraID`;
ALTER TABLE `managed_world_state_buff` DROP COLUMN `UnknownDB2ID`;
ALTER TABLE `managed_world_state_buff` MODIFY COLUMN `OccurrenceValue` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ContributionID`;
ALTER TABLE `managed_world_state_buff` MODIFY COLUMN `BuffSpellId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `OccurrenceValue`;
ALTER TABLE `managed_world_state_buff` MODIFY COLUMN `PlayerConditionId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `BuffSpellId`;

ALTER TABLE `managed_world_state_input` ADD COLUMN `ManagedWorldStateId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state_input` ADD COLUMN `QuestId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state_input` ADD COLUMN `ValidInputConditionId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `managed_world_state_input` DROP COLUMN `ContributionID`;
ALTER TABLE `managed_world_state_input` DROP COLUMN `RewardQuest`;
ALTER TABLE `managed_world_state_input` DROP COLUMN `UnknownDB2ID`;
ALTER TABLE `managed_world_state_input` MODIFY COLUMN `ManagedWorldStateId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `managed_world_state_input` MODIFY COLUMN `QuestId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ManagedWorldStateId`;
ALTER TABLE `managed_world_state_input` MODIFY COLUMN `ValidInputConditionId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `QuestId`;

ALTER TABLE `map` MODIFY COLUMN `MapName` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `map` MODIFY COLUMN `MapDescription0` TEXT COLLATE utf8_general_ci AFTER `MapName`;
ALTER TABLE `map` MODIFY COLUMN `MapDescription1` TEXT COLLATE utf8_general_ci AFTER `MapDescription0`;
ALTER TABLE `map` MODIFY COLUMN `ShortDescription` TEXT COLLATE utf8_general_ci AFTER `MapDescription1`;
ALTER TABLE `map` MODIFY COLUMN `LongDescription` TEXT COLLATE utf8_general_ci AFTER `ShortDescription`;

ALTER TABLE `map_challenge_mode` ADD COLUMN `CriteriaCount1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `map_challenge_mode` ADD COLUMN `CriteriaCount2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `map_challenge_mode` ADD COLUMN `CriteriaCount3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `map_challenge_mode` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `map_challenge_mode` DROP COLUMN `ChestTimer1`;
ALTER TABLE `map_challenge_mode` DROP COLUMN `ChestTimer2`;
ALTER TABLE `map_challenge_mode` DROP COLUMN `ChestTimer3`;
ALTER TABLE `map_challenge_mode` DROP COLUMN `unk5`;
ALTER TABLE `map_challenge_mode` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `map_challenge_mode` MODIFY COLUMN `CriteriaCount1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `map_challenge_mode` MODIFY COLUMN `CriteriaCount2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CriteriaCount1`;
ALTER TABLE `map_challenge_mode` MODIFY COLUMN `CriteriaCount3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CriteriaCount2`;
ALTER TABLE `map_challenge_mode` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CriteriaCount3`;

ALTER TABLE `map_difficulty` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `map_difficulty` ADD COLUMN `ItemContext` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `map_difficulty` ADD COLUMN `ItemContextPickerId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `map_difficulty` DROP COLUMN `ItemBonusTreeModID`;
ALTER TABLE `map_difficulty` DROP COLUMN `Context`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Message`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `RaidDuration` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `MaxPlayers` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RaidDuration`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `LockID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxPlayers`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `MapID` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `ItemContextPickerId`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LockID`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `ItemContext` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `map_difficulty` MODIFY COLUMN `ItemContextPickerId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemContext`;

ALTER TABLE `map_locale` MODIFY COLUMN `MapName_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;
ALTER TABLE `map_locale` MODIFY COLUMN `MapDescription0_lang` TEXT COLLATE utf8_general_ci AFTER `MapName_lang`;
ALTER TABLE `map_locale` MODIFY COLUMN `MapDescription1_lang` TEXT COLLATE utf8_general_ci AFTER `MapDescription0_lang`;
ALTER TABLE `map_locale` MODIFY COLUMN `ShortDescription_lang` TEXT COLLATE utf8_general_ci AFTER `MapDescription1_lang`;
ALTER TABLE `map_locale` MODIFY COLUMN `LongDescription_lang` TEXT COLLATE utf8_general_ci AFTER `ShortDescription_lang`;

ALTER TABLE `modifier_tree` ADD COLUMN `TertiaryAsset` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `modifier_tree` DROP COLUMN `unk5`;
ALTER TABLE `modifier_tree` MODIFY COLUMN `Parent` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `modifier_tree` MODIFY COLUMN `TertiaryAsset` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Type`;

ALTER TABLE `mount` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `mount` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `mount` MODIFY COLUMN `SourceDescription` TEXT COLLATE utf8_general_ci AFTER `Description`;

ALTER TABLE `mount_x_display` MODIFY COLUMN `DisplayID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `mount_x_display` MODIFY COLUMN `PlayerConditionID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `DisplayID`;

ALTER TABLE `player_condition` ADD COLUMN `CurrentPvpFaction` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` DROP COLUMN `Unknown1`;
ALTER TABLE `player_condition` MODIFY COLUMN `RaceMask` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MinSkill1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MinSkill2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MinSkill3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MinSkill4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxSkill1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxSkill2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxSkill3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxSkill4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `ModifierTreeID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxLanguage` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyCount1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyCount2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyCount3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyCount4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `PowerTypeComp` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `PowerTypeValue` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `ClassMask` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `LanguageID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellID1` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellID2` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellID3` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellID4` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemID1` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemID2` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemID3` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemID4` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MinAvgItemLevel` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxAvgItemLevel` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MovementFlags1` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MovementFlags2` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `MainHandItemSubclassMask` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `player_condition` MODIFY COLUMN `RaceMask` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `player_condition` MODIFY COLUMN `FailureDescription` TEXT COLLATE utf8_general_ci AFTER `RaceMask`;
ALTER TABLE `player_condition` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `ClassMask` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `Gender` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ClassMask`;
ALTER TABLE `player_condition` MODIFY COLUMN `NativeGender` TINYINT(4) NOT NULL DEFAULT 0 AFTER `Gender`;
ALTER TABLE `player_condition` MODIFY COLUMN `LanguageID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SkillLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinLanguage` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LanguageID`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxLanguage` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinLanguage`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxFactionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxLanguage`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxReputation` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxFactionID`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinPVPRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrentPvpFaction`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxPVPRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinPVPRank`;
ALTER TABLE `player_condition` MODIFY COLUMN `PvpMedal` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxPVPRank`;
ALTER TABLE `player_condition` MODIFY COLUMN `PrevQuestLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PvpMedal`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrQuestLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PrevQuestLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrentCompletedQuestLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrQuestLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrentCompletedQuestLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemFlags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraSpellLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemFlags`;
ALTER TABLE `player_condition` MODIFY COLUMN `WorldStateExpressionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraSpellLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `WeatherID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorldStateExpressionID`;
ALTER TABLE `player_condition` MODIFY COLUMN `PartyStatus` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `WeatherID`;
ALTER TABLE `player_condition` MODIFY COLUMN `LifetimeMaxPVPRank` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PartyStatus`;
ALTER TABLE `player_condition` MODIFY COLUMN `AchievementLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LifetimeMaxPVPRank`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AchievementLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `AreaLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `QuestKillID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `QuestKillLogic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `QuestKillID`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinExpansionLevel` TINYINT(4) NOT NULL DEFAULT 0 AFTER `QuestKillLogic`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxExpansionLevel` TINYINT(4) NOT NULL DEFAULT 0 AFTER `MinExpansionLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinExpansionTier` TINYINT(4) NOT NULL DEFAULT 0 AFTER `MaxExpansionLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxExpansionTier` TINYINT(4) NOT NULL DEFAULT 0 AFTER `MinExpansionTier`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinGuildLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxExpansionTier`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxGuildLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinGuildLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `PhaseUseFlags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxGuildLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `PhaseID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseUseFlags`;
ALTER TABLE `player_condition` MODIFY COLUMN `PhaseGroupID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseID`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinAvgItemLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PhaseGroupID`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxAvgItemLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinAvgItemLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinAvgEquippedItemLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxAvgItemLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxAvgEquippedItemLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinAvgEquippedItemLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `ChrSpecializationIndex` TINYINT(4) NOT NULL DEFAULT 0 AFTER `MaxAvgEquippedItemLevel`;
ALTER TABLE `player_condition` MODIFY COLUMN `ChrSpecializationRole` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ChrSpecializationIndex`;
ALTER TABLE `player_condition` MODIFY COLUMN `PowerType` TINYINT(4) NOT NULL DEFAULT 0 AFTER `ChrSpecializationRole`;
ALTER TABLE `player_condition` MODIFY COLUMN `PowerTypeComp` TINYINT(4) NOT NULL DEFAULT 0 AFTER `PowerType`;
ALTER TABLE `player_condition` MODIFY COLUMN `PowerTypeValue` TINYINT(4) NOT NULL DEFAULT 0 AFTER `PowerTypeComp`;
ALTER TABLE `player_condition` MODIFY COLUMN `ModifierTreeID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerTypeValue`;
ALTER TABLE `player_condition` MODIFY COLUMN `MainHandItemSubclassMask` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ModifierTreeID`;
ALTER TABLE `player_condition` MODIFY COLUMN `SkillID1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MainHandItemSubclassMask`;
ALTER TABLE `player_condition` MODIFY COLUMN `SkillID2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SkillID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `SkillID3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SkillID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `SkillID4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SkillID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinSkill1` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `SkillID4`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinSkill2` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MinSkill1`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinSkill3` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MinSkill2`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinSkill4` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MinSkill3`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxSkill1` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MinSkill4`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxSkill2` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MaxSkill1`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxSkill3` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MaxSkill2`;
ALTER TABLE `player_condition` MODIFY COLUMN `MaxSkill4` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MaxSkill3`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinFactionID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxSkill4`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinFactionID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinFactionID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinFactionID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinFactionID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinReputation1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinFactionID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinReputation2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinReputation1`;
ALTER TABLE `player_condition` MODIFY COLUMN `MinReputation3` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinReputation2`;
ALTER TABLE `player_condition` MODIFY COLUMN `PrevQuestID1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinReputation3`;
ALTER TABLE `player_condition` MODIFY COLUMN `PrevQuestID2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PrevQuestID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `PrevQuestID3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PrevQuestID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `PrevQuestID4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PrevQuestID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrQuestID1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PrevQuestID4`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrQuestID2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrQuestID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrQuestID3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrQuestID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrQuestID4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrQuestID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrentCompletedQuestID1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrQuestID4`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrentCompletedQuestID2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrentCompletedQuestID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrentCompletedQuestID3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrentCompletedQuestID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrentCompletedQuestID4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrentCompletedQuestID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrentCompletedQuestID4`;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `SpellID4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellID4`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemID4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemCount1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID4`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemCount2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount1`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemCount3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount2`;
ALTER TABLE `player_condition` MODIFY COLUMN `ItemCount4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount3`;
ALTER TABLE `player_condition` MODIFY COLUMN `Explored1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemCount4`;
ALTER TABLE `player_condition` MODIFY COLUMN `Explored2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Explored1`;
ALTER TABLE `player_condition` MODIFY COLUMN `Time1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Explored2`;
ALTER TABLE `player_condition` MODIFY COLUMN `Time2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Time1`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraSpellID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Time2`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraSpellID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraSpellID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraSpellID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraSpellID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraSpellID4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraSpellID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraCount1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraSpellID4`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraCount2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraCount1`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraCount3` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraCount2`;
ALTER TABLE `player_condition` MODIFY COLUMN `AuraCount4` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraCount3`;
ALTER TABLE `player_condition` MODIFY COLUMN `Achievement1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraCount4`;
ALTER TABLE `player_condition` MODIFY COLUMN `Achievement2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Achievement1`;
ALTER TABLE `player_condition` MODIFY COLUMN `Achievement3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Achievement2`;
ALTER TABLE `player_condition` MODIFY COLUMN `Achievement4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Achievement3`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgStatus1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Achievement4`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgStatus2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgStatus1`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgStatus3` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgStatus2`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgStatus4` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgStatus3`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgCompare1` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgStatus4`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgCompare2` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgCompare1`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgCompare3` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgCompare2`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgCompare4` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgCompare3`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgValue1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgCompare4`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgValue2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgValue1`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgValue3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgValue2`;
ALTER TABLE `player_condition` MODIFY COLUMN `LfgValue4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgValue3`;
ALTER TABLE `player_condition` MODIFY COLUMN `AreaID1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `LfgValue4`;
ALTER TABLE `player_condition` MODIFY COLUMN `AreaID2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `AreaID3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `AreaID4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyID1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaID4`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyID2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyID1`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyID3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyID2`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrencyID4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyID3`;
ALTER TABLE `player_condition` MODIFY COLUMN `CurrentPvpFaction` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ReputationLogic`;

ALTER TABLE `prestige_level_info` MODIFY COLUMN `PrestigeText` TEXT COLLATE utf8_general_ci AFTER `ID`;

ALTER TABLE `pvp_difficulty` MODIFY COLUMN `BracketID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `pvp_difficulty` MODIFY COLUMN `MinLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `BracketID`;
ALTER TABLE `pvp_difficulty` MODIFY COLUMN `MaxLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MinLevel`;

ALTER TABLE `pvp_talent` ADD COLUMN `Description` TEXT COLLATE utf8_general_ci;
ALTER TABLE `pvp_talent` ADD COLUMN `ExtraSpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `pvp_talent` ADD COLUMN `SpecID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `pvp_talent` DROP COLUMN `Desc`;
ALTER TABLE `pvp_talent` DROP COLUMN `SpecializationID`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `OverrideSpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellID`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `TierID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ExtraSpellID`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `ColumnIndex` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `TierID`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `Flags` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ColumnIndex`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `ClassID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `Role` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpecID`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Role`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `ExtraSpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `OverrideSpellID`;
ALTER TABLE `pvp_talent` MODIFY COLUMN `SpecID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ClassID`;

ALTER TABLE `pvp_talent_locale` ADD COLUMN `Description_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `pvp_talent_locale` DROP COLUMN `Desc_lang`;
ALTER TABLE `pvp_talent_locale` MODIFY COLUMN `Description_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;

ALTER TABLE `quest_objective` ADD COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_objective` DROP COLUMN `UNK`;
ALTER TABLE `quest_objective` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `quest_objective` MODIFY COLUMN `Type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ObjectID`;
ALTER TABLE `quest_objective` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `StorageIndex`;
ALTER TABLE `quest_objective` MODIFY COLUMN `QuestID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `quest_objective` MODIFY COLUMN `OrderIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Type`;

ALTER TABLE `quest_p_o_i_blob` ADD COLUMN `NumPoints` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_p_o_i_blob` ADD COLUMN `Floor` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_p_o_i_blob` DROP COLUMN `Unk1`;
ALTER TABLE `quest_p_o_i_blob` DROP COLUMN `Unk2`;
ALTER TABLE `quest_p_o_i_blob` MODIFY COLUMN `NumPoints` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorldMapAreaID`;
ALTER TABLE `quest_p_o_i_blob` MODIFY COLUMN `Floor` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `NumPoints`;
ALTER TABLE `quest_p_o_i_point` MODIFY COLUMN `QuestPOIBlobID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `quest_p_o_i_point` MODIFY COLUMN `X` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `QuestPOIBlobID`;
ALTER TABLE `quest_p_o_i_point` MODIFY COLUMN `Y` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `X`;

ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltRaces` BIGINT(20) NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `QuestTitle` TEXT COLLATE utf8_general_ci;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `BulletText` TEXT COLLATE utf8_general_ci;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `StartItem` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `ConditionId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltClasses` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltCompletedQuest1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltCompletedQuest2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltCompletedQuest3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltMinSkillId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltActiveQuest` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltCompletedQuestLogic` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltMaxFactionId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltMaxFactionValue` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltMaxLevel` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltMinFactionId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltMinFactionValue` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltMinLevel` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltMinSkillValue` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `FiltNonActiveQuest` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `BreadCrumbId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` ADD COLUMN `SandboxScalingId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `Flags`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `Name`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `Name1`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `requestAura`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `PlayerConditionID`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `Unk5`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `requestQuest1`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `requestQuest2`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `requestQuest3`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `SkillID`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `unk13`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `unk14`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `unk15`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `unk16`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `MaxLevel`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `unk18`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `unk19`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `MinLevel`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `SkillValue`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `unk21`;
ALTER TABLE `quest_v2_cli_task` DROP COLUMN `unk23`;
ALTER TABLE `quest_v2_cli_task` CHANGE COLUMN `WorldStateExpressionID` `WorldStateExpressionId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` CHANGE COLUMN `QuestInfoID` `QuestInfoId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `SandboxScalingId`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltRaces` BIGINT(20) NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `QuestTitle` TEXT COLLATE utf8_general_ci AFTER `FiltRaces`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `BulletText` TEXT COLLATE utf8_general_ci AFTER `QuestTitle`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `StartItem` INTEGER(11) NOT NULL DEFAULT 0 AFTER `BulletText`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `ConditionId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UniqueBitFlag`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltClasses` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ConditionId`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltCompletedQuest1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltClasses`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltCompletedQuest2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltCompletedQuest1`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltCompletedQuest3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltCompletedQuest2`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltMinSkillId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltCompletedQuest3`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltActiveQuest` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `WorldStateExpressionId`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltCompletedQuestLogic` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltActiveQuest`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltMaxFactionId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltCompletedQuestLogic`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltMaxFactionValue` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltMaxFactionId`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltMaxLevel` TINYINT(4) NOT NULL DEFAULT 0 AFTER `FiltMaxFactionValue`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltMinFactionId` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltMaxLevel`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltMinFactionValue` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltMinFactionId`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltMinLevel` TINYINT(4) NOT NULL DEFAULT 0 AFTER `FiltMinFactionValue`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltMinSkillValue` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltMinLevel`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `FiltNonActiveQuest` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FiltMinSkillValue`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `BreadCrumbId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `quest_v2_cli_task` MODIFY COLUMN `SandboxScalingId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `QuestInfoId`;

ALTER TABLE `quest_v2_cli_task_locale` ADD COLUMN `QuestTitle_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `quest_v2_cli_task_locale` ADD COLUMN `BulletText_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `quest_v2_cli_task_locale` DROP COLUMN `Name_lang`;
ALTER TABLE `quest_v2_cli_task_locale` DROP COLUMN `Name1_lang`;
ALTER TABLE `quest_v2_cli_task_locale` MODIFY COLUMN `QuestTitle_lang` TEXT COLLATE utf8_general_ci AFTER `locale`;
ALTER TABLE `quest_v2_cli_task_locale` MODIFY COLUMN `BulletText_lang` TEXT COLLATE utf8_general_ci AFTER `QuestTitle_lang`;

ALTER TABLE `research_branch` ADD COLUMN `TextureFileId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `research_branch` ADD COLUMN `BigTextureFileId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `research_branch` DROP COLUMN `Texture`;
ALTER TABLE `research_branch` MODIFY COLUMN `ItemID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `research_branch` MODIFY COLUMN `ItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Name`;
ALTER TABLE `research_branch` MODIFY COLUMN `CurrencyID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID`;
ALTER TABLE `research_branch` MODIFY COLUMN `ResearchFieldID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencyID`;
ALTER TABLE `research_branch` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `BigTextureFileId`;
ALTER TABLE `research_branch` MODIFY COLUMN `TextureFileId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ResearchFieldID`;
ALTER TABLE `research_branch` MODIFY COLUMN `BigTextureFileId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `TextureFileId`;

ALTER TABLE `research_branch_locale` DROP COLUMN `Texture_lang`;
ALTER TABLE `research_branch_locale` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Name_lang`;

ALTER TABLE `research_project` ADD COLUMN `ResearchBranchId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `research_project` ADD COLUMN `Rarity` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `research_project` ADD COLUMN `NumSockets` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `research_project` ADD COLUMN `TextureFileId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `research_project` ADD COLUMN `RequiredWeight` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `research_project` DROP COLUMN `IconName`;
ALTER TABLE `research_project` DROP COLUMN `BranchID`;
ALTER TABLE `research_project` DROP COLUMN `Rare`;
ALTER TABLE `research_project` DROP COLUMN `Complexity`;
ALTER TABLE `research_project` DROP COLUMN `RequiredCurrencyAmount`;
ALTER TABLE `research_project` CHANGE COLUMN `SpellID` `SpellId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `research_project` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `research_project` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `research_project` MODIFY COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `research_project` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `NumSockets`;
ALTER TABLE `research_project` MODIFY COLUMN `ResearchBranchId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellId`;
ALTER TABLE `research_project` MODIFY COLUMN `Rarity` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ResearchBranchId`;
ALTER TABLE `research_project` MODIFY COLUMN `NumSockets` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Rarity`;
ALTER TABLE `research_project` MODIFY COLUMN `TextureFileId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `research_project` MODIFY COLUMN `RequiredWeight` INTEGER(11) NOT NULL DEFAULT 0 AFTER `TextureFileId`;

ALTER TABLE `research_project_locale` DROP COLUMN `IconName_lang`;
ALTER TABLE `research_project_locale` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Description_lang`;

ALTER TABLE `research_site` ADD COLUMN `QuestPoiBlobId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `research_site` ADD COLUMN `AreaPOIIconEnum` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `research_site` DROP COLUMN `POIid`;
ALTER TABLE `research_site` DROP COLUMN `flags`;
ALTER TABLE `research_site` MODIFY COLUMN `areaName` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `research_site` MODIFY COLUMN `QuestPoiBlobId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `areaName`;
ALTER TABLE `research_site` MODIFY COLUMN `AreaPOIIconEnum` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;

ALTER TABLE `reward_pack_x_item` MODIFY COLUMN `ItemCount` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID`;

ALTER TABLE `scenario_step` ADD COLUMN `Name` TEXT COLLATE utf8_general_ci;
ALTER TABLE `scenario_step` ADD COLUMN `PreviousStepID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `scenario_step` ADD COLUMN `Step` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `scenario_step` ADD COLUMN `BonusRequiredStepID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `scenario_step` DROP COLUMN `TitleLang`;
ALTER TABLE `scenario_step` DROP COLUMN `Supersedes`;
ALTER TABLE `scenario_step` DROP COLUMN `OrderIndex`;
ALTER TABLE `scenario_step` DROP COLUMN `RelatedStep`;
ALTER TABLE `scenario_step` CHANGE COLUMN `Criteriatreeid` `CriteriaTreeID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `scenario_step` MODIFY COLUMN `ScenarioID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Name`;
ALTER TABLE `scenario_step` MODIFY COLUMN `RewardQuestID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PreviousStepID`;
ALTER TABLE `scenario_step` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Step`;
ALTER TABLE `scenario_step` MODIFY COLUMN `Criteriatreeid` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `scenario_step` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `DescriptionLang`;
ALTER TABLE `scenario_step` MODIFY COLUMN `PreviousStepID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ScenarioID`;
ALTER TABLE `scenario_step` MODIFY COLUMN `Step` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RewardQuestID`;
ALTER TABLE `scenario_step` MODIFY COLUMN `BonusRequiredStepID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CriteriaTreeID`;

ALTER TABLE `scenario_step_locale` ADD COLUMN `Name_lang` TEXT COLLATE utf8_general_ci;
ALTER TABLE `scenario_step_locale` DROP COLUMN `TitleLang_lang`;
ALTER TABLE `scenario_step_locale` MODIFY COLUMN `Name_lang` TEXT COLLATE utf8_general_ci AFTER `DescriptionLang_lang`;

ALTER TABLE `skill_line_ability` ADD COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `skill_line_ability` DROP COLUMN `unk4`;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `RaceMask` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `ClassMask` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `RaceMask` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `TrivialSkillLineRankHigh` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SkillLine`;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `TrivialSkillLineRankLow` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `TrivialSkillLineRankHigh`;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `UniqueBit` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `TrivialSkillLineRankLow`;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `TradeSkillCategoryID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UniqueBit`;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `NumSkillUps` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `TradeSkillCategoryID`;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `ClassMask` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `NumSkillUps`;
ALTER TABLE `skill_line_ability` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `AquireMethod`;

ALTER TABLE `skill_race_class_info` MODIFY COLUMN `RaceMask` BIGINT(20) NOT NULL DEFAULT 0;

ALTER TABLE `specialization_spells` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci FIRST;

ALTER TABLE `spell` DROP COLUMN `SpellMiscDifficultyID`;
ALTER TABLE `spell` DROP COLUMN `DescriptionVariablesID`;
ALTER TABLE `spell` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `AuraDescription`;

ALTER TABLE `spell_aura_options` MODIFY COLUMN `SpellProcsPerMinuteID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_aura_options` MODIFY COLUMN `ProcCharges` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_aura_options` MODIFY COLUMN `ProcTypeMask` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ProcCharges`;
ALTER TABLE `spell_aura_options` MODIFY COLUMN `ProcCategoryRecovery` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ProcTypeMask`;
ALTER TABLE `spell_aura_options` MODIFY COLUMN `CumulativeAura` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ProcCategoryRecovery`;
ALTER TABLE `spell_aura_options` MODIFY COLUMN `SpellProcsPerMinuteID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CumulativeAura`;
ALTER TABLE `spell_aura_options` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellProcsPerMinuteID`;
ALTER TABLE `spell_aura_options` MODIFY COLUMN `ProcChance` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;

ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `CasterAuraSpell` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `TargetAuraSpell` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CasterAuraSpell`;
ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `ExcludeCasterAuraSpell` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `TargetAuraSpell`;
ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `ExcludeTargetAuraSpell` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ExcludeCasterAuraSpell`;
ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ExcludeTargetAuraSpell`;
ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `CasterAuraState` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `TargetAuraState` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CasterAuraState`;
ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `ExcludeCasterAuraState` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `TargetAuraState`;
ALTER TABLE `spell_aura_restrictions` MODIFY COLUMN `ExcludeTargetAuraState` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ExcludeCasterAuraState`;

ALTER TABLE `spell_categories` MODIFY COLUMN `Category` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_categories` MODIFY COLUMN `StartRecoveryCategory` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Category`;
ALTER TABLE `spell_categories` MODIFY COLUMN `ChargeCategory` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `StartRecoveryCategory`;
ALTER TABLE `spell_categories` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ChargeCategory`;
ALTER TABLE `spell_categories` MODIFY COLUMN `DefenseType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `spell_categories` MODIFY COLUMN `DispelType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DefenseType`;
ALTER TABLE `spell_categories` MODIFY COLUMN `Mechanic` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DispelType`;
ALTER TABLE `spell_categories` MODIFY COLUMN `PreventionType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Mechanic`;

ALTER TABLE `spell_cooldowns` MODIFY COLUMN `CategoryRecoveryTime` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_cooldowns` MODIFY COLUMN `RecoveryTime` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `CategoryRecoveryTime`;
ALTER TABLE `spell_cooldowns` MODIFY COLUMN `StartRecoveryTime` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `RecoveryTime`;
ALTER TABLE `spell_cooldowns` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `StartRecoveryTime`;

ALTER TABLE `spell_duration` MODIFY COLUMN `DurationPerLevel` INTEGER(11) NOT NULL DEFAULT 0;

ALTER TABLE `spell_effect` ADD COLUMN `Coefficient` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_effect` ADD COLUMN `Variance` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_effect` ADD COLUMN `ResourceCoefficient` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_effect` ADD COLUMN `GroupSizeCoefficient` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_effect` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `spell_effect` MODIFY COLUMN `Effect` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectBasePoints` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Effect`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectIndex` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectBasePoints`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectAura` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectIndex`;
ALTER TABLE `spell_effect` MODIFY COLUMN `DifficultyID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectAura`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectAmplitude` FLOAT NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectAuraPeriod` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectAmplitude`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectBonusCoefficient` FLOAT NOT NULL DEFAULT 0 AFTER `EffectAuraPeriod`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectChainAmplitude` FLOAT NOT NULL DEFAULT 0 AFTER `EffectBonusCoefficient`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectChainTargets` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectChainAmplitude`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectDieSides` INTEGER(11) NOT NULL DEFAULT 0 AFTER `EffectChainTargets`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectItemType` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectDieSides`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectMechanic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectItemType`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectPointsPerResource` FLOAT NOT NULL DEFAULT 0 AFTER `EffectMechanic`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectRealPointsPerLevel` FLOAT NOT NULL DEFAULT 0 AFTER `EffectPointsPerResource`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectTriggerSpell` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectRealPointsPerLevel`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectPosFacing` FLOAT NOT NULL DEFAULT 0 AFTER `EffectTriggerSpell`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectAttributes` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectPosFacing`;
ALTER TABLE `spell_effect` MODIFY COLUMN `BonusCoefficientFromAP` FLOAT NOT NULL DEFAULT 0 AFTER `EffectAttributes`;
ALTER TABLE `spell_effect` MODIFY COLUMN `PvPMultiplier` FLOAT NOT NULL DEFAULT 0 AFTER `BonusCoefficientFromAP`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectSpellClassMask1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `GroupSizeCoefficient`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectSpellClassMask2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectSpellClassMask1`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectSpellClassMask3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectSpellClassMask2`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectSpellClassMask4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectSpellClassMask3`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectMiscValue` INTEGER(11) NOT NULL DEFAULT 0 AFTER `EffectSpellClassMask4`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectMiscValueB` INTEGER(11) NOT NULL DEFAULT 0 AFTER `EffectMiscValue`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectRadiusIndex` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectMiscValueB`;
ALTER TABLE `spell_effect` MODIFY COLUMN `EffectRadiusMaxIndex` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectRadiusIndex`;
ALTER TABLE `spell_effect` MODIFY COLUMN `ImplicitTarget1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `EffectRadiusMaxIndex`;
ALTER TABLE `spell_effect` MODIFY COLUMN `ImplicitTarget2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ImplicitTarget1`;
ALTER TABLE `spell_effect` MODIFY COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ImplicitTarget2`;
ALTER TABLE `spell_effect` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `SpellID`;
ALTER TABLE `spell_effect` MODIFY COLUMN `Coefficient` FLOAT NOT NULL DEFAULT 0 AFTER `PvPMultiplier`;
ALTER TABLE `spell_effect` MODIFY COLUMN `Variance` FLOAT NOT NULL DEFAULT 0 AFTER `Coefficient`;
ALTER TABLE `spell_effect` MODIFY COLUMN `ResourceCoefficient` FLOAT NOT NULL DEFAULT 0 AFTER `Variance`;
ALTER TABLE `spell_effect` MODIFY COLUMN `GroupSizeCoefficient` FLOAT NOT NULL DEFAULT 0 AFTER `ResourceCoefficient`;

ALTER TABLE `spell_interrupts` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_interrupts` MODIFY COLUMN `InterruptFlags` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `spell_interrupts` MODIFY COLUMN `AuraInterruptFlags1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `InterruptFlags`;
ALTER TABLE `spell_interrupts` MODIFY COLUMN `AuraInterruptFlags2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraInterruptFlags1`;
ALTER TABLE `spell_interrupts` MODIFY COLUMN `ChannelInterruptFlags1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `AuraInterruptFlags2`;
ALTER TABLE `spell_interrupts` MODIFY COLUMN `ChannelInterruptFlags2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ChannelInterruptFlags1`;

ALTER TABLE `spell_item_enchantment` ADD COLUMN `TransmogPlayerConditionId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_item_enchantment` DROP COLUMN `PlayerConditionID`;
ALTER TABLE `spell_item_enchantment` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `spell_item_enchantment` MODIFY COLUMN `TransmogPlayerConditionId` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ScalingClassRestricted`;

ALTER TABLE `spell_item_enchantment_condition` MODIFY COLUMN `LTOperand1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_item_enchantment_condition` MODIFY COLUMN `LTOperand2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LTOperand1`;
ALTER TABLE `spell_item_enchantment_condition` MODIFY COLUMN `LTOperand3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LTOperand2`;
ALTER TABLE `spell_item_enchantment_condition` MODIFY COLUMN `LTOperand4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LTOperand3`;
ALTER TABLE `spell_item_enchantment_condition` MODIFY COLUMN `LTOperand5` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `LTOperand4`;

ALTER TABLE `spell_levels` MODIFY COLUMN `BaseLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_levels` MODIFY COLUMN `MaxLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `BaseLevel`;
ALTER TABLE `spell_levels` MODIFY COLUMN `SpellLevel` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxLevel`;
ALTER TABLE `spell_levels` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellLevel`;
ALTER TABLE `spell_levels` MODIFY COLUMN `MaxUsableLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;

ALTER TABLE `spell_misc` ADD COLUMN `LaunchDelay` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_misc` ADD COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_misc` ADD COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_misc` DROP COLUMN `MultistrikeSpeedMod`;
ALTER TABLE `spell_misc` MODIFY COLUMN `CastingTimeIndex` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_misc` MODIFY COLUMN `DurationIndex` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CastingTimeIndex`;
ALTER TABLE `spell_misc` MODIFY COLUMN `RangeIndex` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `DurationIndex`;
ALTER TABLE `spell_misc` MODIFY COLUMN `SchoolMask` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `RangeIndex`;
ALTER TABLE `spell_misc` MODIFY COLUMN `IconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SchoolMask`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Speed` FLOAT NOT NULL DEFAULT 0 AFTER `IconFileDataID`;
ALTER TABLE `spell_misc` MODIFY COLUMN `ActiveIconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Speed`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes1` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes2` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes1`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes3` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes2`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes4` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes3`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes5` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes4`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes6` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes5`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes7` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes6`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes8` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes7`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes9` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes8`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes10` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes9`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes11` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes10`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes12` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes11`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes13` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes12`;
ALTER TABLE `spell_misc` MODIFY COLUMN `Attributes14` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes13`;
ALTER TABLE `spell_misc` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `SpellID`;
ALTER TABLE `spell_misc` MODIFY COLUMN `LaunchDelay` FLOAT NOT NULL DEFAULT 0 AFTER `ActiveIconFileDataID`;
ALTER TABLE `spell_misc` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LaunchDelay`;
ALTER TABLE `spell_misc` MODIFY COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Attributes14`;

ALTER TABLE `spell_power` MODIFY COLUMN `PowerType` TINYINT(4) NOT NULL DEFAULT 0;
ALTER TABLE `spell_power` MODIFY COLUMN `PowerCost` INTEGER(11) NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `spell_power` MODIFY COLUMN `PowerCostPercentage` FLOAT NOT NULL DEFAULT 0 AFTER `PowerCost`;
ALTER TABLE `spell_power` MODIFY COLUMN `PowerCostPercentagePerSecond` FLOAT NOT NULL DEFAULT 0 AFTER `PowerCostPercentage`;
ALTER TABLE `spell_power` MODIFY COLUMN `RequiredAura` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerCostPercentagePerSecond`;
ALTER TABLE `spell_power` MODIFY COLUMN `HealthCostPercentage` FLOAT NOT NULL DEFAULT 0 AFTER `RequiredAura`;
ALTER TABLE `spell_power` MODIFY COLUMN `PowerIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `HealthCostPercentage`;
ALTER TABLE `spell_power` MODIFY COLUMN `PowerType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerIndex`;
ALTER TABLE `spell_power` MODIFY COLUMN `PowerCostPerLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_power` MODIFY COLUMN `PowerCostPerSecond` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerCostPerLevel`;
ALTER TABLE `spell_power` MODIFY COLUMN `ManaCostAdditional` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerCostPerSecond`;
ALTER TABLE `spell_power` MODIFY COLUMN `PowerDisplayID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ManaCostAdditional`;
ALTER TABLE `spell_power` MODIFY COLUMN `UnitPowerBarID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerDisplayID`;

ALTER TABLE `spell_procs_per_minute_mod` MODIFY COLUMN `Type` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_procs_per_minute_mod` MODIFY COLUMN `Param` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_procs_per_minute_mod` MODIFY COLUMN `SpellProcsPerMinuteID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_procs_per_minute_mod` MODIFY COLUMN `Param` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Coeff`;

ALTER TABLE `spell_range` MODIFY COLUMN `DisplayName` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `spell_range` MODIFY COLUMN `DisplayNameShort` TEXT COLLATE utf8_general_ci AFTER `DisplayName`;

ALTER TABLE `spell_scaling` MODIFY COLUMN `MinScalingLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_scaling` MODIFY COLUMN `MaxScalingLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_scaling` MODIFY COLUMN `ScalingClass` INTEGER(11) NOT NULL DEFAULT 0 AFTER `ScalesFromItemLevel`;

ALTER TABLE `spell_shapeshift_form` ADD COLUMN `BonusActionBar` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_shapeshift_form` DROP COLUMN `ExitSoundEntriesID`;
ALTER TABLE `spell_shapeshift_form` MODIFY COLUMN `BonusActionBar` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CreatureType`;

ALTER TABLE `spell_target_restrictions` ADD COLUMN `ConeDegrees` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_target_restrictions` DROP COLUMN `ConeAngle`;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `Targets` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `Width` FLOAT NOT NULL DEFAULT 0 AFTER `ConeDegrees`;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `Targets` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Width`;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `TargetCreatureType` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Targets`;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `TargetCreatureType`;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `MaxAffectedTargets` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `MaxTargetLevel` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxAffectedTargets`;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `SpellID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MaxTargetLevel`;
ALTER TABLE `spell_target_restrictions` MODIFY COLUMN `ConeDegrees` FLOAT NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `spell_visual` ADD COLUMN `MissileCastOffset1` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileCastOffset2` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileCastOffset3` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileImpactOffset1` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileImpactOffset2` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileImpactOffset3` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `Flags` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `SpellVisualMissileSetId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileDestinationAttachment` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileAttachment` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileCastPositionerId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileImpactPositionerId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `MissileTargetingKit` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `AnimEventSoundId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `DamageNumberDelay` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `HostileSpellVisualId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `CasterSpellVisualId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` ADD COLUMN `LowViolenceSpellVisualId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `spell_visual` DROP COLUMN `m_precastKit`;
ALTER TABLE `spell_visual` DROP COLUMN `m_castKit`;
ALTER TABLE `spell_visual` DROP COLUMN `m_impactKit`;
ALTER TABLE `spell_visual` DROP COLUMN `m_stateKit`;
ALTER TABLE `spell_visual` DROP COLUMN `m_stateDoneKit`;
ALTER TABLE `spell_visual` DROP COLUMN `m_channelKit`;
ALTER TABLE `spell_visual` DROP COLUMN `m_hasMissile`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileDestinationAttachment`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileSound`;
ALTER TABLE `spell_visual` DROP COLUMN `m_animEventSoundID`;
ALTER TABLE `spell_visual` DROP COLUMN `m_casterImpactKit`;
ALTER TABLE `spell_visual` DROP COLUMN `m_targetImpactKit`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileAttachment`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileFollowGroundHeight`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileFollowGroundDropSpeed`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileCastOffsetX`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileCastOffsetY`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileCastOffsetZ`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileImpactOffsetX`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileImpactOffsetY`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileImpactOffsetZ`;
ALTER TABLE `spell_visual` DROP COLUMN `field27`;
ALTER TABLE `spell_visual` DROP COLUMN `field28`;
ALTER TABLE `spell_visual` DROP COLUMN `m_persistentAreaKit`;
ALTER TABLE `spell_visual` DROP COLUMN `field26`;
ALTER TABLE `spell_visual` DROP COLUMN `field29`;
ALTER TABLE `spell_visual` DROP COLUMN `m_flags`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missileModel`;
ALTER TABLE `spell_visual` DROP COLUMN `m_missilePathType`;
ALTER TABLE `spell_visual` DROP COLUMN `unk30`;
ALTER TABLE `spell_visual` DROP COLUMN `unk31`;
ALTER TABLE `spell_visual` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `spell_visual` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `LowViolenceSpellVisualId`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileCastOffset1` FLOAT NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileCastOffset2` FLOAT NOT NULL DEFAULT 0 AFTER `MissileCastOffset1`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileCastOffset3` FLOAT NOT NULL DEFAULT 0 AFTER `MissileCastOffset2`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileImpactOffset1` FLOAT NOT NULL DEFAULT 0 AFTER `MissileCastOffset3`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileImpactOffset2` FLOAT NOT NULL DEFAULT 0 AFTER `MissileImpactOffset1`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileImpactOffset3` FLOAT NOT NULL DEFAULT 0 AFTER `MissileImpactOffset2`;
ALTER TABLE `spell_visual` MODIFY COLUMN `Flags` INTEGER(11) NOT NULL DEFAULT 0 AFTER `MissileImpactOffset3`;
ALTER TABLE `spell_visual` MODIFY COLUMN `SpellVisualMissileSetId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileDestinationAttachment` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellVisualMissileSetId`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileAttachment` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MissileDestinationAttachment`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileCastPositionerId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `MissileAttachment`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileImpactPositionerId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `MissileCastPositionerId`;
ALTER TABLE `spell_visual` MODIFY COLUMN `MissileTargetingKit` INTEGER(11) NOT NULL DEFAULT 0 AFTER `MissileImpactPositionerId`;
ALTER TABLE `spell_visual` MODIFY COLUMN `AnimEventSoundId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `MissileTargetingKit`;
ALTER TABLE `spell_visual` MODIFY COLUMN `DamageNumberDelay` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AnimEventSoundId`;
ALTER TABLE `spell_visual` MODIFY COLUMN `HostileSpellVisualId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `DamageNumberDelay`;
ALTER TABLE `spell_visual` MODIFY COLUMN `CasterSpellVisualId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `HostileSpellVisualId`;
ALTER TABLE `spell_visual` MODIFY COLUMN `LowViolenceSpellVisualId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `CasterSpellVisualId`;

ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `SpellVisualID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `SpellVisualID`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `Chance` FLOAT NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `CasterPlayerConditionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Chance`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `CasterUnitConditionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CasterPlayerConditionID`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `PlayerConditionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CasterUnitConditionID`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `UnitConditionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PlayerConditionID`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `IconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UnitConditionID`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `ActiveIconFileDataID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `IconFileDataID`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ActiveIconFileDataID`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `DifficultyID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `spell_x_spell_visual` MODIFY COLUMN `Priority` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `DifficultyID`;

ALTER TABLE `tact_key` CHANGE COLUMN `Id` `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;

ALTER TABLE `talent` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci AFTER `ID`;

ALTER TABLE `taxi_nodes` ADD COLUMN `MapOffsetX` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `taxi_nodes` ADD COLUMN `MapOffsetY` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `taxi_nodes` ADD COLUMN `Facing` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `taxi_nodes` ADD COLUMN `FlightMapOffsetX` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `taxi_nodes` ADD COLUMN `FlightMapOffsetY` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `taxi_nodes` ADD COLUMN `ConditionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `taxi_nodes` ADD COLUMN `UiTextureKitPrefixID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `taxi_nodes` ADD COLUMN `SpecialAtlasIconPlayerConditionID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `taxi_nodes` DROP COLUMN `MapOffset1`;
ALTER TABLE `taxi_nodes` DROP COLUMN `MapOffset2`;
ALTER TABLE `taxi_nodes` DROP COLUMN `PlayerConditionID`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `MapID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `FlightMapOffsetY`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `LearnableIndex` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ConditionID`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `LearnableIndex`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `SpecialAtlasIconPlayerConditionID`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `MapOffsetX` FLOAT NOT NULL DEFAULT 0 AFTER `MountCreatureID2`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `MapOffsetY` FLOAT NOT NULL DEFAULT 0 AFTER `MapOffsetX`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `Facing` FLOAT NOT NULL DEFAULT 0 AFTER `MapOffsetY`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `FlightMapOffsetX` FLOAT NOT NULL DEFAULT 0 AFTER `Facing`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `FlightMapOffsetY` FLOAT NOT NULL DEFAULT 0 AFTER `FlightMapOffsetX`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `ConditionID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `UiTextureKitPrefixID` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `taxi_nodes` MODIFY COLUMN `SpecialAtlasIconPlayerConditionID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `UiTextureKitPrefixID`;

ALTER TABLE `taxi_path` MODIFY COLUMN `
From
   ` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `taxi_path` MODIFY COLUMN `To` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `
From
   `;
ALTER TABLE `taxi_path_node` MODIFY COLUMN `LocX` FLOAT NOT NULL DEFAULT 0 FIRST;
ALTER TABLE `taxi_path_node` MODIFY COLUMN `LocY` FLOAT NOT NULL DEFAULT 0 AFTER `LocX`;
ALTER TABLE `taxi_path_node` MODIFY COLUMN `LocZ` FLOAT NOT NULL DEFAULT 0 AFTER `LocY`;
ALTER TABLE `taxi_path_node` MODIFY COLUMN `PathID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `LocZ`;
ALTER TABLE `taxi_path_node` MODIFY COLUMN `MapID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PathID`;
ALTER TABLE `taxi_path_node` MODIFY COLUMN `NodeIndex` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `MapID`;
ALTER TABLE `taxi_path_node` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `toy` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `toy` MODIFY COLUMN `CategoryFilter` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `toy` MODIFY COLUMN `Description` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `toy` MODIFY COLUMN `ItemID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Description`;
ALTER TABLE `toy` MODIFY COLUMN `Flags` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ItemID`;
ALTER TABLE `toy` MODIFY COLUMN `CategoryFilter` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;

ALTER TABLE `transmog_set` ADD COLUMN `ParentTransmogSetId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `transmog_set` ADD COLUMN `TrackingQuestId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `transmog_set` DROP COLUMN `BaseSetID`;
ALTER TABLE `transmog_set` DROP COLUMN `QuestID`;
ALTER TABLE `transmog_set` MODIFY COLUMN `ParentTransmogSetId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `Name`;
ALTER TABLE `transmog_set` MODIFY COLUMN `TrackingQuestId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Flags`;

ALTER TABLE `transport_animation` MODIFY COLUMN `TimeIndex` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `transport_animation` MODIFY COLUMN `PosX` FLOAT NOT NULL DEFAULT 0 AFTER `TimeIndex`;
ALTER TABLE `transport_animation` MODIFY COLUMN `PosY` FLOAT NOT NULL DEFAULT 0 AFTER `PosX`;
ALTER TABLE `transport_animation` MODIFY COLUMN `PosZ` FLOAT NOT NULL DEFAULT 0 AFTER `PosY`;
ALTER TABLE `transport_animation` MODIFY COLUMN `SequenceID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `PosZ`;

ALTER TABLE `transport_rotation` MODIFY COLUMN `TimeIndex` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;
ALTER TABLE `transport_rotation` MODIFY COLUMN `X` FLOAT NOT NULL DEFAULT 0 AFTER `TimeIndex`;
ALTER TABLE `transport_rotation` MODIFY COLUMN `Y` FLOAT NOT NULL DEFAULT 0 AFTER `X`;
ALTER TABLE `transport_rotation` MODIFY COLUMN `Z` FLOAT NOT NULL DEFAULT 0 AFTER `Y`;
ALTER TABLE `transport_rotation` MODIFY COLUMN `W` FLOAT NOT NULL DEFAULT 0 AFTER `Z`;

ALTER TABLE `unit_power_bar` MODIFY COLUMN `Name` TEXT COLLATE utf8_general_ci AFTER `ID`;
ALTER TABLE `unit_power_bar` MODIFY COLUMN `Cost` TEXT COLLATE utf8_general_ci AFTER `Name`;
ALTER TABLE `unit_power_bar` MODIFY COLUMN `OutOfError` TEXT COLLATE utf8_general_ci AFTER `Cost`;
ALTER TABLE `unit_power_bar` MODIFY COLUMN `ToolTip` TEXT COLLATE utf8_general_ci AFTER `OutOfError`;

ALTER TABLE `vehicle` ADD COLUMN `MissileTargetingID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtTurnLingering`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtPitchLingering`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtMouseLingering`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtEndOpacity`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtArcSpeed`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtArcRepeat`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtArcWidth`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtImpactRadius1`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtImpactRadius2`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtArcTexture`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtImpactTexture`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtImpactModel1`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtImpactModel2`;
ALTER TABLE `vehicle` DROP COLUMN `MsslTrgtImpactTexRadius`;
ALTER TABLE `vehicle` MODIFY COLUMN `FlagsB` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `vehicle` MODIFY COLUMN `VehicleUIIndicatorID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `vehicle` ENGINE = MyISAM, ROW_FORMAT = FIXED;
ALTER TABLE `vehicle` MODIFY COLUMN `CameraYawOffset` FLOAT NOT NULL DEFAULT 0 AFTER `FacingLimitLeft`;
ALTER TABLE `vehicle` MODIFY COLUMN `SeatID1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `CameraYawOffset`;
ALTER TABLE `vehicle` MODIFY COLUMN `SeatID2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SeatID1`;
ALTER TABLE `vehicle` MODIFY COLUMN `SeatID3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SeatID2`;
ALTER TABLE `vehicle` MODIFY COLUMN `SeatID4` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SeatID3`;
ALTER TABLE `vehicle` MODIFY COLUMN `SeatID5` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SeatID4`;
ALTER TABLE `vehicle` MODIFY COLUMN `SeatID6` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SeatID5`;
ALTER TABLE `vehicle` MODIFY COLUMN `SeatID7` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SeatID6`;
ALTER TABLE `vehicle` MODIFY COLUMN `SeatID8` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `SeatID7`;
ALTER TABLE `vehicle` MODIFY COLUMN `VehicleUIIndicatorID` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SeatID8`;
ALTER TABLE `vehicle` MODIFY COLUMN `PowerDisplayID1` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `VehicleUIIndicatorID`;
ALTER TABLE `vehicle` MODIFY COLUMN `PowerDisplayID2` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerDisplayID1`;
ALTER TABLE `vehicle` MODIFY COLUMN `PowerDisplayID3` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerDisplayID2`;
ALTER TABLE `vehicle` MODIFY COLUMN `FlagsB` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `PowerDisplayID3`;
ALTER TABLE `vehicle` MODIFY COLUMN `UILocomotionType` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `FlagsB`;
ALTER TABLE `vehicle` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `MissileTargetingID`;
ALTER TABLE `vehicle` MODIFY COLUMN `MissileTargetingID` INTEGER(11) NOT NULL DEFAULT 0 AFTER `UILocomotionType`;

ALTER TABLE `vignette` ADD COLUMN `MaxHeight` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `vignette` ADD COLUMN `MinHeight` FLOAT NOT NULL DEFAULT 0;
ALTER TABLE `vignette` ADD COLUMN `QuestFeedbackEffectId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `vignette` ADD COLUMN `VisibleTrackingQuestId` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `vignette` DROP COLUMN `UnkFloat1`;
ALTER TABLE `vignette` DROP COLUMN `UnkFloat2`;
ALTER TABLE `vignette` DROP COLUMN `Unk1`;
ALTER TABLE `vignette` DROP COLUMN `QuestID`;
ALTER TABLE `vignette` MODIFY COLUMN `Flags` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `vignette` MODIFY COLUMN `PlayerConditionID` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `vignette` MODIFY COLUMN `Flags` TINYINT(4) NOT NULL DEFAULT 0 AFTER `QuestFeedbackEffectId`;
ALTER TABLE `vignette` MODIFY COLUMN `MaxHeight` FLOAT NOT NULL DEFAULT 0 AFTER `Name`;
ALTER TABLE `vignette` MODIFY COLUMN `MinHeight` FLOAT NOT NULL DEFAULT 0 AFTER `MaxHeight`;
ALTER TABLE `vignette` MODIFY COLUMN `QuestFeedbackEffectId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `MinHeight`;
ALTER TABLE `vignette` MODIFY COLUMN `VisibleTrackingQuestId` INTEGER(11) NOT NULL DEFAULT 0 AFTER `PlayerConditionID`;

ALTER TABLE `wmo_area_table` MODIFY COLUMN `AreaName` TEXT COLLATE utf8_general_ci FIRST;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `AmbienceID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `WMOGroupID`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `ZoneMusic` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AmbienceID`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `IntroSound` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `ZoneMusic`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `AreaTableID` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `IntroSound`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `UWIntroSound` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `AreaTableID`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `UWAmbience` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `UWIntroSound`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `NameSet` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `UWAmbience`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `SoundProviderPref` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `NameSet`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `SoundProviderPrefUnderwater` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SoundProviderPref`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `Flags` TINYINT(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `SoundProviderPrefUnderwater`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `Flags`;
ALTER TABLE `wmo_area_table` MODIFY COLUMN `UWZoneMusic` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ID`;

ALTER TABLE `world_map_area` MODIFY COLUMN `MapID` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `world_map_area` MODIFY COLUMN `Flags` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `world_map_area` MODIFY COLUMN `Flags` SMALLINT(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `LocBottom`;

ALTER TABLE `world_map_overlay` MODIFY COLUMN `TextureName` TEXT COLLATE utf8_general_ci FIRST;

ALTER TABLE `world_map_transforms` ADD COLUMN `Priority` INTEGER(11) NOT NULL DEFAULT 0;
ALTER TABLE `world_map_transforms` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Priority`;
ALTER TABLE `world_map_transforms` MODIFY COLUMN `Priority` INTEGER(11) NOT NULL DEFAULT 0 AFTER `Flags`;

ALTER TABLE `world_safe_locs` MODIFY COLUMN `AreaName` TEXT COLLATE utf8_general_ci AFTER `ID`;

ALTER TABLE `world_state_expression` ADD COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0;
ALTER TABLE `world_state_expression` MODIFY COLUMN `ID` INTEGER(10) UNSIGNED NOT NULL DEFAULT 0;
ALTER TABLE `world_state_expression` MODIFY COLUMN `VerifiedBuild` SMALLINT(6) NOT NULL DEFAULT 0 AFTER `Expression`;
