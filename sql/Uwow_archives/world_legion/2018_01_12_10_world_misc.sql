INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('7377', 'areatrigger_at_windwalking');
DELETE FROM `areatrigger_actions` WHERE (`entry`='2763') AND (`customEntry`='7377') AND (`id`='0');
DELETE FROM `areatrigger_actions` WHERE (`entry`='2763') AND (`customEntry`='7377') AND (`id`='1');
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `targetFlags`, `spellId`, `comment`) VALUES ('2763', '7377', '4196360', '166646', 'Windwalking');
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('2763', '157411', '7377', '5000');


DELETE FROM `spell_proc_event` WHERE (`entry`='212371') AND (`effectmask`='1');
DELETE FROM `spell_trigger` WHERE (`spell_id`='212371');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('198590', 'spell_warl_drain_soul');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('980', 'spell_warl_agony');
DELETE FROM `spell_aura_trigger` WHERE (`spell_id`='980');