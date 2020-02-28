DROP TABLE IF EXISTS `char_shipment_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `unk11` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk12` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxShipments` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enotherID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fractionType` tinyint(4) NOT NULL DEFAULT '0',
  `unk16` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_ability` (
  `Name` text,
  `Description` text,
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OtherFactionGarrAbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrAbilityCategoryID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FollowerTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_ability_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_ability_effect` (
  `Amount` float NOT NULL DEFAULT '0',
  `Amount2` float NOT NULL DEFAULT '0',
  `Amount3` float NOT NULL DEFAULT '0',
  `unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrAbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrMechanicTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk8` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_building` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `HordeGameObjectID` int(10) unsigned NOT NULL DEFAULT '0',
  `AllianceGameObjectID` int(10) unsigned NOT NULL DEFAULT '0',
  `NameAlliance` text,
  `NameHorde` text,
  `Description` text,
  `Tooltip` text,
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `CostCurrencyID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HordeTexPrefixKitID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllianceTexPrefixKitID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllianceActivationScenePackageID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HordeActivationScenePackageID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FollowerRequiredGarrAbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FollowerGarrAbilityEffectID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CostMoney` smallint(6) NOT NULL DEFAULT '0',
  `unk16` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxShipments` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk21` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BuildDuration` int(10) unsigned NOT NULL DEFAULT '0',
  `CostCurrencyAmount` int(11) NOT NULL DEFAULT '0',
  `BonusAmount` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_building_plot_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_building_plot_inst` (
  `LandmarkOffsetX` float NOT NULL DEFAULT '0',
  `LandmarkOffsetY` float NOT NULL DEFAULT '0',
  `UiTextureAtlasMemberID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrSiteLevelPlotInstID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrBuildingID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_class_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_class_spec` (
  `NameMale` text,
  `NameFemale` text,
  `NameGenderless` text,
  `ClassAtlasID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrFollItemSetID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_follower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `unk25` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk26` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk27` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk28` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk29` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_follower_level_x_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_follower_level_x_p` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NextLevelXP` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_follower_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_follower_quality` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NextQualityXP` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk7` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_follower_x_ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_follower_x_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrFollowerID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrAbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FactionIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_encounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_encounter` (
  `CreatureEntry` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Mod` float NOT NULL DEFAULT '0',
  `Mod1` float NOT NULL DEFAULT '0',
  `SomeFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_encounter_x_mechanic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_encounter_x_mechanic` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrEncounterID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrMechanicID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_mechanic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_mechanic` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Mod` float NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_mechanic_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_mechanic_type` (
  `Name` text,
  `Description` text,
  `SomeFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `Category` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_mission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  `unk15` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk16` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReqLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrMechanicTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ReqFollowersCount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk20` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrMissionTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk22` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseChance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk24` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk25` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk27` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqResourcesCount` int(10) unsigned NOT NULL DEFAULT '0',
  `unk29` int(10) unsigned NOT NULL DEFAULT '0',
  `unk30` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_mission_x_encounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_mission_x_encounter` (
  `unk0` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrMissionID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrEncounterID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk4` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_plot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_plot` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `AllianceConstructionGameObjectID` int(10) unsigned NOT NULL DEFAULT '0',
  `HordeConstructionGameObjectID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrPlotUICategoryID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PlotType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinCount` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxCount` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_plot_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_plot_building` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrPlotID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrBuildingID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_plot_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_plot_instance` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `GarrPlotID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_site_level_plot_inst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_site_level_plot_inst` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LandmarkX` float NOT NULL DEFAULT '0',
  `LandmarkY` float NOT NULL DEFAULT '0',
  `GarrSiteLevelID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrPlotInstanceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unknown` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `garr_site_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `garr_site_level` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TownHallX` float NOT NULL DEFAULT '0',
  `TownHallY` float NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UITextureKitID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UpgradeResourceCost` smallint(6) NOT NULL DEFAULT '0',
  `UpgradeMoneyCost` smallint(6) NOT NULL DEFAULT '0',
  `Level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SiteID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MovieID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Level2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `player_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_condition` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RaceMask` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `PrevQuestLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrQuestLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `Time1` int(10) unsigned NOT NULL DEFAULT '0',
  `Time2` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellID1` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellID2` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellID3` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellID4` int(10) unsigned NOT NULL DEFAULT '0',
  `AchievementLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `FailureDescription` text,
  `MinLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SkillID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SkillID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SkillID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SkillID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinSkill1` smallint(6) NOT NULL DEFAULT '0',
  `MinSkill2` smallint(6) NOT NULL DEFAULT '0',
  `MinSkill3` smallint(6) NOT NULL DEFAULT '0',
  `MinSkill4` smallint(6) NOT NULL DEFAULT '0',
  `MaxSkill1` smallint(6) NOT NULL DEFAULT '0',
  `MaxSkill2` smallint(6) NOT NULL DEFAULT '0',
  `MaxSkill3` smallint(6) NOT NULL DEFAULT '0',
  `MaxSkill4` smallint(6) NOT NULL DEFAULT '0',
  `unk34` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrQuestID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrQuestID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrQuestID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrQuestID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Explored1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Explored2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `WorldStateExpressionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Achievement1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Achievement2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Achievement3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Achievement4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `QuestKillID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PhaseID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinAvgEquippedItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxAvgEquippedItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk62` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Gender` tinyint(4) NOT NULL DEFAULT '0',
  `NativeGender` tinyint(4) NOT NULL DEFAULT '0',
  `unk66` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk67` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinReputation1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinReputation2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinReputation3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unknown1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk73` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk74` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk75` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk77` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk78` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk79` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk80` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk81` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk82` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk83` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk84` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk85` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk86` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk87` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk88` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk89` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk90` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk91` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk92` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk93` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk94` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk95` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinExpansionLevel` tinyint(4) NOT NULL DEFAULT '0',
  `MaxExpansionLevel` tinyint(4) NOT NULL DEFAULT '0',
  `unk98` tinyint(4) NOT NULL DEFAULT '0',
  `unk99` tinyint(4) NOT NULL DEFAULT '0',
  `unk100` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk101` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk102` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ChrSpecializationIndex` tinyint(4) NOT NULL DEFAULT '0',
  `ChrSpecializationRole` tinyint(4) NOT NULL DEFAULT '0',
  `PowerType` tinyint(4) NOT NULL DEFAULT '0',
  `PowerTypeComp` tinyint(4) NOT NULL DEFAULT '0',
  `PowerTypeValue` tinyint(4) NOT NULL DEFAULT '0',
  `ClassMask` int(10) unsigned NOT NULL DEFAULT '0',
  `unk109` int(10) unsigned NOT NULL DEFAULT '0',
  `MinFactionID1` int(10) unsigned NOT NULL DEFAULT '0',
  `MinFactionID2` int(10) unsigned NOT NULL DEFAULT '0',
  `MinFactionID3` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID1` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID2` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID3` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID4` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID1` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID2` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID3` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID4` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `unk125` int(10) unsigned NOT NULL DEFAULT '0',
  `unk126` int(10) unsigned NOT NULL DEFAULT '0',
  `unk127` int(10) unsigned NOT NULL DEFAULT '0',
  `unk128` int(10) unsigned NOT NULL DEFAULT '0',
  `unk129` int(10) unsigned NOT NULL DEFAULT '0',
  `unk130` int(10) unsigned NOT NULL DEFAULT '0',
  `unk131` int(10) unsigned NOT NULL DEFAULT '0',
  `unk132` int(10) unsigned NOT NULL DEFAULT '0',
  `unk133` int(10) unsigned NOT NULL DEFAULT '0',
  `unk134` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster1` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster2` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster3` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster4` int(10) unsigned NOT NULL DEFAULT '0',
  `unk139` int(10) unsigned NOT NULL DEFAULT '0',
  `unk140` int(10) unsigned NOT NULL DEFAULT '0',
  `unk141` int(10) unsigned NOT NULL DEFAULT '0',
  `MinAvgItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxAvgItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `unk144` int(10) unsigned NOT NULL DEFAULT '0',
  `unk145` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

