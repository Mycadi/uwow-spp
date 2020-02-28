DROP TABLE IF EXISTS `spell_procs_per_minute_mod`;
CREATE TABLE `spell_procs_per_minute_mod` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Coeff` float NOT NULL DEFAULT '0',
  `Param` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellProcsPerMinuteID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `spell_procs_per_minute_mod` VALUES ('500', '1', '4', '1', '223', '0');