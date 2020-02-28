delete from creature where id in (122104,122494,122533,122543,122555,122558,122559,122211,122212,122213,122733,122586,122628,122647,122587,122588,128293,122953,122966,122438) and `map` = 1712;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`) VALUES
(122104, 1712, 8638, 8638, 245760, 1, '', 0, 0, -3704.44, -1352.85, 624.321, 4.71695, 604800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'boss_hasabel', flags_extra = 1 where entry = 122104;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_hasabel_gateways', flags_extra = 130 where entry in (122494,122533,122543,122555,122558,122559);
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_hasabel_guards' where entry in (122211,122212,122213);
update creature_template set mechanic_immune_mask = 617299967, flags_extra = 130 where entry in (122586,122587,122588,128293,122628,122647,122953,122966);
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_hasabel_collapsing_world', flags_extra = 130 where entry = 122425;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_hasabel_felcrush_portal' where entry = 122438;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_hasabel_transport_portal' where entry = 122761;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_hasabel_everburning_flames' where entry in (122733,123003);
update creature_template set ScriptName = 'npc_hasabel_portal_summon' where entry in (122783,123223,123702);
update creature_template set ScriptName = 'npc_hasabel_felsilk_web' where entry = 122897;

update creature_template_wdb set Classification = 3 where entry in (122104);

delete from creature_summon_groups where summonerId = 122104;
INSERT INTO `creature_summon_groups` (`summonerId`, `id`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `count`, `actionType`, `distance`, `summonType`, `summonTime`) VALUES
(122104, 0, 0, 0, 122211, -3795.23, -1417.64, 645.324, 0.51, 0, 0, 0, 8, 0),
(122104, 1, 0, 0, 122212, -3704.32, -1251.28, 649.886, 4.72, 0, 0, 0, 8, 0),
(122104, 2, 0, 0, 122213, -3612.81, -1413.21, 645.329, 2.46, 0, 0, 0, 8, 0),
(122104, 3, 0, 0, 122494, -3732.36, -1368, 624.5, 0.53, 0, 0, 0, 8, 0),
(122104, 4, 0, 0, 122533, -3764.25, -1395.18, 645.537, 3.71, 0, 0, 0, 8, 0),
(122104, 5, 0, 0, 122543, -3704.29, -1317.82, 624.489, 4.70, 0, 0, 0, 8, 0),
(122104, 6, 0, 0, 122555, -3704.62, -1287.44, 650.191, 1.75, 0, 0, 0, 8, 0),
(122104, 7, 0, 0, 122558, -3676.23, -1367.07, 624.5, 2.63, 0, 0, 0, 8, 0),
(122104, 8, 0, 0, 122559, -3641.39, -1393.46, 645.579, 5.64, 0, 0, 0, 8, 0),
(122104, 9, 0, 0, 122586, -3793.12, -1416.59, 645.326, 0, 0, 0, 0, 8, 0),
(122104, 10, 0, 0, 122587, -3704.09, -1250.74, 649.88, 0, 0, 0, 0, 8, 0),
(122104, 11, 0, 0, 122588, -3611.74, -1414.95, 645.326, 0, 0, 0, 0, 8, 0),
(122104, 12, 0, 0, 122628, -3791.49, -1414.44, 645.537, 0.53, 0, 0, 0, 8, 0),
(122104, 13, 0, 0, 122647, -3704.8, -1254.94, 650.191, 4.68, 0, 0, 0, 8, 0),
(122104, 14, 0, 0, 122953, -3617.69, -1410.92, 645.579, 2.59, 0, 0, 0, 8, 0),
(122104, 15, 0, 0, 122966, -3592.46, -1391.48, 645.579, 0, 0, 0, 0, 8, 0),
(122104, 16, 0, 0, 122966, -3610.73, -1415.42, 645.579, 0, 0, 0, 0, 8, 0),
(122104, 17, 0, 0, 122966, -3621.93, -1441.85, 645.579, 0, 0, 0, 0, 8, 0);

delete from creature_template_addon where entry in (122494,122533,122543,122555,122558,122559,122586,122587,122588,122628,122647,122953);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(122494, 0, 0, 0, 0, 0, '244075'),
(122533, 0, 0, 0, 0, 0, '248538'),
(122543, 0, 0, 0, 0, 0, '244129'),
(122555, 0, 0, 0, 0, 0, '248539'),
(122558, 0, 0, 0, 0, 0, '244144'),
(122559, 0, 0, 0, 0, 0, '248537'),
(122586, 0, 0, 0, 0, 0, '244393'),
(122587, 0, 0, 0, 0, 0, '244404'),
(122588, 0, 0, 0, 0, 0, '244401'),
(122628, 0, 0, 0, 0, 0, '251144'),
(122647, 0, 0, 0, 0, 0, '251145'),
(122953, 0, 0, 0, 0, 0, '251146');

delete from areatrigger_template where entry in (10581,10595,10601,10602,10604,10605,11772,11773,11774,10722,10715,10658);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(10581, 244017, 1058100, 244017, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Xoroth Enter'),
(10595, 244111, 1059500, 244111, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Xoroth Exit'),
(10601, 244137, 1060100, 244137, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Rancora Enter'),
(10602, 244139, 1060200, 244139, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Rancora Exit'),
(10604, 244148, 1060400, 244148, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Nathreza Enter'),
(10605, 244149, 1060500, 244149, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Nathreza Exit'),
(11772, 254507, 1177200, 254507, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Xoroth'),
(11773, 254511, 1177300, 254511, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Rancora'),
(11774, 254515, 1177400, 254515, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Nathreza'),
(10722, 245153, 1072200, 245153, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3128, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Everburning Light'),
(10715, 245094, 1071500, 245094, 0, 40, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mind Fog'),
(10658, 244742, 1065800, -244838, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Acid Cloud');

delete from areatrigger_data where entry in (11774,10808,10715);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`) VALUES
(11774, 254515, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(10808, 245153, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(10715, 245094, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 1);

delete from areatrigger_actions where entry in (10581,10595,10601,10602,10604,10605,11772,11773,11774,10647,10808,10722,10715,10716,10658);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10581, 0, 0, 1, 0, 8, 252776, 0, -252776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Xoroth Enter'),
(10595, 0, 0, 1, 0, 8, 252776, 0, -252776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Xoroth Exit'),
(10601, 0, 0, 1, 0, 8, 252777, 0, -252777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Rancora Enter'),
(10602, 0, 0, 1, 0, 8, 252777, 0, -252777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Rancora Exit'),
(10604, 0, 0, 1, 0, 8, 244494, 0, -244494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Nathreza Enter'),
(10605, 0, 0, 1, 0, 8, 244494, 0, -244494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gateway: Nathreza Exit'),
(11772, 0, 0, 1, 0, 8, 244455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Xoroth - Apply'),
(11772, 0, 1, 42, 1, 8, 244455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Xoroth - Remove'),
(11772, 0, 2, 1, 0, 262144, 244454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122211, 0, 0, 0, 'Portal: Xoroth - Apply NPC'),
(11772, 0, 3, 42, 1, 262144, 244454, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122211, 0, 0, 0, 'Portal: Xoroth - Remove NPC'),
(11773, 0, 0, 1, 0, 8, 244512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Rancora - Apply'),
(11773, 0, 1, 42, 1, 8, 244512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Rancora - Remove'),
(11773, 0, 2, 1, 0, 262144, 244515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122212, 0, 0, 0, 'Portal: Rancora - Apply NPC'),
(11773, 0, 3, 42, 1, 262144, 244515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122212, 0, 0, 0, 'Portal: Rancora - Remove NPC'),
(11774, 0, 0, 5, 0, 8, 244513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Nathreza - Apply'),
(11774, 0, 1, 42, 1, 8, 244513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Portal: Nathreza - Remove'),
(11774, 0, 2, 1, 0, 262144, 245055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122213, 0, 0, 0, 'Portal: Nathreza - Apply NPC'),
(11774, 0, 3, 42, 1, 262144, 245055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122213, 0, 0, 0, 'Portal: Nathreza - Remove NPC'),
(10647, 0, 0, 1, 0, 8, 244613, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Everburning Flames'),
(10808, 0, 0, 1, 0, 8, 244613, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Everburning Flames'),
(10722, 0, 0, 1, 0, 8, 245157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Everburning Light - Apply'),
(10722, 0, 1, 42, 1, 8, 245157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Everburning Light - Remove'),
(10715, 0, 0, 5, 0, 8, 245099, 0, -245099, -245157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mind Fog - Apply'),
(10715, 0, 1, 42, 1, 8, 245099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mind Fog - Remove'),
(10715, 0, 2, 6, 1, 8, 245099, 0, 245099, 245157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mind Fog - Remove'),
(10716, 0, 0, 1, 0, 8, 245118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cloying Shadows - Apply'),
(10658, 0, 0, 1, 0, 8, 244849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Caustic Slime - Apply');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (257939,257941,257942);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 257939, 0, 0, 31, 0, 3, 122494, 0, 0, 0, '', NULL),
(13, 1, 257941, 0, 0, 31, 0, 3, 122543, 0, 0, 0, '', NULL),
(13, 1, 257942, 0, 0, 31, 0, 3, 122558, 0, 0, 0, '', NULL);

delete from spell_area where spell in (245050);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `classmask`, `active_event`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(245050, 8638, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11);

delete from spell_target_filter where spellId in (245050);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(245050, 0, 15, 26, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 'Delusions - Only Healers');

delete from spell_script_names where spell_id in (247143,244016,244021,244687,244613,244949,246316,245118,245075,244849,244915);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(247143, 'spell_hasabel_energize'),
(244016, 'spell_hasabel_reality_tear'),
(244021, 'spell_hasabel_bursting_darkness'),
(244687, 'spell_hasabel_transport_portal'),
(244613, 'spell_hasabel_everburning_flames'),
(244949, 'spell_hasabel_felsilk_wrap'),
(246316, 'spell_hasabel_poison_essence'),
(245118, 'spell_hasabel_cloying_shadows'),
(245075, 'spell_hasabel_hungering_gloom'),
(244849, 'spell_hasabel_caustic_slime'),
(244915, 'spell_hasabel_leech_essence');

delete from waypoint_data_script where id in (613844,613845,613849,613848,587326,587325);
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `speed`, `action`, `action_chance`, `entry`, `wpguid`) VALUES
(613844, 1, -3745.12, -1362.78, 641.44, 0, 0, 1, 25, 0, 100, 0, 0),
(613844, 2, -3774.40, -1385.60, 658.29, 0, 0, 1, 25, 0, 100, 0, 0),
(613844, 3, -3777.60, -1394.79, 650.91, 0, 0, 1, 25, 357, 100, 0, 0),

(613845, 1, -3761.57, -1394.90, 661.11, 0, 0, 1, 25, 0, 100, 0, 0),
(613845, 2, -3744.94, -1362.79, 645.56, 0, 0, 1, 25, 0, 100, 0, 0),
(613845, 3, -3723.10, -1361.01, 628.82, 0, 0, 1, 25, 357, 100, 0, 0),

(613849, 1, -3686.73, -1314.19, 651.54, 0, 0, 1, 25, 0, 100, 0, 0),
(613849, 2, -3691.52, -1291.96, 665.61, 0, 0, 1, 25, 0, 100, 0, 0),
(613849, 3, -3699.71, -1277.36, 655.11, 0, 0, 1, 25, 358, 100, 0, 0),

(613848, 1, -3710.66, -1278.23, 672.88, 0, 0, 1, 25, 0, 100, 0, 0),
(613848, 2, -3699.12, -1319.27, 644.02, 0, 0, 1, 25, 0, 100, 0, 0),
(613848, 3, -3703.59, -1328.97, 633.44, 0, 0, 1, 25, 358, 100, 0, 0),

(587326, 1, -3666.30, -1383.21, 667.72, 0, 0, 1, 25, 0, 100, 0, 0),
(587326, 2, -3639.50, -1402.65, 657.81, 0, 0, 1, 25, 0, 100, 0, 0),
(587326, 3, -3632.80, -1401.42, 647.88, 0, 0, 1, 25, 359, 100, 0, 0),

(587325, 1, -3633.81, -1382.53, 666.31, 0, 0, 1, 25, 0, 100, 0, 0),
(587325, 2, -3681.93, -1374.09, 644.10, 0, 0, 1, 25, 0, 100, 0, 0),
(587325, 3, -3685.24, -1358.61, 629.50, 0, 0, 1, 25, 359, 100, 0, 0);

delete from waypoint_scripts where id in (357,358,359);
INSERT INTO `waypoint_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`, `guid`) VALUES
(357, 0, 14, 252776, 1, 0, 0, 0, 0, 0, 357),
(358, 0, 14, 252777, 1, 0, 0, 0, 0, 0, 358),
(359, 0, 14, 244494, 1, 0, 0, 0, 0, 0, 359);

delete from creature_difficulty_stat where entry in (122104,122211,122212,122213,122783,123223,123702);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(122104, 14, 1, 1746.97),
(122104, 15, 1, 2183.71),
(122104, 16, 1, 6401.55),
(122104, 17, 1, 1572.27),
(122211, 14, 1, 102.384),
(122211, 15, 1, 127.98),
(122211, 16, 1, 416.859),
(122211, 17, 1, 92.1456),
(122212, 14, 1, 102.384),
(122212, 15, 1, 127.98),
(122212, 16, 1, 416.859),
(122212, 17, 1, 92.1456),
(122213, 14, 1, 102.384),
(122213, 15, 1, 127.98),
(122213, 16, 1, 416.859),
(122213, 17, 1, 92.1456),
(122783, 14, 1, 4.25),
(122783, 15, 1, 5.3125),
(122783, 16, 1, 19.821),
(122783, 17, 1, 3.825),
(123223, 14, 1, 27),
(123223, 15, 1, 33.75),
(123223, 16, 1, 89.9437),
(123223, 17, 1, 24.3),
(123702, 14, 1, 15),
(123702, 15, 1, 18.75),
(123702, 16, 1, 49.9687),
(123702, 17, 1, 13.5);

delete from creature_text where entry in (122104,122211,122212,122213);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(122104, 0, 0, 'The Legion devastates all who oppose us!', 14, 0, 100, 0, 0, 86892, 133160, 0, 0, 0, 'AGGRO_1'),
(122104, 0, 1, 'Is this the best you could muster? Hah. Pathetic.', 14, 0, 100, 0, 0, 86893, 133162, 0, 0, 0, 'AGGRO_2'),
(122104, 1, 0, 'Witness the power to destroy worlds!', 14, 0, 100, 0, 0, 85747, 133167, 0, 0, 0, 'COLLAPSING_WORLD_1'),
(122104, 1, 1, 'Witness the fate of all who oppose us.', 14, 0, 100, 0, 0, 86881, 133165, 0, 0, 0, 'COLLAPSING_WORLD_2'),
(122104, 2, 0, 'Rend their flesh!', 14, 0, 100, 0, 0, 86885, 133170, 0, 0, 0, 'FELSTORM_BARRAGE_1'),
(122104, 2, 1, 'Leave none alive!', 14, 0, 100, 0, 0, 86884, 133169, 0, 0, 0, 'FELSTORM_BARRAGE_2'),
(122104, 2, 2, 'Strike them down!', 14, 0, 100, 0, 0, 86883, 133168, 0, 0, 0, 'FELSTORM_BARRAGE_3'),
(122104, 3, 0, 'Witness Xoroth, a world of infernal heat and scorched bones!', 14, 0, 100, 0, 0, 86888, 133171, 0, 0, 0, 'OPEN_PORTAL_XOROTH'),
(122104, 4, 0, 'WARN_XOROTH', 41, 0, 100, 0, 0, 0, 140917, 0, 0, 0, 'WARN_OPEN_PORTAL_XOROTH'),
(122104, 5, 0, 'The Legion\'s forces throughout the cosmos are mine to command!', 14, 0, 100, 0, 0, 86889, 133184, 0, 0, 0, 'TRANSPORT_PORTAL_1'),
(122104, 5, 1, 'The wrath of the Legion will overwhelm you!', 14, 0, 100, 0, 0, 86891, 133186, 0, 0, 0, 'TRANSPORT_PORTAL_2'),
(122104, 5, 2, 'Our forces are infinite!', 14, 0, 100, 0, 0, 86890, 133185, 0, 0, 0, 'TRANSPORT_PORTAL_3'),
(122104, 6, 0, 'Gaze upon Rancora, a landscape of festering pools and skittering death!', 14, 0, 100, 0, 0, 86886, 133172, 0, 0, 0, 'OPEN_PORTAL_RANCORA'),
(122104, 7, 0, 'WARN_RANCORA', 41, 0, 100, 0, 0, 0, 140919, 0, 0, 0, 'WARN_OPEN_PORTAL_RANCORA'),
(122104, 8, 0, 'Nathreza... once a world of magic and knowledge, now a twisted landscape from which none escape.', 14, 0, 100, 0, 0, 86887, 133173, 0, 0, 0, 'OPEN_PORTAL_NATHREZA'),
(122104, 9, 0, 'WARN_NATHREZA', 41, 0, 100, 0, 0, 0, 140918, 0, 0, 0, 'WARN_OPEN_PORTAL_NATHREZA'),
(122104, 10, 0, 'It... cannot... be so', 14, 0, 100, 0, 0, 86897, 133175, 0, 0, 0, 'DEATH_1'),
(122104, 10, 1, 'The portals... must... endure...', 14, 0, 100, 0, 0, 86898, 133174, 0, 0, 0, 'DEATH_2'),
(122104, 10, 2, 'Your world will fall...', 14, 0, 100, 0, 0, 86896, 133176, 0, 0, 0, 'DEATH_3'),

(122211, 0, 0, 'Your ashes will be blown across the cosmos!', 14, 0, 100, 0, 0, 86968, 133245, 0, 0, 0, 'AGGRO'),
(122211, 1, 0, 'My embers will never burn out...', 14, 0, 100, 0, 0, 86969, 133246, 0, 0, 0, 'DEATH'),

(122212, 0, 0, 'Come closer, heroes, so I can watch the flesh drip from your bones!', 14, 0, 100, 0, 0, 87012, 133243, 0, 0, 0, 'AGGRO'),
(122212, 1, 0, 'Oh, to taste... your... liquefying flesh...', 14, 0, 100, 0, 0, 87013, 133244, 0, 0, 0, 'DEATH'),

(122213, 0, 0, 'Your minds are so easily clouded!', 14, 0, 100, 0, 0, 87022, 133241, 0, 0, 0, 'AGGRO'),
(122213, 1, 0, 'The Light will not save you...', 14, 0, 100, 0, 0, 87023, 133242, 0, 0, 0, 'DEATH');


