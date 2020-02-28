INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('250863', 'spell_gen_reckless_stomp');

INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('250880', '250887', 'Felshock Bombardment');

INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `targetFlags`, `comment`) VALUES ('11334', '16102', '1', 'Lights Protection');
UPDATE `areatrigger_actions` SET `spellId`='250895' WHERE (`entry`='11334') AND (`customEntry`='16102') AND (`id`='0');
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `spellId`, `comment`) VALUES ('11334', '16102', '1', '42', '1', '250895', 'Lights Protection');

INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES ('192759', '-113780', '16', 'Kingsbane');

DELETE FROM `spell_proc_check` WHERE (`entry`='214027') AND (`entry2`='0') AND (`entry3`='0') AND (`checkspell`='0') AND (`hastalent`='-195901') AND (`powertype`='-1') AND (`dmgclass`='-1') AND (`specId`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='214027') AND (`spell_trigger`='195845') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-195845') AND (`spell_effect`='195901') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='195901') AND (`spell_effect`='42292') AND (`type`='1') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');