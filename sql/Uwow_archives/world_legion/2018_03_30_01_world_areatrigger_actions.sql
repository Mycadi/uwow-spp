ALTER TABLE `areatrigger_actions`   
  ADD COLUMN `scaleMax` float UNSIGNED NOT NULL DEFAULT '0' AFTER `scaleMin`;