DROP TABLE IF EXISTS `artifact_quest_xp`;
CREATE TABLE `artifact_quest_xp` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Exp1` int(11) NOT NULL DEFAULT '0',
  `Exp2` int(11) NOT NULL DEFAULT '0',
  `Exp3` int(11) NOT NULL DEFAULT '0',
  `Exp4` int(11) NOT NULL DEFAULT '0',
  `Exp5` int(11) NOT NULL DEFAULT '0',
  `Exp6` int(11) NOT NULL DEFAULT '0',
  `Exp7` int(11) NOT NULL DEFAULT '0',
  `Exp8` int(11) NOT NULL DEFAULT '0',
  `Exp9` int(11) NOT NULL DEFAULT '0',
  `Exp10` int(11) NOT NULL DEFAULT '0',
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
  `ChampionPackID` smallint(5) unsigned NOT NULL DEFAULT '0',
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
  `unt3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_Unk` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_A` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DisplayID_H` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ActiveVisualID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk8` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BuildingType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `garType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unk12` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxShipments` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enotherID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `fractionType` tinyint(4) NOT NULL DEFAULT '0',
  `unk16` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `map_challenge_mode`;
CREATE TABLE `map_challenge_mode` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ChestTimer1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ChestTimer2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ChestTimer3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unk5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `reward_pack_x_item`;
CREATE TABLE `reward_pack_x_item` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardPackID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `reward_pack_x_currency_type`;
CREATE TABLE `reward_pack_x_currency_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemID` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardPackID` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemCount` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `pvp_reward`;
CREATE TABLE `pvp_reward` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `HonorLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `PrestigeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardPackID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `reward_pack`;
CREATE TABLE `reward_pack` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MoneyReward` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkFloat` float NOT NULL DEFAULT '0',
  `UnkByte` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TitleRewardID` int(10) unsigned NOT NULL DEFAULT '0',
  `TitleName` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
