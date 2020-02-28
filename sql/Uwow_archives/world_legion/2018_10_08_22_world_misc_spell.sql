INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('234143', 'spell_gen_temptation');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('230150', 'spell_gen_legions_gaze');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('225774', 'spell_gen_nefarious_pact');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-225774') AND (`spell_effect`='225776') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214829', 'spell_gen_chaotic_energy_proc_aura');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214831', 'spell_gen_chaotic_energy');

INSERT INTO `spell_linked_spell` (`spell_trigger`, `comment`) VALUES ('214624', 'Warlords Fortitude');
UPDATE `spell_linked_spell` SET `spell_effect`='214648' WHERE (`spell_trigger`='214624') AND (`spell_effect`='0') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');

DELETE FROM `spell_aura_trigger` WHERE (`spell_id`='214493') AND (`spell_trigger`='214494') AND (`option`='13') AND (`hastalent`='0') AND (`hastalent2`='0');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214493', 'spell_gen_nerubian_chitin');