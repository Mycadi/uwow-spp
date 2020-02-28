delete from creature where guid in (262864,262867,262885,11565654,11565655,14507200,262861,262865,11565656,11565657) and `map` = 1501;

update creature set spawntimesecs = 14400 where `map` = 1501 and spawntimesecs = 7200;
update creature set position_x = 3098.552, position_y = 7311.781, position_z = 103.4037, orientation = 0.449 where id = 98696;

update creature_template_addon set bytes2 = 1 where entry = 98696;

update creature_template set mechanic_immune_mask = 1, ScriptName = 'npc_illysanna_trash_generic' where entry = 100486;
update creature_template set lootid = 0, mechanic_immune_mask = 1 where entry = 100485;
update creature_template set mechanic_immune_mask = 617299967, maxVisible = 1 where entry = 100759;
update creature_template set mechanic_immune_mask = 617299967 where entry = 98706;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_brh_boulder' where entry = 111706;
update creature_template set AIName = '', mechanic_immune_mask = 1, ScriptName = 'npc_brh_wyrmtongue_scavenger' where entry = 98792;
update creature_template set AIName = '', mechanic_immune_mask = 1, ScriptName = 'npc_brh_fel_bat' where entry = 102781;

delete from creature_loot_template where entry in (100485);

delete from smart_scripts where entryorguid in (98792);

update areatrigger_template set customEntry = 1034800 where entry = 10348;
update areatrigger_template set decalPropertiesId = 84 where entry = 5376;
update areatrigger_actions set targetFlags = 8 where entry in (5376);
update areatrigger_actions set moment = 5, targetFlags = 8 where entry in (5167);

delete from areatrigger_polygon where entry in (1034800);
INSERT INTO `areatrigger_polygon` (`entry`, `spellId`, `type`, `id`, `x`, `y`) VALUES
(1034800, 241672, 1, 0, 2, -6),
(1034800, 241672, 1, 1, 2, 6),
(1034800, 241672, 1, 2, 45, -6),
(1034800, 241672, 1, 3, 45, 6);

