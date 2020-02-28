update creature set spawnmask = 245760, spawntimesecs = 604800, aiid = 0 where id = 103758;

REPLACE INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(103758, 0, 0, 'Знали бы вы, что там, за гранью…', 14, 0, 100, 0, 0, 58430, 0, 'Звездный авгур Этрей to 0'),
(103758, 1, 0, 'Возвращайся в пустоту.', 14, 0, 100, 0, 0, 58446, 0, 'Звездный авгур Этрей to Player'),
(103758, 2, 0, 'Страшитесь знамения звезд!', 14, 0, 100, 0, 0, 58433, 0, 'Звездный авгур Этрей to 0'),
(103758, 3, 0, 'Звезды зажигаются – ваши жизни гаснут!', 14, 0, 100, 0, 0, 58435, 0, 'Звездный авгур Этрей to 0'),
(103758, 4, 0, 'Звезды судили вас и сочли недостойными.', 14, 0, 100, 0, 0, 58445, 0, 'Звездный авгур Этрей to 0'),
(103758, 5, 0, 'Аннигиляция неизбежна.', 14, 0, 100, 0, 0, 58447, 0, 'Звездный авгур Этрей to Player'),
(103758, 6, 0, 'Не надейтесь... В будущем все еще хуже.', 14, 0, 100, 0, 0, 58448, 0, 'Звездный авгур Этрей to Player');

