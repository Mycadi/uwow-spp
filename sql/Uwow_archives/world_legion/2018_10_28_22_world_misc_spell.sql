DELETE FROM `areatrigger_actions` WHERE `entry` IN (8210);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `actionType`, `spellId`, `comment`) VALUES ('8210', '12410', '1024', '19', '222194', 'Volatile Ichor');
INSERT INTO `areatrigger_data` (`entry`, `spellId`) VALUES ('8210', '222194');
UPDATE `areatrigger_data` SET `customEntry`='12410', `updateDelay`='500' WHERE (`entry`='8210') AND (`spellId`='222194') AND (`customEntry`='0');
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('12410', 'areatrigger_gen_volatile_ichor');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('222187', 'spell_gen_volatile_ichor');