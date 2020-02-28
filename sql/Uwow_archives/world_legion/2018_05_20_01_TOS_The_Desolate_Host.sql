delete from instance_encounters where entry in (2054);
INSERT INTO `instance_encounters` (`entry`, `difficulty`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES
(2054, -1, 0, 120988, 0, 'The Desolate Host');

delete from creature where id in (121110,119072,118460,118715,118728,118462,118729,118730,118701,118727,120368,121718);

REPLACE INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `ScriptName`) VALUES
(119938, 0, 112, 112, 0, 0, 0, 0, 100, 0, 16, 0, 0, 3.6, 1.28571, 1.14286, 1, 0, 0, 0, 0, 1, 1500, 2000, 1, 0, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 617299967, 0, -1, '', '', 0, 0, 0, 0, 0, 0, 'npc_tos_reanimated_templar'),
(119939, 0, 112, 112, 0, 0, 0, 0, 100, 0, 16, 0, 0, 3.6, 1.28571, 1.14286, 1, 0, 0, 0, 0, 1, 1500, 2000, 1, 0, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 617299967, 0, -1, '', '', 0, 0, 0, 0, 0, 0, 'npc_tos_ghastly_bonewarden'),
(119940, 0, 112, 112, 0, 0, 0, 0, 100, 0, 16, 0, 0, 3.6, 1.28571, 1.14286, 1, 0, 0, 0, 0, 1, 1500, 2000, 2, 0, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 617299967, 0, -1, '', '', 0, 0, 0, 0, 0, 0, 'npc_tos_fallen_priestess'),
(119941, 0, 112, 112, 0, 0, 0, 0, 100, 0, 16, 0, 0, 1.6, 0.5, 1.14286, 1, 0, 0, 0, 0, 1, 1500, 2000, 2, 0, 2097152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 617299967, 0, -1, '', '', 0, 0, 0, 0, 0, 0, 'npc_tos_soul_residue');

update creature_template set inhabittype = 7, ScriptName = 'boss_the_desolate_host_generic', flags_extra = 130 where entry = 120988;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_engine_of_souls', flags_extra = 1537 where entry = 118460;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_soul_queen_dejahna', flags_extra = 1537 where entry = 118462;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_desolate_host', flags_extra = 1537 where entry = 119072;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_spiritual_font', flags_extra = 0 where entry = 118701;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_reanimated_templar' where entry = 118715;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_ghastly_bonewarden' where entry = 118728;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_fallen_priestess' where entry = 118729;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_soul_residue', flags_extra = 0 where entry = 118730;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_tormented_cries', flags_extra = 128 where entry = 118924;
update creature_template set inhabittype = 7, flags_extra = 130 where entry = 118727;

update creature_template_wdb set Classification = 3 where entry in (118460,118462,119072);

delete from creature_template_addon where entry in (121110,119072,118460,118715,118728,118462,118729,118730,118701,118727,120368,121718);

delete from npc_spellclick_spells where npc_entry in (118701);

