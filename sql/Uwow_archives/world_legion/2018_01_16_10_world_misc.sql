DELETE FROM `spell_trigger` WHERE (`spell_id`='239042');
DELETE FROM `spell_proc_event` WHERE (`entry`='239042');
INSERT INTO `spell_proc_event` VALUES (239042, 0, 0, 0, 0, 0, 0, 16+256+16384+65536+262144, 0, 0, 0, 0, 1);