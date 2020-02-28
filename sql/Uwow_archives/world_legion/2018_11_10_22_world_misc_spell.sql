DELETE FROM `spell_proc_check` WHERE (`entry`='242622') AND (`entry2`='248747') AND (`entry3`='0') AND (`checkspell`='0') AND (`hastalent`='0') AND (`powertype`='-1') AND (`dmgclass`='-1') AND (`specId`='0');
INSERT INTO `spell_proc_event` (`entry`, `effectmask`) VALUES ('242622', '2');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242622', 'spell_gen_guiding_hand');

UPDATE `areatrigger_data` SET `updateDelay`='0' WHERE (`entry`='10858') AND (`spellId`='246461') AND (`customEntry`='15685');
DELETE FROM `areatrigger_actions` WHERE (`entry`='10858') AND (`customEntry`='15685') AND (`id`='0');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('246463', 'spell_gen_command_dread_reflections');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `comment`) VALUES ('246461', 'Command Dread Reflections');
UPDATE `spell_linked_spell` SET `spell_effect`='246463' WHERE (`spell_trigger`='246461') AND (`spell_effect`='0') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');

INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('11808', 'areatrigger_gen_raging_storm');
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `actionType`, `spellId`, `comment`) VALUES ('7360', '11808', '15', '215296', 'Raging Storm');
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `param1`, `param2`, `effectMask`, `maxcount`, `comments`) VALUES ('215314', '31', '1', '-1', '1', '5', 'Raging Storm');

DELETE FROM `areatrigger_actions` WHERE `entry` IN (10415);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `actionType`, `spellId`, `comment`) VALUES ('10415', '15273', '1024', '19', '246560', 'Terror From Below');
INSERT INTO `areatrigger_data` (`entry`, `spellId`) VALUES ('10415', '246560');
UPDATE `areatrigger_data` SET `customEntry`='15273', `updateDelay`='500' WHERE (`entry`='10415') AND (`spellId`='246560') AND (`customEntry`='0');
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('15273', 'areatrigger_gen_at_terror_from_below');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242524', 'spell_gen_terror_from_below');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242525', 'spell_gen_terror_from_below_dmg');

UPDATE `areatrigger_scripts` SET `ScriptName`='areatrigger_gen_at_misc' WHERE (`entry`='12410');
UPDATE `areatrigger_scripts` SET `ScriptName`='areatrigger_gen_at_misc' WHERE (`entry`='15273');
UPDATE `spell_script_names` SET `ScriptName`='spell_gen_misc' WHERE (`spell_id`='242524') AND (`ScriptName`='spell_gen_terror_from_below');
UPDATE `spell_script_names` SET `ScriptName`='spell_gen_misc' WHERE (`spell_id`='222187') AND (`ScriptName`='spell_gen_volatile_ichor');