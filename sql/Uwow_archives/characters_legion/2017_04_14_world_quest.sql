DROP TABLE IF EXISTS `character_queststatus_world`;
CREATE TABLE `character_queststatus_world` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `account` int(10) unsigned NOT NULL DEFAULT '0',
  `quest` int(10) unsigned NOT NULL DEFAULT '0',
  `resetTime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `resetTime` (`resetTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `world_quest`;
CREATE TABLE `world_quest` (
  `QuestID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `QuestInfoID` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `QuestSortID` INT(10) NOT NULL DEFAULT '0',
  `VariableID` INT(10) NOT NULL DEFAULT '0',
  `Value` INT(10) NOT NULL DEFAULT '0',
  `Timer` INT(10) NOT NULL DEFAULT '0',
  `StartTime` INT(10) NOT NULL DEFAULT '0',
  `ResetTime` INT(10) NOT NULL DEFAULT '0',
  `CurrencyID` INT(10) NOT NULL DEFAULT '0',
  `CurrencyCount` INT(10) NOT NULL DEFAULT '0',
  `Gold` INT(10) NOT NULL DEFAULT '0',
  `ItemList` TEXT NOT NULL,
  PRIMARY KEY (`QuestID`),
  KEY `ResetTime` (`ResetTime`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

ALTER TABLE `world_quest`   
  ADD COLUMN `RewardType` INT(10) DEFAULT 0 NOT NULL AFTER `Gold`;
