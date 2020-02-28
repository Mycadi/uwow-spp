DROP TABLE IF EXISTS `artifact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artifact` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Unk1` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk2` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `unk5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpecID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkByte1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `artifact_appearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artifact_appearance` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkFloat1` float NOT NULL DEFAULT '0',
  `UnkFloat2` float NOT NULL DEFAULT '0',
  `unk4` int(10) unsigned NOT NULL DEFAULT '0',
  `ArtifactAppearanceSetID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkByte4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkByte2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk13` int(10) unsigned NOT NULL DEFAULT '0',
  `unk14` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `faction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faction` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseRepRaceMask1` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseRepRaceMask2` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseRepRaceMask3` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseRepRaceMask4` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseRepValue1` int(11) NOT NULL DEFAULT '0',
  `BaseRepValue2` int(11) NOT NULL DEFAULT '0',
  `BaseRepValue3` int(11) NOT NULL DEFAULT '0',
  `BaseRepValue4` int(11) NOT NULL DEFAULT '0',
  `SpilloverRate1` float NOT NULL DEFAULT '0',
  `SpilloverRate2` float NOT NULL DEFAULT '0',
  `Name` text,
  `Desc` text,
  `BaseRepValue21` int(11) NOT NULL DEFAULT '0',
  `BaseRepValue22` int(11) NOT NULL DEFAULT '0',
  `BaseRepValue23` int(11) NOT NULL DEFAULT '0',
  `BaseRepValue24` int(11) NOT NULL DEFAULT '0',
  `ReputationListID` smallint(6) NOT NULL DEFAULT '0',
  `BaseRepClassMask1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BaseRepClassMask2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BaseRepClassMask3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BaseRepClassMask4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationFlags1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationFlags2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationFlags3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReputationFlags4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Team` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpilloverRank1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpilloverRank2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Expansion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FriendshipRepID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `liquid_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liquid_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `SpellId` int(10) unsigned NOT NULL DEFAULT '0',
  `unk_1` float NOT NULL DEFAULT '0',
  `unk_2` float NOT NULL DEFAULT '0',
  `unk_3` float NOT NULL DEFAULT '0',
  `unk_4` float NOT NULL DEFAULT '0',
  `unk_5` float NOT NULL DEFAULT '0',
  `Texture1` text,
  `Texture2` text,
  `Texture3` text,
  `Texture4` text,
  `Texture5` text,
  `Texture6` text,
  `unk2_` int(10) unsigned NOT NULL DEFAULT '0',
  `unk3_` int(10) unsigned NOT NULL DEFAULT '0',
  `unk4_1` float NOT NULL DEFAULT '0',
  `unk4_2` float NOT NULL DEFAULT '0',
  `unk4_3` float NOT NULL DEFAULT '0',
  `unk4_4` float NOT NULL DEFAULT '0',
  `unk4_5` float NOT NULL DEFAULT '0',
  `unk4_6` float NOT NULL DEFAULT '0',
  `unk4_7` float NOT NULL DEFAULT '0',
  `unk4_8` float NOT NULL DEFAULT '0',
  `unk4_9` float NOT NULL DEFAULT '0',
  `unk4_10` float NOT NULL DEFAULT '0',
  `unk4_11` float NOT NULL DEFAULT '0',
  `unk4_12` float NOT NULL DEFAULT '0',
  `unk4_13` float NOT NULL DEFAULT '0',
  `unk4_14` float NOT NULL DEFAULT '0',
  `unk4_15` float NOT NULL DEFAULT '0',
  `unk4_16` float NOT NULL DEFAULT '0',
  `unk4_17` float NOT NULL DEFAULT '0',
  `unk4_18` float NOT NULL DEFAULT '0',
  `unk5_` int(10) unsigned NOT NULL DEFAULT '0',
  `unk6_` int(10) unsigned NOT NULL DEFAULT '0',
  `unk7_` int(10) unsigned NOT NULL DEFAULT '0',
  `unk8_` int(10) unsigned NOT NULL DEFAULT '0',
  `unk9_` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk12_` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_7` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_8` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk11_9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk10_` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

ALTER TABLE `broadcast_text`   
  ADD COLUMN `unk14` int(10) unsigned NOT NULL DEFAULT '0' AFTER `unk13`;

