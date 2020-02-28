INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('209980', 'spell_dh_shatter_soul');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('209981', 'spell_dh_shatter_soul');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('209651', 'spell_dh_shatter_soul');

DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='209980') AND (`spell_trigger`='226370') AND (`option`='0') AND (`aura`='212612');
DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='209980') AND (`spell_trigger`='226263') AND (`option`='0') AND (`aura`='212613');
DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='209981') AND (`spell_trigger`='226258') AND (`option`='0') AND (`aura`='0');
DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='209651') AND (`spell_trigger`='226264') AND (`option`='0') AND (`aura`='212613');
DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='209651') AND (`spell_trigger`='226259') AND (`option`='0') AND (`aura`='212612');


INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('10470', 'areatrigger_rage_of_the_illidari');
DELETE FROM `areatrigger_actions` WHERE (`entry`='5758') AND (`customEntry`='0') AND (`id`='2');
DELETE FROM `areatrigger_actions` WHERE (`entry`='5758') AND (`customEntry`='0') AND (`id`='1');
UPDATE `areatrigger_actions` SET `customEntry`='10470', `actionType`='15', `spellId`='201467' WHERE (`entry`='5758') AND (`customEntry`='0') AND (`id`='0');

DELETE FROM `spell_proc_event` WHERE (`entry`='201472');
INSERT INTO `spell_proc_event` VALUES (201472, 0, 107, 0x20000000, 0, 0, 0, 16, 0, 0, 0, 0, 1);
DELETE FROM `spell_proc_check` WHERE (`entry`='201472') AND (`entry2`='0') AND (`entry3`='0') AND (`checkspell`='201789') AND (`hastalent`='0') AND (`powertype`='-1') AND (`dmgclass`='-1') AND (`specId`='0');
DELETE FROM `spell_proc_check` WHERE (`entry`='201472') AND (`entry2`='0') AND (`entry3`='0') AND (`checkspell`='201628') AND (`hastalent`='0') AND (`powertype`='-1') AND (`dmgclass`='-1') AND (`specId`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='201472') AND (`spell_trigger`='217060') AND (`option`='3') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_script_names` WHERE (`spell_id`='217070') AND (`ScriptName`='spell_dh_rage_of_the_illidari_damage');
DELETE FROM `spell_script_names` WHERE (`spell_id`='217060') AND (`ScriptName`='spell_dh_rage_of_the_illidari');


DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='203539') AND (`spell_effect`='242981') AND (`type`='0') AND (`caster`='3') AND (`target`='0') AND (`hastalent`='238098') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='203538') AND (`spell_effect`='242981') AND (`type`='0') AND (`caster`='3') AND (`target`='0') AND (`hastalent`='238098') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-203538') AND (`spell_effect`='-242981') AND (`type`='0') AND (`caster`='3') AND (`target`='3') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-203539') AND (`spell_effect`='-242981') AND (`type`='0') AND (`caster`='3') AND (`target`='3') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('238098', 'spell_pal_blessing_of_the_ashbringer');


