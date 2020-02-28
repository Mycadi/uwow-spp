DROP TABLE IF EXISTS `map_difficulty`;
CREATE TABLE `map_difficulty` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Message` text,
  `MapID` smallint(6) NOT NULL DEFAULT '0',
  `DifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RaidDuration` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LockID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemBonusTreeModID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Context` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `quest_v2_cli_task`;
CREATE TABLE `quest_v2_cli_task` (
  `Flags` int(11) NOT NULL DEFAULT '0',
  `Name` text,
  `Name1` text,
  `requestAura` int(10) unsigned NOT NULL DEFAULT '0',
  `UniqueBitFlag` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk5` smallint(6) NOT NULL DEFAULT '0',
  `requestQuest1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `requestQuest2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `requestQuest3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SkillID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk11` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk12` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SkillRank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk14` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk15` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `levelUnk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk17` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk18` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk20` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk21` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk23` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_ability`;
CREATE TABLE `battle_pet_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFileID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `AuraAbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `School` tinyint(4) NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Cooldown` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `battle_pet_ability_effect`;
CREATE TABLE `battle_pet_ability_effect` (
  `abilityTurnId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visualId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `triggerAbility` smallint(5) unsigned NOT NULL DEFAULT '0',
  `effect` smallint(5) unsigned NOT NULL DEFAULT '0',
  `prop1` smallint(6) NOT NULL DEFAULT '0',
  `prop2` smallint(6) NOT NULL DEFAULT '0',
  `prop3` smallint(6) NOT NULL DEFAULT '0',
  `prop4` smallint(6) NOT NULL DEFAULT '0',
  `prop5` smallint(6) NOT NULL DEFAULT '0',
  `prop6` smallint(6) NOT NULL DEFAULT '0',
  `effectIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_ability_state`;
CREATE TABLE `battle_pet_ability_state` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `AbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `StateID` tinyint(3) unsigned NOT NULL DEFAULT '0',
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
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `battle_pet_species_state`;
CREATE TABLE `battle_pet_species_state` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `SpeciesID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `StateID` tinyint(4) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_species_state`;
CREATE TABLE `battle_pet_species_state` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `SpeciesID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `StateID` tinyint(4) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_species_x_ability`;
CREATE TABLE `battle_pet_species_x_ability` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `speciesId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `abilityId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_breed_state`;
CREATE TABLE `battle_pet_breed_state` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BreedID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `StateID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_class_spec_player_cond`;
CREATE TABLE `garr_class_spec_player_cond` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFieldID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `unk1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrClassSpecID` int(10) unsigned NOT NULL DEFAULT '0',
  `ConditionQuestID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk4` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_class_spec_player_cond_locale`;
CREATE TABLE `garr_class_spec_player_cond_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mission`;
CREATE TABLE `garr_mission` (
  `MissionDuration` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferDuration` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `Location` text,
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
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
  `chanceUnk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseChance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `garType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk27` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqResourcesCount` int(10) unsigned NOT NULL DEFAULT '0',
  `ZoneID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk30` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mission_locale`;
CREATE TABLE `garr_mission_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `Location_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_talent`;
CREATE TABLE `garr_talent` (
  `Unknown0` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `ResearchTime` int(11) NOT NULL DEFAULT '0',
  `LineIdx` tinyint(4) NOT NULL DEFAULT '0',
  `OptionIdx` tinyint(4) NOT NULL DEFAULT '0',
  `Unknown6` tinyint(4) NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TalentTreeID` int(11) NOT NULL DEFAULT '0',
  `GarrAbilityID` int(11) NOT NULL DEFAULT '0',
  `UnkCriteria` int(11) NOT NULL DEFAULT '0',
  `ResearchPriceCost` int(10) unsigned NOT NULL DEFAULT '0',
  `ResearchPriceCurrency` int(11) NOT NULL DEFAULT '0',
  `Unknown13` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellAura` int(11) NOT NULL DEFAULT '0',
  `UnkCriteria2` int(11) NOT NULL DEFAULT '0',
  `UnkPriceCost` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkPriceCurrency` int(11) NOT NULL DEFAULT '0',
  `UnkResearchTime` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown19` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_talent_locale`;
CREATE TABLE `garr_talent_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_talent_tree`;
CREATE TABLE `garr_talent_tree` (
  `TalentTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown0` tinyint(4) NOT NULL DEFAULT '0',
  `Unknown1` tinyint(4) NOT NULL DEFAULT '0',
  `Class` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown3` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TalentTreeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `chr_specialization`;
CREATE TABLE `chr_specialization` (
  `MasterySpellID1` int(10) unsigned NOT NULL DEFAULT '0',
  `MasterySpellID2` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Name2` text,
  `Description` text,
  `SpellIconID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ClassID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PetTalentType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Role` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PrimaryStatOrder2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `RaidBuffs` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `chr_specialization_locale`;
CREATE TABLE `chr_specialization_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Name2_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `reward_pack_x_currency_type`;
CREATE TABLE `reward_pack_x_currency_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardPackID` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID` int(10) unsigned NOT NULL DEFAULT '0',
  `Amount` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_state`;
CREATE TABLE `battle_pet_state` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `StateName` text,
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ParentState` tinyint(3) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_talent_tree`;
CREATE TABLE `garr_talent_tree` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown0` tinyint(4) NOT NULL DEFAULT '0',
  `Unknown1` tinyint(4) NOT NULL DEFAULT '0',
  `Class` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown3` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `lfg_dungeons`;
CREATE TABLE `lfg_dungeons` (
  `Name` text,
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureFilename` text,
  `Description` text,
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `MinItemLevel` float NOT NULL DEFAULT '0',
  `MaxLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TargetLevelMax` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MapID` smallint(6) NOT NULL DEFAULT '0',
  `RandomID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ScenarioID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LastBossJournalEncounterID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BonusReputationAmount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TimeWalkerItemLvl` smallint(5) unsigned NOT NULL DEFAULT '0',
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
  `TextureFilename_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_class`;
CREATE TABLE `item_class` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PriceFactor` float NOT NULL DEFAULT '0',
  `Name` text,
  `OldEnumValue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `creature_model_data`
  DROP `FootstepShakeSize`,
  DROP `DeathThudShakeSize`;

DROP TABLE IF EXISTS `spell_x_spell_visual`;
CREATE TABLE `spell_x_spell_visual` (
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Chance` float NOT NULL DEFAULT '0',
  `SpellVisualID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpellVisualID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnitConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DifficultyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Priority` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `chr_classes`;
CREATE TABLE `chr_classes` (
  `PetNameToken` text,
  `Name` text,
  `NameFemale` text,
  `NameMale` text,
  `Filename` text,
  `CreateScreenFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `SelectScreenFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `LowResScreenFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CinematicSequenceID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DefaultSpec` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PowerType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellClassSet` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AttackPowerPerStrength` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AttackPowerPerAgility` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RangedAttackPowerPerAgility` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `chr_classes_locale`;
CREATE TABLE `chr_classes_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `NameFemale_lang` text,
  `NameMale_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `adventure`;

DROP TABLE IF EXISTS `adventure_map_poi`;
CREATE TABLE `adventure_map_poi` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unkFloat1` float NOT NULL DEFAULT '0',
  `unkFloat2` float NOT NULL DEFAULT '0',
  `unkInt0` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `unkByte` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ConditionID` int(10) unsigned NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `adventure_map_poi_locale`;
CREATE TABLE `adventure_map_poi_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_ability_effect`;
CREATE TABLE `garr_ability_effect` (
  `ModMin` float NOT NULL DEFAULT '0',
  `ModMax` float NOT NULL DEFAULT '0',
  `Amount` float NOT NULL DEFAULT '0',
  `unk` int(10) unsigned NOT NULL DEFAULT '0',
  `AbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EffectType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TargetMask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CounterMechanicTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MiscValueA` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MiscValueB` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mechanic`;
CREATE TABLE `garr_mechanic` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Mod` float NOT NULL DEFAULT '0',
  `MechanicTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mechanic_type`;
CREATE TABLE `garr_mechanic_type` (
  `Name` text,
  `Description` text,
  `SomeFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
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
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseXP` int(10) unsigned NOT NULL DEFAULT '0',
  `unk7` float NOT NULL DEFAULT '0',
  `unk8` float NOT NULL DEFAULT '0',
  `unk9` float NOT NULL DEFAULT '0',
  `unk10` float NOT NULL DEFAULT '0',
  `RequiredItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LocPrefixID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CriteriaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewCurrencyID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk16` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrMechanicTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredFollowersCount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk20` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrMissionTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk22` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `chanceUnk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseChance` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `garType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk27` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqResourcesCount` int(10) unsigned NOT NULL DEFAULT '0',
  `ZoneID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk30` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mission_x_encounter`;
CREATE TABLE `garr_mission_x_encounter` (
  `unk0` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrMissionID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrEncounterID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk4` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
