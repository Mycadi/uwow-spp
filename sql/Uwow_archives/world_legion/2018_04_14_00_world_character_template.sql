ALTER TABLE `character_template_item`   
  ADD COLUMN `RaceMask` BIGINT(20) UNSIGNED DEFAULT 0 NOT NULL AFTER `RaceID`;
ALTER TABLE `character_template_quest`   
  ADD COLUMN `RaceMask` BIGINT(20) UNSIGNED DEFAULT 0 NOT NULL AFTER `RaceID`;
ALTER TABLE `character_template_spell`   
  ADD COLUMN `RaceMask` BIGINT(20) UNSIGNED DEFAULT 0 NOT NULL AFTER `RaceID`;
ALTER TABLE `character_template_title`   
  ADD COLUMN `RaceMask` BIGINT(20) UNSIGNED DEFAULT 0 NOT NULL AFTER `RaceID`;
ALTER TABLE `character_template_class`   
  ADD COLUMN `RaceMask` BIGINT(20) UNSIGNED DEFAULT 0 NOT NULL AFTER `Class`;

ALTER TABLE `character_template_item`   
  CHANGE `RaceID` `FactionGroup` TINYINT(3) DEFAULT 0 NOT NULL;
ALTER TABLE `character_template_quest`   
  CHANGE `RaceID` `FactionGroup` TINYINT(3) DEFAULT 0 NOT NULL;
ALTER TABLE `character_template_spell`   
  CHANGE `RaceID` `FactionGroup` TINYINT(3) DEFAULT 0 NOT NULL;
ALTER TABLE `character_template_title`   
  CHANGE `RaceID` `FactionGroup` TINYINT(3) DEFAULT 0 NOT NULL;

INSERT INTO `character_template_quest` (`TemplateID`, `QuestID`, `RaceMask`) VALUES ('37', '25267', '256');

