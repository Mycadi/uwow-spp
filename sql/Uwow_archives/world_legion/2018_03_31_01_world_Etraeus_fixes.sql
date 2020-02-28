update areatrigger_template set visualId = 206399, decalPropertiesId = 84 where entry = 6216;
update areatrigger_data set updateDelay = 200 where entry = 6216;

delete from areatrigger_actions where entry = 6216 and id = 3;
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(6216, 10916, 3, 1024, 4, 8, 208904, 0, 0, 0, 0, 0.15, 0, 10, 0, 0, 0, 0, 0, 'NH Augur- Scale FelFlame');

update areatrigger_actions set moment = 5 where entry = 6116;

delete from areatrigger_data where entry = 6116;
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(6116, 205429, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(6116, 205445, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(6116, 216344, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(6116, 216345, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0);