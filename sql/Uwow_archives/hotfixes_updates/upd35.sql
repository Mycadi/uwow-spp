DROP TABLE IF EXISTS `anim_kit`;
CREATE TABLE `anim_kit` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `LowDefAnimKitID` int(10) unsigned NOT NULL DEFAULT '0',
  `OneShotDuration` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OneShotStopAnimKitID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
