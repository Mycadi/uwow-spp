delete from spell_target_filter where spellId = 200551;
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(200551, 15, 27, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Crystal Spikes - Priority Range');

update gameobject_template set IgnoreDynLos = 1 where entry = 246251;

delete from areatrigger_data where entry = 8688;
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(8688, 226489, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 0);