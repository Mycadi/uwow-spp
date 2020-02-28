delete from creature where id in (115892,117931);

REPLACE INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `ScriptName`) VALUES
(119950, 0, 111, 111, 0, 0, 0, 0, 100, 0, 16, 0, 0, 1.2, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, -1, '', '', 0, 0, 0, 0, 0, 0, '');

update creature_template set inhabittype = 7, scriptName = 'npc_goroth_ember_stalker', flags_extra = 130 where entry = 115892;
update creature_template set scriptName = 'npc_goroth_infernal_spike', flags_extra = 130 where entry = 116976;
update creature_template set inhabittype = 7, scriptName = 'npc_goroth_lava_stalker', flags_extra = 130 where entry = 117931;
update creature_template set scriptName = 'npc_goroth_brimstone_infernal' where entry = 119950;

update areatrigger_template set Radius = 2, RadiusTarget = 2 where entry = 10373;

delete from areatrigger_template where entry in (9556);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(9556, 230439, 955600, 230439, 0, 15, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Infernal Spike');

delete from areatrigger_data where entry in (9556,10373,9417);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(9556, 233019, 0, 0, 0, 0, 1000, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(10373, 233019, 0, 0, 0, 0, 2000, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(9417, 233279, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (9556,10373,9417,9543);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10373, 0, 0, 1, 0, 72, 241872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Infernal Spike - Knock'),
(10373, 0, 1, 5, 15, 262144, 241872, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115844, 1, 0, 0, 'Infernal Spike - Destroy'),
(9556, 0, 0, 5, 15, 4194312, 234475, 0, -234475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Infernal Spike Protection - Apply'),
(9556, 0, 1, 42, 20, 8, 234475, 0, 234475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Infernal Spike Protection - Remove'),
(9417, 0, 0, 1, 0, 8, 233281, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 'Shattering Star - Target Player'),
(9417, 0, 1, 1, 15, 262144, 233281, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 116976, 0, 0, 0, 'Shattering Star - Target Spike'),
(9543, 0, 0, 1, 0, 8, 230348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Pool - Apply'),
(9543, 0, 1, 42, 1, 8, 230348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Pool - Remove'),
(9543, 0, 2, 1, 15, 4194304, 230348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Pool - Destroy Spike');

delete from areatrigger_scripts where entry in (955600,15235,13412,13526);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(955600, 'at_goroth_infernal_spike_los_blocker'),
(15235, 'at_goroth_infernal_spike_destroy'),
(13412, 'at_goroth_shattering_star'),
(13526, 'at_goroth_fel_pool');

delete from spell_script_names where spell_id in (232249,230345,233024,233062,233078,233274,231363,234368,234386,238588);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(233024, 'spell_tos_goroth_crashing_comet'),
(234368, 'spell_tos_goroth_fel_eruption_dummy'),
(234386, 'spell_tos_goroth_fel_periodic_trigger'),
(238588, 'spell_tos_goroth_rain_of_brimstone');

delete from spell_target_filter where spellId in (232249,244548,233050,233269);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(232249, 16, 24, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Crashing Comet'),
(244548, 16, 24, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Crashing Comet - LFR'),
(233050, 16, 27, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Infernal Spike - Ranged priority targets'),
(233269, 16, 27, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Infernal Spike - Ranged priority targets');

delete from spell_area where spell in (234475);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `classmask`, `active_event`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(234475, 8524, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11);

delete from creature_summon_groups where summonerId = 115844;
INSERT INTO `creature_summon_groups` (`summonerId`, `id`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `count`, `actionType`, `distance`, `summonType`, `summonTime`) VALUES
(115844, 0, 0, 2, 117931, 6060.89, -854.802, 2969.76, 0, 0, 0, 0, 8, 0),
(115844, 1, 0, 2, 117931, 6004.9, -820.528, 2969.84, 0, 0, 0, 0, 8, 0),
(115844, 2, 0, 2, 117931, 6053, -854.846, 2969.79, 0, 0, 0, 0, 8, 0),
(115844, 3, 0, 2, 117931, 6041.87, -854.049, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 4, 0, 2, 117931, 6067.87, -854.542, 2969.74, 0, 0, 0, 0, 8, 0),
(115844, 5, 0, 2, 117931, 6012.99, -836.207, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 6, 0, 2, 117931, 6025.13, -848.597, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 7, 0, 2, 117931, 6075.56, -854.344, 2969.7, 0, 0, 0, 0, 8, 0),

(115844, 8, 0, 3, 117931, 6053.99, -736.132, 2969.78, 0, 0, 0, 0, 8, 0),
(115844, 9, 0, 3, 117931, 6075.59, -736.146, 2969.7, 0, 0, 0, 0, 8, 0),
(115844, 10, 0, 3, 117931, 6041.21, -736.642, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 11, 0, 3, 117931, 6012.29, -758.318, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 12, 0, 3, 117931, 6006.95, -768.491, 2969.84, 0, 0, 0, 0, 8, 0),
(115844, 13, 0, 3, 117931, 6066.89, -735.167, 2969.81, 0, 0, 0, 0, 8, 0),
(115844, 14, 0, 3, 117931, 6019.32, -750.609, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 15, 0, 3, 117931, 6027.95, -741.924, 2969.82, 0, 0, 0, 0, 8, 0),

(115844, 16, 0, 4, 117931, 6133.76, -737.195, 2969.74, 0, 0, 0, 0, 8, 0),
(115844, 17, 0, 4, 117931, 6127.87, -736.67, 2969.71, 0, 0, 0, 0, 8, 0),
(115844, 18, 0, 4, 117931, 6145.28, -737.465, 2969.78, 0, 0, 0, 0, 8, 0),
(115844, 19, 0, 4, 117931, 6160.73, -739.231, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 20, 0, 4, 117931, 6184.66, -752.774, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 21, 0, 4, 117931, 6190.58, -760.286, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 22, 0, 4, 117931, 6175.45, -743.946, 2969.82, 0, 0, 0, 0, 8, 0),

(115844, 23, 0, 5, 117931, 6136.68, -854.75, 2969.75, 0, 0, 0, 0, 8, 0),
(115844, 24, 0, 5, 117931, 6128.08, -854.93, 2969.71, 0, 0, 0, 0, 8, 0),
(115844, 25, 0, 5, 117931, 6163.55, -852.233, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 26, 0, 5, 117931, 6185.73, -836.786, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 27, 0, 5, 117931, 6190.02, -828.712, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 28, 0, 5, 117931, 6178.12, -843.911, 2969.82, 0, 0, 0, 0, 8, 0),
(115844, 29, 0, 5, 117931, 6146.76, -854.708, 2969.78, 0, 0, 0, 0, 8, 0),
(115844, 30, 0, 5, 117931, 6156.48, -853.516, 2969.82, 0, 0, 0, 0, 8, 0);

delete from creature_difficulty_stat where entry in (115844);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(115844, 14, 1, 951.354),
(115844, 15, 1, 1189.19),
(115844, 16, 1, 3521.32),
(115844, 17, 1, 856.219);
