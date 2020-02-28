ALTER TABLE `areatrigger_actions`   
  CHANGE COLUMN `scale` `scaleStep` float NOT NULL DEFAULT '0' AFTER `chargeRecoveryTime`,
  ADD COLUMN `scaleMin` float UNSIGNED NOT NULL DEFAULT '0' AFTER `scaleStep`;