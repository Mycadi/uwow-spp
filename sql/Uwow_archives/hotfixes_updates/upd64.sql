DROP TABLE IF EXISTS `artifact_unlock`;
CREATE TABLE `artifact_unlock` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BonusID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ArtifactID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk5` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
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
  `HolidayNameID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `CalendarFilterType` tinyint(4) NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Priority` int(10) unsigned NOT NULL DEFAULT '0',
  `HolidayDescriptionID` int(10) unsigned NOT NULL DEFAULT '0',
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
  `WorldStateExpressionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk13` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk14` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk15` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk16` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `maxLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk18` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk19` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `minLevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SkillValue` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk21` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk23` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_level_selector`;
CREATE TABLE `item_level_selector` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `unk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `char_shipment_container`;
CREATE TABLE `char_shipment_container` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `ActiveVisualID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk720` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_Unk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_A` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_H` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk_Display` smallint(5) unsigned NOT NULL DEFAULT '0',
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

DROP TABLE IF EXISTS `garr_encounter_x_mechanic`;
CREATE TABLE `garr_encounter_x_mechanic` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrEncounterID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `GarrMechanicID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xMechanic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mechanic`;
CREATE TABLE `garr_mechanic` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Mod` float NOT NULL DEFAULT '0',
  `MechanicTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MissionAbility` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mechanic_set_x_mechanic`;
CREATE TABLE `garr_mechanic_set_x_mechanic` (
  `MechanicID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `xMechanic` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_encounter_set_x_encounter`;
CREATE TABLE `garr_encounter_set_x_encounter` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `xEncounter` int(10) unsigned NOT NULL DEFAULT '0',
  `Encounter` int(10) unsigned NOT NULL DEFAULT '0',
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
  `unk7` float NOT NULL DEFAULT '0',
  `unk8` float NOT NULL DEFAULT '0',
  `unk9` float NOT NULL DEFAULT '0',
  `unk10` float NOT NULL DEFAULT '0',
  `RequiredItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LocPrefixID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewCurrencyID` smallint(5) unsigned NOT NULL DEFAULT '0',
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
  `CriteriaID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqResourcesCount` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseXP` int(10) unsigned NOT NULL DEFAULT '0',
  `ZoneID` int(10) unsigned NOT NULL DEFAULT '0',
  `unk30` int(10) unsigned NOT NULL DEFAULT '0',
  `unk16` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_mission_x_encounter`;
CREATE TABLE `garr_mission_x_encounter` (
  `unk0` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `GarrMissionID` int(10) unsigned NOT NULL DEFAULT '0',
  `EncounterID` int(10) unsigned NOT NULL DEFAULT '0',
  `xEncounter` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
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
  `ChangeCriteria2` int(11) NOT NULL DEFAULT '0',
  `ChangePriceCost` int(10) unsigned NOT NULL DEFAULT '0',
  `ChangePriceCurrency` int(11) NOT NULL DEFAULT '0',
  `ChangeResearchTime` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown19` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `managed_world_state`;
CREATE TABLE `managed_world_state` (
  `WorldState_ContributionState` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldState_ContributuinCollected` int(11) NOT NULL DEFAULT '0',
  `Unknown2` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown3` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldState_ContributuinGUID` int(11) NOT NULL DEFAULT '0',
  `Unknown5` int(11) NOT NULL DEFAULT '0',
  `Unknown6` int(11) NOT NULL DEFAULT '0',
  `Unknown7` int(11) NOT NULL DEFAULT '0',
  `Unknown8` int(11) NOT NULL DEFAULT '0',
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `managed_world_state_buff`;
CREATE TABLE `managed_world_state_buff` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown0` int(11) NOT NULL DEFAULT '0',
  `Unknown1` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown2` int(11) NOT NULL DEFAULT '0',
  `Unknown3` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `managed_world_state_input`;
CREATE TABLE `managed_world_state_input` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ContributionID` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardQuest` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown2` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


