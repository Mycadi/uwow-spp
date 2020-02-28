delete from instance_encounters where entry = 2050;
INSERT INTO `instance_encounters` (`entry`, `difficulty`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES
(2050, -1, 0, 118182, 0, 'Sisters of the Moon');

delete from creature where id in (118182,118523,118518,118374);
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`) VALUES
(118182, 1676, 8524, 8524, 245760, 1, '', 0, 1, 6190.06, -1020.03, 2899.5, 5.87529, 604800, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'boss_sisters_of_the_moon', flags_extra = 131 where entry = 118182;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sister_kasparian', flags_extra = 1 where entry = 118523;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sister_lunaspyre', flags_extra = 1 where entry = 118518;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sister_yathae', flags_extra = 1 where entry = 118374;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sistersmoon_moontalon' where entry = 119205;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sistersmoon_glaive_target' where entry = 119054;

update creature_template_wdb set Classification = 3 where entry in (118523,118518,118374);

delete from creature_template_addon where entry in (118374,118518,118523,119205);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(118374, 0, 0, 0, 1, 0, NULL),
(118518, 0, 0, 0, 1, 0, NULL),
(118523, 0, 75620, 0, 1, 0, NULL);

delete from creature_equip_template where CreatureID in (118374,118518,118523);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `ItemID4`, `ItemID5`, `ItemID6`) VALUES
(118374, 1, 23225, 0, 74051, 0, 144237, 0),
(118518, 1, 94840, 0, 0, 0, 0, 0),
(118523, 1, 144320, 0, 144321, 0, 0, 0);

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (235216,233264,239378,239382,239385);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 235216, 0, 2, 31, 0, 3, 118374, 0, 0, 0, '', NULL),
(13, 1, 235216, 0, 1, 31, 0, 3, 118518, 0, 0, 0, '', NULL),
(13, 1, 235216, 0, 0, 31, 0, 3, 118523, 0, 0, 0, '', NULL),
(13, 1, 233264, 0, 0, 31, 0, 3, 118374, 0, 0, 0, '', NULL),
(13, 1, 239378, 0, 0, 31, 0, 3, 119054, 0, 0, 0, '', NULL),
(13, 1, 239382, 0, 0, 31, 0, 3, 119054, 0, 0, 0, '', NULL),
(13, 1, 239385, 0, 0, 31, 0, 3, 119054, 0, 0, 0, '', NULL);

delete from areatrigger_data where entry in (10045,10046,10047);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(10045, 239379, 0, 0, 0, 0, 1000, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(10046, 239383, 0, 0, 0, 0, 1000, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(10047, 239386, 0, 0, 0, 0, 1000, 500, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (9785,9777,9807,10045,10046,10047);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(9785, 0, 0, 1, 0, 8, 236541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Glaive'),
(9777, 0, 0, 1, 0, 8, 236516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Volley - Apply'),
(9777, 0, 1, 42, 1, 8, 236516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Twilight Volley - Remove'),
(9807, 0, 0, 1, 0, 8, 237351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Barrage - Apply'),
(9807, 0, 1, 42, 1, 8, 237351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Barrage - Remove'),
(10045, 0, 0, 1, 0, 8, 236480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glaive Storm'),
(10045, 0, 1, 5, 0, 4194304, 239384, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Check despawn'),
(10046, 0, 0, 1, 0, 8, 236480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glaive Storm'),
(10046, 0, 1, 5, 0, 4194304, 239384, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Check despawn'),
(10047, 0, 0, 1, 0, 8, 236480, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glaive Storm'),
(10047, 0, 1, 5, 0, 4194304, 239384, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Check despawn');

delete from areatrigger_scripts where entry in (14928,14929,14930);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(14928, 'at_sistersmoon_glaive_storm'),
(14929, 'at_sistersmoon_glaive_storm'),
(14930, 'at_sistersmoon_glaive_storm');

delete from spell_script_names where spell_id in (236306,233263,233264,239378,239382,239385);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(236306, 'spell_sistersmoon_incorporeal_shot_filter'),
(233263, 'spell_sistersmoon_embrace_eclipse'),
(233264, 'spell_sistersmoon_embrace_eclipse'),
(239378, 'spell_sistersmoon_glaive_storm_filter'),
(239382, 'spell_sistersmoon_glaive_storm_filter'),
(239385, 'spell_sistersmoon_glaive_storm_filter');

delete from spell_target_filter where spellId in (237561);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(237561, 16, 4, -1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 'Twilight Glaive');

delete from spell_dummy_trigger where spell_id in (239378,239382,239385);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(239378, 239379, 4, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Glaive Storm Big'),
(239382, 239383, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Glaive Storm Medium'),
(239385, 239386, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Glaive Storm Small');

delete from creature_text where entry in (118374,118518);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(118374, 0, 0, 'Мои стрелы разят без промаха!', 12, 0, 100, 0, 0, 0, 130219, 'TWILIGHT_VOLLEY_1'),
(118374, 0, 1, 'Ливень воздаяния!', 12, 0, 100, 0, 0, 0, 129764, 'TWILIGHT_VOLLEY_2'),
(118374, 1, 0, 'WARN: INCORPOREAL_SHOT', 41, 0, 100, 0, 0, 0, 132658, 'INCORPOREAL_SHOT'),
(118374, 2, 0, 'Я не промахиваюсь!', 12, 0, 100, 0, 0, 0, 129767, 'RAPID_SHOT'),

(118518, 0, 0, 'WARN: ECLIPSE', 41, 0, 100, 0, 0, 0, 132659, 'EMBRACE_ECLIPSE_WARN'),
(118518, 1, 0, 'Луна в зените! Восславим богиню!', 12, 0, 100, 0, 0, 0, 129763, 'EMBRACE_ECLIPSE'),
(118518, 2, 0, 'Вы заплатите за оскорбление богини!', 12, 0, 50, 0, 0, 0, 129771, 'MOON_BURN'),
(118518, 3, 0, 'Богиня… Мы подвели тебя...', 12, 0, 100, 0, 0, 0, 129757, 'DEATH');

delete from creature_difficulty_stat where entry in (118523,118518,118374,119205);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(118523, 14, 1, 1120),
(118523, 15, 1, 1400),
(118523, 16, 1, 5319),
(118523, 17, 1, 1008),

(118518, 14, 1, 1120),
(118518, 15, 1, 1400),
(118518, 16, 1, 5319),
(118518, 17, 1, 1008),

(118374, 14, 1, 1120),
(118374, 15, 1, 1400),
(118374, 16, 1, 5319),
(118374, 17, 1, 1008),

(119205, 14, 1, 60.0375),
(119205, 15, 1, 75.0469),
(119205, 16, 1, 200),
(119205, 17, 1, 54);




