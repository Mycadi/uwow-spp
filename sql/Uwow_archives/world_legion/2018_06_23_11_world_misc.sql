INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `Cooldown`, `effectmask`) VALUES ('248029', '11', '0.5', '1');

DELETE FROM `spell_script_names` WHERE (`spell_id`='156910') AND (`ScriptName`='spell_pal_beacon_of_light');
DELETE FROM `spell_script_names` WHERE (`spell_id`='177168') AND (`ScriptName`='spell_pal_beacon_of_light');
DELETE FROM `spell_script_names` WHERE (`spell_id`='53563') AND (`ScriptName`='spell_pal_beacon_of_light');
DELETE FROM `spell_script_names` WHERE (`spell_id`='200025') AND (`ScriptName`='spell_pal_beacon_of_virtue');
DELETE FROM `spell_script_names` WHERE (`spell_id`='53651') AND (`ScriptName`='spell_pal_beacon_of_light_proc');

UPDATE `spell_proc_event` SET `Cooldown`='0.2' WHERE (`entry`='192759') AND (`effectmask`='16');

DELETE FROM `spell_proc_event` WHERE `entry` IN (2823);
INSERT INTO `spell_proc_event` VALUES (2823, 0, 8, 0, 262144+8+2+16+2097152, 0, 0, 0, 0, 0, 0, 0.2, 7);

DELETE FROM `spell_proc_event` WHERE `entry` IN (8679);
INSERT INTO `spell_proc_event` VALUES (8679, 0, 8, 0, 262144+8+2+16+2097152, 0, 0, 0, 0, 0, 0, 0.2, 7);

DELETE FROM `spell_proc_event` WHERE `entry` IN (3408);
INSERT INTO `spell_proc_event` VALUES (3408, 0, 8, 0, 262144+8+2+16+2097152, 0, 0, 0, 0, 0, 0, 0.2, 7);