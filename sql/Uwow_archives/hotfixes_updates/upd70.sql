DROP TABLE IF EXISTS `liquid_type`;
CREATE TABLE `liquid_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `SpellId` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxDarkenDepth` float NOT NULL DEFAULT '0',
  `FogDarkenIntensity` float NOT NULL DEFAULT '0',
  `AmbDarkenIntensity` float NOT NULL DEFAULT '0',
  `DirDarkenIntensity` float NOT NULL DEFAULT '0',
  `ParticleScale` float NOT NULL DEFAULT '0',
  `Texture1` text,
  `Texture2` text,
  `Texture3` text,
  `Texture4` text,
  `Texture5` text,
  `Texture6` text,
  `Color1` int(10) unsigned NOT NULL DEFAULT '0',
  `Color2` int(10) unsigned NOT NULL DEFAULT '0',
  `Float1` float NOT NULL DEFAULT '0',
  `Float2` float NOT NULL DEFAULT '0',
  `Float3` float NOT NULL DEFAULT '0',
  `Float4` float NOT NULL DEFAULT '0',
  `Float5` float NOT NULL DEFAULT '0',
  `Float6` float NOT NULL DEFAULT '0',
  `Float7` float NOT NULL DEFAULT '0',
  `Float8` float NOT NULL DEFAULT '0',
  `Float9` float NOT NULL DEFAULT '0',
  `Float10` float NOT NULL DEFAULT '0',
  `Float11` float NOT NULL DEFAULT '0',
  `Float12` float NOT NULL DEFAULT '0',
  `Float13` float NOT NULL DEFAULT '0',
  `Float14` float NOT NULL DEFAULT '0',
  `Float15` float NOT NULL DEFAULT '0',
  `Float16` float NOT NULL DEFAULT '0',
  `Float17` float NOT NULL DEFAULT '0',
  `Float18` float NOT NULL DEFAULT '0',
  `Int1` int(10) unsigned NOT NULL DEFAULT '0',
  `Int2` int(10) unsigned NOT NULL DEFAULT '0',
  `Int3` int(10) unsigned NOT NULL DEFAULT '0',
  `Int4` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LightID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ParticleMovement` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ParticleTexSlots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaterialID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DepthTexCount1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DepthTexCount2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DepthTexCount3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DepthTexCount4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DepthTexCount5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `DepthTexCount6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SoundID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `liquid_type_locale`;
CREATE TABLE `liquid_type_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Name_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `world_map_area`;
CREATE TABLE `world_map_area` (
  `AreaName` text,
  `LocLeft` float NOT NULL DEFAULT '0',
  `LocRight` float NOT NULL DEFAULT '0',
  `LocTop` float NOT NULL DEFAULT '0',
  `LocBottom` float NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AreaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayMapID` smallint(6) NOT NULL DEFAULT '0',
  `DefaultDungeonFloor` smallint(6) NOT NULL DEFAULT '0',
  `ParentWorldMapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LevelRangeMin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LevelRangeMax` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BountySetID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BountyBoardLocation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `world_map_area_locale`;