UPDATE `creature_template` SET `exp`=6, `MinLevel`=113, `MaxLevel`=113, `faction`=16, `speed_run`=1, `speed_walk`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=16, `unit_flags2`=2099200, `unit_flags3`=0, `HoverHeight`=1, `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=103758;
UPDATE `creature_template` SET `ScriptName`="boss_star_augur_etraeus", mechanic_immune_mask = 617299967, flags_extra = 1537 WHERE `entry`="103758";
UPDATE `creature_template` SET `ScriptName`="npc_coronal_ejection", mechanic_immune_mask = 617299967 WHERE `entry`="103790";
UPDATE `creature_template` SET `ScriptName`="npc_star_augur_thing_that_should_not_be", mechanic_immune_mask = 617299967 WHERE `entry`="104880";
UPDATE `creature_template` SET `ScriptName`="npc_night_hold_celestial_acolyte", mechanic_immune_mask = 617299967 WHERE `entry`="112655";
UPDATE `creature_template` SET `ScriptName`="npc_night_hold_astrologer_jarin", mechanic_immune_mask = 617299967 WHERE `entry`="112803";
UPDATE `creature_template` SET `ScriptName`="npc_augur_voidling", mechanic_immune_mask = 617299967 WHERE `entry`="104688";
UPDATE `creature_template` SET inhabittype = 7 WHERE `entry` = 109082;
UPDATE `creature_template` SET unit_flags = 33554432, `ScriptName` = 'npc_augur_eye_of_the_void', inhabittype = 7, flags_extra = 0 WHERE `entry` = 109088;
UPDATE `creature_template` SET `ScriptName`="npc_augur_remnant_of_the_void", mechanic_immune_mask = 617299967 WHERE `entry` = 109151;

UPDATE `creature_template_wdb` SET classification = 3 WHERE `entry`="103758";

DELETE FROM `spell_script_names` WHERE `spell_id` in
(206464,205984,206936,205649,206433,207143,214486,206965,206953,206517,207720,205408,205429,205445,216344,216345,217054,217046,216768);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(206464, 'spell_star_augur_etraeus_coronal_ejection_trigger'),
(205984, 'spell_star_augur_gravity_pull'),
(206936, 'spell_star_augur_icy_ejection'),
(205649, 'spell_star_augur_fel_ejection'),
(205649, 'spell_star_augur_fel_ejection_filter'),
(206433, 'spell_star_augur_etraeus_fel_impact'),
(214486, 'spell_star_augur_void_burst'),
(206965, 'spell_star_augur_void_burst_dot'),
(206953, 'spell_star_augur_frigid_nova_dmg_trigger'),
(206517, 'spell_star_augur_fel_nova_dmg'),
(207143, 'spell_star_augur_void_ejection_aura'),
(207720, 'spell_augur_witness_the_void'),
(205408, 'spell_augur_grand_conjunction'),
(205429, 'spell_star_augur_star_sign'),
(205445, 'spell_star_augur_star_sign'),
(216344, 'spell_star_augur_star_sign'),
(216345, 'spell_star_augur_star_sign'),
(217054, 'spell_augur_devouring_remnant_filter'),
(217046, 'spell_augur_devouring_remnant'),
(216768, 'spell_augur_fel_ember');

delete from spell_dummy_trigger where spell_id in (208276);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(208276, 0, 4, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Coronal Ejection');

delete from spell_target_filter where spellId in (206464);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(206464, 16, 4, 0, 0, 0, 0, 0, 3, 1, 4, 0, 0, 0, 'Coronal Ejection - Sort Dist');

delete from areatrigger_scripts where entry in (10947,10797);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(10947, 'at_augur_absolute_zero'),
(10797, 'at_augur_star_sign');

DELETE FROM areatrigger_template WHERE `entry` in (6355,6456,6116);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(6355, 207716, 0, 0, 0, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Void Shift'),
(6456, 208438, 0, 0, 0, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Void Shift'),
(6116, 205429, 10797, 205429, 0, 2, 2, 4, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Star Sign: Crab'),
(6116, 205445, 10797, 205445, 0, 2, 2, 4, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Star Sign: Wolf'),
(6116, 216344, 10797, 216344, 0, 2, 2, 4, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Star Sign: Dragon'),
(6116, 216345, 10797, 216345, 0, 2, 2, 4, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Star Sign: Hunter');

DELETE FROM areatrigger_actions WHERE `entry` in (6216,6249,6355,6456,6116);
INSERT INTO `areatrigger_actions` VALUES
('6216', '10916', '0', '1', '0', '2', '208904', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 'NH Augur- FelFlame on enemy'),
('6216', '10916', '1', '1', '0', '2', '206398', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 'NH Augur- FelFlame dot on enemy'),
('6216', '10916', '2', '42', '1', '2', '208904', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 'NH Augur- FelFlame on exit'),
(6249, 10947, 0, 1, 15, 8, 206585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Absolute Zero'),
(6355, 0, 0, 1, 0, 262145, 207714, 0, 0, 0, 0, 0, 0, 103758, 0, 0, 0, 'Void Shift - Apply'),
(6355, 0, 1, 42, 1, 262145, 207714, 0, 0, 0, 0, 0, 0, 103758, 0, 0, 0, 'Void Shift - Remove'),
(6456, 0, 0, 1, 0, 262145, 207714, 0, 0, 0, 0, 0, 0, 104880, 0, 0, 0, 'Void Shift - Apply'),
(6456, 0, 1, 42, 1, 262145, 207714, 0, 0, 0, 0, 0, 0, 104880, 0, 0, 0, 'Void Shift - Remove'),
(6116, 10797, 0, 1, 15, 4194312, 207831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grand Conjuction');

delete from areatrigger_data where entry in (6216,6249);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(6216, 206399, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6249, 206585, 10947, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `conversation_data` WHERE (`entry`=3030 AND `id`=6410) OR (`entry`=3030 AND `id`=6411) OR (`entry`=3232 AND `id`=8706) OR (`entry`=3031 AND `id`=6413) OR (`entry`=3031 AND `id`=6412) OR (`entry`=3232 AND `id`=6816) OR (`entry`=3232 AND `id`=6817) OR (`entry`=3232 AND `id`=6818) OR (`entry`=3232 AND `id`=6819);
REPLACE INTO `conversation_data` (`entry`, `id`, `idx`, `textId`, `unk1`, `unk2`) VALUES
(3030, 6410, 0, 0, 0, 0),
(3030, 6411, 1, 7479, 0, 3149594624),
(3232, 8706, 3, 23553, 0, 3149594624),
(3031, 6413, 1, 6789, 0, 3149594624),
(3031, 6412, 0, 0, 0, 0),
(3232, 6816, 0, 0, 0, 256),
(3232, 6817, 1, 8438, 0, 3149594624),
(3232, 6818, 2, 16614, 0, 3149594624),
(3232, 6819, 4, 31700, 0, 3149594880);