DROP TABLE IF EXISTS `criteria_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `criteria_tree` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `CriteriaID` int(10) unsigned NOT NULL DEFAULT '0',
  `Amount` int(10) unsigned NOT NULL DEFAULT '0',
  `Description` text,
  `Parent` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Operator` smallint(6) NOT NULL DEFAULT '0',
  `Flags` tinyint(4) NOT NULL DEFAULT '0',
  `OrderIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `quest_v2_cli_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_v2_cli_task` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
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
  `unk23` int(10) unsigned NOT NULL DEFAULT '0',
  `unk24` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `quest_line_x_quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_line_x_quest` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LineID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `QuestID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Pos` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `item_extended_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_extended_cost` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredItem1` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredItem2` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredItem3` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredItem4` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredItem5` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrencyCount5` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredItemCount5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredPersonalArenaRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrency1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrency2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrency3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrency4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredCurrency5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredArenaSlot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ItemPurchaseGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequirementFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionStanding` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `battle_pet_ability_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battle_pet_ability_effect` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TurnID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AuraID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EffectPropertiesID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PropertyValue1` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue2` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue3` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue4` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue5` smallint(6) NOT NULL DEFAULT '0',
  `PropertyValue6` smallint(6) NOT NULL DEFAULT '0',
  `Effect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `battle_pet_effect_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battle_pet_effect_properties` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Description1` text,
  `Description2` text,
  `Description3` text,
  `Description4` text,
  `Description5` text,
  `Description6` text,
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `IsAura1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IsAura6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `mount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mount` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `DisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `SourceDescription` text,
  `unk5` float NOT NULL DEFAULT '0',
  `MountTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Source` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `spell_totems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_totems` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `Totem1` int(10) unsigned NOT NULL DEFAULT '0',
  `Totem2` int(10) unsigned NOT NULL DEFAULT '0',
  `TotemCategory1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TotemCategory2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `spell_shapeshift_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_shapeshift_form` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `UnkLegion` float NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `AttackIconID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CombatRoundTime` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CreatureDisplayID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID7` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PresetSpellID8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MountTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CreatureType` tinyint(4) NOT NULL DEFAULT '0',
  `ExitSoundEntriesID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `skill_line_ability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_line_ability` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `RaceMask` int(10) unsigned NOT NULL DEFAULT '0',
  `SupercedesSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `unk4` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillLine` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinSkillLineRank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TrivialSkillLineRankHigh` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TrivialSkillLineRankLow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UniqueBit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TradeSkillCategoryID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `AquireMethod` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `NumSkillUps` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ClassMask` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `vignette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vignette` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `UnkFloat1` float NOT NULL DEFAULT '0',
  `UnkFloat2` float NOT NULL DEFAULT '0',
  `Unk1` smallint(6) NOT NULL DEFAULT '0',
  `Unk2` tinyint(4) NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

DROP TABLE IF EXISTS `player_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_condition` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `MinLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `RaceMask` int(10) unsigned NOT NULL DEFAULT '0',
  `ClassMask` int(10) unsigned NOT NULL DEFAULT '0',
  `Gender` int(11) NOT NULL DEFAULT '0',
  `NativeGender` int(11) NOT NULL DEFAULT '0',
  `SkillID1` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillID2` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillID3` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillID4` int(10) unsigned NOT NULL DEFAULT '0',
  `MinSkill1` int(11) NOT NULL DEFAULT '0',
  `MinSkill2` int(11) NOT NULL DEFAULT '0',
  `MinSkill3` int(11) NOT NULL DEFAULT '0',
  `MinSkill4` int(11) NOT NULL DEFAULT '0',
  `MaxSkill1` int(11) NOT NULL DEFAULT '0',
  `MaxSkill2` int(11) NOT NULL DEFAULT '0',
  `MaxSkill3` int(11) NOT NULL DEFAULT '0',
  `MaxSkill4` int(11) NOT NULL DEFAULT '0',
  `SkillLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `LanguageID` int(10) unsigned NOT NULL DEFAULT '0',
  `MinLanguage` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLanguage` int(10) unsigned NOT NULL DEFAULT '0',
  `MinFactionID1` int(10) unsigned NOT NULL DEFAULT '0',
  `MinFactionID2` int(10) unsigned NOT NULL DEFAULT '0',
  `MinFactionID3` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxFactionID` int(10) unsigned NOT NULL DEFAULT '0',
  `MinReputation1` int(10) unsigned NOT NULL DEFAULT '0',
  `MinReputation2` int(10) unsigned NOT NULL DEFAULT '0',
  `MinReputation3` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxReputation` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown1` int(10) unsigned NOT NULL DEFAULT '0',
  `MinPVPRank` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxPVPRank` int(10) unsigned NOT NULL DEFAULT '0',
  `PvpMedal` int(10) unsigned NOT NULL DEFAULT '0',
  `PrevQuestLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID1` int(10) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID2` int(10) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID3` int(10) unsigned NOT NULL DEFAULT '0',
  `PrevQuestID4` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrQuestLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrQuestID1` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrQuestID2` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrQuestID3` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrQuestID4` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID1` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID2` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID3` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrentCompletedQuestID4` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID1` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID2` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID3` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID4` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID1` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID2` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID3` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID4` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Explored1` int(10) unsigned NOT NULL DEFAULT '0',
  `Explored2` int(10) unsigned NOT NULL DEFAULT '0',
  `Time1` int(10) unsigned NOT NULL DEFAULT '0',
  `Time2` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellID1` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellID2` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellID3` int(10) unsigned NOT NULL DEFAULT '0',
  `AuraSpellID4` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldStateExpressionID` int(10) unsigned NOT NULL DEFAULT '0',
  `WeatherID` int(10) unsigned NOT NULL DEFAULT '0',
  `PartyStatus` int(10) unsigned NOT NULL DEFAULT '0',
  `LifetimeMaxPVPRank` int(10) unsigned NOT NULL DEFAULT '0',
  `AchievementLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `Achievement1` int(10) unsigned NOT NULL DEFAULT '0',
  `Achievement2` int(10) unsigned NOT NULL DEFAULT '0',
  `Achievement3` int(10) unsigned NOT NULL DEFAULT '0',
  `Achievement4` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgStatus1` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgStatus2` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgStatus3` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgStatus4` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgCompare1` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgCompare2` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgCompare3` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgCompare4` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgValue1` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgValue2` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgValue3` int(10) unsigned NOT NULL DEFAULT '0',
  `LfgValue4` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaID1` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaID2` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaID3` int(10) unsigned NOT NULL DEFAULT '0',
  `AreaID4` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID1` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID2` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID3` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyID4` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillID` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillLogic` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster1` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster2` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster3` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestKillMonster4` int(10) unsigned NOT NULL DEFAULT '0',
  `MinExpansionLevel` int(11) NOT NULL DEFAULT '0',
  `MaxExpansionLevel` int(11) NOT NULL DEFAULT '0',
  `MinExpansionTier` int(11) NOT NULL DEFAULT '0',
  `MaxExpansionTier` int(11) NOT NULL DEFAULT '0',
  `MinGuildLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxGuildLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `PhaseUseFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `PhaseID` int(10) unsigned NOT NULL DEFAULT '0',
  `PhaseGroupID` int(10) unsigned NOT NULL DEFAULT '0',
  `MinAvgItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxAvgItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MinAvgEquippedItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxAvgEquippedItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `ChrSpecializationIndex` int(11) NOT NULL DEFAULT '0',
  `ChrSpecializationRole` int(11) NOT NULL DEFAULT '0',
  `FailureDescription` text,
  `PowerType` int(11) NOT NULL DEFAULT '0',
  `PowerTypeComp` int(11) NOT NULL DEFAULT '0',
  `PowerTypeValue` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_condition`
--

LOCK TABLES `player_condition` WRITE;
/*!40000 ALTER TABLE `player_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_condition_locale`
--

DROP TABLE IF EXISTS `player_condition_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `player_condition_locale` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `locale` varchar(4) NOT NULL,
  `FailureDescription_lang` text,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_condition_locale`
--

LOCK TABLES `player_condition_locale` WRITE;
/*!40000 ALTER TABLE `player_condition_locale` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_condition_locale` ENABLE KEYS */;
UNLOCK TABLES;
