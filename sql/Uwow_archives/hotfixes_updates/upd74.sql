DROP TABLE IF EXISTS `garr_follower_type`;
CREATE TABLE `garr_follower_type` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxItemLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnkByte1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `GarrTypeID` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `UnkByte6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
