delete from areatrigger_data where entry in (9376,9368);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(9376, 232886, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(9368, 232885, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (9376,9368,9377);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(9376, 0, 0, 4, 15, 8, 232918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Devouring Maw - Remove Befouling Ink'),
(9368, 0, 0, 5, 0, 8, 232885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Devour Whole'),
(9377, 0, 0, 1, 0, 8, 232913, 1, -232913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Befouling Ink - Apply');

delete from areatrigger_scripts where entry in (13368);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(13368, 'at_sasszine_devouring_maw');