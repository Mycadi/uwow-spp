DELETE FROM `spell_proc_check` WHERE (`entry`='214633') AND (`entry2`='0') AND (`entry3`='0') AND (`checkspell`='0') AND (`hastalent`='-194384') AND (`powertype`='-1') AND (`dmgclass`='-1') AND (`specId`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='214633') AND (`spell_trigger`='214637') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');


UPDATE `areatrigger_actions` SET `actionType`='15', `auraCaster`='0' WHERE (`entry`='4424') AND (`customEntry`='9170') AND (`id`='0');
DELETE FROM `areatrigger_scripts` WHERE `ScriptName` = 'areatrigger_at_freezing_trap' OR `entry` = '9170'; 
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('9170', 'areatrigger_at_freezing_trap'); 
DELETE FROM `areatrigger_actions` WHERE (`entry`='4424') AND (`customEntry`='9170') AND (`id`='1');
DELETE FROM `areatrigger_actions` WHERE (`entry`='4424') AND (`customEntry`='9170') AND (`id`='2');


DELETE FROM `areatrigger_actions` WHERE (`entry`='4436') AND (`customEntry`='3841') AND (`id`='4');
DELETE FROM `areatrigger_actions` WHERE (`entry`='4436') AND (`customEntry`='3841') AND (`id`='5');
DELETE FROM `areatrigger_actions` WHERE (`entry`='4435') AND (`customEntry`='9181') AND (`id`='1');
UPDATE `areatrigger_actions` SET `actionType`='15' WHERE (`entry`='4435') AND (`customEntry`='9181') AND (`id`='0');
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('9181', 'areatrigger_at_tar_trap');


INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('6966', 'areatrigger_at_steel_trap');
DELETE FROM `areatrigger_actions` WHERE (`entry`='2392') AND (`customEntry`='6966') AND (`id`='3');
DELETE FROM `areatrigger_actions` WHERE (`entry`='2392') AND (`customEntry`='6966') AND (`id`='2');
DELETE FROM `areatrigger_actions` WHERE (`entry`='2392') AND (`customEntry`='6966') AND (`id`='1');
DELETE FROM `areatrigger_actions` WHERE (`entry`='2392') AND (`customEntry`='6966') AND (`id`='0');
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES ('2392', '6966', '15', '2', '162480', '1', 'Steel Trap');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='162480') AND (`spell_effect`='162487') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');


DELETE FROM `spell_proc_event` WHERE `entry` IN (195452);
INSERT INTO `spell_proc_event` VALUES (195452, 0, 0, 0, 0, 0, 0, 8+32+128+512, 0, 0, 0, 0, 2);

DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='106839') AND (`spell_trigger`='221514') AND (`option`='4') AND (`aura`='0');
DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='106839') AND (`spell_trigger`='93985') AND (`option`='4') AND (`aura`='0');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('106839', '221514', 'Skull Bash');