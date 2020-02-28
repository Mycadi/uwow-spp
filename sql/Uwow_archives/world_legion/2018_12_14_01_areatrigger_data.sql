ALTER TABLE `areatrigger_data`
ADD COLUMN `AllowBoxCheck` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `AliveOnly`;