-- Skorpyron
delete from areatrigger_template where entry = 6011;
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(6011, 204289, 601100, 204289, 0, 1.5, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Volatile Fragments - LOS Blocker');

delete from areatrigger_data where entry in (3928,6011,8024,8025);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(6011, 204289, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (3928,6011,8024,8025);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scale`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(6011, 0, 0, 5, 0, 4194312, 204284, 0, -204284, 0, 0, 0, 0, 0, 0, 0, 0, 'Crystalline Fragments Apply'),
(6011, 0, 1, 42, 1, 8, 204284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crystalline Fragments Remove');

delete from areatrigger_scripts where entry = 601100;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(601100, 'at_skorpyron_los_blocker');

delete from spell_target_filter where spellId = 204316;
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(204316, 16, 3, 0, 16, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Shockwave');

-- Anomaly
delete from spell_script_names where spell_id in (226845);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(226845, 'spell_anomaly_temporal_charge_remove');

-- Aluriel
update areatrigger_actions set targetflags = 520, aura = -213166 where entry = 7080;
update areatrigger_actions set entry = 7074 where entry = 9086;

delete from spell_script_names where spell_id in (212530,213145,213182);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(212530, 'spell_replicate_mark_of_frost_filter'),
(213145, 'spell_aluriel_searing_brand_filter'),
(213182, 'spell_aluriel_searing_brand_filter');