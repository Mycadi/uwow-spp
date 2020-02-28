update areatrigger_template set customEntry = 682500, VisualID = 210786 where entry = 6825;

delete from areatrigger_template where entry in (7041,8235);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(7041, 212707, 11510, 56176, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -5, 1, 0, 'Gathering Clouds'),
(8235, 212707, 12429, 99853, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -6, 1, 0, 'Gathering Clouds');

delete from areatrigger_data where entry in (6514,7645,7297);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES
(6514, 208931, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(7645, 217982, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),
(7297, 214711, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0);

delete from areatrigger_actions where entry in (6514,7645,7297);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `scaleVisualUpdate`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(6514, 11189, 0, 1, 0, 8, 212886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Nightmare Corruption - Apply'),
(6514, 11189, 1, 42, 1, 0, 212886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Nightmare Corruption - Remove'),
(6514, 11189, 2, 1024, 4, 32, 212886, 0, 0, 0, 0, 0, 0, 0.1, 0, 3, 1, 0, 0, 0, 0, 0, 'Nightmare Corruption - Change Scale'),
(7645, 0, 0, 5, 0, 8, 224833, 0, -224833, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Web Crawlers - Apply'),
(7645, 0, 1, 42, 1, 8, 224833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Web Crawlers - Remove'),
(7645, 0, 2, 1024, 4, 32, 224833, 0, 0, 0, 0, 0, 0, -0.133333, 0, 0, 0, 0, 0, 0, 0, 0, 'Web Crawlers - Change Scale'),
(7297, 0, 0, 5, 0, 8, 214712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Nightmares');

delete from areatrigger_scripts where entry in (11750);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(11750, 'at_cenarius_nightmare_blast');

delete from conditions where SourceTypeOrReferenceId = 17 and SourceEntry = 210780;
delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (221994,203896);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 7, 221994, 0, 0, 31, 0, 3, 108542, 0, 0, 0, '', NULL),
(13, 7, 221994, 0, 1, 31, 0, 3, 112039, 0, 0, 0, '', NULL),
(13, 1, 203896, 0, 0, 31, 0, 3, 102682, 0, 0, 0, '', NULL);

update creature_template set flags_extra = flags_extra | 8192 where entry in (105304, 105322, 105906);
update creature_template set ignoreLos = 1 where entry = 105906;
update creature_template set mechanic_immune_mask = 1, scriptName = 'npc_en_venomous_spiderling' where entry = 106311;
update creature_template set flags_extra = 0 where entry in (106427,106895,106898,106899);

update creature_template_wdb set displayId1 = displayId2, displayId2 = 0 where entry in (106427,106895,106898,106899,106304) and displayId2 != 0;

delete from spell_script_names where spell_id in (204040,204044,203888,226821,214529);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(204040, 'spell_ysondre_shadow_burst'),
(204044, 'spell_ysondre_shadow_burst_filter'),
(203888, 'spell_ysondre_siphon_spirit_filter'),
(226821, 'spell_cenarius_desiccating_stomp_filter'),
(214529, 'spell_cenarius_spear_of_nightmares');

delete from spell_target_filter where spellId in (203888);

-- ============================================================
-- spells
delete from spell_linked_spell where spell_trigger = 223000 and spell_effect = 212711;
replace into `spell_linked_spell`(`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `effectMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `param`, `randList`, `comment`) VALUES 
(223000, 212711, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, '', 'EN, созыв ветров');

-- корректировка заселения
UPDATE `creature_template` SET `unit_flags` = 32768, `unit_flags2` = 2099200 WHERE `entry` = 113088;
UPDATE `creature_template` SET `flags_extra` = 128 WHERE `entry` = 113214;
update creature set spawnMask = 245760, phaseMask = 1, spawntimesecs = 7200 where id in (113092, 113089, 113090, 113920);
delete from creature where guid in (295658, 295684, 295679);
delete from creature where id = 113920 and map = 1520;
replace into `creature`(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `unit_flags3`) VALUES 
(113920, 1520, 8026, 8034, 16384, 65535, '', 0, 0, -12873, 12175, -273.842, 3.71681, 7200, 0, 0, 27020942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113920, 1520, 8026, 8034, 16384, 65535, '', 0, 0, -12968, 12340, -278.398, 3.71681, 7200, 0, 0, 27020942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113920, 1520, 8026, 8034, 16384, 65535, '', 0, 0, -12978, 12240, -283.035, 3.71681, 7200, 0, 0, 27020942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113920, 1520, 8026, 8034, 16384, 65535, '', 0, 0, -13009, 12181, -282.615, 3.71681, 7200, 0, 0, 27020942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113920, 1520, 8026, 8034, 16384, 65535, '', 0, 0, -12905, 12134, -282.871, 3.71681, 7200, 0, 0, 27020942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113920, 1520, 8026, 8034, 16384, 65535, '', 0, 0, -13013, 12212, -282.972, 3.71681, 7200, 0, 0, 27020942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(113920, 1520, 8026, 8034, 16384, 65535, '', 0, 0, -12922, 12156, -282.909, 3.71681, 7200, 0, 0, 27020942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature where id = 111535;
replace into `creature`(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `unit_flags3`) VALUES 
(295241, 111535, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1813.058, 1423.337, 433.2718, 5.28841, 7200, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295247, 111535, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1829.08, 1445.665, 431.2652, 0, 7200, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295292, 111535, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1796.082, 1419.605, 435.415, 4.09033, 7200, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295314, 111535, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1978.028, 1346.59, 391.4171, 0.903961, 7200, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295324, 111535, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1946.298, 1421.193, 403.751, 2.50005, 7200, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295466, 111535, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1910.715, 1426.428, 412.1189, 5.63202, 7200, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from creature where id = 113203;
replace into `creature`(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `unit_flags3`) VALUES
(295271, 113203, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1800.226, 1538.95, 502.382, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295478, 113203, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1823.271, 1541.898, 511.6868, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295484, 113203, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1815.46, 1520.983, 519.0347, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295255, 113203, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1822.705, 1501.42, 534.6617, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295269, 113203, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1784.451, 1543.879, 491.2439, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295273, 113203, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1798.455, 1557.703, 498.9833, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295278, 113203, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1771.212, 1541.177, 483.5253, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(295279, 113203, 1520, 8026, 8026, 245760, 1, '', 0, 0, 1773.483, 1561.457, 487.1157, 0, 7200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- eventobjects
replace into `eventobject_template`(`entry`, `name`, `radius`, `SpellID`, `WorldSafeLocID`, `ScriptName`) VALUES 
(1000, 'EN - event', 10, 0, 0, 'eventobject_en_into');
delete from eventobject where id = 1000;
replace into `eventobject`(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(1000, 1520, 8026, 8298, 245760, 1, '', 11303.3, 11078.7, -4.19743, 1.94767);

-- set immune flags
-- set full immune
update creature_template set mechanic_immune_mask = 617299711 where entry in 
(111860, 112474, 111856, 113920, 113088, 111858, 111528, 111852, 111405, 111975, 112474);

-- set knock immune
UPDATE `creature_template` SET `flags_extra` = 8192 WHERE `entry` in 
(111860, 112474, 111856, 113920, 113088, 111858, 111528, 111852, 111405, 111975, 112474);

-- scriptNames
update creature_template set ScriptName = 'npc_en_nightmother', AIName = '' where entry = 111980;
update creature_template set ScriptName = 'npc_en_venomous_spider', AIName = '' where entry = 112039;
update creature_template set ScriptName = 'npc_en_rothos', AIName = '' where entry = 111852;
update creature_template set ScriptName = 'npc_en_shadowfeather', AIName = '' where entry = 111975;

replace into spell_script_names (spell_id, ScriptName) values
(222760, 'spell_en_befoulment'),
(223029, 'spell_en_wretched_ambush');

-- AT
replace into `areatrigger_actions`(`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `scaleVisualUpdate`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES 
(8282, 0, 0, 4, 0, 8, 213124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'venomousPool_Apply'),
(8282, 0, 1, 42, 1, 8, 213124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'venomousPool_Remove'),

(8200, 0, 0, 1, 0, 8, 222121, 1, 0, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Кошмарный туман'),

(8320, 0, 0, 0, 0, 8, 223504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ужастный рывок');

replace into `areatrigger_data`(`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES 
(8282, 213123, 0, 0, 0, 0, 1500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0);
    
-- waypoints
replace into `waypoint_data`(`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `delay_chance`, `move_flag`, `speed`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
(1467061405, 7, -12397.5, -13018.6, 323.89, 2.12, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061405, 6, -12402.5, -13002.6, 319.89, 1.7, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061405, 5, -12409.5, -12956.6, 319.89, 1.7, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061405, 4, -12398.5, -12943.6, 325.89, 0.8, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061405, 3, -12409.5, -12956.6, 319.89, 1.7, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061405, 2, -12402.5, -13002.6, 319.89, 1.7, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061405, 1, -12397.5, -13018.6, 323.89, 2.12, 0, 0, 0, 1.6, 0, 100, 0, 0),

(1467061406, 5, -12461.6, -13082.2, 341.41, 2.11, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061406, 4, -12461, -13070.6, 339.79, 0.89, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061406, 3, -12425.5, -13026.5, 325.78, 0.89, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061406, 2, -12461, -13070.6, 339.79, 0.89, 0, 0, 0, 1.6, 0, 100, 0, 0),
(1467061406, 1, -12461.6, -13082.2, 341.41, 2.11, 0, 0, 0, 1.6, 0, 100, 0, 0),

(1467061407, 15, -12898.8, 12281.1, -260.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 14, -12908.8, 12271.1, -265.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 13, -12918.8, 12261.1, -270.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 12, -12928.8, 12251.1, -275.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 11, -12938.8, 12241.1, -280.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 10, -12948.8, 12231.1, -282.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 9, -12956.5, 12226.4, -282.79, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 8, -12993.4, 12204.9, -282.79, 3.6, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 7, -12956.5, 12226.4, -282.79, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 6, -12948.8, 12231.1, -282.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 5, -12938.8, 12241.1, -280.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 4, -12928.8, 12251.1, -275.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 3, -12918.8, 12261.1, -270.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 2, -12908.8, 12271.1, -265.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0),
(1467061407, 1, -12898.8, 12281.1, -260.92, 3.9, 0, 0, 0, 2.8, 0, 100, 0, 0);

replace into `waypoint_data_script`(`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `speed`, `action`, `action_chance`, `entry`, `wpguid`) VALUES
(10635000, 1, 11446.4, 11233.8, -95.04, 0.7, 0, 0, 5, 0, 100, 0, 0),
(10635000, 2, 11487.5, 11268.4, -93.46, 0.7, 0, 0, 5, 0, 100, 0, 0),
(10635000, 3, 11418.4, 11259.6, -99.74, 3.26, 0, 0, 5, 0, 100, 0, 0),
(10635000, 4, 11426.4, 11237, -99.73, 5.05, 0, 0, 5, 0, 100, 0, 0),
(10635000, 5, 11446.4, 11233.8, -95.04, 0.7, 0, 0, 5, 0, 100, 0, 0);

-- привязываем ВП к мобам
replace into `creature_addon`(`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES 
(295766, 1467061405, 0, 0, 0, 0, ''),
(295772, 1467061406, 0, 0, 0, 0, ''),
(295399, 1467061407, 0, 0, 0, 0, '');

-- создаем патрули
replace into `creature_formations`(`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`) VALUES 
(295772, 295772, 0, 0, 515),
(295772, 295791, 5, 270, 515),

(295766, 295766, 0, 0, 515),
(295766, 295760, 5, 270, 515);

update creature_template set AIName = 'SmartAI' where entry in 
(111860, 113920, 113626, 113088, 111856, 113089, 111858, 111355, 111528, 112290, 111333, 111398, 111354, 111933, 112153, 112474, 111535, 111331, 112162, 112178);
delete from smart_scripts where entryorguid in 
(111860, 113920, 111852, 113626, 113088, 111856, 113089, 111858, 111355, 111528, 112290, 111333, 111398, 111354, 111933, 111975, 112153, 112474, 111535, 111331, 112162, 112178);
replace into `smart_scripts`(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(111860, 0, 0, 0, 0, 0, 100, 0, 4000, 5000, 12000, 14000, 11, 223912, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 12s'),
(111860, 0, 1, 0, 0, 0, 100, 0, 8000, 9000, 19000, 20000, 11, 223914, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 19s'),

(113920, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, stopMove'),
(113920, 0, 1, 0, 0, 0, 100, 0, 8000, 8000, 10000, 10000, 11, 226935, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 10s'),
(113920, 0, 2, 0, 26, 0, 100, 0, 0, 9, 5000, 5000, 11, 226936, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'EN, if on Target In Distance In Combat >=9 -> castSpell'),

(113626, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 222925, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if dead -> castSpell'),
(113626, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EN, combatStart'),
(113626, 0, 2, 0, 11, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'EN, attackStart'),

(113088, 0, 0, 0, 0, 0, 100, 0, 500, 500, 8000, 8000, 11, 225042, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 8s'),
(113088, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, AutoAttackStop'),
(113088, 0, 2, 0, 11, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, stopMove'),

(111856, 0, 0, 0, 0, 0, 100, 0, 11000, 12000, 11000, 12000, 11, 222939, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 11s'),
(111856, 0, 1, 0, 0, 0, 100, 0, 7000, 8000, 12000, 14000, 11, 222932, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 12s'),

(113089, 0, 0, 0, 0, 0, 100, 0, 6000, 6000, 20000, 20000, 11, 225073, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 20s'),
(113089, 0, 1, 0, 0, 0, 100, 0, 12000, 12000, 13000, 13000, 11, 225079, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 13s'),

(111858, 0, 0, 0, 0, 0, 100, 0, 4000, 5000, 13000, 15000, 11, 223038, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 4s'),
(111858, 0, 1, 0, 0, 0, 100, 0, 10000, 11000, 17000, 18000, 11, 223944, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 10s'),

(111355, 0, 0, 0, 0, 0, 100, 0, 4000, 5000, 18000, 21000, 11, 222771, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 18s'),

(111528, 0, 0, 0, 0, 0, 100, 0, 8000, 9000, 24000, 25000, 11, 225249, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 24s'),
(111528, 0, 1, 0, 0, 0, 100, 0, 13000, 14000, 17000, 18000, 11, 225296, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 17s'),
(111528, 0, 2, 0, 11, 0, 100, 0, 0, 0, 0, 0, 11, 18950, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, buffSelfDetectInvision'),

(112290, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 11000, 12000, 11, 223572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 11s'),
(112290, 0, 1, 0, 0, 0, 100, 0, 5000, 6000, 12000, 14000, 11, 223565, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 12s'),

(111333, 0, 0, 0, 0, 0, 100, 0, 1000, 5000, 11000, 16000, 11, 222786, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 11s'),
(111333, 0, 1, 0, 0, 0, 100, 0, 13000, 15000, 13000, 15000, 11, 225230, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 13s'),

(111398, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 12000, 13000, 11, 222082, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 12s'),
(111398, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 210262, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, onDead'),

(111354, 0, 0, 0, 1, 0, 100, 0, 500, 500, 15000, 15000, 11, 221835, 0, 0, 0, 0, 0, 19, 111412, 8, 0, 0, 0, 0, 0, 'EN, event-cast'),
(111354, 0, 1, 0, 0, 0, 100, 0, 1000, 2000, 3000, 4000, 11, 222716, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 3s'),
(111354, 0, 2, 0, 0, 0, 100, 0, 25000, 25000, 26000, 26000, 11, 222719, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 26s'),
(111354, 0, 3, 0, 11, 0, 100, 0, 0, 0, 0, 0, 11, 18950, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, buffSelfDetectInvision'),

(111933, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 222925, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if dead -> castSpell'),

(113214, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 28, 225355, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if spawn -> unaura'),
(113214, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 8, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, setReact(Passive)'),
(113214, 0, 2, 0, 60, 0, 100, 0, 1000, 1000, 1500, 1500, 89, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, move trigger-npc'),
(113214, 0, 3, 0, 60, 0, 100, 0, 1000, 1000, 0, 0, 11, 225355, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if spawn -> castSpell'),

(112153, 0, 0, 0, 0, 0, 100, 0, 2000, 2000, 4500, 4500, 11, 223381, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 4.5s'),
(112153, 0, 1, 0, 0, 0, 100, 0, 7000, 7000, 20000, 21000, 11, 223918, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 20s'),
(112153, 0, 2, 0, 0, 0, 100, 0, 11000, 11000, 10000, 12000, 11, 223392, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 10s'),

(112474, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EN, combatStart'),
(112474, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, AutoAttackStop'),
(112474, 0, 2, 0, 11, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, stopMove'),
(112474, 0, 3, 0, 60, 0, 100, 1, 200, 200, 0, 0, 11, 223923, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if spawn -> castSpell'),

(111535, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 28, 222115, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if spawn -> unaura'),
(111535, 0, 1, 0, 60, 0, 100, 0, 1000, 1000, 0, 0, 11, 222115, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if spawn -> castSpell'),
(111535, 0, 2, 3, 38, 0, 100, 0, 1, 1, 0, 0, 28, 222115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EN, if getData -> unaura'),
(111535, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if getData -> despawn'),

(111331, 0, 0, 0, 60, 0, 100, 0, 500, 500, 500, 500, 45, 1, 1, 0, 0, 0, 0, 19, 111535, 15, 0, 0, 0, 0, 0, 'EN, if spawn -> setData'),
(111331, 0, 1, 0, 0, 0, 100, 0, 11000, 12000, 17000, 18000, 11, 222793, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 17s'),

(112162, 0, 0, 0, 0, 0, 100, 0, 7000, 10000, 7000, 10000, 11, 223704, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN, cast every 7s'),
(112162, 0, 1, 0, 0, 0, 100, 0, 21000, 22000, 20000, 22000, 11, 223417, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'EN // cast every 20s'),

(112178, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EN, combatStart'),
(112178, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, AutoAttackStop'),
(112178, 0, 2, 3, 11, 0, 100, 1, 0, 0, 0, 0, 11, 223419, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'EN, if spawn -> castSpell'),
(112178, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 41, 5000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'EN, if castSpell -> despawn');