delete from creature where id in (129635,129722,127473,127192,129386,127809,127458,128466,125885,126268,125886,125893,126266,126267) and `map` = 1712;

update creature set spawntimesecs = 604800 where id = 124828;

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'boss_argus', flags_extra = flags_extra | 1, ignoreLos = 1 where entry = 124828;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_argus_soulblight_orb', flags_extra = 130 where entry = 125008;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_argus_titans_generic', ignoreLos = 1 where entry in (126268,125885,125886,125893,126266,126267);
update creature_template set inhabittype = 7, mechanic_immune_mask = 650854399, ScriptName = 'npc_arugs_edge_of_obliteration', flags_extra = 130 where entry in (126828,130842);
update creature_template set ScriptName = 'npc_argus_constellar_designate', ignoreLos = 1 where entry = 127192;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_argus_gift_of_the_lifebinder', ignoreLos = 1 where entry = 129386;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_argus_hungering_soul', ignoreLos = 1 where entry = 129635;
update creature_template set unit_flags = 0, inhabittype = 7, mechanic_immune_mask = 650854399, ScriptName = 'npc_argus_reorigination_module', flags_extra = 0, ignoreLos = 1 where entry in (127809,130179);
update creature_template set inhabittype = 7, mechanic_immune_mask = 650854399, ScriptName = 'npc_argus_mote_of_titanic_power', flags_extra = 130, ignoreLos = 1 where entry = 129722;
update creature_template set inhabittype = 7 where entry in (125885,126267);
update creature_template set inhabittype = 7, mechanic_immune_mask = 650854399, ScriptName = 'npc_argus_chains_of_sargeras', flags_extra = 130, ignoreLos = 1 where entry = 130202;

update creature_template_wdb set Classification = 3 where entry in (124828);

update areatrigger_template set distance = 0, speed = 0.01, rePatchSpeed = 5 where entry = 12185;