delete from creature_summon_groups where summonerId = 120988;
INSERT INTO `creature_summon_groups` (`summonerId`, `id`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `count`, `actionType`, `distance`, `summonType`, `summonTime`) VALUES
(120988,  0, 0, 0, 118715, 6444.92, -1101.77, 2881.61, 5.80, 0, 0, 0, 8, 0),
(120988,  1, 0, 0, 118728, 6438.02, -1103.45, 2881.61, 6.07, 0, 0, 0, 8, 0),
(120988,  2, 0, 0, 118728, 6441.27, -1096.42, 2881.61, 5.69, 0, 0, 0, 8, 0),
(120988,  3, 0, 0, 118729, 6456.28, -1089.77, 2881.61, 0.32, 0, 0, 0, 8, 0),
(120988,  4, 0, 0, 118729, 6460.06, -1082.43, 2881.61, 5.07, 0, 0, 0, 8, 0),
(120988,  5, 0, 0, 118730, 6460.65, -1076.44, 2881.53, 5.13, 0, 0, 0, 8, 0),
(120988,  6, 0, 0, 118730, 6449.45, -1096.43, 2881.56, 0.14, 0, 0, 0, 8, 0),
(120988,  7, 0, 0, 118730, 6447.95, -1088.68, 2881.56, 3.22, 0, 0, 0, 8, 0),
(120988,  8, 0, 0, 118727, 6437.72, -1089.52, 2881.60, 2.34, 0, 0, 0, 8, 0),
(120988,  9, 0, 0, 118701, 6402.56, -1082.19, 2881.99, 0, 0, 0, 0, 8, 0),
(120988, 10, 0, 0, 118701, 6418.50, -1059.29, 2881.99, 0, 0, 0, 0, 8, 0),
(120988, 11, 0, 0, 118701, 6446.13, -1054.33, 2881.99, 0, 0, 0, 0, 8, 0),
(120988, 12, 0, 0, 118701, 6407.38, -1109.63, 2881.99, 0, 0, 0, 0, 8, 0),
(120988, 13, 0, 0, 118701, 6468.97, -1070.34, 2881.99, 0, 0, 0, 0, 8, 0),
(120988, 14, 0, 0, 118701, 6430.19, -1125.69, 2881.99, 0, 0, 0, 0, 8, 0);

