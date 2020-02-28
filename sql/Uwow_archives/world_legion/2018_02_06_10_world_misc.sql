DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='85256') AND (`spell_effect`='186811') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='186788') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='53385') AND (`spell_effect`='186825') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='186788') AND (`effectMask`='0') AND (`actiontype`='0');
UPDATE `creature_template` SET `ScriptName`='npc_pal_echo_of_the_highlord' WHERE (`entry`='94358');
UPDATE `creature_template` SET `ScriptName`='npc_pal_echo_of_the_highlord1' WHERE (`entry`='94365');

DELETE FROM `spell_pet_auras` WHERE (`petEntry`='94358') AND (`spellId`='31366') AND (`option`='0') AND (`target`='0') AND (`bp0`='0') AND (`aura`='0') AND (`createdspell`='0');
DELETE FROM `spell_pet_auras` WHERE (`petEntry`='94358') AND (`spellId`='41055') AND (`option`='0') AND (`target`='0') AND (`bp0`='0') AND (`aura`='0') AND (`createdspell`='0');

DELETE FROM `spell_pet_auras` WHERE (`petEntry`='94365') AND (`spellId`='31366') AND (`option`='0') AND (`target`='0') AND (`bp0`='0') AND (`aura`='0') AND (`createdspell`='0');
DELETE FROM `spell_pet_auras` WHERE (`petEntry`='94365') AND (`spellId`='41055') AND (`option`='0') AND (`target`='0') AND (`bp0`='0') AND (`aura`='0') AND (`createdspell`='0');

DELETE FROM `creature_equip_template` WHERE (`CreatureID`='94358') AND (`ID`='1');

DELETE FROM `spell_visual_kit` WHERE `spellId` IN (53385);
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='53385') AND (`spell_effect`='186775') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='186773') AND (`effectMask`='0') AND (`actiontype`='0');

INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `addcaster`, `comments`) VALUES ('186878', '15', '-1', '1', '4', 'Echo of the Highlord');

INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('9110', 'areatrigger_at_divine_tempest');
DELETE FROM `areatrigger_actions` WHERE (`entry`='4366') AND (`customEntry`='9110') AND (`id`='0');
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `actionType`, `comment`) VALUES ('4366', '9110', '15', 'Divine Tempest');
UPDATE `areatrigger_actions` SET `spellId`='224239' WHERE (`entry`='4366') AND (`customEntry`='9110') AND (`id`='0');

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` IN (186878);

DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='53385') AND (`spell_trigger`='224239') AND (`option`='0') AND (`aura`='-186773');
DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='53385') AND (`spell_trigger`='215257') AND (`option`='5') AND (`aura`='193058');

DELETE FROM `spell_target_filter` WHERE (`spellId`='53385') AND (`targetId`='30') AND (`option`='4') AND (`param1`='0') AND (`param2`='0') AND (`param3`='0');


UPDATE `spell_proc_event` SET `procFlags`='0' WHERE (`entry`='211181') AND (`effectmask`='1');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('211183', 'spell_hun_t19_bm');


