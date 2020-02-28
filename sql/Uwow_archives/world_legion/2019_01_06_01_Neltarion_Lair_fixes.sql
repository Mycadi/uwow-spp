update areatrigger_template set scaleCurveId = 1958 where entry = 7415;

update areatrigger_data set activationDelay = 1500, withObjectSize = 1 where entry = 7462;

delete from areatrigger_data where entry in (7415);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES
(7415, 198024, 11860, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0);

delete from areatrigger_actions where entry in (7415,4499,6735);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `scaleVisualUpdate`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(7415, 11860, 0, 1, 0, 8, 215898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Crystalline Ground - Apply'),
(7415, 11860, 1, 42, 1, 8, 215898, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Crystalline Ground - Remove'),
(7415, 11860, 2, 4, 4, 32, 215898, 0, 0, 0, 0, 0, 0, -0.45, 0, 0, 0, 0, 0, 0, 0, 0, 'Crystalline Ground - Change Scale'),
(4499, 9239, 0, 1, 0, 8, 188494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Rancid Maw Apply'),
(4499, 9239, 1, 42, 1, 8, 188494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Rancid Maw Remove'),
(4499, 9239, 2, 1, 0, 262145, 205609, 0, -205609, 0, 0, 0, 0, 0, 0, 0, 1, 0, 101075, 0, 0, 0, 'Apply Slow Move to Npc 101075'),
(4499, 9239, 3, 42, 1, 262145, 205609, 0, 205609, 0, 0, 0, 0, 0, 0, 0, 1, 0, 101075, 0, 0, 0, 'Remove Slow Move to Npc 101075'),
(6735, 11287, 0, 1, 0, 8, 210166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Toxic Wretch - Apply'),
(6735, 11287, 1, 42, 1, 8, 210166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Toxic Wretch - Remove'),
(6735, 11287, 2, 1, 0, 8, 217851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Toxic Wretch - Apply');

update creature set spawntimesecs = 14400 where spawntimesecs = 7200 and `map` = 1458;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`, `unit_flags3`) VALUES
(90997, 1458, 7546, 8343, 8388870, 1, '', 0, 0, 2864.54, 1703.48, -40.72, 3.35, 14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(90998, 1458, 7546, 8343, 8388870, 1, '', 0, 0, 2868.39, 1655.84, -40.74, 4.51, 14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91008, 1458, 7546, 8343, 8388870, 1, '', 0, 0, 2861.02, 1696.18, -40.74, 1.39, 14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(91008, 1458, 7546, 8343, 8388870, 1, '', 0, 0, 2854.72, 1706.34, -40.74, 5.67, 14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

update creature_template set ignoreLos = 1 where entry = 91004;

update spell_script_names set scriptName = 'spell_nl_submerge' where spell_id = 183433;
update spell_script_names set scriptName = 'spell_nl_avalanche' where spell_id = 183088;

delete from spell_script_names where spell_id in (200247,198475,198719);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(200247, 'spell_rokmora_shatter_kill'),
(198475, 'spell_ularogg_strike_mountain'),
(198719, 'spell_ularogg_falling_debris');
