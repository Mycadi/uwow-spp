ALTER TABLE `world_quest_item`   
  CHANGE `CheckSpell` `NotNeedSpell` INT(10) DEFAULT 0 NOT NULL,
  ADD COLUMN `NeedSpell` INT(10) UNSIGNED DEFAULT 0 NOT NULL AFTER `NotNeedSpell`;
