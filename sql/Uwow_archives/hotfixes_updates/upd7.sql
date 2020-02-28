DROP TABLE IF EXISTS `character_loadout`;
CREATE TABLE `character_loadout` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Racemask` int(10) unsigned NOT NULL DEFAULT '0',
  `ClassID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Purpose` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