delete from areatrigger_template where entry in (9660);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(9660, 235589, 966000, 235589, 0, 90, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit Presence');

delete from areatrigger_data where entry in (9727,9728,9729,9730,9660);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(9727, 235927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9728, 235927, 0, 0, 0, 0, 0, 0, 0, 0, 1.57, 0, 0, 0, 0, 0),
(9729, 235927, 0, 0, 0, 0, 0, 0, 0, 0, 3.14, 0, 0, 0, 0, 0),
(9730, 235927, 0, 0, 0, 0, 0, 0, 0, 0, 4.71, 0, 0, 0, 0, 0),
(9660, 235589, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (9693,9736,9727,9728,9729,9730,9753,9660);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(9693, 0, 0, 1, 0, 8, 235907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Collapsing Fissure - Apply'),
(9693, 0, 1, 42, 1, 8, 235907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Collapsing Fissure - Remove'),
(9736, 0, 0, 1, 0, 8, 236011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tormented Cries - Apply'),
(9736, 0, 1, 42, 1, 8, 236011, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tormented Cries - Remove'),
(9727, 0, 0, 1, 0, 8, 235956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rupturing Slam'),
(9728, 0, 0, 1, 0, 8, 235956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rupturing Slam'),
(9729, 0, 0, 1, 0, 8, 235956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rupturing Slam'),
(9730, 0, 0, 1, 0, 8, 235956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rupturing Slam'),
(9753, 0, 0, 1, 0, 8, 236241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soul Rot - Apply'),
(9753, 0, 1, 42, 1, 8, 236241, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soul Rot - Remove'),
(9660, 966000, 0, 5, 15, 4194304, 235589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit Presence - Apply'),
(9660, 966000, 1, 42, 15, 4194304, 235589, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit Presence - Remove');

delete from areatrigger_scripts where entry in (966000);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(966000, 'at_tos_spirit_presence');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (236772,236964);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 236772, 0, 1, 31, 0, 3, 118728, 0, 0, 0, '', NULL),
(13, 1, 236772, 0, 0, 31, 0, 3, 118715, 0, 0, 0, '', NULL),
(13, 1, 236964, 0, 0, 31, 0, 3, 119072, 0, 0, 0, '', NULL),
(13, 1, 236964, 0, 2, 31, 0, 3, 118462, 0, 0, 0, '', NULL),
(13, 1, 236964, 0, 1, 31, 0, 3, 118460, 0, 0, 0, '', NULL);

delete from spell_script_names where spell_id in
(236673,236459,236465,236515,236563,236564,236567,236568,235113,235620,235732,235734,239014,239015,239006,239007,235933,242796,238585);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(236673, 'spell_tos_quietus_filter'),
(236459, 'spell_tos_soulbind'),
(236465, 'spell_tos_soulbind_finder'),
(236515, 'spell_tos_shattering_scream'),
(236563, 'spell_tos_sundering_doom'),
(236564, 'spell_tos_sundering_doom'),
(236567, 'spell_tos_sundering_doom'),
(236568, 'spell_tos_sundering_doom'),
(235113, 'spell_tos_spiritual_barrier_dissonance'),
(235620, 'spell_tos_spiritual_barrier_dissonance'),
(235732, 'spell_tos_spiritual_barrier_dissonance'),
(235734, 'spell_tos_spiritual_barrier_dissonance'),
(239014, 'spell_tos_dissonance'),
(239015, 'spell_tos_dissonance'),
(239006, 'spell_tos_dissonance_filter'),
(239007, 'spell_tos_dissonance_filter'),
(235933, 'spell_tos_spear_of_anguish'),
(242796, 'spell_tos_spear_of_anguish'),
(238585, 'spell_tos_bound_essence');

delete from spell_target_filter where spellId in (235885,245611,245612,235923);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(235885, 15, 1, -235621, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Collapsing Fissure - Remove Aura'),
(235885, 15, 9, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Collapsing Fissure - Remove Victim'),
(245611, 31, 1, 236459, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Soulbind - Real World'),
(245612, 31, 1, 236459, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Soulbind - Spirit world'),
(235923, 15, 1, -235621, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Spear of Anguish - Non aura'),
(235923, 15, 24, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Spear of Anguish - Non tank');

delete from spell_dummy_trigger where spell_id in (235885,236454,236455,236542,235923);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(235885, 235889, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Collapsing Fissure'),
(236454, 0, 11, 0, 5, 0, 0, 0, 0, 1, 8, 0, 0, 'Soulbind - Real World'),
(236455, 0, 11, 0, 5, 0, 0, 0, 0, 1, 8, 0, 0, 'Soulbind - Spirit world'),
(236542, 236563, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Sundering Doom - Real world'),
(236542, 236564, 11, 0, 0, 0, 0, 0, 0, 2, 8, 0, 0, 'Sundering Doom - Spirit world'),
(236544, 236567, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Doomed Sundering - Spirit world'),
(236544, 236568, 11, 0, 0, 0, 0, 0, 0, 2, 8, 0, 0, 'Doomed Sundering - Real world'),
(235923, 235924, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Spear of Anguish');

delete from creature_text where entry in (118460,118924,120988,119072,118462);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(118460, 0, 0, 'Вы – топливо для реактора!', 14, 0, 0, 0, 0, 82194, 129451, 'AGGRO'),
(118460, 0, 1, 'Ваши души – пища для Скверны!', 14, 0, 0, 0, 0, 82195, 129452, 'AGGRO'),
(118460, 1, 0, 'WARN: SPEAR', 41, 0, 0, 0, 0, 0, 128231, 'SPEAR_OF_ANGUISH'),
(120988, 0, 0, 'WARN: PHASE 2', 41, 0, 0, 0, 0, 0, 127919, 'PHASE_2'),
(119072, 0, 0, 'Ваши души сольются с нами!', 14, 0, 0, 0, 0, 82203, 129448, 'Spawn - AGGRO'),
(119072, 0, 1, 'Мы упьемся вашими страданиями!', 14, 0, 0, 0, 0, 82204, 129449, 'Spawn - AGGRO'),
(119072, 1, 0, 'Реактор... остановился...', 14, 0, 0, 0, 0, 82200, 129460, 'DEATH'),
(119072, 1, 1, 'Нас... не остановить...', 14, 0, 0, 0, 0, 82201, 129461, 'DEATH'),
(118462, 0, 0, 'Все вы послужите повелителю!', 14, 0, 0, 0, 0, 82212, 129465, 'AGGRO'),
(118462, 1, 0, 'Попробуйте разорвать мои узы!', 14, 0, 0, 0, 0, 82211, 129441, 'SOULBIND'),
(118462, 1, 1, 'Чувствуете хватку рока?', 14, 0, 0, 0, 0, 82213, 129442, 'SOULBIND'),
(118462, 1, 2, 'Жизнь и смерть переплелись!', 14, 0, 0, 0, 0, 82223, 129440, 'SOULBIND'),
(118462, 2, 0, 'WARN: SOULBIND', 41, 0, 0, 0, 0, 0, 127908, 'WARN: SOULBIND'),
(118462, 3, 0, 'WARN: WAILING_SOULS', 41, 0, 0, 0, 0, 0, 127909, 'WARN: WAILING_SOULS'),
(118462, 4, 0, 'Окунитесь в их агонию!', 14, 0, 0, 0, 0, 82221, 129438, 'WAILING_SOULS'),
(118462, 5, 0, 'Тьма одолела меня. Скажите Тиранде... мне жаль.', 14, 0, 0, 0, 0, 82219, 129474, 'DEATH'),
(118924, 0, 0, 'Тьма заберет тебя!', 14, 0, 0, 0, 0, 82190, 129443, 'TORMENTED_CRIES'),
(118924, 0, 1, 'Пустота... одиночество...', 14, 0, 0, 0, 0, 82192, 129445, 'TORMENTED_CRIES'),
(118924, 0, 2, 'Твоя душа познает отчаяние!', 14, 0, 0, 0, 0, 82191, 129444, 'TORMENTED_CRIES');

delete from creature_difficulty_stat where entry in (119072,118460,118462,118715,119938,118728,119939,118729,119940,118730,119941);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(119072, 14, 1, 522.763282026198),
(119072, 15, 1, 653.4541170905307),
(119072, 16, 1, 1739.966583968869),
(119072, 17, 1, 470.7),

(118460, 14, 1, 991.1997800837826),
(118460, 15, 1, 1238.999710329665),
(118460, 16, 1, 4499.998947928564),
(118460, 17, 1, 892.08),

(118462, 14, 1, 991.1997800837826),
(118462, 15, 1, 1238.999710329665),
(118462, 16, 1, 4499.998947928564),
(118462, 17, 1, 892.08),

(118715, 14, 1, 31.99997859404262),
(118715, 15, 1, 39.99997324255328),
(118715, 16, 1, 106.5999270730105),
(118715, 17, 1, 28.8),

(119938, 14, 1, 31.99997859404262),
(119938, 15, 1, 39.99997324255328),
(119938, 16, 1, 106.5999270730105),
(119938, 17, 1, 28.8),

(118728, 14, 1, 19.99998662127664),
(118728, 15, 1, 24.9999832765958),
(118728, 16, 1, 66.62495531973933),
(118728, 17, 1, 18),

(119939, 14, 1, 19.99998662127664),
(119939, 15, 1, 24.9999832765958),
(119939, 16, 1, 66.62495531973933),
(119939, 17, 1, 18),

(118729, 14, 1, 36.85497524296013),
(118729, 15, 1, 46.06871770503854),
(118729, 16, 1, 122.7731339741473),
(118729, 17, 1, 33.3),

(119940, 14, 1, 36.85497524296013),
(119940, 15, 1, 46.06871770503854),
(119940, 16, 1, 122.7731339741473),
(119940, 17, 1, 33.3),

(118730, 14, 1, 3.509997984703919),
(118730, 15, 1, 4.387496581772145),
(118730, 16, 1, 11.69267964018254),
(118730, 17, 1, 3.15),

(119941, 14, 1, 3.509997984703919),
(119941, 15, 1, 4.387496581772145),
(119941, 16, 1, 11.69267964018254),
(119941, 17, 1, 3.15);







