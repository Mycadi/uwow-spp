delete from game_graveyard_zone where ghost_zone = 8638;
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
(6162, 8638, 0);

delete from eventobject_template where entry in (813,814);
INSERT INTO `eventobject_template` (`entry`, `name`, `radius`, `SpellID`, `WorldSafeLocID`, `ScriptName`) VALUES
(813, 'Antorus - Enter', 5, 0, 6161, ''),
(814, 'Antorus - Exit', 5, 0, 6162, '');

delete from eventobject where id in (813,814);
INSERT INTO `eventobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(410349, 814, 1712, 8638, 8638, 8388870, 1, '', -3437.24, 9522.87, 10.44, 0),
(410348, 813, 1669, 8899, 8899, 1, 1, '', -3214.77, 9420.51, -172.49, 0);

delete from creature where id = 66699;

update creature_template set mechanic_immune_mask = 617299967 where entry in (122890,122718);
update creature_template set mechanic_immune_mask = 617299967, flags_extra = 130 where entry = 125603;
update creature_template set maxVisible = 1, flags_extra = 0 where entry in (126426);
update creature_template set lootid = 0 where entry in (123398);
update creature_template set inhabittype = 7, ignoreLos = 1 where entry in (122438);
update creature_template set mechanic_immune_mask = `mechanic_immune_mask` &~33554432 where entry = 124158;

update gameobject_template set flags = 48 where entry = 277521;
update gameobject_template set data0 = 8000 where entry = 278815;

delete from creature_loot_template where entry = 123398;

delete from areatrigger_template where entry = 0 and customEntry = 15434;
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(0, 0, 15434, 0, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

update areatrigger_data set movetype = 9, param = 2 where entry in (10586,10661);

delete from areatrigger_data where entry in (11006);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES
(11006, 247955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0);

delete from areatrigger_scripts where entry in (15431);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(15431, 'at_felhounds_consuming_sphere');

update conditions set sourceGroup = 3 where sourceEntry = 245103;

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry = 251060;
delete from conditions where SourceTypeOrReferenceId = 21 and SourceEntry = 254219;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 251060, 0, 0, 31, 0, 3, 125603, 0, 0, 0, '', NULL),
(21, 122554, 254219, 0, 0, 19, 0, 65536, 0, 0, 0, 0, '', NULL),
(21, 123020, 254219, 0, 0, 19, 0, 65536, 0, 0, 0, 0, '', NULL),
(21, 123013, 254219, 0, 0, 19, 0, 65536, 0, 0, 0, 0, '', NULL);

delete from spell_script_names where spell_id in (244399,246919,244159,246360,245098,251445,246057);
delete from spell_script_names where ScriptName = 'spell_eonar_dive_down_jump';
delete from spell_script_names where ScriptName = 'spell_eonar_swift_feet';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(244399, 'spell_worldbreaker_decimation_filter'),
(246919, 'spell_worldbreaker_decimation_filter'),
(244159, 'spell_felhounds_consuming_sphere_filter'),
(246360, 'spell_worldbreaker_searing_barrage_filter'),
(245098, 'spell_felhounds_decay_or_smouldering'),
(251445, 'spell_felhounds_decay_or_smouldering'),
(246057, 'spell_felhounds_sargeras_blessing'),
(246330, 'spell_eonar_swift_feet'),
(248225, 'spell_eonar_dive_down_jump'),
(254497, 'spell_eonar_dive_down_jump');

update spell_target_filter set param1 = -1 where spellid = 247711 and `index` = 0;

delete from spell_target_filter where spellid in (244159,244767,253036,248154,251060,244471,244578,245304,254244);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(244767, 0, 134, 1, -244589, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 'Desolate Path - Exclude Aura'),
(253036, 0, 15, 1, -244172, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demonic Charge - Exclude Aura'),
(253036, 1, 15, 27, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Demonic Charge - Priory Ranged'),
(248154, 0, 15, 27, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Empowered Pulse Grenade - Priory Ranged Spec'),
(251060, 0, 7, 0, 0, 0, 0, 0, 0, 1, 2, 3, 0, 0, 0, 'Explosions'),
(244471, 0, 15, 24, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Enflame Corruption - Exclude Tank'),
(244578, 0, 15, 24, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Siphon Corruption - Exclude Tank'),
(245304, 0, 15, 24, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Entropic Mine - Exclude Tank Spec'),
(254244, 0, 15, 24, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Sleep Canister - Exclude Tank Spec');

delete from spell_dummy_trigger where spell_id in (246313,250256);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(250256, 247542, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Electrify');

delete from spell_aura_trigger where spell_id = 244131 and spell_trigger = 245024;
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `option2`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `slot`, `comment`) VALUES 
(244131, 245024, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Consumed');


-- Custom >>> 
delete from eventobject_template where id in (815, 816);
INSERT INTO `eventobject_template` (`entry`, `name`, `radius`, `SpellID`, `WorldSafeLocID`, `ScriptName`) VALUES
(815, 'Antorus Elevator UP', 8, 0, 0, 'eventobject_antorus_into'),
(816, 'Antorus Elevator DOWN', 8, 0, 0, 'eventobject_antorus_into');

delete from eventobject where id in (815, 816);
INSERT INTO `eventobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(815, 1712, 8638, 8638, 245760, 1, '', -2875.67, 10789.2, -88, 0),
(816, 1712, 8638, 8638, 245760, 1, '', -2876.26, 10789.4, 113.05, 0);
-- Custom <<<


delete from npc_spellclick_spells where npc_entry = 122450;
-- INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`, `add_npc_flag`) VALUES
-- (122450, 46598, 1, 0, 1);

delete from vehicle_template_accessory where EntryOrAura = 122450;
-- INSERT INTO `vehicle_template_accessory` (`EntryOrAura`, `accessory_entry`, `seat_id`, `offsetX`, `offsetY`, `offsetZ`, `offsetO`, `minion`, `description`, `summontype`, `summontimer`) VALUES
-- (122450, 122778, 0, 8.5177, -10.2212, 17.2839, 0, 1, '122450 - 122778', 8, 0),
-- (122450, 122773, 1, 10.3177, 7.02122, 17.2839, 0, 1, '122450 - 122773', 8, 0);