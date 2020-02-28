ALTER TABLE `creature`
    ADD COLUMN `isTeemingSpawn` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `personal_size`;