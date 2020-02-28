delete from creature where id in (122467,122468,122469,123503,125837) and `map` = 1712;

update creature set spawntimesecs = 604800 where id = 128311;

update creature_template set minlevel = 113, maxlevel = 113, faction = 14, mechanic_immune_mask = 650854399, ScriptName = 'boss_coven_shivarres', flags_extra = flags_extra | 1 where entry = 128311;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'boss_coven_shivarres_generic', flags_extra = flags_extra | 1 where entry in (122467,122468,122469,125436);
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_coven_torment_generic' where entry in (123503,125837,124164,124166);
update creature_template set mechanic_immune_mask = 42009361 where entry = 123503;
update creature_template set unit_flags = 0, mechanic_immune_mask = 617299967 where entry = 125436;
update creature_template set inhabittype = 7, flags_extra = 130 where entry in (122781,122809,122814,126084);
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_coven_whirling_saber', flags_extra = 130 where entry = 123348;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_coven_shadow_blade', flags_extra = 130 where entry = 123086;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_coven_cosmic_glare', flags_extra = 130 where entry = 126320;
update creature_template set lootid = 0 where entry in (122468,122469,125436);

update creature_template_wdb set Classification = 3 where entry in (128311,122467,122468,122469,125436);

update gameobject_template set flags = 48 where entry in (277179,277180,272868,277476);

delete from creature_loot_template where entry in (122468,122469,125436);

