DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='197834') AND (`spell_effect`='-202754') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='193315') AND (`spell_effect`='197834') AND (`type`='1') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='202754') AND (`effectMask`='0') AND (`actiontype`='0');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='193315') AND (`spell_effect`='197834') AND (`type`='1') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='200733') AND (`effectMask`='0') AND (`actiontype`='0');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='193315') AND (`spell_effect`='197834') AND (`type`='1') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='-202754') AND (`effectMask`='0') AND (`actiontype`='0');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='193315') AND (`spell_effect`='197834') AND (`type`='1') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='199603') AND (`effectMask`='0') AND (`actiontype`='0');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('193315', 'spell_rog_saber_slash');


DELETE FROM `spell_proc_event` WHERE `entry` IN (35551);
INSERT INTO `spell_proc_event` VALUES (35551, 0, 8, 0, 0, 0, 0, 8388608, 0, 0, 0, 0, 1);

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='86392') AND (`spell_effect`='35546') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='35551') AND (`effectMask`='0') AND (`actiontype`='0');

