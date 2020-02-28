DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement` (
  `Name` text,
  `Description` text,
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Reward` text,
  `MapID` smallint(6) NOT NULL DEFAULT '0',
  `ParentAchievement` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CategoryID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OrderInCategory` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RefAchievement` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CriteriaTree` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FactionFlag` tinyint(4) NOT NULL DEFAULT '0',
  `RewardPoints` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Amount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `artifact_appearance`;
CREATE TABLE `artifact_appearance` (
  `Name` text,
  `SwatchColor` int(10) unsigned NOT NULL DEFAULT '0',
  `ModelDesaturation` float NOT NULL DEFAULT '0',
  `ModelAlpha` float NOT NULL DEFAULT '0',
  `ShapeshiftDisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `ArtifactAppearanceSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unknown` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AppearanceModID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ModifiesShapeshiftFormDisplay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemAppearanceID` int(10) unsigned NOT NULL DEFAULT '0',
  `AltItemAppearanceID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `artifact_power`;
CREATE TABLE `artifact_power` (
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `ArtifactID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ArtifactTier` int(10) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RelicType` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `artifact_unlock`;
CREATE TABLE `artifact_unlock` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ArtifactAppearanceID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ArtifactID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk5` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battlemaster_list`;
CREATE TABLE `battlemaster_list` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NameLang` text,
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `GametypeLang` text,
  `ShortDescription` text,
  `LongDescription` text,
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
  `ShortDescription_lang` text,
  `LongDescription_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `faction`;
CREATE TABLE `faction` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationRaceMask1` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationRaceMask2` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationRaceMask3` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationRaceMask4` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationBase1` int(11) NOT NULL DEFAULT '0',
  `ReputationBase2` int(11) NOT NULL DEFAULT '0',
  `ReputationBase3` int(11) NOT NULL DEFAULT '0',
  `ReputationBase4` int(11) NOT NULL DEFAULT '0',
  `ParentFactionModIn` float NOT NULL DEFAULT '0',
  `ParentFactionModOut` float NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `ReputationMax1` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationMax2` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationMax3` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationMax4` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationIndex` smallint(6) NOT NULL DEFAULT '0',
  `ReputationClassMask1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationClassMask2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationClassMask3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationClassMask4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationFlags1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationFlags2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationFlags3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationFlags4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParentFactionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParagonFactionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParentFactionCapIn` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ParentFactionCapOut` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Expansion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FriendshipRepID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `faction_locale`;
CREATE TABLE `faction_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `lfg_dungeons`;
CREATE TABLE `lfg_dungeons` (
  `Name` text,
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureFilename` text,
  `Description` text,
  `MinItemLevel` float NOT NULL DEFAULT '0',
  `MaxLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TargetLevelMax` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MapID` smallint(6) NOT NULL DEFAULT '0',
  `RandomID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ScenarioID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LastBossJournalEncounterID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BonusReputationAmount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MentorItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TargetLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TargetLevelMin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Faction` tinyint(4) NOT NULL DEFAULT '0',
  `Expansion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GroupID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CountTank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CountHealer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CountDamage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinCountTank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinCountHealer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinCountDamage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SubType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MentorCharLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `lfg_dungeons_locale`;
CREATE TABLE `lfg_dungeons_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `creature_family`;
CREATE TABLE `creature_family` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MinScale` float NOT NULL DEFAULT '0',
  `MaxScale` float NOT NULL DEFAULT '0',
  `Name` text,
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillLine1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SkillLine2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PetFoodMask` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxScaleLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinScaleLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PetTalentType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `creature_family_locale`;
CREATE TABLE `creature_family_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE `difficulty` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `GroupSizeHealthCurveID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GroupSizeDmgCurveID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GroupSizeSpellPointsCurveID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FallbackDifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InstanceType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `OldEnumValue` tinyint(4) NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ToggleDifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `dungeon_encounter`;
CREATE TABLE `dungeon_encounter` (
  `Name` text,
  `CreatureDisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EncounterID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `OrderID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellIconID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `dungeon_encounter_locale`;
CREATE TABLE `dungeon_encounter_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `map`;
CREATE TABLE `map` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Directory` text,
  `Flags1` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `MinimapIconScale` float NOT NULL DEFAULT '0',
  `CorpsePosX` float NOT NULL DEFAULT '0',
  `CorpsePosY` float NOT NULL DEFAULT '0',
  `MapName` text,
  `MapDescription0` text,
  `MapDescription1` text,
  `ShortDescription` text,
  `LongDescription` text,
  `AreaTableID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LoadingScreenID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CorpseMapID` smallint(6) NOT NULL DEFAULT '0',
  `TimeOfDayOverride` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParentMapID` smallint(6) NOT NULL DEFAULT '0',
  `CosmeticParentMapID` smallint(6) NOT NULL DEFAULT '0',
  `WindSettingsID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `InstanceType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MapType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ExpansionID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TimeOffset` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `map_locale`;
CREATE TABLE `map_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Directory_lang` text,
  `MapName_lang` text,
  `MapDescription0_lang` text,
  `MapDescription1_lang` text,
  `ShortDescription_lang` text,
  `LongDescription_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `criteria_tree`;
CREATE TABLE `criteria_tree` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Amount` int(10) unsigned NOT NULL DEFAULT '0',
  `Description` text,
  `Parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(6) NOT NULL DEFAULT '0',
  `Operator` tinyint(4) NOT NULL DEFAULT '0',
  `CriteriaID` int(10) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `chr_races`;
CREATE TABLE `chr_races` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `ClientPrefix` text,
  `ClientFileString` text,
  `Name` text,
  `NameFemale` text,
  `NameMale` text,
  `FacialHairCustomization1` text,
  `FacialHairCustomization2` text,
  `HairCustomization` text,
  `CreateScreenFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `SelectScreenFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `MaleCustomizeOffset1` float NOT NULL DEFAULT '0',
  `MaleCustomizeOffset2` float NOT NULL DEFAULT '0',
  `MaleCustomizeOffset3` float NOT NULL DEFAULT '0',
  `FemaleCustomizeOffset1` float NOT NULL DEFAULT '0',
  `FemaleCustomizeOffset2` float NOT NULL DEFAULT '0',
  `FemaleCustomizeOffset3` float NOT NULL DEFAULT '0',
  `LowResScreenFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `FactionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaleDisplayID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FemaleDisplayID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ResSicknessSpellID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SplashSoundID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CinematicSequenceID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BaseLanguage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CreatureType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TeamID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RaceRelated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnalteredVisualRaceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CharComponentTextureLayoutID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DefaultClassID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `NeutralRaceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemAppearanceFrameRaceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CharComponentTexLayoutHiResID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HighResMaleDisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `HighResFemaleDisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk1` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk2` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `chr_races_locale`;
CREATE TABLE `chr_races_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `ClientPrefix_lang` text,
  `ClientFileString_lang` text,
  `Name_lang` text,
  `NameFemale_lang` text,
  `NameMale_lang` text,
  `FacialHairCustomization1_lang` text,
  `FacialHairCustomization2_lang` text,
  `HairCustomization_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `creature_display_info`;
CREATE TABLE `creature_display_info` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureModelScale` float NOT NULL DEFAULT '0',
  `ModelID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `NPCSoundID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SizeClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Gender` tinyint(4) NOT NULL DEFAULT '0',
  `ExtendedDisplayInfoID` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureVariation1` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureVariation2` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureVariation3` int(10) unsigned NOT NULL DEFAULT '0',
  `PortraitTextureFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureModelAlpha` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SoundID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayerModelScale` float NOT NULL DEFAULT '0',
  `PortraitCreatureDisplayInfoID` int(10) unsigned NOT NULL DEFAULT '0',
  `BloodID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ParticleColorID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CreatureGeosetData` int(10) unsigned NOT NULL DEFAULT '0',
  `ObjectEffectPackageID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AnimReplacementSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnarmedWeaponSubclass` tinyint(4) NOT NULL DEFAULT '0',
  `StateSpellVisualKitID` int(10) unsigned NOT NULL DEFAULT '0',
  `InstanceOtherPlayerPetScale` float NOT NULL DEFAULT '0',
  `MountSpellVisualKitID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Date1` int(10) unsigned NOT NULL DEFAULT '0',
  `Date2` int(10) unsigned NOT NULL DEFAULT '0',
  `Date3` int(10) unsigned NOT NULL DEFAULT '0',
  `Date4` int(10) unsigned NOT NULL DEFAULT '0',
  `Date5` int(10) unsigned NOT NULL DEFAULT '0',
  `Date6` int(10) unsigned NOT NULL DEFAULT '0',
  `Date7` int(10) unsigned NOT NULL DEFAULT '0',
  `Date8` int(10) unsigned NOT NULL DEFAULT '0',
  `Date9` int(10) unsigned NOT NULL DEFAULT '0',
  `Date10` int(10) unsigned NOT NULL DEFAULT '0',
  `Date11` int(10) unsigned NOT NULL DEFAULT '0',
  `Date12` int(10) unsigned NOT NULL DEFAULT '0',
  `Date13` int(10) unsigned NOT NULL DEFAULT '0',
  `Date14` int(10) unsigned NOT NULL DEFAULT '0',
  `Date15` int(10) unsigned NOT NULL DEFAULT '0',
  `Date16` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureFilename` text,
  `Duration1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration9` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Duration10` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Region` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Looping` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags7` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags8` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFlags10` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFilterType` tinyint(4) NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HolidayNameID` int(10) unsigned NOT NULL DEFAULT '0',
  `HolidayDescriptionID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mount_x_display`;
CREATE TABLE `mount_x_display` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MountID` int(10) unsigned NOT NULL DEFAULT '0',
  `DisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_bonus_tree_node`;
CREATE TABLE `item_bonus_tree_node` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BonusTreeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SubTreeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BonusListID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemLevelSelectorID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BonusTreeModID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `itemsparse`;
CREATE TABLE `itemsparse` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags1` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags3` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkFloat1` float NOT NULL DEFAULT '0',
  `UnkFloat2` float NOT NULL DEFAULT '0',
  `BuyCount` int(10) unsigned NOT NULL DEFAULT '0',
  `BuyPrice` int(10) unsigned NOT NULL DEFAULT '0',
  `SellPrice` int(10) unsigned NOT NULL DEFAULT '0',
  `AllowableRace` int(11) NOT NULL DEFAULT '0',
  `RequiredSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxCount` int(11) NOT NULL DEFAULT '0',
  `Stackable` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation1` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation2` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation3` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation4` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation5` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation6` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation7` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation8` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation9` int(11) NOT NULL DEFAULT '0',
  `ItemStatAllocation10` int(11) NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier1` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier2` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier3` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier4` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier5` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier6` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier7` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier8` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier9` float NOT NULL DEFAULT '0',
  `ItemStatSocketCostMultiplier10` float NOT NULL DEFAULT '0',
  `RangedModRange` float NOT NULL DEFAULT '0',
  `Name1` text,
  `Name2` text,
  `Name3` text,
  `Name4` text,
  `Description` text,
  `BagFamily` int(10) unsigned NOT NULL DEFAULT '0',
  `ArmorDamageModifier` float NOT NULL DEFAULT '0',
  `Duration` int(10) unsigned NOT NULL DEFAULT '0',
  `StatScalingFactor` float NOT NULL DEFAULT '0',
  `AllowableClass` smallint(6) NOT NULL DEFAULT '0',
  `ItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillRank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredReputationFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemStatValue1` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue2` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue3` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue4` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue5` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue6` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue7` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue8` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue9` smallint(6) NOT NULL DEFAULT '0',
  `ItemStatValue10` smallint(6) NOT NULL DEFAULT '0',
  `ScalingStatDistribution` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Delay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PageText` smallint(5) unsigned NOT NULL DEFAULT '0',
  `StartQuest` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LockID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RandomProperty` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RandomSuffix` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemSet` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TotemCategory` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SocketBonus` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GemProperties` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemLimitCategory` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HolidayID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredTransmogHolidayID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemNameDescriptionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InventoryType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredLevel` tinyint(4) NOT NULL DEFAULT '0',
  `RequiredHonorRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredCityRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredReputationRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ContainerSlots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemStatType1` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType2` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType3` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType4` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType5` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType6` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType7` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType8` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType9` tinyint(4) NOT NULL DEFAULT '0',
  `ItemStatType10` tinyint(4) NOT NULL DEFAULT '0',
  `DamageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Bonding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LanguageID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PageMaterial` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Material` tinyint(4) NOT NULL DEFAULT '0',
  `Sheath` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SocketColor1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SocketColor2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SocketColor3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CurrencySubstitutionID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CurrencySubstitutionCount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ArtifactID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredExpansion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `itemsparse_locale`;
CREATE TABLE `itemsparse_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name1_lang` text,
  `Name2_lang` text,
  `Name3_lang` text,
  `Name4_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_state`;
CREATE TABLE `battle_pet_state` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `StateName` text,
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParentState` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_state_locale`;
CREATE TABLE `battle_pet_state_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `StateName_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_species`;
CREATE TABLE `battle_pet_species` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `iconId` int(10) unsigned NOT NULL DEFAULT '0',
  `spellId` int(10) unsigned NOT NULL DEFAULT '0',
  `source` text,
  `description` text,
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `obtainmentCategoryDescription` tinyint(4) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `CardModelSceneID` int(10) unsigned NOT NULL DEFAULT '0',
  `LoadoutModelSceneID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_species_locale`;
CREATE TABLE `battle_pet_species_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `source_lang` text,
  `description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;DROP TABLE IF EXISTS `char_shipment`;

CREATE TABLE `char_shipment` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CriteriaID` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeForShipment` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellCreation` int(10) unsigned NOT NULL DEFAULT '0',
  `ShipmentResultItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellCastAtGetting` int(10) unsigned NOT NULL DEFAULT '0',
  `ChampionPackID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk720` smallint(5) unsigned NOT NULL DEFAULT '0',
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
  `Unk720` int(10) unsigned NOT NULL DEFAULT '0',
  `unt3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_Unk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_A` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_H` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ActiveVisualID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BuildingType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `garType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxShipments` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enotherID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fractionType` tinyint(4) NOT NULL DEFAULT '0',
  `unk16` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `char_shipment_container_locale`;
CREATE TABLE `char_shipment_container_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;DROP TABLE IF EXISTS `garr_class_spec`;

CREATE TABLE `garr_class_spec` (
  `NameMale` text,
  `NameFemale` text,
  `NameGenderless` text,
  `ClassAtlasID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrFollItemSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Limit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;DROP TABLE IF EXISTS `garr_follower`;

CREATE TABLE `garr_follower` (
  `HordeCreatureID` int(10) unsigned NOT NULL DEFAULT '0',
  `AllianceCreatureID` int(10) unsigned NOT NULL DEFAULT '0',
  `HordeSourceText` text,
  `AllianceSourceText` text,
  `HordePortraitIconID` int(10) unsigned NOT NULL DEFAULT '0',
  `AlliancePortraitIconID` int(10) unsigned NOT NULL DEFAULT '0',
  `HordeAddedBroadcastTextID` int(10) unsigned NOT NULL DEFAULT '0',
  `AllianceAddedBroadcastTextID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `HordeGarrFollItemSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllianceGarrFollItemSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemLevelWeapon` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemLevelArmor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `HordeListPortraitTextureKitID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AllianceListPortraitTextureKitID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FollowerTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
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
  `GarrTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxDurability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HordeFlavorTextGarrStringID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllianceFlavorTextGarrStringID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_follower_locale`;
CREATE TABLE `garr_follower_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `HordeSourceText_lang` text,
  `AllianceSourceText_lang` text,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;DROP TABLE IF EXISTS `garr_site_level`;

CREATE TABLE `garr_site_level` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TownHallX` float NOT NULL DEFAULT '0',
  `TownHallY` float NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UITextureKitID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MovieID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UpgradeResourceCost` smallint(6) NOT NULL DEFAULT '0',
  `UpgradeMoneyCost` smallint(6) NOT NULL DEFAULT '0',
  `Level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SiteID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Level2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;DROP TABLE IF EXISTS `quest_package_item`;

CREATE TABLE `quest_package_item` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestPackageID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FilterType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemCount` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;DROP TABLE IF EXISTS `mount`;

CREATE TABLE `mount` (
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `SourceDescription` text,
  `CameraPivotMultiplier` float NOT NULL DEFAULT '0',
  `MountTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Source` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionId` int(10) unsigned NOT NULL DEFAULT '0',
  `UiModelSceneID` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;DROP TABLE IF EXISTS `spell_x_spell_visual`;

CREATE TABLE `spell_x_spell_visual` (
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellVisualID` int(10) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Chance` float NOT NULL DEFAULT '0',
  `CasterPlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CasterUnitConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnitConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `ActiveIconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;DROP TABLE IF EXISTS `spell_effect`;

CREATE TABLE `spell_effect` (
  `EffectSpellClassMask1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMask2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMask3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMask4` int(10) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Effect` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectAura` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectBasePoints` int(11) NOT NULL DEFAULT '0',
  `EffectIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectMiscValue` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValueB` int(11) NOT NULL DEFAULT '0',
  `EffectRadiusIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectRadiusMaxIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `ImplicitTarget1` int(10) unsigned NOT NULL DEFAULT '0',
  `ImplicitTarget2` int(10) unsigned NOT NULL DEFAULT '0',
  `DifficultyID` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectAmplitude` float NOT NULL DEFAULT '0',
  `EffectAuraPeriod` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectBonusCoefficient` float NOT NULL DEFAULT '0',
  `EffectChainAmplitude` float NOT NULL DEFAULT '0',
  `EffectChainTargets` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectDieSides` int(11) NOT NULL DEFAULT '0',
  `EffectItemType` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectMechanic` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectPointsPerResource` float NOT NULL DEFAULT '0',
  `EffectRealPointsPerLevel` float NOT NULL DEFAULT '0',
  `EffectTriggerSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectPosFacing` float NOT NULL DEFAULT '0',
  `EffectAttributes` int(10) unsigned NOT NULL DEFAULT '0',
  `BonusCoefficientFromAP` float NOT NULL DEFAULT '0',
  `PvPMultiplier` float NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `spell_shapeshift_form`;
CREATE TABLE `spell_shapeshift_form` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `UnkLegion` float NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `CombatRoundTime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MountTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CreatureType` tinyint(4) NOT NULL DEFAULT '0',
  `ExitSoundEntriesID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AttackIconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID1` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID2` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID3` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID4` int(10) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID1` int(10) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID2` int(10) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID3` int(10) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID4` int(10) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID5` int(10) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID6` int(10) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID7` int(10) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID8` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `skill_line`;
CREATE TABLE `skill_line` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DisplayName` text,
  `Description` text,
  `AlternateVerb` text,
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CategoryID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CanLink` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `ParentSkillLineID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `skill_line_ability`;
CREATE TABLE `skill_line_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `RaceMask` int(10) unsigned NOT NULL DEFAULT '0',
  `SupercedesSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillLine` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinSkillLineRank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TrivialSkillLineRankHigh` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TrivialSkillLineRankLow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UniqueBit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TradeSkillCategoryID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AquireMethod` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `NumSkillUps` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ClassMask` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `chr_specialization`;
CREATE TABLE `chr_specialization` (
  `MasterySpellID1` int(10) unsigned NOT NULL DEFAULT '0',
  `MasterySpellID2` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Name2` text,
  `Description` text,
  `ClassID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PetTalentType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Role` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PrimaryStatOrder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `AnimReplacementSetID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `player_condition`;
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
  `MaxFactionID` smallint(5) unsigned NOT NULL DEFAULT '0',
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
  `ModifierTreeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Gender` tinyint(4) NOT NULL DEFAULT '0',
  `NativeGender` tinyint(4) NOT NULL DEFAULT '0',
  `MinLanguage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxLanguage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinReputation1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinReputation2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinReputation3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxReputation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unknown1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinPVPRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxPVPRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PvpMedal` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AuraCount1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AuraCount2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AuraCount3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AuraCount4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `WeatherID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PartyStatus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LifetimeMaxPVPRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LfgStatus1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LfgStatus2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LfgStatus3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LfgStatus4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LfgCompare1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LfgCompare2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LfgCompare3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LfgCompare4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinExpansionLevel` tinyint(4) NOT NULL DEFAULT '0',
  `MaxExpansionLevel` tinyint(4) NOT NULL DEFAULT '0',
  `MinExpansionTier` tinyint(4) NOT NULL DEFAULT '0',
  `MaxExpansionTier` tinyint(4) NOT NULL DEFAULT '0',
  `MinGuildLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxGuildLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PhaseUseFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ChrSpecializationIndex` tinyint(4) NOT NULL DEFAULT '0',
  `ChrSpecializationRole` tinyint(4) NOT NULL DEFAULT '0',
  `PowerType` tinyint(4) NOT NULL DEFAULT '0',
  `PowerTypeComp` tinyint(4) NOT NULL DEFAULT '0',
  `PowerTypeValue` tinyint(4) NOT NULL DEFAULT '0',
  `ClassMask` int(10) unsigned NOT NULL DEFAULT '0',
  `LanguageID` int(10) unsigned NOT NULL DEFAULT '0',
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
  `LfgLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgValue1` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgValue2` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgValue3` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgValue4` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID1` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID2` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID3` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID4` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster1` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster2` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster3` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster4` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster5` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster6` int(10) unsigned NOT NULL DEFAULT '0',
  `PhaseGroupID` int(10) unsigned NOT NULL DEFAULT '0',
  `MinAvgItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxAvgItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MovementFlags1` int(10) unsigned NOT NULL DEFAULT '0',
  `MovementFlags2` int(10) unsigned NOT NULL DEFAULT '0',
  `MainHandItemSubclassMask` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `artifact`;
CREATE TABLE `artifact` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `BarConnectedColor` int(10) unsigned NOT NULL DEFAULT '0',
  `BarDisconnectedColor` int(10) unsigned NOT NULL DEFAULT '0',
  `TitleColor` int(10) unsigned NOT NULL DEFAULT '0',
  `ClassUiTextureKitID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpecID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ArtifactCategoryID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UiModelSceneID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellVisualKitID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
