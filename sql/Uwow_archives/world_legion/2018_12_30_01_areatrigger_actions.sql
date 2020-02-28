ALTER TABLE `areatrigger_actions`
ADD COLUMN `scaleVisualUpdate` tinyint(1) NOT NULL DEFAULT 1 AFTER `scaleMax`;