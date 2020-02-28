DELETE FROM `spell_script_names` WHERE (`spell_id`='148022') AND (`ScriptName`='spell_mage_icicle_damage');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('216519', 'spell_monk_celestial_fortune');
DELETE FROM `spell_trigger` WHERE (`spell_id`='216519') AND (`spell_trigger`='216521') AND (`option`='3') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');

DELETE FROM `spell_script_names` WHERE (`spell_id`='35079') AND (`ScriptName`='spell_hun_misdirection_proc');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('34477', 'spell_hun_misdirection');
DELETE FROM `spell_proc_event` WHERE (`entry`='34477') AND (`effectmask`='7');