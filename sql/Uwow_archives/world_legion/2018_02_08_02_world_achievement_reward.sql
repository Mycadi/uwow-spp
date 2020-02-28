ALTER TABLE `achievement_reward`
ADD COLUMN `genderTitle` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 AFTER `title_H`,
ADD COLUMN `castSpell` int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `learnSpell`;