DROP TABLE IF EXISTS `phase_x_phase_group`;
CREATE TABLE `phase_x_phase_group` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PhaseID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PhaseGroupID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_appearance`;
CREATE TABLE `item_appearance` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `UIOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ObjectComponentSlot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `mount_capability`;
CREATE TABLE `mount_capability` (
  `RequiredSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `SpeedModSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredRidingSkill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredArea` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMap` smallint(6) NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredAura` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `quest_sort`;
CREATE TABLE `quest_sort` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SortName` text,
  `SortOrder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `battle_pet_state_locale`;

DROP TABLE IF EXISTS `battle_pet_species`;
CREATE TABLE `battle_pet_species` (
  `CreatureID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Source` text,
  `Description` text,
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ObtainmentCategoryDescription` tinyint(4) NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CardModelSceneID` int(10) unsigned NOT NULL DEFAULT '0',
  `LoadoutModelSceneID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_species_locale`;
CREATE TABLE `battle_pet_species_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Source_lang` text,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `battle_pet_species_x_ability`;
CREATE TABLE `battle_pet_species_x_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpeciesID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AbilityID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Tier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `power_type`;
CREATE TABLE `power_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PowerTypeToken` text,
  `PowerCostToken` text,
  `RegenerationPeace` float NOT NULL DEFAULT '0',
  `RegenerationCombat` float NOT NULL DEFAULT '0',
  `MaxPower` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RegenerationDelay` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PowerTypeEnum` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RegenerationMin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RegenerationCenter` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RegenerationMax` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UIModifier` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `power_type_locale`;

DROP TABLE IF EXISTS `item_upgrade`;
CREATE TABLE `item_upgrade` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyCost` int(10) unsigned NOT NULL DEFAULT '0',
  `PrevItemUpgradeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrencyID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ItemUpgradePathID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemLevelBonus` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `rule_set_item_upgrade`;
CREATE TABLE `rule_set_item_upgrade` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemUpgradeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `spell_shapeshift_form`;
CREATE TABLE `spell_shapeshift_form` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `WeaponDamageVariance` float NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `spell_category`;
CREATE TABLE `spell_category` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `ChargeRecoveryTime` int(11) NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UsesPerWeek` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ChargeCategoryType` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `specialization_spells`;
CREATE TABLE `specialization_spells` (
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `OverridesSpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Description` text,
  `SpecID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OrderIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `specialization_spells_locale`;
CREATE TABLE `specialization_spells_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `Description_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `world_map_overlay`;
CREATE TABLE `world_map_overlay` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureName` text,
  `TextureWidth` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TextureHeight` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MapAreaID` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaID1` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaID2` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaID3` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaID4` int(10) unsigned NOT NULL DEFAULT '0',
  `OffsetX` int(10) unsigned NOT NULL DEFAULT '0',
  `OffsetY` int(10) unsigned NOT NULL DEFAULT '0',
  `HitRectTop` int(10) unsigned NOT NULL DEFAULT '0',
  `HitRectLeft` int(10) unsigned NOT NULL DEFAULT '0',
  `HitRectBottom` int(10) unsigned NOT NULL DEFAULT '0',
  `HitRectRight` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `world_map_overlay_locale`;

DROP TABLE IF EXISTS `emotes`;
CREATE TABLE `emotes` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteSlashCommand` text,
  `SpellVisualKitID` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `AnimID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EmoteSpecProc` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmoteSpecProcParam` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteSoundID` int(10) unsigned NOT NULL DEFAULT '0',
  `ClassMask` int(11) NOT NULL DEFAULT '0',
  `RaceMask` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `emotes_locale`;

DROP TABLE IF EXISTS `item_set`;
CREATE TABLE `item_set` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `ItemID1` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID2` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID3` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID4` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID5` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID6` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID7` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID8` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID9` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID10` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID11` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID12` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID13` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID14` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID15` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID16` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID17` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredSkill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillValue` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `managed_world_state`;
CREATE TABLE `managed_world_state` (
  `WorldStateCurrentState` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldStateResourcesCollected` int(11) NOT NULL DEFAULT '0',
  `FullLifeTimer` int(10) unsigned NOT NULL DEFAULT '0',
  `FullUnderAtackTimer` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldStateTimerUI` int(11) NOT NULL DEFAULT '0',
  `Unknown5` int(11) NOT NULL DEFAULT '0',
  `TimeToDestroy` int(11) NOT NULL DEFAULT '0',
  `Unknown7` int(11) NOT NULL DEFAULT '0',
  `Unknown8` int(11) NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `managed_world_state_buff`;
CREATE TABLE `managed_world_state_buff` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ContributionID` int(11) NOT NULL DEFAULT '0',
  `NextAwardScorer` int(10) unsigned NOT NULL DEFAULT '0',
  `AwardAuraID` int(11) NOT NULL DEFAULT '0',
  `UnknownDB2ID` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `managed_world_state_input`;
CREATE TABLE `managed_world_state_input` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ContributionID` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardQuest` int(10) unsigned NOT NULL DEFAULT '0',
  `UnknownDB2ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `AudioFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `SubtitleFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `Volume` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `KeyID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `vignette`;
CREATE TABLE `vignette` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `UnkFloat1` float NOT NULL DEFAULT '0',
  `UnkFloat2` float NOT NULL DEFAULT '0',
  `Flags` tinyint(4) NOT NULL DEFAULT '0',
  `Unk1` int(11) NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

ALTER TABLE `spell_levels`   
  CHANGE `unk6` `MaxUsableLevel` TINYINT(3) UNSIGNED DEFAULT 0 NOT NULL;
