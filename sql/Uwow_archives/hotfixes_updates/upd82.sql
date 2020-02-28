ALTER TABLE `lfg_role_requirement` 
ADD COLUMN `LfgDungeonsId` smallint(5) NOT NULL DEFAULT 0 AFTER `PlayerConditionID`;
