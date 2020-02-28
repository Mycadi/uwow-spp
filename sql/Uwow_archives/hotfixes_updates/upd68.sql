DROP TABLE IF EXISTS `paragon_reputation`;
CREATE TABLE `paragon_reputation` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `ReputationMax` int(10) unsigned NOT NULL DEFAULT '0',
  `QuestID` int(10) unsigned NOT NULL DEFAULT '0',
  `FactionID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
