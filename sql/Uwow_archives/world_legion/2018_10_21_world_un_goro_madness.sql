DELETE FROM game_event WHERE eventEntry IN (308,309,310,311,312);
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES
('308', '2019-03-17 00:00:00', '2025-03-19 23:59:00', '525600', '4320', '644', 'Un\'Goro Madness', '0'),
('309', '2019-03-17 00:00:00', '2019-03-19 23:59:00', '540', '180', '0', 'Un\'Goro Madness #1', '0'),
('310', '2019-03-17 03:00:00', '2019-03-19 23:59:00', '540', '180', '0', 'Un\'Goro Madness #2', '0'),
('311', '2019-03-17 06:00:00', '2019-03-19 23:59:00', '540', '180', '0', 'Un\'Goro Madness #3', '0'),
('312', '2019-03-17 09:00:00', '2019-03-19 23:59:00', '540', '180', '0', 'Un\'Goro Madness #4', '0');

DELETE FROM creature WHERE id IN (118271,118268,118279,118270,118272,118273,118277,118274,118269,118267);
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`) VALUES
(118272, 1, 0, 0, 1, 1, '', 0, 0, -6679.754, -1855.1, -271.5287, 6.085666, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 118272 (Area: 4885)
(118279, 1, 0, 0, 1, 1, '', 0, 0, -6894.55, -1499.501, -271.3935, 5.372017, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 118279 (Area: 4885)
(118274, 1, 0, 0, 1, 1, '', 0, 0, -6481.085, -1338.869, -270.3566, 1.772604, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 118274 (Area: 537) (Auras: 236314 - 236314)
(118268, 1, 0, 0, 1, 1, '', 0, 0, -7415.08, -830.125, -274.9847, 4.119211, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 118268 (Area: 4884)
(118270, 1, 0, 0, 1, 1, '', 0, 0, -8181.887, -1112.98, -220.559, 3.828812, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 118270 (Area: 539)
(118277, 1, 0, 0, 1, 1, '', 0, 0, -6990.795, -681.0243, -271.4686, 5.725183, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 118277 (Area: 537)
(118269, 1, 0, 0, 1, 1, '', 0, 0, -7427.257, -1980.438, -270.2916, 0.4835619, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 118269 (Area: 537)
(118267, 1, 0, 0, 1, 1, '', 0, 0, -7907.45, -1026.135, -273.1635, 3.634079, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); -- 118267 (Area: 0)
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`) VALUES
('118271', '1', '490', '540', '1', '1', '', '0', '0', '-7940.54', '-1325.06', '-307.375', '5.95509', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('118273', '1', '490', '543', '1', '1', '', '0', '0', '-7200.85', '-232.462', '-218.02', '4.65954', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

DELETE FROM game_event_creature WHERE eventEntry IN (309,310,311,312);
REPLACE INTO `game_event_creature` (`eventEntry`, `guid`) SELECT 309, guid FROM creature WHERE id in (118279,118269,118268);
REPLACE INTO `game_event_creature` (`eventEntry`, `guid`) SELECT 310, guid FROM creature WHERE id in (118277,118272,118273);
REPLACE INTO `game_event_creature` (`eventEntry`, `guid`) SELECT 311, guid FROM creature WHERE id in (118271,118274,118270);
REPLACE INTO `game_event_creature` (`eventEntry`, `guid`) SELECT 312, guid FROM creature WHERE id in (118267,118279,118269);

DELETE FROM creature_template WHERE entry in (118271,118268,118279,118270,118272,118273,118277,118274,118269,118267,118929,119042,119041,118810,118812,118956);
INSERT INTO `creature_template` (`entry`, `trainer_type`, `gossip_menu_id`, `exp`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `npcflag2`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VehicleId`, `HoverHeight`, `InhabitType`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `ControllerID`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `WorldEffects`, `PassiveSpells`, `flags_extra`, `speed_walk`, `speed_run`, `BaseAttackTime`) VALUES
(118267, 0, 0, 0, 113, 110, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 2.857143, 2000), -- 118267
(118268, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 2.857143, 2000), -- 118268
(118269, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 2.857143, 2000), -- 118269
(118270, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 0.666668, 2.857143, 2000), -- 118270
(118271, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 80, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 2.857143, 2000), -- 118271
(118272, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 2.857143, 2000), -- 118272
(118273, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 2.857143, 2000), -- 118273
(118274, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 0.666668, 2.857143, 2000), -- 118274
(118277, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 2, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 1.444444, 2.857143, 2000), -- 118277
(118279, 0, 0, 0, 113, 113, 14, 0, 0, 2000, 1, 64, 4196352, 0, 0, 1, 3, 0, 50, 113, 3, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 2.857143, 2000), -- 118279
(118810, 0, 0, 0, 110, 110, 35, 0, 0, 2000, 1, 33554944, 2048, 1, 5221, 1, 3, 0, 50, 110, 2, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1, 2000), -- 118810
(118812, 0, 0, 0, 110, 110, 14, 0, 0, 2000, 1, 0, 2048, 0, 0, 1, 3, 0, 50, 110, 2, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 118812
(119041, 0, 0, 0, 110, 110, 14, 0, 0, 2000, 1, 0, 2048, 0, 0, 1, 3, 0, 50, 110, 2, 2000, -1, 0, 0, 0, 0, '', '', 0, 0.8, 0.2857143, 2000), -- 119041
(119042, 0, 0, 0, 110, 110, 14, 0, 0, 2000, 1, 0, 2048, 1, 0, 1, 3, 0, 50, 110, 2, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 2.857143, 2000), -- 119042
(118956, 0, 0, 0, 110, 110, 14, 0, 0, 2000, 1, 0, 2048, 1, 0, 1, 3, 0, 50, 110, 2, 2000, -1, 0, 0, 0, 0, '', '', 0, 1, 1, 2000); -- 118956
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `MaxVisible`, `ScriptName`) VALUES
('118929', '0', '110', '110', '0', '0', '0', '0', '0', '0', '1768', '0', '0', '1', '0.7', '0.7', '0.7', '0', '0', '0', '0', '1', '0', '0', '1', '0', '2048', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '3', '1', '1', '1', '1', '617299967', '0', '-1', '', '', '0', '0', '0', '0', '0', '0', '0', '');

UPDATE `creature_template` SET `exp`=0, `MinLevel`=110, `MaxLevel`=110, `faction`=14, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=0, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelMin`=50, `ScaleLevelMax`=110, `ScaleLevelDelta`=2, `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=118929;
UPDATE creature_template SET ScriptName = 'npc_clutchmother_zavas', lootid = 118271, MaxVisible = 1 WHERE entry in (118271);
UPDATE creature_template SET ScriptName = 'npc_ravenous_larva', MaxVisible = 1 WHERE entry in (118929);
UPDATE creature_template SET ScriptName = 'npc_giantfin', lootid = 118268, MaxVisible = 1 WHERE entry in (118268);
UPDATE creature_template SET ScriptName = 'npc_dadanga', lootid = 118279, MaxVisible = 1 WHERE entry in (118279);
UPDATE creature_template SET ScriptName = 'npc_sunkeeper_croesus', lootid = 118270, MaxVisible = 1 WHERE entry in (118270);
UPDATE creature_template SET ScriptName = 'npc_sherazin', lootid = 118272, MaxVisible = 1 WHERE entry in (118272);
UPDATE creature_template SET ScriptName = 'npc_akaridal', lootid = 118273, MaxVisible = 1 WHERE entry in (118273);
UPDATE creature_template SET ScriptName = 'npc_skrox', lootid = 118277, MaxVisible = 1, `speed_fly`='2.85714' WHERE entry in (118277);
UPDATE creature_template SET ScriptName = 'npc_tar_tyrant', lootid = 118274, MaxVisible = 1 WHERE entry in (118274);
UPDATE creature_template SET ScriptName = 'npc_queen_zavra', lootid = 118269, MaxVisible = 1 WHERE entry in (118269);
UPDATE creature_template SET ScriptName = 'npc_tyrantus', lootid = 118267, MaxVisible = 1 WHERE entry in (118267);
UPDATE creature_template SET ScriptName ='npc_reanimated_sludge', MaxVisible = 1 WHERE (`entry`='119041');
UPDATE creature_template SET ScriptName ='npc_tar_pit', MaxVisible = 1 WHERE (`entry`='119042');
UPDATE `creature_template` SET `MaxVisible`='1', `ScriptName`='npc_crystal_vine' WHERE (`entry`='118956');
UPDATE `creature_template` SET `MaxVisible`='1', `ScriptName`='npc_water_bubble' WHERE (`entry`='118810');
UPDATE `creature_template` SET `MaxVisible`='1', `flags_extra`='536870912', `ScriptName`='npc_water_bubble_murloc' WHERE (`entry`='118812');
UPDATE creature_template SET flags_extra = 512 WHERE entry IN (118271,118268,118279,118270,118272,118273,118277,118274,118269,118267);

DELETE FROM creature_model_info WHERE DisplayID IN (47813,74930,74931,75319,76906,75388,51230,74728,74724,74725,74912,75033);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`) VALUES
(47813, 4, 12, 0),
(74930, 3, 9.5, 0),
(74931, 6.477818, 9, 0),
(75319, 2.84, 12, 0),
(76906, 1, 8, 0),
(75388, 1.4, 7.2, 0),
(51230, 2.2596, 6.16, 0),
(74728, 9.415, 10.5, 0),
(74725, 7.250958, 8.549999, 0),
(74724, 0.6, 20, 0),
(74912, 1, 2, 0),
(75033, 0.5, 1.5, 0);

DELETE FROM creature_equip_template WHERE CreatureID IN (118270,118273);
INSERT INTO `creature_equip_template` (`CreatureID`, `ItemID1`, `ItemID2`, `ItemID3`, `ItemID4`, `ItemID5`, `ItemID6`) VALUES
(118270, 0, 0, 146115, 0, 146114, 0), -- 118270
(118273, 111532, 0, 0, 0, 0, 0); -- 118273

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (118810);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(118810, 46598, 1, 0);

DELETE FROM `areatrigger_polygon` WHERE `entry` IN (14671);
INSERT INTO `areatrigger_polygon` (`entry`, `spellId`, `type`, `id`, `x`, `y`) VALUES
(14671, 236365, 1, 0, 0, 5),
(14671, 236365, 1, 1, 0, -5),
(14671, 236365, 1, 2, 15, -5),
(14671, 236365, 1, 3, 15, 5);

DELETE FROM areatrigger_template WHERE entry IN (9726,9666,9690,9765,9740,9751);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
('9726', '235953', '13673', '114604', '10', '1', '1', '20', '20', '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2676', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('9666', '235679', '13642', '114399', '131', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('9690', '235888', '13655', '114554', '0', '2', '2', '0', '0', '0', '0', '1', '120', '8.00001', '0', '0', '2670', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('9765', '236297', '14690', '114767', '134', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2689', '0', '1', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('9740', '236119', '13680', '114679', '0', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('9751', '236365', '14671', '115505', '0', '0', '0', '0', '0', '0', '0', '1', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

DELETE FROM spell_visual WHERE spellId = 235679;
INSERT INTO `spell_visual` (`spellId`, `SpellVisualID`, `TravelSpeed`, `MissReason`, `ReflectStatus`, `SpeedAsTime`) VALUES
(235679, 24208, 15, 0, 0, 0); -- 235679 - 24208

DELETE FROM personal_loot_template WHERE entry in (118271,118268,118279,118270,118272,118273,118277,118274,118269,118267);
INSERT INTO `personal_loot_template` (`entry`, `type`, `chance`, `lootspellId`, `bonusspellId`, `cooldownid`, `cooldowntype`, `goEntry`, `respawn`, `comment`) VALUES
('118267', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118268', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118279', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118270', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118272', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118273', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118277', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118274', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118269', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness'),
('118271', '1', '100', '0', '0', '0', '0', '0', '1', 'Un\'Goro Madness');

DELETE FROM creature_text WHERE Entry IN (118268,118929,118274,118269);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(118268, 0, 0, '|TInterface\\Icons\\SPELL_NATURE_UNRELENTINGSTORM.BLP:20|t%s начинает произносить заклинание |cFFFF0000|Hspell:235766|h[Вспышка молнии]|h|r !', 41, 0, 100, 0, 0, 0, 127064, 0, 0, 235769, 'Великий Плавник'),
(118929, 0, 0, '|TInterface\\Icons\\ability_fixated_state_red:20|tСущество |cFFFF0000сосредоточилось|r на вас! Оно будет преследовать вас, пока не погибнет!', 42, 0, 100, 0, 0, 0, 88458, 0, 0, 173079, 'Прожорливая личинка to Player'),
(118274, 0, 0, 'Вокруг |3-1(%s) из земли на поверхность выходит смола...', 16, 0, 100, 0, 0, 0, 127360, 0, 0, 0, 'Смоляной исполин to Смоляной исполин'),
(118269, 0, 0, '|TInterface\\Icons\\ABILITY_HUNTER_PET_RAPTOR.BLP:20|t%s |cFFFF0000|Hspell:235886|h[зовет]|h|r свою стаю!', 41, 0, 100, 0, 0, 0, 127091, 0, 0, 0, 'Королева Завра');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('13', '1', '236333', '0', '0', '31', '0', '3', '119042', '0', '0', '0', '', 'to target'),
('13', '1', '235769', '0', '0', '31', '0', '4', '0', '0', '0', '0', '', 'to target'),
('13', '1', '235874', '0', '0', '31', '0', '3', '118810', '0', '0', '0', '', 'to target'),
('13', '1', '236119', '0', '0', '31', '0', '3', '118956', '0', '0', '0', '', 'to target'),
('13', '1', '236120', '0', '0', '31', '0', '3', '118956', '0', '0', '0', '', 'to target'),
('13', '2', '236120', '0', '0', '31', '0', '3', '118956', '0', '0', '0', '', 'to target'),
('13', '3', '236120', '0', '0', '31', '0', '3', '118956', '0', '0', '0', '', 'to target');

DELETE FROM areatrigger_actions WHERE entry in (9666,9726,9751,9690,9765,9739,9740);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
('9666', '0', '0', '1', '0', '8', '235681', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Едкая кровь'),
('9666', '0', '1', '2', '1', '8', '235681', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Едкая кровь'),
('9666', '0', '2', '8', '1', '8', '235681', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Едкая кровь'),
('9726', '0', '0', '1', '0', '8', '236423', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ярость Солнца'),
('9726', '0', '1', '2', '1', '8', '236423', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ярость Солнца'),
('9726', '0', '2', '8', '1', '8', '236423', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ярость Солнца'),
('9751', '0', '0', '1', '0', '8', '236220', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Рывок'),
('9690', '0', '0', '1', '0', '8', '235887', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Призыв стаи'),
('9690', '0', '1', '2', '1', '8', '235887', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Призыв стаи'),
('9690', '0', '2', '8', '1', '8', '235887', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Призыв стаи'),
('9765', '0', '0', '1', '0', '8', '236338', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Кипящая смола'),
('9765', '0', '1', '2', '1', '8', '236338', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Кипящая смола'),
('9739', '0', '0', '1', '0', '8', '236073', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Губительная пыльца'),
('9739', '0', '1', '2', '1', '8', '236073', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Губительная пыльца'),
('9740', '0', '0', '1', '0', '8', '236128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Наполненные энергией споры'),
('9740', '0', '1', '2', '1', '8', '236128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Наполненные энергией споры'),
('9740', '0', '2', '8', '1', '8', '236128', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Наполненные энергией споры');

DELETE FROM spell_script_names WHERE spell_id in (234756,234781,235990,235659,235757,236358,235656,236133);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
('234756', 'spell_dino_mojo_bonus'),
('234781', 'spell_dino_mojo'),
('235990', 'spell_fertile_toxin'),
('235659', 'spell_adaptation_caustic_blood'),
('235757', 'spell_adaptation'),
('236358', 'spell_tar_strike'),
('235656', 'spell_adaptation_heavy_footed'),
('236133', 'spell_bloom');

DELETE FROM game_event_worldstate WHERE eventEntry IN (309,310,311,312);
INSERT INTO `game_event_worldstate` (`eventEntry`, `WorldStateID`, `Type`, `TypeID`, `Value`) VALUES
('309', '13047', '3', '0', '1'),
('309', '13052', '3', '0', '1'),
('309', '13049', '3', '0', '1'),
('310', '13051', '3', '0', '1'),
('310', '13048', '3', '0', '1'),
('310', '13053', '3', '0', '1'),
('311', '13054', '3', '0', '1'),
('311', '13055', '3', '0', '1'),
('311', '13056', '3', '0', '1'),
('312', '13057', '3', '0', '1'),
('312', '13047', '3', '0', '1'),
('312', '13052', '3', '0', '1');

DELETE FROM worldstate_template WHERE VariableID in (13047,13048,13049,13051,13052,13053,13054,13055,13056,13057);
INSERT INTO `worldstate_template` (`VariableID`, `Type`, `ConditionID`, `Flags`, `DefaultValue`, `LinkedID`, `Comment`) VALUES
('13047', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13052', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13049', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13051', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13048', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13053', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13054', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13055', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13056', '3', '0', '65536', '0', '0', 'Un\'Goro Madness'),
('13057', '3', '0', '65536', '0', '0', 'Un\'Goro Madness');