delete from areatrigger_actions where entry in (8234,5695);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(8234, 0, 0, 1, 0, 8, 222397, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulder Explode'),
(5695, 0, 0, 1, 0, 8, 201062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bowled Over');

delete from areatrigger_data where entry in (5167);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES
(5167, 195254, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (205210,205211,205212);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 205210, 0, 0, 31, 0, 3, 103662, 0, 0, 0, '', NULL),
(13, 1, 205210, 0, 0, 1, 0, 205210, 0, 0, 1, 0, '', NULL),
(13, 1, 205210, 0, 0, 1, 0, 205211, 0, 0, 1, 0, '', NULL),
(13, 1, 205210, 0, 0, 1, 0, 205212, 0, 0, 1, 0, '', NULL),
(13, 1, 205211, 0, 0, 1, 0, 205210, 0, 0, 1, 0, '', NULL),
(13, 1, 205211, 0, 0, 1, 0, 205211, 0, 0, 1, 0, '', NULL),
(13, 1, 205211, 0, 0, 1, 0, 205212, 0, 0, 1, 0, '', NULL),
(13, 1, 205211, 0, 0, 31, 0, 3, 103662, 0, 0, 0, '', NULL),
(13, 1, 205212, 0, 0, 1, 0, 205210, 0, 0, 1, 0, '', NULL),
(13, 1, 205212, 0, 0, 1, 0, 205211, 0, 0, 1, 0, '', NULL),
(13, 1, 205212, 0, 0, 1, 0, 205212, 0, 0, 1, 0, '', NULL),
(13, 1, 205212, 0, 0, 31, 0, 3, 103662, 0, 0, 0, '', NULL);

delete from spell_dummy_trigger where spell_id in (222397);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(222397, 222417, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Boulder Explode - Stun');

delete from spell_target_filter where spellId in (197546,197484,198080);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(197546, 0, 6, 3, 0, 16, 0, 0, 0, 3, 0, 0, 0, 0, 0, 'Brutal Glaive - Only Players'),
(198080, 0, 129, 4, 0, 0, 0, 0, 0, 7, 1, 1, 0, 0, 0, 'Hateful Charge - SortDist');

delete from spell_script_names where spell_id in (197484,198079,201733);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(197484, 'spell_illysanna_dark_rush'),
(201733, 'spell_kurtalos_stinging_swarm');

delete from spell_linked_spell where spell_trigger in (200784);

delete from creature_text where entry in (98949,98696,98970);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
-- Smashspite the Hateful
(98949, 0, 0, 'Я раскрашу крепость вашей кровью!', 14, 0, 100, 0, 0, 54504, 101266, 0, 0, 0, 'AGGRO'),
(98949, 1, 0, 'Не убежишь, букашка...', 14, 0, 100, 0, 0, 54506, 101273, 0, 0, 0, 'HATEFUL_GAZE'),
(98949, 2, 0, 'WARN_HATEFUL_GAZE', 41, 0, 100, 0, 0, 0, 106206, 0, 0, 0, 'WARN_HATEFUL_GAZE'),
(98949, 3, 0, 'Ха! Поймал!', 14, 0, 100, 0, 0, 54503, 101274, 0, 0, 0, 'HATEFUL_GAZE_CHARGE'),
(98949, 4, 0, 'Трепещите.', 14, 0, 100, 0, 0, 54501, 101272, 0, 0, 0, 'EARTHSHAKING_STOMP'),
(98949, 5, 0, 'Получи!', 14, 0, 100, 0, 0, 54635, 123575, 0, 0, 0, 'BRUTAL_HAYMAKER'),
(98949, 6, 0, 'Как... же... так...', 14, 0, 100, 0, 0, 54636, 101278, 0, 0, 0, 'DEATH'),
-- Illysanna Ravencrest
(98696, 0, 0, 'Здесь вы найдете свою смерть, глупцы!', 14, 0, 100, 0, 0, 54515, 101132, 0, 0, 0, 'AGGRO'),
(98696, 1, 0, 'Вам не уйти.', 14, 0, 100, 0, 0, 54561, 101194, 0, 0, 0, 'VENGEFUL_SHEAR'),
(98696, 2, 0, 'Охота продолжается...', 14, 0, 100, 0, 0, 54513, 101208, 0, 0, 0, 'DARK_RUSH'),
(98696, 3, 0, 'WARN_DARK_RUSH', 42, 0, 100, 0, 0, 0, 103691, 0, 0, 0, 'WARN_DARK_RUSH'),
(98696, 4, 0, 'Стража! Придержите их!', 14, 0, 100, 53, 0, 54519, 101209, 0, 0, 0, 'PHASE_FLY'),
(98696, 5, 0, 'Я сожгу вас заживо!', 14, 0, 100, 0, 0, 54510, 101210, 0, 0, 0, 'EYE_BEAMS'),
(98696, 6, 0, 'WARN_EYE_BEAMS', 42, 0, 100, 0, 0, 0, 103692, 0, 0, 0, 'WARN_EYE_BEAMS'),
(98696, 7, 0, 'О, нет! Меня... предали...', 14, 0, 100, 0, 0, 54514, 101221, 0, 0, 0, 'DEATH'),
-- Latosius
(98970, 0, 0, 'Горите!', 14, 0, 100, 0, 0, 54539, 101284, 0, 0, 0, 'DARK_BLAST'),
(98970, 1, 0, '|TInterface\\Icons\\spell_shadow_zdemonformgreen:20|t%s применяет заклинание |cFFFF0000|Hspell:199193|h[\"Хитроумие повелителя ужаса\"]|h|r!', 41, 0, 100, 0, 0, 0, 122985, 0, 0, 0, 'WARN_DREADLORDS_GUILE'),
(98970, 2, 0, 'Вы не понимаете, с чем связались, смертные...', 14, 0, 100, 0, 0, 54541, 101292, 0, 0, 0, 'DREADLORDS_GUILE'),
(98970, 3, 0, 'Спите...', 14, 0, 100, 0, 0, 54499, 101289, 0, 0, 0, 'CLOUD_OF_HYPNOSIS'),
(98970, 4, 0, 'I... will... return!', 14, 0, 100, 0, 0, 54547, 101303, 0, 0, 0, 'DEATH');

delete from waypoint_data_script where id = 10278100;
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `speed`, `action`, `entry`, `wpguid`) VALUES
(10278100, 1, 3239.91, 7332.9,  229.467, 0, 0, 1, 15, 0, 0, 0),
(10278100, 2, 3222.28, 7338.44, 226.033, 0, 0, 1, 15, 0, 0, 0),
(10278100, 3, 3199.51, 7361.4,  223.719, 0, 0, 1, 15, 0, 0, 0),
(10278100, 4, 3187.58, 7350.52, 223.719, 0, 0, 1, 15, 0, 0, 0),
(10278100, 5, 3171.46, 7350,    215.611, 0, 0, 1, 15, 0, 0, 0),
(10278100, 6, 3155.74, 7357.3,  215.611, 0, 0, 1, 15, 0, 0, 0),
(10278100, 7, 3146.66, 7367.73, 209.925, 0, 0, 1, 15, 0, 0, 0),
(10278100, 8, 3141.73, 7379.3,   202.59, 0, 0, 1, 15, 0, 0, 0),
(10278100, 9, 3141.11, 7392.02, 196.659, 0, 0, 1, 15, 0, 0, 0),
(10278100, 10, 3155.63, 7403.26,195.656, 0, 0, 1, 15, 0, 0, 0);




-- FIXI DIMASA >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- BRH BEGIN

-- EVENTOBJECT 
delete from eventobject where id in (2606, 2607);
replace into `eventobject_template`(`entry`, `name`, `radius`, `SpellID`, `WorldSafeLocID`, `ScriptName`) VALUES
(2606, 'BRH, Spider - event (Glazzer)', 5, 0, 0, 'SmartEventObject'),
(2607, 'BRH, Guardion - event (Glazzer)', 5, 0, 0, 'SmartEventObject');

replace into `eventobject`(`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
(2606, 1501, 7805, 7805, 8388870, 1, '', 3126.75, 7428.37, 72.57, 0),
(2607, 1501, 7805, 7805, 8388870, 1, '', 3060.38, 7342.46, 84.8821, 0);

-- SPELLS
delete from spell_dummy_trigger where spell_id in (200105, 225917);
delete from spell_linked_spell where spell_trigger in (200105, 200784) and spell_effect in (200099);

replace into `spell_linked_spell`(`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `effectMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `param`, `randList`, `comment`) VALUES 
(200105, 200099, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, '', 'BRH, ApplyAuraSave (Glazzer)');

replace into `spell_dummy_trigger`(`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(225917, 225909, 4, 0, 5, 0, 0, 0, 0, 7, 8, 0, 0, 'BRH, AppleDebuff (Glazzer)');

-- SET IMMUNE MASK
update creature_template set mechanic_immune_mask = 617299711 where entry in 
(98368, 98538, 98521, 98243, 98706, 102788);	 

-- снять маску интерапта
update creature_template set mechanic_immune_mask = mechanic_immune_mask &~ 33554432 where entry in 
(102788);

-- HP
replace into creature_difficulty_stat(entry, difficulty, dmg_multiplier, HealthModifier) VALUES 
(98542, 8, 1, 99.816), (98542, 23, 1, 99.816),
(98696, 8, 1, 88.408), (98696, 23, 1, 88.408),
(98949, 8, 1, 88.847), (98949, 23, 1, 88.847),
(98965, 8, 1, 34.222), (98965, 23, 1, 34.222),

(98366, 8, 1, 14.259), (98366, 23, 1, 14.259),
(98368, 8, 1, 22.815), (98368, 23, 1, 22.815),
(98370, 8, 1, 14.259), (98370, 23, 1, 14.259),
(98362, 8, 1, 2.852), (98362, 23, 1, 2.852),
(98521, 8, 1, 34.222), (98521, 23, 1, 34.222),
(98538, 8, 1, 24.846), (98538, 23, 1, 24.846),
(98677, 8, 1, 1.711), (98677, 23, 1, 1.711),
(98681, 8, 1, 22.815), (98681, 23, 1, 22.815),
(98243, 8, 1, 19.963), (98243, 23, 1, 19.963),
(98691, 8, 1, 14.259), (98691, 23, 1, 14.259),
(98275, 8, 1, 14.259), (98275, 23, 1, 14.259),
(98280, 8, 1, 14.259), (98280, 23, 1, 14.259),
(101549, 8, 1, 2.852), (101549, 23, 1, 2.852),
(101839, 8, 1, 11.407), (101839, 23, 1, 11.407),
(98706, 8, 1, 22.815), (98706, 23, 1, 22.815),
(98900, 8, 1, 5.704), (98900, 23, 1, 5.704),
(98810, 8, 1, 22.815), (98810, 23, 1, 22.815),
(98813, 8, 1, 11.407), (98813, 23, 1, 11.407),
(98792, 8, 1, 15.685), (98792, 23, 1, 15.685),
(102788, 8, 1, 14.259), (102788, 23, 1, 14.259),
(102095, 8, 1, 15.356), (102095, 23, 1, 15.356),
(102094, 8, 1, 13.162), (102094, 23, 1, 13.162);

-- UPDATE CREATURE
UPDATE `creature` SET `position_x` = 3040.53, `position_y` = 7335.56, `position_z` = 89.03, `orientation` =  5.59 WHERE `guid` = 11565649;
UPDATE `creature` SET `position_x` = 3036.85, `position_y` = 7330.90, `position_z` = 89.03, `orientation` =  6.22 WHERE `guid` = 11565659;
UPDATE `creature` SET `position_x` = 3035.80, `position_y` = 7325.32, `position_z` = 89.03, `orientation` =  6.25 WHERE `guid` = 11565658;

-- вместо этих мобов, на этих местах, должны быть эти мобы -> https://ru.wowhead.com/npc=98792
UPDATE `creature` SET `id` = 98792 WHERE `guid` in (14507209, 14507207, 14507208, 14507205);

-- Этих НПЦ на этих местах не должно быть
delete from `creature` WHERE `guid` in (11565652, 11565647, 11565651, 14507202, 14507201);
 
-- добавление патрулей, ВП, связть ВП с гуидами
replace into `creature`(`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `unit_flags3`) VALUES 
(146727702, 102781, 1501, 7805, 7805, 8388608, 65535, '', 0, 0, 3151.28, 7357.65, 214.605, 2.29794, 86400, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146727704, 102781, 1501, 7805, 7805, 8388608, 65535, '', 0, 0, 3153.84, 7360.83, 214.455, 2.34899, 86400, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),

(146728053, 102781, 1501, 7805, 7805, 8388608, 65535, '', 0, 0, 3193.78, 7355.65, 223.718, 3.67306, 86400, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(146728055, 102781, 1501, 7805, 7805, 8388608, 65535, '', 0, 0, 3194.22, 7350.24, 223.718, 3.48849, 86400, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

replace into `waypoint_data`(`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `delay_chance`, `move_flag`, `speed`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
(1467061401, 1, 3150.62, 7358, 214.288, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061401, 2, 3141.19, 7371.87, 206.195, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061401, 3, 3139.45, 7394.59, 196.659, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061401, 4, 3141.19, 7371.87, 206.195, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061401, 5, 3150.62, 7358, 214.288, 0, 0, 0, 0, 7, 0, 100, 102781, 0),

(1467061402, 1, 3153.45, 7361.27, 214.177, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061402, 2, 3146.82, 7372.78, 207.144, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061402, 3, 3144.12, 7393.6, 196.659, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061402, 4, 3146.82, 7372.78, 207.144, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061402, 5, 3153.45, 7361.27, 214.177, 0, 0, 0, 0, 7, 0, 100, 102781, 0),

(1467061404, 1, 3192.64, 7355.54, 223.719, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061404, 2, 3187.56, 7353.12, 223.719, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061404, 3, 3174.29, 7352.1, 215.991, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061404, 4, 3166.96, 7352.52, 215.61, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061404, 5, 3174.29, 7352.1, 215.991, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061404, 6, 3187.56, 7353.12, 223.719, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061404, 7, 3192.64, 7355.54, 223.719, 0, 0, 0, 0, 7, 0, 100, 102781, 0),

(1467061403, 1, 3193.61, 7349.74, 223.719, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061403, 2, 3187.97, 7347.86, 223.719, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061403, 3, 3174.83, 7347.7, 216.352, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061403, 4, 3163.47, 7351.65, 215.61, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061403, 5, 3174.83, 7347.7, 216.352, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061403, 6, 3187.97, 7347.86, 223.719, 0, 0, 0, 0, 7, 0, 100, 102781, 0),
(1467061403, 7, 3193.61, 7349.74, 223.719, 0, 0, 0, 0, 7, 0, 100, 102781, 0);

replace into `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`)
VALUES
('146727702', '1467061401', '0', '0', '0', '0', ''),
('146727704', '1467061402', '0', '0', '0', '0', ''),

('146728053', '1467061404', '0', '0', '0', '0', ''),
('146728055', '1467061403', '0', '0', '0', '0', '');

update `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` in 
(98366, 98370, 98368, 98538, 98521, 98677, 98681, 101549, 98280, 98243, 98275, 101839, 98810, 102094, 102095, 102788);

-- SMART SCRIPTS
delete from smart_scripts where entryorguid in 
(98366, 98370, 98368, 98538, 98521, 98677, 98681, 101549, 98280, 98243, 98275, 101839, 98810, 102094, 102095, 102788, 2606, 2607, -11565649, -11565659, -11565658, 98691);
replace into `smart_scripts`(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(98366, 0, 0, 0, 0, 0, 100, 0, 10000, 11000, 15000, 15000, 11, 200084, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 15s (Glazzer)'),

(98370, 0, 0, 0, 0, 0, 100, 0, 500, 500, 3500, 3500, 11, 199663, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 3.5s (Glazzer)'),
(98370, 0, 1, 0, 0, 0, 100, 0, 12000, 12000, 23000, 23000, 11, 225573, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 23s (Glazzer)'),

(98368, 0, 0, 0, 0, 0, 100, 0, 26000, 26000, 32000, 32000, 11, 200105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 32s (Glazzer)'),

(98538, 0, 0, 0, 0, 0, 100, 0, 6000, 6000, 7000, 7000, 11, 196916, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 7s (Glazzer)'),
(98538, 0, 1, 0, 0, 0, 100, 0, 8000, 8000, 10000, 10000, 11, 225732, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 10s (Glazzer)'),

(98521, 0, 0, 0, 0, 0, 100, 0, 500, 500, 3500, 3500, 11, 196883, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 3.5s (Glazzer)'),
(98521, 0, 1, 0, 0, 0, 100, 0, 12000, 12000, 20000, 20000, 11, 194966, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 20s (Glazzer)'),

(98677, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 225908, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, ApplyAura (Glazzer)'),
(98677, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 225917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BRH, if dead -> cast (Glazzer)'),

(2606, 10, 0, 0, 75, 0, 100, 1, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 11, 98681, 50, 0, 0, 0, 0, 0, 'BRH, spiderJumpToPos_SetData (Glazzer)'),

(2607, 10, 0, 0, 75, 0, 100, 1, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 11565649, 98243, 0, 0, 0, 0, 0, 'BRH, JumpToPos_SetData (Glazzer)'),
(2607, 10, 1, 0, 75, 0, 100, 1, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 11565659, 98275, 0, 0, 0, 0, 0, 'BRH, JumpToPos_SetData (Glazzer)'),
(2607, 10, 2, 0, 75, 0, 100, 1, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 11565658, 98275, 0, 0, 0, 0, 0, 'BRH, JumpToPos_SetData (Glazzer)'),

(98681, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 97, 13, 13, 0, 0, 0, 0, 1, 0, 0, 0, 3127.76, 7430.88, 72.8727, 5.11912, 'BRH, spiderJumpToPos_GetData (Glazzer)'),
(98681, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3127.76, 7430.88, 72.8727, 5.11912, 'BRH, SetToHome (Glazzer)'),

(98691, 0, 0, 0, 0, 0, 100, 0, 15000, 15000, 15000, 15000, 11, 200291, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 15s (Glazzer)'),

(101549, 0, 0, 0, 0, 0, 100, 0, 500, 500, 3000, 3000, 11, 200256, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 3s (Glazzer)'),
(101549, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, AutoAttackStop (Glazzer)'),

(98280, 0, 0, 0, 0, 0, 100, 0, 500, 500, 4500, 4500, 11, 200248, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 4.5s (Glazzer)'),

(98243, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 22000, 22000, 11, 200261, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 22s (Glazzer)'),
(98243, 0, 1, 0, 0, 0, 100, 0, 12000, 13000, 30000, 30000, 11, 225998, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 30s (Glazzer)'),

(-11565649, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 97, 13, 13, 0, 0, 0, 0, 1, 0, 0, 0, 3047.40, 7331.08, 89.02, 0, 'BRH, JumpToPos_GetData (Glazzer)'),
(-11565649, 0, 1, 0, 1, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'BRH, SelectTargetForAttack (Glazzer)'),
(-11565649, 0, 2, 0, 0, 0, 100, 0, 8000, 8000, 22000, 22000, 11, 200261, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 22s (Glazzer)'),
(-11565649, 0, 3, 0, 0, 0, 100, 0, 12000, 13000, 30000, 30000, 11, 225998, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 30s (Glazzer)'),
(-11565649, 0, 4, 0, 7, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3047.40, 7331.08, 89.02, 0, 'BRH, SetToHome (Glazzer)'),

(98275, 0, 0, 0, 0, 0, 100, 0, 500, 500, 3000, 3000, 11, 193633, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 3s (Glazzer)'),
(98275, 0, 1, 0, 0, 0, 100, 0, 24000, 24000, 30000, 30000, 11, 200343, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 30s (Glazzer)'),
(98275, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, AutoAttackStop (Glazzer)'),

(-11565659, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 97, 13, 13, 0, 0, 0, 0, 1, 0, 0, 0, 3045.89, 7326.08, 89.02, 0, 'BRH, JumpToPos_GetData (Glazzer)'),
(-11565659, 0, 1, 0, 0, 0, 100, 0, 500, 500, 3000, 3000, 11, 193633, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 3s (Glazzer)'),
(-11565659, 0, 2, 0, 0, 0, 100, 0, 24000, 24000, 30000, 30000, 11, 200343, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 30s (Glazzer)'),
(-11565659, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, AutoAttackStop (Glazzer)'),
(-11565659, 0, 4, 0, 1, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'BRH, SelectTargetForAttack (Glazzer)'),
(-11565659, 0, 5, 0, 7, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3045.88, 7326.08, 89.02, 0, 'BRH, SetToHome (Glazzer)'),

(-11565658, 0, 0, 0, 38, 0, 100, 1, 1, 1, 0, 0, 97, 13, 13, 0, 0, 0, 0, 1, 0, 0, 0, 3044.40, 7322.08, 89.02, 0, 'BRH, JumpToPos_GetData (Glazzer)'),
(-11565658, 0, 1, 0, 0, 0, 100, 0, 500, 500, 3000, 3000, 11, 193633, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 3s (Glazzer)'),
(-11565658, 0, 2, 0, 0, 0, 100, 0, 24000, 24000, 30000, 30000, 11, 200343, 1, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 30s (Glazzer)'),
(-11565658, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, AutoAttackStop (Glazzer)'),
(-11565658, 0, 4, 0, 1, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 'BRH, SelectTargetForAttack (Glazzer)'),
(-11565658, 0, 5, 0, 7, 0, 100, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 3044.40, 7322.08, 89.02, 0, 'BRH, SetToHome (Glazzer)'),

(101839, 0, 0, 0, 0, 0, 100, 3000, 4000, 9000, 10000, 0, 11, 225962, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 9s (Glazzer)'),

(98810, 0, 0, 0, 0, 0, 100, 0, 6000, 6000, 20000, 20000, 11, 201139, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 20s (Glazzer)'),
(98810, 0, 1, 0, 2, 0, 100, 1, 1, 25, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, if hp <= 25% -> buff (Glazzer)'),

(102094, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 15000, 15000, 11, 225962, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 15s (Glazzer)'),

(102095, 0, 0, 0, 0, 0, 100, 0, 8000, 10000, 14000, 16000, 11, 214001, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 14s (Glazzer)'),

(102788, 0, 0, 0, 0, 0, 100, 0, 6000, 7000, 6000, 7000, 11, 227913, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 6s (Glazzer)'),
(102788, 0, 1, 2, 0, 0, 100, 0, 8000, 9000, 8000, 9000, 11, 203163, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 14s (Glazzer)');

update `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` in 
(101839, 102094);

delete from smart_scripts where entryorguid in 
(101839, 102094);

replace into `smart_scripts`(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(101839, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 9000, 10000, 11, 225962, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 9s (Glazzer)'),

(102094, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 15000, 15000, 11, 214003, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'BRH, cast every 15s (Glazzer)');

-- BRH END

