delete from spell_target_filter where spellId = 238429;
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(238429, 16, 3, 0, 16, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Bursting Dreadflame - Only Player');

delete from areatrigger_template where entry in (10033, 10024);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(10033, 239267, 14915, 239267, 143, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flaming Detonation'),
(10024, 239256, 14906, 239256, 0, 4, 4, 50, 50, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flaming Orb');

delete from areatrigger_scripts where entry in (1003300, 14915, 1002400, 14906);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(14915, 'at_tos_flaming_detonation'),
(14906, 'at_tos_flaming_orb');

update areatrigger_actions set targetflags = 4194560, maxcharges = 0 where entry = 10033 and id = 2;