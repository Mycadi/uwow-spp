UPDATE `creature_template` SET `ScriptName`='npc_city_invader', flags_extra = 512 WHERE (`entry`='116136');
DELETE FROM `creature_equip_template` WHERE (`CreatureID`='116136') AND (`ID`='1');

DELETE FROM spell_script_names WHERE spell_id in (231193,231163);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('231193', 'spell_volunteer_city_guard'),
('231163', 'spell_volunteer_city_guard');
