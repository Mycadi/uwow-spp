DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='47541') AND (`spell_effect`='51460') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='51462') AND (`effectMask`='0') AND (`actiontype`='0');

DELETE FROM `spell_proc_event` WHERE `entry` IN (208199);
INSERT INTO `spell_proc_event` VALUES (208199, 0, 7, 0, 0, 0, 0, 16384+65536+1024+4096, 0, 0, 0, 0, 2);

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='45438') AND (`spell_effect`='-198144') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='198144') AND (`effectMask`='0') AND (`actiontype`='0');