ALTER TABLE `areatrigger_data`
ADD COLUMN `AliveOnly` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 AFTER `WithObjectSize`;