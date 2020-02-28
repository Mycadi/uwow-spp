delete from spell_aura_trigger where spell_id = 212587;

delete from areatrigger_data where entry = 7024;
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(7024, 212738, 0, 0, 0, 0, 1500, 500, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry = 7024;
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(7024, 0, 0, 5, 0, 131080, 233195, 1, 212587, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mark of Frost');

delete from spell_script_names where spell_id = 212587;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(212587, 'spell_aluriel_mark_of_frost');
