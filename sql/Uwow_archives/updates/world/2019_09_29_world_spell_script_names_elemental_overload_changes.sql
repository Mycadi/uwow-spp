DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '114074') and (`ScriptName` = 'spell_sha_elemental_overload');
DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '188196') and (`ScriptName` = 'spell_sha_elemental_overload');
DELETE FROM `world`.`spell_script_names` WHERE (`spell_id` = '188443') and (`ScriptName` = 'spell_sha_elemental_overload');
INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('114074', 'spell_sha_elemental_overload');
INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('188196', 'spell_sha_elemental_overload');
INSERT INTO `world`.`spell_script_names` (`spell_id`, `ScriptName`) VALUES ('188443', 'spell_sha_elemental_overload');