delete from areatrigger_template where entry in (11978);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(11978, 256894, 1197800, 256894, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hungering Soul');

delete from areatrigger_data where entry in (11934,11978,11998,12068,12071,12185);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`) VALUES
(11934, 256338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(11978, 256894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(11998, 253569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(12068, 257869, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1),
(12071, 257931, 0, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1),
(12185, 258836, 0, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1);

delete from areatrigger_actions where entry in (11032,11023,12005,12006,11831,11934,11998,12068,12071,12091,12185);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(11032, 0, 0, 1, 0, 8, 248167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cone of Death - Apply'),
(11032, 0, 1, 42, 1, 8, 248167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cone of Death - Remove'),
(11023, 0, 0, 1, 0, 8, 248167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Fog - Apply'),
(11023, 0, 1, 42, 1, 8, 248167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Death Fog - Remove'),
(12005, 0, 0, 1, 0, 8, 253901, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 'Gift of the Sea - Apply Sea'),
(12005, 0, 1, 1, 1, 8, 253903, 0, 253903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gift of the Sea - Remove Sky'),
(12006, 0, 0, 1, 0, 8, 253903, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 'Strength of the Sky - Apply'),
(12006, 0, 1, 1, 1, 8, 253901, 0, 253901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Strength of the Sky - Remove Sea'),
(11831, 0, 0, 1, 0, 131080, 255200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aggramar\'s Boon - Apply'),
(11831, 0, 1, 42, 1, 131080, 255200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Aggramar\'s Boon - Remove'),
(11934, 0, 0, 1, 0, 8, 256351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gift of the Lifebinder - Resurrect'),
(11998, 0, 0, 1, 15, 8, 253580, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Mote of Titanic Power'),
(12068, 0, 0, 5, 0, 131080, 257911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Unleashed Rage - Apply'),
(12071, 0, 0, 5, 15, 131080, 257930, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sargeras\' Fear'),
(12091, 0, 0, 1, 0, 8, 258035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apocalypsis Zone - Apply'),
(12091, 0, 1, 42, 1, 8, 258035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Apocalypsis Zone - Remove'),
(12185, 0, 0, 1, 0, 72, 258837, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Rent Soul');

delete from areatrigger_scripts where entry in (16778,16883);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(16778, 'at_argus_sargeras_fear'),
(16883, 'at_argus_rent_soul');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (255935,252516,257619,253580,258373,258038);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 255935, 0, 0, 31, 0, 3, 127192, 0, 0, 0, '', NULL),
(13, 1, 252516, 0, 0, 31, 0, 3, 127192, 0, 0, 0, '', NULL),
(13, 2, 257619, 0, 0, 31, 0, 3, 124828, 0, 0, 0, '', NULL),
(13, 2, 253580, 0, 0, 31, 0, 3, 125886, 0, 0, 0, '', NULL),
(13, 1, 258038, 0, 0, 31, 0, 3, 130179, 0, 0, 0, '', NULL),
(13, 1, 258373, 0, 0, 31, 0, 4, 0, 0, 0, 0, '', NULL);

delete from spell_dummy_trigger where spell_id in (256457);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(256457, 248165, 4, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Cone of Death');

delete from spell_script_names where spell_id in
(258041,258042,258044,255594,253889,256674,255646,252280,258043,251571,251572,255200,256388,258029,256396,257213,257214,253026,258068,258207,258838,258839);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(258041, 'spell_argus_p1_energize_periodic'),
(258042, 'spell_argus_p2_energize_periodic'),
(258044, 'spell_argus_p4_energize_periodic'),
(255594, 'spell_argus_sky_and_sea'),
(256674, 'spell_argus_golganneth_wrath'),
(255646, 'spell_argus_golganneth_wrath_filter'),
(252280, 'spell_argus_volatile_soul_filter'),
(258043, 'spell_argus_volatile_soul_filter'),
(251571, 'spell_argus_soul_detonation'),
(251572, 'spell_argus_soul_detonation'),
(255200, 'spell_argus_aggramar_boon'),
(256388, 'spell_argus_initialization_sequence_periodic'),
(258029, 'spell_argus_initialization_sequence_periodic'),
(256396, 'spell_argus_reorigination_pulse'),
(257213, 'spell_argus_titanforging_energize_periodic'),
(257214, 'spell_argus_titanforging_energize_periodic'),
(253026, 'spell_argus_impending_inevitability'),
(258068, 'spell_argus_sargeras_gaze'),
(258207, 'spell_argus_apocalypsis_module'),
(258838, 'spell_argus_soulrending_scythe_script'),
(258839, 'spell_argus_rent_soul');

delete from spell_target_filter where spellId in (252729,258839);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(252729, 0, 16, 0, 0, 0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 'Cosmic Ray - Random Target'),
(258839, 0, 31, 24, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0, -1, 'Rent Soul');

delete from spell_target_position where id in (256674,255684,256543,255976,257298);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(256674, 1712, 2866.72, -4567.85, 291.949, 2.79),
(255684, 1712, 2866.72, -4567.85, 291.949, 2.79),
(256543, 1712, 2866.72, -4567.85, 291.949, 2.79),
(255976, 1712, 2786.52, -4566.22, 296.463, 0.0),
(257298, 1712, 2867.12, -4567.54, 292.94, 0);

delete from spell_radius where spell_id in (255826);
INSERT INTO `spell_radius` (`spell_id`, `effectradius0`, `effectradius1`, `effectradius2`, `effectradius3`, `effectradius4`, `comments`) VALUES
(255826, 21, 0, 0, 0, 0, 'Edge of Obliteration - 35yard');

delete from spell_aura_trigger where spell_id in (257300);
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `option2`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `slot`, `comment`) VALUES
(257300, 257298, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Ember of Rage');

delete from spell_area where spell in (255199,258373,261228,257869,257931);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `classmask`, `active_event`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(255199, 8638, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(258373, 8638, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(261228, 8638, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(257869, 8638, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(257931, 8638, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11);

delete from creature_summon_groups where summonerId = 124828;
INSERT INTO `creature_summon_groups` (`summonerId`, `id`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `count`, `actionType`, `distance`, `summonType`, `summonTime`) VALUES
(124828, 0 , 0, 3, 129635, 2882.59, -4588.6, 292.019 , 0, 0, 0, 0, 8, 0),
(124828, 1 , 0, 3, 129635, 2825.65, -4553.52, 292.305, 0, 0, 0, 0, 8, 0),
(124828, 2 , 0, 3, 129635, 2875.17, -4610.04, 292.211, 0, 0, 0, 0, 8, 0),
(124828, 3 , 0, 3, 129635, 2882.53, -4575.75, 292.006, 0, 0, 0, 0, 8, 0),
(124828, 4 , 0, 3, 129635, 2872.1, -4558.5, 292.006, 0, 0, 0, 0, 8, 0),
(124828, 5 , 0, 3, 129635, 2852.88, -4600, 292.01, 0, 0, 0, 0, 8, 0),
(124828, 6 , 0, 3, 129635, 2858.67, -4576.69, 292.006, 0, 0, 0, 0, 8, 0),
(124828, 7 , 0, 3, 129635, 2882.59, -4588.6, 292.019 , 0, 0, 0, 0, 8, 0),
(124828, 8 , 0, 3, 129635, 2834.99, -4551.94, 292.006, 0, 0, 0, 0, 8, 0),
(124828, 9 , 0, 3, 129635, 2862.97, -4538.98, 292.108, 0, 0, 0, 0, 8, 0),
(124828, 10, 0, 3, 129635, 2835.2, -4600.64, 292.573 , 0, 0, 0, 0, 8, 0),
(124828, 11, 0, 3, 129635, 2852.51, -4590.71, 291.988, 0, 0, 0, 0, 8, 0),
(124828, 12, 0, 3, 129635, 2821.42, -4569.64, 292.476, 0, 0, 0, 0, 8, 0),
(124828, 13, 0, 3, 129635, 2852.51, -4590.71, 291.988, 0, 0, 0, 0, 8, 0),
(124828, 14, 0, 3, 129635, 2827.24, -4584.34, 292.193, 0, 0, 0, 0, 8, 0),
(124828, 15, 0, 3, 129635, 2862.66, -4597.16, 292.016, 0, 0, 0, 0, 8, 0),
(124828, 16, 0, 3, 129635, 2863.85, -4591.67, 292.004, 0, 0, 0, 0, 8, 0),
(124828, 17, 0, 3, 129635, 2885.6, -4555.22, 292.006, 0, 0, 0, 0, 8, 0),
(124828, 18, 0, 3, 129635, 2895.47, -4549.1, 292.006, 0, 0, 0, 0, 8, 0),
(124828, 19, 0, 3, 129635, 2872.1, -4558.5, 292.006, 0, 0, 0, 0, 8, 0),
(124828, 20, 0, 3, 129635, 2882.53, -4575.75, 292.006, 0, 0, 0, 0, 8, 0),
(124828, 21, 0, 3, 129635, 2883.38, -4538.46, 292.155, 0, 0, 0, 0, 8, 0),
(124828, 22, 0, 3, 129635, 2825.65, -4553.52, 292.305, 0, 0, 0, 0, 8, 0),
(124828, 23, 0, 3, 129635, 2909.85, -4587.07, 292.539, 0, 0, 0, 0, 8, 0),
(124828, 24, 0, 3, 129635, 2895.47, -4549.1, 292.006 , 0, 0, 0, 0, 8, 0);

delete from creature_difficulty_stat where entry in (124828,127192,127809,130179);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(124828, 14, 1, 2853.95),
(124828, 15, 1, 3567.44),
(124828, 16, 1, 10819.5),
(124828, 17, 1, 2568.55),
(127192, 14, 1, 156),
(127192, 15, 1, 195),
(127192, 16, 1, 1),
(127192, 17, 1, 140.4),
(127809, 14, 1, 7.99999),
(127809, 15, 1, 9.99999),
(127809, 16, 1, 1),
(127809, 17, 1, 7.19999),
(130179, 16, 1, 451.639);

delete from creature_text where entry in (124828,125885,125008,126268,126267);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(124828, 0, 0, 'Death! Death and pain!', 14, 0, 100, 0, 0, 88233, 133906, 0, 0, 0, 'AGGRO_1'),
(124828, 0, 1, 'The master demands your doom!', 14, 0, 100, 0, 0, 88242, 135985, 0, 0, 0, 'AGGRO_2'),
(124828, 1, 0, 'SOULBURST', 42, 0, 100, 0, 0, 0, 141069, 0, 0, 0, 'WARN_WHISPER_SOULBURST'),
(124828, 2, 0, 'SOULBOMB', 42, 0, 100, 0, 0, 0, 141070, 0, 0, 0, 'WARN_WHISPER_SOULBOMB'),
(124828, 3, 0, 'No hope. Just pain. Only pain!', 14, 0, 100, 0, 0, 88244, 135987, 0, 0, 0, 'PHASE_3'),
(124828, 4, 0, 'End it all!', 14, 0, 100, 0, 0, 88239, 135897, 0, 0, 0, 'GRASP_OF_THE_UNMAKER'),
(124828, 5, 0, 'Argus the Unmaker is deploying Reorigination Modules!', 41, 0, 100, 0, 0, 0, 144568, 0, 0, 0, 'WARN_REORIGINATION_MODULE'),
(124828, 6, 0, 'SARGERAS_GAZE', 41, 0, 100, 0, 0, 0, 141501, 0, 0, 0, 'WARN_SARGERAS_GAZE'),
--
(125885, 0, 0, 'SKY_AND_SEA', 41, 0, 100, 0, 0, 0, 140644, 0, 0, 0, 'WARN: SKY_AND_SEA'),
(125885, 1, 0, 'The might of sea and sky must aid our champions, Golganneth!', 14, 0, 100, 0, 0, 90889, 140708, 0, 0, 0, 'Amanthul: SKY_AND_SEA'),
(125885, 2, 0, 'Let the fury of the sea wash away this corruption!', 14, 0, 100, 0, 0, 90890, 140709, 0, 0, 0, 'PHASE_2'),
(125885, 3, 0, 'Aggramar! Lend these mortals your strength, brother.', 14, 0, 100, 0, 0, 90886, 140710, 0, 0, 0, 'AVATAR_OF_AGGRAMAR'),
(125885, 4, 0, 'Time answers to me, Unmaker! The one force that can bind your relentless fury!', 14, 0, 100, 0, 0, 90898, 140732, 0, 0, 0, 'TEMPORAL_BLAST'),
(125885, 5, 0, 'No! After all we have endured... It must not end this way!', 14, 0, 100, 0, 0, 90888, 140733, 0, 0, 0, 'REAP_SOUL'),
--
(125008, 0, 0, 'SOULBLIGHT_DOT', 42, 0, 100, 0, 0, 0, 141927, 0, 0, 0, 'WARN_SOULBLIGHT_DOT'),
--
(126268, 0, 0, 'SKY', 42, 0, 100, 0, 0, 0, 141775, 0, 0, 0, 'WARN_WHISPER_SKY'),
(126268, 1, 0, 'SEA', 42, 0, 100, 0, 0, 0, 141776, 0, 0, 0, 'WARN_WHISPER_SEA'),
--
(126267, 0, 0, 'Hope is not lost. We are making progress every day.', 14, 0, 100, 0, 0, 90884, 140734, 0, 0, 0, 'GIFT_OF_THE_LIFEBINDER'),
(126267, 1, 0, 'Arise, champions! Fight to save your world!', 14, 0, 100, 0, 0, 90885, 140735, 0, 0, 0, 'GIFT_OF_THE_LIFEBINDER_2');




