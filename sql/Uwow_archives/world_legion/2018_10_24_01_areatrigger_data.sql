ALTER TABLE `areatrigger_data`
ADD COLUMN `WithObjectSize` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `MoveEndDespawn`;

update areatrigger_data set WithObjectSize = 1 where entry = 6006;