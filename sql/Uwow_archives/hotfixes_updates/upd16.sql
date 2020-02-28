DROP TABLE IF EXISTS `taxi_nodes`;
CREATE TABLE `taxi_nodes` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `Name` text,
  `MountCreatureID1` int(10) unsigned NOT NULL DEFAULT '0',
  `MountCreatureID2` int(10) unsigned NOT NULL DEFAULT '0',
  `MapOffset1` float NOT NULL DEFAULT '0',
  `MapOffset2` float NOT NULL DEFAULT '0',
  `MapID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `LearnableIndex` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
