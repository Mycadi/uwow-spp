ALTER TABLE `personal_loot_template`   
  ADD COLUMN `goEntry` INT(10) DEFAULT 0 NOT NULL AFTER `cooldowntype`;

UPDATE `personal_loot_template` SET `goEntry` = '248513' WHERE `entry` = '101002' AND `type` = '1';
UPDATE `personal_loot_template` SET `goEntry` = '254168' WHERE `entry` = '104636' AND `type` = '1';
