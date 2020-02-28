update gameobject_template set flags = 48 where entry = 240788;

delete from gameobject where id = 240788;
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `AiID`, `state`, `isActive`, `personal_size`) VALUES
(240788, 1456, 8040, 8040, 8388870, 1, '', -3484.82, 4387.02, -3.66375, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0);

delete from creature_addon where guid = 11657088;
delete from creature where id = 97171;

update creature set spawntimesecs = 14400 where `map` = 1456 and spawntimesecs = 7200;
update creature_template set inhabittype = 7, mechanic_immune_mask = 650854399, flags_extra = 130 where entry = 97739;
update creature_template set mechanic_immune_mask = `mechanic_immune_mask` &~33554432 where entry = 91808;
update creature_template set mechanic_immune_mask = 617299967 where entry in (97259,97260,97171,95939,91796);
update creature_template set AIName = '', ScriptName = 'npc_eye_of_azshara_stormwake_hydra' where entry = 91792;
update creature_template set AIName = '', ScriptName = 'npc_eye_of_azshara_cove_seagull' where entry = 91787;

delete from smart_scripts where entryorguid in (91792,91787);
update smart_scripts set target_type = 125 where entryorguid = 91783 and id = 0;

update areatrigger_data set activationDelay = 1500 where entry = 4856;

delete from areatrigger_data where entry in (4950);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES
(4950, 192753, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 6.28, 0, 0, 0, 1, 0, 1, 1);

update areatrigger_actions set maxCharges = 1, onDespawn = 1 where entry in (5274,5275);

delete from areatrigger_actions where entry in (4950);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(4950, 0, 0, 1, 0, 8, 192801, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tidal Wave - Apply');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (193152);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 2, 193152, 0, 0, 31, 0, 3, 97916, 0, 0, 0, '', NULL);

delete from waypoint_data where id = 12909902;
delete from waypoint_data_script where id in (9717100);
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `speed`, `action`, `entry`, `wpguid`) VALUES
(9717100, 0, -3674.63, 4620.77, 22.3857, 0, 0, 0, 0, 0, 97171, 0),
(9717100, 1, -3659.85, 4623.54, 17.8847, 0, 0, 0, 0, 0, 97171, 0),
(9717100, 2, -3650.5, 4624.28, 14.7177, 0, 0, 0, 0, 0, 97171, 0),
(9717100, 3, -3639.82, 4634.67, 11.1369, 0, 0, 0, 0, 0, 97171, 0),
(9717100, 4, -3630.38, 4644.81, 9.57705, 0, 0, 0, 0, 0, 97171, 0),
(9717100, 5, -3624.55, 4661.87, 9.32242, 0, 0, 0, 0, 0, 97171, 0);

delete from spell_script_names where spell_id in (193055,193159,193171,191858,96296,196290,196299,196293,202314,197365,192072,192073);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(193055, 'spell_deepbeard_challenge_mod_damage_aura'),
(193159, 'spell_deepbeard_challenge_mod_damage'),
(193171, 'spell_deepbeard_challenge_mod_damage'),
(191858, 'spell_serpentrix_challenge_mod_damage'),
(196296, 'spell_eye_of_azshara_roiling_storm'),
(196290, 'spell_eye_of_azshara_roiling_storm'),
(196299, 'spell_eye_of_azshara_roiling_storm_script'),
(196293, 'spell_eye_of_azshara_roiling_storm_script'),
(202314, 'spell_eye_of_azshara_vile_blood'),
(197365, 'spell_wrath_of_azshara_crushing_depths'),
(192072, 'spell_parjesh_call_reinforcements'),
(192073, 'spell_parjesh_call_reinforcements');

update spell_dummy_trigger set `option` = 11 where spell_id = 192050;
delete from spell_dummy_trigger where spell_id in (193093);
delete from spell_aura_trigger where spell_id in (196296,196290);

delete from creature_text where entry = 91797;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(91797, 0, 0, 'You killed my son! Your punishment is death!', 14, 0, 100, 0, 0, 54317, 102316, 0, 0, 0, 'AGGRO'),
(91797, 1, 0, '|TInterface\\Icons\\spell_frost_summonwaterelemental:20|t%s начинает произносить заклинание |cFFFF0000|Hspell:193051|h[\"Зов морей\"]|h|r!', 41, 0, 100, 0, 0, 0, 99824, 0, 0, 0, 'WARN_CALL_THE_SEAS'),
(91797, 2, 0, 'The ocean will sweep you away!', 14, 0, 100, 0, 0, 54164, 102302, 0, 0, 0, 'CALL_THE_SEAS'),
(91797, 3, 0, '%s впадает в бешенство!', 16, 0, 100, 0, 0, 0, 38630, 0, 0, 0, 'Король Волнобород to 0'),
(91797, 4, 0, 'BUURRRP', 14, 0, 100, 0, 0, 54311, 102304, 0, 0, 0, 'GASEOUS_BUBBLES_1'),
(91797, 4, 1, 'How long can you hold your breath, I wonder?', 14, 0, 100, 0, 0, 54312, 102305, 0, 0, 0, 'GASEOUS_BUBBLES_2'),
(91797, 5, 0, 'Before the crashing waves come the quake!', 14, 0, 100, 0, 0, 54314, 102307, 0, 0, 0, 'QUAKE'),
(91797, 6, 0, 'I failed... but my Queen will NOT.', 14, 0, 100, 0, 0, 54319, 102312, 0, 0, 0, 'DEATH');


