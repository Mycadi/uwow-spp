delete from spell_target_filter where spellId in (235923, 235988);

update spell_target_filter set `option` = 9, param1 = 1 where spellId in (236454, 236455) and `option` = 24;

delete from spell_script_names where spell_id in (235923, 235988);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(235923, 'spell_tos_spear_of_anguish_filter'),
(235988, 'spell_tos_tormented_cries_filter');

ALTER TABLE `areatrigger_data`
ADD COLUMN `MoveEndDespawn` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 AFTER `RandomRadiusOfSpawn`;

update areatrigger_data set moveEndDespawn = 0 where entry in (10045, 10046, 10047);