DROP TABLE IF EXISTS `world_effect`;
CREATE TABLE `world_effect` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `TargetAsset` int(10) unsigned NOT NULL DEFAULT '0',
  `CombatConditionID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `TargetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `WhenToDisplay` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `QuestFeedbackEffectID` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
