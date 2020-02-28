DROP TABLE IF EXISTS `garr_follower_level_x_p`;
CREATE TABLE `garr_follower_level_x_p` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NextLevelXP` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FollowerTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_follower_quality`;
CREATE TABLE `garr_follower_quality` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `NextQualityXP` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `FollowerTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unused` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `garr_item_level_upgrade_data`;
CREATE TABLE `garr_item_level_upgrade_data` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `UpgradeType` int(10) unsigned NOT NULL DEFAULT '0',
  `Unused` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxItemLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `FollowerTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 
 DROP TABLE IF EXISTS `adventure_map_poi`;
 CREATE TABLE `adventure_map_poi` (
   `ID` int(10) unsigned NOT NULL DEFAULT '0',
   `PosX` float NOT NULL DEFAULT '0',
   `PosY` float NOT NULL DEFAULT '0',
   `unkInt0` int(10) unsigned NOT NULL DEFAULT '0',
   `Name` text,
   `Description` text,
   `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
   `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
   `QuestID` int(10) unsigned NOT NULL DEFAULT '0',
   `unkInt1` int(10) unsigned NOT NULL DEFAULT '0',
   `UiTextureAtlasMemberID` int(10) unsigned NOT NULL DEFAULT '0',
   `unkInt3` int(10) unsigned NOT NULL DEFAULT '0',
   `WorldMapAreaID` int(10) unsigned NOT NULL DEFAULT '0',
   `unkInt5` int(10) unsigned NOT NULL DEFAULT '0',
   `AreaTableID` int(10) unsigned NOT NULL DEFAULT '0',
   `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
   PRIMARY KEY (`ID`)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 
DROP TABLE IF EXISTS `adventure_journal`;
CREATE TABLE `adventure_journal` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Title` text,
  `Description` text,
  `ButtonText` text,
  `Icon` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk3` text,
  `ObjectiveText` text,
  `LFGDungeonID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `QuestID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayedConditionIDUnk21` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PlayedConditionIDUnk22` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrencyID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `WorldMapAreaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk9` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk10` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk12` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk13` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk141` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk142` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk15` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk17` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `quest_p_o_i_blob`;
CREATE TABLE `quest_p_o_i_blob` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `WorldMapAreaID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Unk1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Unk2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestID` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestObjectiveIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `quest_line_x_quest`;
CREATE TABLE `quest_line_x_quest` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LineID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `QuestID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `QuestIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
