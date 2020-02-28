DROP TABLE IF EXISTS `character_facial_hair_styles`;
CREATE TABLE `character_facial_hair_styles` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Geoset1` int(10) unsigned NOT NULL DEFAULT '0',
  `Geoset2` int(10) unsigned NOT NULL DEFAULT '0',
  `Geoset3` int(10) unsigned NOT NULL DEFAULT '0',
  `Geoset4` int(10) unsigned NOT NULL DEFAULT '0',
  `Geoset5` int(10) unsigned NOT NULL DEFAULT '0',
  `RaceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SexID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VariationID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `char_base_section`;
CREATE TABLE `char_base_section` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Variation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ResolutionVariation` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Resolution` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `char_sections`;
CREATE TABLE `char_sections` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureFileDataID1` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureFileDataID2` int(10) unsigned NOT NULL DEFAULT '0',
  `TextureFileDataID3` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RaceID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SexID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseSection` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VariationIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ColorIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `conversation_line`;
CREATE TABLE `conversation_line` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `BroadcastTextID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellVisualKitID` int(10) unsigned NOT NULL DEFAULT '0',
  `Duration` int(10) unsigned NOT NULL DEFAULT '0',
  `NextLineID` smallint(6) NOT NULL DEFAULT '0',
  `Unk1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Yell` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
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
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `spell_misc`;
CREATE TABLE `spell_misc` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes1` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes2` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes3` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes4` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes5` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes6` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes7` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes8` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes9` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes10` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes11` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes12` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes13` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes14` int(10) unsigned NOT NULL DEFAULT '0',
  `Speed` float NOT NULL DEFAULT '0',
  `MultistrikeSpeedMod` float NOT NULL DEFAULT '0',
  `CastingTimeIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DurationIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RangeIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SchoolMask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `ActiveIconFileDataID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `glyph_properties`;
CREATE TABLE `glyph_properties` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `IconFileDataID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GlyphExclusiveCategoryID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `managed_world_state`;
CREATE TABLE `managed_world_state` (
  `WorldState_ContributionState` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldState_ContributuinCollected` int(11) NOT NULL DEFAULT '0',
  `FullLifeTimer` int(10) unsigned NOT NULL DEFAULT '0',
  `FullUnderAtackTimer` int(10) unsigned NOT NULL DEFAULT '0',
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
  `ContributionID` int(11) NOT NULL DEFAULT '0',
  `Unknown1` int(10) unsigned NOT NULL DEFAULT '0',
  `Unknown2` int(11) NOT NULL DEFAULT '0',
  `Unknown3` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
