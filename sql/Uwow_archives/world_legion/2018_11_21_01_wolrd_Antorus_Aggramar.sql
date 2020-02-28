delete from creature where id in (122581) and `map` = 1712;

update creature set spawntimesecs = 604800 where id = 121975;

update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'boss_aggramar', flags_extra = flags_extra | 1 where entry = 121975;
update creature_template set ScriptName = 'npc_aggramar_ember_of_taeshalach' where entry = 122532;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_aggramar_flame_of_taeshalach' where entry = 121985;

update creature_template_wdb set Classification = 3 where entry in (121975);

delete from spell_script_names where spell_id in (244792,245458,255059,244033,247079,245993,245911,245983,246037,244678,246054,246055,246056,254452);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(244792, 'spell_aggramar_energize_periodic'),
(245458, 'spell_aggramar_foe_breaker_filter'),
(255059, 'spell_aggramar_foe_breaker_filter'),
(244033, 'spell_aggramar_flame_rend_filter'),
(247079, 'spell_aggramar_flame_rend_filter'),
(245993, 'spell_aggramar_scorching_blaze_filter'),
(245911, 'spell_aggramar_wrought_in_flame'),
(245983, 'spell_aggramar_flare_filter'),
(246037, 'spell_aggramar_flare_filter'),
(244678, 'spell_aggramar_meteor_swarm'),
(246054, 'spell_aggramar_command_empowered_flare'),
(246055, 'spell_aggramar_command_empowered_flare'),
(246056, 'spell_aggramar_command_empowered_flare'),
(254452, 'spell_aggramar_ravenous_blaze');

delete from areatrigger_template where entry in (10671,12181,11822);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(10671, 244901, 1067100, 244901, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Catalyzing Presence'),
(12181, 244901, 1218100, 244901, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Catalyzing Presence'),
(11822, 255063, 1182200, 255063, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 'Empowered Searing Tempest');

delete from areatrigger_data where entry in (10653,11695);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`) VALUES
(10653, 244718, 15490, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(11695, 244894, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

delete from areatrigger_actions where entry in (10653,11695,10671,12181,10804);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10653, 0, 0, 1, 0, 8, 244736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wake of Flame'),
(11695, 0, 0, 5, 0, 8, 254022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Corrupt Aegis'),
(10671, 0, 0, 1, 0, 262144, 244903, 0, -244903, 0, 0, 0, 0, 0, 0, 0, 0, 122532, 0, 0, 0, 'Catalyzing Presence - Apply'),
(10671, 0, 1, 42, 20, 262144, 244903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122532, 0, 0, 0, 'Catalyzing Presence - Remove'),
(12181, 0, 0, 1, 0, 262144, 244903, 0, -244903, 0, 0, 0, 0, 0, 0, 0, 0, 122532, 0, 0, 0, 'Catalyzing Presence - Apply'),
(12181, 0, 1, 42, 20, 262144, 244903, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122532, 0, 0, 0, 'Catalyzing Presence - Remove'),
(10804, 0, 0, 1, 0, 8, 245916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Molten Remnants - Apply'),
(10804, 0, 1, 42, 1, 8, 245916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Molten Remnants - Remove');

delete from spell_target_filter where spellId in (254451);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(254451, 0, 15, 27, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Ravenous Blaze - Priority Range');

delete from spell_dummy_trigger where spell_id in (245458,255059,244680,245919,254451,254458,254459,254460,254461);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(245458, 244291, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Foe Breaker'),
(255059, 244291, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Empowered Foe Breaker'),
(244680, 245767, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Meteor Swarm - Small'),
(245919, 245920, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Meteor Swarm - Big'),
(254451, 254452, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Ravenous Blaze'),
(254458, 254455, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Ravenous Blaze 5M'),
(254459, 254455, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Ravenous Blaze 10M'),
(254460, 254455, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Ravenous Blaze 15M'),
(254461, 254455, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Ravenous Blaze 20M');

delete from spell_trigger where spell_id in (243431);
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `spell_cooldown`, `option`, `target`, `caster`, `targetaura`, `targetaura2`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `aura2`, `chance`, `group`, `procFlags`, `procEx`, `check_spell_id`, `addptype`, `schoolMask`, `dummyId`, `dummyEffect`, `CreatureType`, `slot`, `randList`, `comment`) VALUES
(243431, 244675, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, '', 'Taeshalach\'s Reach');

delete from creature_difficulty_stat where entry in (121975,121985,122532);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(121975, 14, 1, 2052),
(121975, 15, 1, 2850),
(121975, 16, 1, 8734.6),
(121975, 17, 1, 1846.8),
(121985, 14, 1, 61.2),
(121985, 15, 1, 76.4999),
(121985, 16, 1, 299),
(121985, 17, 1, 55.08),
(122532, 14, 1, 7.19999),
(122532, 15, 1, 8.99999),
(122532, 16, 1, 26.65),
(122532, 17, 1, 6.48);

delete from creature_text where entry in (121975);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(121975, 0, 0, 'You will burn!', 14, 0, 100, 0, 0, 86364, 133394, 0, 0, 0, 'AGGRO'),
(121975, 1, 0, 'All will die in my wake!', 14, 0, 100, 0, 0, 86363, 133424, 0, 0, 0, 'WAKE_OF_FLAME_1'),
(121975, 1, 1, 'Drown in flames!', 14, 0, 100, 0, 0, 86362, 133422, 0, 0, 0, 'WAKE_OF_FLAME_2'),
(121975, 2, 0, 'WARN: TAESHALACH_TECHNIQUE', 41, 0, 100, 0, 0, 0, 132829, 0, 0, 0, 'WARN_TAESHALACH_TECHNIQUE'),
(121975, 3, 0, 'Burn!', 14, 0, 100, 0, 0, 86361, 133419, 0, 0, 0, 'TAESHALACH_TECHNIQUE_1'),
(121975, 3, 1, 'None can stand against Taeshalach!', 14, 0, 100, 0, 0, 86360, 133418, 0, 0, 0, 'TAESHALACH_TECHNIQUE_2'),
(121975, 4, 0, 'Taeshalach\'s power is unleashed!', 14, 0, 100, 0, 0, 86358, 133433, 0, 0, 0, 'PRE_PHASE_2'),
(121975, 5, 0, 'You may have withstood the flames, but you will not withstand my fury.', 14, 0, 100, 0, 0, 86356, 133435, 0, 0, 0, 'PHASE_2'),
(121975, 6, 0, 'Stand and die!', 14, 0, 100, 0, 0, 86354, 133425, 0, 0, 0, 'FLARE_1'),
(121975, 6, 1, 'There is no escape!', 14, 0, 100, 0, 0, 86995, 135008, 0, 0, 0, 'FLARE_2'),
(121975, 6, 2, 'Let the flesh be seared from your bones!', 14, 0, 100, 0, 0, 86353, 133431, 0, 0, 0, 'FLARE_3'),
(121975, 7, 0, 'The power of Taeshalach will consume you!', 14, 0, 100, 0, 0, 86359, 133434, 0, 0, 0, 'PRE_PHASE_3'),
(121975, 8, 0, 'Your modicum of skill will be insufficient to save you.', 14, 0, 100, 0, 0, 86357, 133436, 0, 0, 0, 'PHASE_3'),
(121975, 9, 0, 'It may be... too late to stop him...', 14, 0, 100, 0, 0, 86365, 133417, 0, 0, 0, 'DEATH');
