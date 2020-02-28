ALTER TABLE `creature_template`   
  ADD COLUMN `MaxVisible` BOOL DEFAULT 0 NOT NULL AFTER `AffixState`;
