DELETE FROM `areatrigger_actions` WHERE (`entry`='5975') AND (`customEntry`='10663') AND (`id`='1');
UPDATE `areatrigger_actions` SET `actionType`='15' WHERE (`entry`='5975') AND (`customEntry`='10663') AND (`id`='0');
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('10663', 'spell_pal_at_last_defender');