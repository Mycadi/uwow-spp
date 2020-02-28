DELETE FROM `spell_proc_event` WHERE `entry` IN (44544);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('30455', 'spell_mage_ice_lance_main');


INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('76613', 'spell_mage_mastery_icicles');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='30455') AND (`spell_effect`='148023') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='76613') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_script_names` WHERE (`spell_id`='116') AND (`ScriptName`='spell_mage_frostbolt');
DELETE FROM `spell_script_names` WHERE (`spell_id`='228597') AND (`ScriptName`='spell_mage_frostbolt');
DELETE FROM `spell_trigger` WHERE (`spell_id`='76613') AND (`spell_trigger`='148016') AND (`option`='3') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='-148016') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='76613') AND (`spell_trigger`='148012') AND (`option`='3') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='-148012') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='76613') AND (`spell_trigger`='148013') AND (`option`='3') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='-148013') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='76613') AND (`spell_trigger`='148014') AND (`option`='3') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='-148014') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='76613') AND (`spell_trigger`='148015') AND (`option`='3') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='-148015') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='76613') AND (`spell_trigger`='205473') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');