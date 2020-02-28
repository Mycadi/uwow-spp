ALTER TABLE `creature_template`
ADD COLUMN `MaxVisible`  tinyint(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `AffixState`;