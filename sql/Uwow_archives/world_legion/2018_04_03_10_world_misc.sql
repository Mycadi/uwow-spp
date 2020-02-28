DELETE FROM `spell_proc_event` WHERE `entry` IN (216995);
INSERT INTO `spell_proc_event` VALUES (216995, 0, 53, 0, 0, 32768, 0, 1024, 0, 0, 0, 0, 1);

DELETE FROM `spell_aura_dummy` WHERE (`spellId`='227344') AND (`spellDummyId`='216992') AND (`option`='9') AND (`effectDummy`='0') AND (`effectmask`='1');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='116694') AND (`spellDummyId`='216992') AND (`option`='9') AND (`effectDummy`='0') AND (`effectmask`='1');


DELETE FROM `spell_proc_event` WHERE `entry` IN (116680);
INSERT INTO `spell_proc_event` VALUES (116680, 0, 53, 0, 0, 0, 2, 1024, 0, 0, 0, 0, 1);
INSERT INTO `spell_proc_event` VALUES (116680, 0, 53, 33554432, 0, 0, 0, 16384, 0, 0, 0, 0, 2);
INSERT INTO `spell_proc_event` VALUES (116680, 0, 53, 0, 0, 32768, 0, 1024, 0, 0, 0, 0, 4);
INSERT INTO `spell_proc_event` VALUES (116680, 0, 53, 67108864, 0, 32768, 0, 16384, 0, 0, 0, 0, 16);


DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='115151') AND (`spell_effect`='-116680') AND (`type`='1') AND (`caster`='0') AND (`target`='10') AND (`hastalent`='116680') AND (`effectMask`='0') AND (`actiontype`='7');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='116694') AND (`spell_effect`='-116680') AND (`type`='1') AND (`caster`='0') AND (`target`='10') AND (`hastalent`='116680') AND (`effectMask`='0') AND (`actiontype`='7');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='116670') AND (`spell_effect`='-116680') AND (`type`='1') AND (`caster`='0') AND (`target`='10') AND (`hastalent`='116680') AND (`effectMask`='0') AND (`actiontype`='7');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='124682') AND (`spell_effect`='-116680') AND (`type`='1') AND (`caster`='0') AND (`target`='10') AND (`hastalent`='116680') AND (`effectMask`='0') AND (`actiontype`='7');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='191837') AND (`spell_effect`='-116680') AND (`type`='1') AND (`caster`='0') AND (`target`='10') AND (`hastalent`='116680') AND (`effectMask`='0') AND (`actiontype`='7');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='227344') AND (`spell_effect`='-116680') AND (`type`='1') AND (`caster`='0') AND (`target`='10') AND (`hastalent`='116680') AND (`effectMask`='0') AND (`actiontype`='7');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='227345') AND (`spell_effect`='-116680') AND (`type`='1') AND (`caster`='0') AND (`target`='10') AND (`hastalent`='116680') AND (`effectMask`='0') AND (`actiontype`='7');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='116680') AND (`spell_effect`='116680') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='197895') AND (`effectMask`='0') AND (`actiontype`='7');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='191837') AND (`spell_effect`='-197218') AND (`type`='8') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='-116680') AND (`effectMask`='0') AND (`actiontype`='0');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('116680', 'spell_monk_thunder_focus_tea');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('191837', 'spell_monk_essence_font');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='191837') AND (`spell_effect`='-217000') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='216506') AND (`effectMask`='0') AND (`actiontype`='7');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='115151') AND (`spell_effect`='119611') AND (`type`='1') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='1') AND (`actiontype`='0');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('115151', 'spell_monk_renewing_mist_main');

DELETE FROM `spell_target_filter` WHERE (`spellId`='119607') AND (`targetId`='31') AND (`option`='0') AND (`param1`='0') AND (`param2`='1') AND (`param3`='0');
DELETE FROM `spell_target_filter` WHERE (`spellId`='119607') AND (`targetId`='31') AND (`option`='2') AND (`param1`='-40') AND (`param2`='1') AND (`param3`='0');
DELETE FROM `spell_target_filter` WHERE (`spellId`='119607') AND (`targetId`='31') AND (`option`='1') AND (`param1`='-119611') AND (`param2`='1') AND (`param3`='0');


DELETE FROM `spell_script_names` WHERE (`spell_id`='106839') AND (`ScriptName`='spell_dru_skull_bash');
DELETE FROM `spell_script_names` WHERE (`spell_id`='186260') AND (`ScriptName`='spell_hun_harpoon_dest');
DELETE FROM `spell_script_names` WHERE (`spell_id`='36554') AND (`ScriptName`='spell_rog_shadowstep');
DELETE FROM `spell_script_names` WHERE (`spell_id`='92832') AND (`ScriptName`='spell_rog_shadowstep');


DELETE FROM `spell_proc_event` WHERE `entry` IN (194310);
INSERT INTO `spell_proc_event` VALUES (194310, 0, 0, 0, 0, 0, 0, 2148040704, 3, 0, 0, 0, 1);