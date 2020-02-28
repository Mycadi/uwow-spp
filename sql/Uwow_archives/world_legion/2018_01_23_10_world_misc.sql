DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='132403') AND (`spell_effect`='-242869') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_proc_event` WHERE `entry` IN (242869);
UPDATE `spell_proc_event` SET `procFlags`='0' WHERE (`entry`='240837') AND (`effectmask`='1');
UPDATE `spell_proc_event` SET `procFlags`='0' WHERE (`entry`='213680') AND (`effectmask`='3');
DELETE FROM `spell_proc_event` WHERE `entry` IN (202574);


DELETE FROM `spell_script_names` WHERE (`spell_id`='120086') AND (`ScriptName`='spell_monk_fists_of_fury_stun');


DELETE FROM `spell_proc_event` WHERE `entry` IN (213610);
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES ('213610', '256');

DELETE FROM `spell_trigger` WHERE (`spell_id`='193884') AND (`spell_trigger`='198533') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');