delete from areatrigger_template where entry in (11621,11585);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(11621, 253189, 1162100, 253189, 0, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shivan Pact'),
(11585, 252919, 1158500, 252919, 0, 60, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Storm of Darkness');

delete from areatrigger_data where entry in (11621,10889,11585);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`) VALUES
(11621, 253189, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(10889, 246763, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(11585, 252919, 0, 0, 0, 0, 2000, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

delete from areatrigger_actions where entry in (11621,10889,10807,10782,11585,11835,11659);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(11621, 0, 0, 5, 0, 131073, 253203, 0, -253203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shivan Pact - Apply'),
(11621, 0, 1, 42, 20, 131073, 253203, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Shivan Pact - Remove'),
(10889, 0, 0, 5, 0, 131144, 246769, 0, 260806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fury of Golganneth'),
(10807, 0, 0, 1, 0, 8, 245921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Army of Norgannon - Apply'),
(10807, 0, 1, 42, 1, 8, 245921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Army of Norgannon - Remove'),
(10782, 0, 0, 1, 0, 8, 245634, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Whirling Saber'),
(11585, 0, 0, 5, 0, 4194312, 253020, 0, -253020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Storm of Darkness - Apply'),
(11585, 0, 1, 42, 1, 8, 253020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Storm of Darkness - Remove'),
(11835, 0, 0, 1, 1, 8, 253020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Storm of Darkness - Remove'),
(11659, 0, 0, 1, 0, 8, 253697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Orb of Frost - Apply'),
(11659, 0, 1, 42, 1, 8, 253697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Orb of Frost - Remove');

delete from areatrigger_scripts where entry in (1158500);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(1158500, 'at_coven_storm_of_darkness');

delete from conditions where SourceTypeOrReferenceId in (13,17) and SourceEntry in (144225,250333,250334,249793,250335,253203,246769);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 144225, 0, 0, 31, 0, 3, 122467, 0, 0, 0, '', NULL),
(13, 1, 144225, 0, 1, 31, 0, 3, 122468, 0, 0, 0, '', NULL),
(13, 1, 144225, 0, 2, 31, 0, 3, 122469, 0, 0, 0, '', NULL),
(13, 1, 144225, 0, 3, 31, 0, 3, 125436, 0, 0, 0, '', NULL),
(13, 1, 250333, 0, 0, 31, 0, 3, 122781, 0, 0, 0, '', NULL),
(13, 1, 250334, 0, 0, 31, 0, 3, 122809, 0, 0, 0, '', NULL),
(13, 1, 249793, 0, 0, 31, 0, 3, 122814, 0, 0, 0, '', NULL),
(13, 1, 250335, 0, 0, 31, 0, 3, 126084, 0, 0, 0, '', NULL),
(17, 0, 253203, 0, 0, 31, 1, 3, 122467, 0, 0, 0, '', NULL),
(17, 0, 253203, 0, 1, 31, 1, 3, 122468, 0, 0, 0, '', NULL),
(17, 0, 253203, 0, 2, 31, 1, 3, 122469, 0, 0, 0, '', NULL),
(17, 0, 253203, 0, 3, 31, 1, 3, 125436, 0, 0, 0, '', NULL),
(13, 1, 246769, 0, 0, 31, 0, 3, 124164, 0, 0, 0, '', NULL);

delete from spell_script_names where spell_id in (258069,245586,253697,250752,250824);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(258069, 'spell_coven_fury_subsides'),
(245586, 'spell_coven_chilled_blood'),
(253697, 'spell_coven_orb_of_frost'),
(250752, 'spell_coven_cosmic_glare'),
(250824, 'spell_coven_cosmic_glare_dmg');

delete from spell_dummy_trigger where spell_id in (246486,245520,253429,253649,250752);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(246486, 245627, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Whirling Saber'),
(245520, 245532, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Chilled Blood'),
(253429, 253520, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Fulminating Pulse'),
(253649, 253650, 4, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Orb of Frost'),
(250752, 250755, 11, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 'Cosmic Glare - Mark'),
(250752, 250757, 11, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 'Cosmic Glare - Scale');

delete from spell_target_filter where spellId in (245520,253429,246486,253649,250758);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(245520, 0, 15, 24, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Chilled Blood - Exclude Tank'),
(253429, 0, 15, 24, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Fulminating Pulse - Exclude Tank'),
(246486, 0, 7, 27, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Whirling Saber - Priority Range'),
(253649, 0, 15, 27, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Orb of Frost - Priority Range'),
(250758, 0, 15, 1, 250755, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Cosmic Glare - Aura');

delete from creature_difficulty_stat where entry in (122467,122468,122469,125436,125837,124164,124166);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(122467, 14, 1, 3150),
(122467, 15, 1, 3937.5),
(122467, 16, 1, 12067.4),
(122467, 17, 1, 2835),
(122468, 14, 1, 3150),
(122468, 15, 1, 3937.5),
(122468, 16, 1, 12067.4),
(122468, 17, 1, 2835),
(122469, 14, 1, 3150),
(122469, 15, 1, 3937.5),
(122469, 16, 1, 12067.4),
(122469, 17, 1, 2835),
(125436, 14, 1, 3150),
(125436, 15, 1, 3937.5),
(125436, 16, 1, 12067.4),
(125436, 17, 1, 2835),
(125837, 14, 1, 58),
(125837, 15, 1, 72.5),
(125837, 16, 1, 216.531),
(125837, 17, 1, 52.2),
(124164, 14, 1, 60),
(124164, 15, 1, 75),
(124164, 16, 1, 198.75),
(124164, 17, 1, 54),
(124166, 14, 1, 23),
(124166, 15, 1, 28.75),
(124166, 16, 1, 76.6187),
(124166, 17, 1, 20.7);

delete from creature_text where entry in (122468,122467,122469,125436,128311);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
-- Noura
(122468, 0, 0, 'I can\'t wait to hear your flesh sizzle.', 14, 0, 100, 0, 0, 87025, 133878, 0, 0, 0, 'AGGRO'),
(122468, 1, 0, 'I want to see your limbs roasting!', 14, 0, 100, 0, 0, 87024, 134470, 0, 0, 0, 'WHIRLING_SABER'),
-- Asara
(122467, 0, 0, 'You look so vulnerable, trembling in the dark.', 14, 0, 100, 0, 0, 86912, 134473, 0, 0, 0, 'STORM_OF_DARKNESS'),
-- Diima
(122469, 0, 0, 'Enjoy my icy caress before you are frozen solid.', 14, 0, 100, 0, 0, 86927, 134478, 0, 0, 0, 'ORB_OF_FROST'),
-- Thuraya
(125436, 0, 0, 'I wield the power of the cosmos!', 14, 0, 100, 0, 0, 87039, 134918, 0, 0, 0, 'COSMIC_GLARE'),
-- Coven
(128311, 0, 0, 'WARN: Fury of Golganneth', 41, 0, 100, 0, 0, 0, 137145, 0, 0, 0, 'TORMENT_OF_GOLGANNETH'),
(128311, 1, 0, 'WARN: Flames of Khaz\'goroth', 41, 0, 100, 0, 0, 0, 137146, 0, 0, 0, 'TORMENT_OF_KHAZGOROTH'),
(128311, 2, 0, 'WARN: Spectral Army of Norgannon', 41, 0, 100, 0, 0, 0, 137147, 0, 0, 0, 'TORMENT_OF_NORGANNON');




