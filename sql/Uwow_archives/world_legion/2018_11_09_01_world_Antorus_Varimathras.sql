delete from creature where id in (122590,122643,127471,127472,127457) and `map` = 1712;

update creature set spawntimesecs = 604800 where id = 122366;

update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'boss_varimathras', flags_extra = flags_extra | 1 where entry = 122366;
update creature_template set mechanic_immune_mask = 650854399, ScriptName = 'npc_shadow_of_varimathras' where entry in (122590,122643);

update creature_template_wdb set Classification = 3 where entry in (122366);

delete from creature_addon where auras = 144224;

delete from areatrigger_template where entry in (10567);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(10567, 243975, 1056700, 243975, 0, 100, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Control Aura');

delete from areatrigger_data where entry in (10571,10573,10574,10572,10567);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`) VALUES
(10571, 243967, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(10573, 243976, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(10574, 243979, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(10572, 243974, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(10567, 243975, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

delete from areatrigger_actions where entry in (10571,10573,10574,10572,10567,10577,11077);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10571, 0, 0, 5, 0, 8, 243968, 0, -243968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torment of Flames - Apply'),
(10571, 0, 1, 42, 1, 8, 243968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torment of Flames - Remove'),
(10573, 0, 0, 5, 0, 8, 243977, 0, -243977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torment of Frost - Apply'),
(10573, 0, 1, 42, 1, 8, 243977, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torment of Frost - Remove'),
(10574, 0, 0, 5, 0, 8, 243980, 0, -243980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torment of Fel - Apply'),
(10574, 0, 1, 42, 1, 8, 243980, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torment of Fel - Remove'),
(10572, 0, 0, 5, 0, 8, 243973, 0, -243973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torment of Shadows - Apply'),
(10572, 0, 1, 42, 1, 8, 243973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Torment of Shadows - Remove'),
(10567, 0, 0, 5, 0, 8, 243957, 0, -243957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Control Aura - Apply'),
(10567, 0, 1, 42, 1, 8, 243957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Control Aura - Remove'),
(10577, 0, 0, 1, 0, 8, 244005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Fissure - Apply'),
(10577, 0, 1, 42, 1, 8, 244005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dark Fissure - Remove'),
(11077, 0, 0, 1, 0, 8, 248740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Echoes of Doom - Apply'),
(11077, 0, 1, 42, 1, 8, 248740, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Echoes of Doom - Remove');

delete from spell_script_names where spell_id in (244697,243957,243959,243980,244097);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(244697, 'spell_varimathras_energy_gain'),
(243957, 'spell_varimathras_control_aura'),
(243959, 'spell_varimathras_control_distance_check'),
(243980, 'spell_varimathras_torment_of_fel'),
(244097, 'spell_varimathras_necrotic_embrace');

delete from spell_target_filter where spellId in (244042,244068,244093);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(244042, 0, 16, 24, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Marked Prey - Exclude Tank'),
(244093, 0, 16, 24, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Necrotic Embrace - Exclude Tank'),
(244068, 0, 134, 4, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 'Marked Prey - Sort Dist');

delete from spell_dummy_trigger where spell_id in (244093);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(244093, 244094, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Necrotic Embrace');

delete from spell_target_position where id in (243975,243967,243976,243979,243974);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(243975, 1712, -12634.2, -2819.49, 2438.84, 0),
(243967, 1712, -12634.2, -2819.49, 2438.84, 0),
(243976, 1712, -12634.2, -2819.49, 2438.84, 0),
(243979, 1712, -12634.2, -2819.49, 2438.84, 0),
(243974, 1712, -12634.2, -2819.49, 2438.84, 0);

delete from creature_difficulty_stat where entry in (122366,122590,122643);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(122366, 14, 1, 1903.999554856886),
(122366, 15, 1, 2379.999443571107),
(122366, 16, 1, 6108.018591330337),
(122366, 17, 1, 1713.6),
(122590, 16, 1, 32.49999266309989),
(122643, 16, 1, 32.49999266309989);

delete from creature_text where entry = 122366;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(122366, 0, 0, 'Draw your blades! I will show you torment!', 14, 0, 100, 0, 0, 87211, 135099, 0, 0, 0, 'AGGRO_1'),
(122366, 0, 1, 'Come, then. We will trade pain for pain!', 14, 0, 100, 0, 0, 87040, 133873, 0, 0, 0, 'AGGRO_2'),
(122366, 1, 0, 'Share your suffering!', 14, 0, 100, 0, 0, 87206, 135118, 0, 0, 0, 'NECROTIC_EMBRACE_1'),
(122366, 1, 1, 'Let pain embrace you!', 14, 0, 100, 0, 0, 87207, 135119, 0, 0, 0, 'NECROTIC_EMBRACE_2'),
(122366, 2, 0, 'Pain awaits in the darkness!', 14, 0, 100, 0, 0, 87199, 135114, 0, 0, 0, 'DARK_FISSURE_1'),
(122366, 2, 1, 'Ah, the agony of shadows!', 14, 0, 100, 0, 0, 87200, 135115, 0, 0, 0, 'DARK_FISSURE_2'),
(122366, 3, 0, 'Back, cur!', 14, 0, 100, 0, 0, 87204, 135116, 0, 0, 0, 'MARKED_PREY_1'),
(122366, 3, 1, 'Away!', 14, 0, 100, 0, 0, 87205, 135117, 0, 0, 0, 'MARKED_PREY_2'),
(122366, 4, 0, 'Death... claims... us all.', 14, 0, 100, 0, 0, 87043, 133876, 0, 0, 0, 'DEATH_1'),
(122366, 4, 1, 'Your torment... is only... beginning.', 14, 0, 100, 0, 0, 87215, 135100, 0, 0, 0, 'DEATH_2');




