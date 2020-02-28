ALTER TABLE `item_instance`   
  ADD COLUMN `itemLevel` MEDIUMINT(6) DEFAULT 0 NOT NULL AFTER `bonusListIDs`,
  ADD COLUMN `dungeonEncounterID` MEDIUMINT(6) DEFAULT 0 NOT NULL AFTER `itemLevel`,
  ADD COLUMN `createdTime` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `dungeonEncounterID`;

ALTER TABLE `item_instance`   
  ADD COLUMN `contextID` TINYINT(3) UNSIGNED DEFAULT 0 NOT NULL AFTER `dungeonEncounterID`;
