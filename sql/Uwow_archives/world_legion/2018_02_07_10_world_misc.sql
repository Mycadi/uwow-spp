DELETE FROM `areatrigger_actions` WHERE `entry` IN (718);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `actionType`, `targetFlags`, `spellId`, `comment`) VALUES ('718', '3983', '4', '15', '2', '237371', 'Ring of Peace');

DELETE FROM `areatrigger_data` WHERE `entry` IN (718);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('718', '116844', '3983', '50');

INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('3983', 'areatrigger_at_ring_of_peace');


DELETE FROM `spell_aura_dummy` WHERE (`spellId`='215661') AND (`spellDummyId`='134735') AND (`option`='9') AND (`effectDummy`='0') AND (`effectmask`='1');
DELETE FROM `spell_script_names` WHERE (`spell_id`='215661') AND (`ScriptName`='spell_pal_justicars_vengeance');