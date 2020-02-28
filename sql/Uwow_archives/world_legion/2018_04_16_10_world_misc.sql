UPDATE `creature_template` SET `ScriptName`='npc_fel_guard' WHERE (`entry`='17252');

DELETE FROM `spell_proc_event` WHERE `entry` IN (208895);
INSERT INTO `spell_proc_event` VALUES (208895, 0, 8, 0, 0, 0, 0, 16+256+1024+4096, 0, 0, 0, 0, 2);