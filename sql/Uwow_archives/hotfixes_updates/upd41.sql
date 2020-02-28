DROP TABLE IF EXISTS `item_damage`;

DROP TABLE IF EXISTS `item_damage_ammo`;
CREATE TABLE `item_damage_ammo` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DPS1` float NOT NULL DEFAULT '0',
  `DPS2` float NOT NULL DEFAULT '0',
  `DPS3` float NOT NULL DEFAULT '0',
  `DPS4` float NOT NULL DEFAULT '0',
  `DPS5` float NOT NULL DEFAULT '0',
  `DPS6` float NOT NULL DEFAULT '0',
  `DPS7` float NOT NULL DEFAULT '0',
  `ItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_damage_one_hand`;
CREATE TABLE `item_damage_one_hand` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DPS1` float NOT NULL DEFAULT '0',
  `DPS2` float NOT NULL DEFAULT '0',
  `DPS3` float NOT NULL DEFAULT '0',
  `DPS4` float NOT NULL DEFAULT '0',
  `DPS5` float NOT NULL DEFAULT '0',
  `DPS6` float NOT NULL DEFAULT '0',
  `DPS7` float NOT NULL DEFAULT '0',
  `ItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_damage_one_hand_caster`;
CREATE TABLE `item_damage_one_hand_caster` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DPS1` float NOT NULL DEFAULT '0',
  `DPS2` float NOT NULL DEFAULT '0',
  `DPS3` float NOT NULL DEFAULT '0',
  `DPS4` float NOT NULL DEFAULT '0',
  `DPS5` float NOT NULL DEFAULT '0',
  `DPS6` float NOT NULL DEFAULT '0',
  `DPS7` float NOT NULL DEFAULT '0',
  `ItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_damage_two_hand`;
CREATE TABLE `item_damage_two_hand` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DPS1` float NOT NULL DEFAULT '0',
  `DPS2` float NOT NULL DEFAULT '0',
  `DPS3` float NOT NULL DEFAULT '0',
  `DPS4` float NOT NULL DEFAULT '0',
  `DPS5` float NOT NULL DEFAULT '0',
  `DPS6` float NOT NULL DEFAULT '0',
  `DPS7` float NOT NULL DEFAULT '0',
  `ItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `item_damage_two_hand_caster`;
CREATE TABLE `item_damage_two_hand_caster` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `DPS1` float NOT NULL DEFAULT '0',
  `DPS2` float NOT NULL DEFAULT '0',
  `DPS3` float NOT NULL DEFAULT '0',
  `DPS4` float NOT NULL DEFAULT '0',
  `DPS5` float NOT NULL DEFAULT '0',
  `DPS6` float NOT NULL DEFAULT '0',
  `DPS7` float NOT NULL DEFAULT '0',
  `ItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
