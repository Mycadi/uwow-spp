delete from creature_template_addon where entry in (118286,116843,116881);

delete from creature_template where entry in (119791);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `ScriptName`) VALUES
(119791, 0, 112, 112, 0, 0, 0, 0, 100, 0, 14, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 3000, 2000, 1, 33587200, 69208064, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 617299967, 0, -1, '', '', 0, 0, 0, 0, 0, 0, '');

delete from creature where id in (115767,115896,115902,115795,118286,116843,116881,116841);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`) VALUES
(12729507, 115767, 1676, 8524, 8524, 245760, 1, '', 0, 0, 5799.71, -1248.49, 2785.67, 1.01564, 604800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'boss_mistress_sasszine', flags_extra = 1537 where entry = 115767;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sasszine_abyss_stalker' where entry = 115795;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sasszine_slicing_tornado' where entry = 118286;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sasszine_electrifying_jellyfish' where entry = 115896;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sasszine_razorjaw_waverunner' where entry = 115902;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sasszine_sarukel' where entry = 116843;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sasszine_ossunet' where entry = 116881;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sasszine_piranhado' where entry = 116841;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_sasszine_delicious_bufferfish' where entry = 119791;
update creature_template set flags_extra = 130 where entry in (116841,116881,116843);

update creature_template_wdb set Classification = 3 where entry = 115767;

delete from areatrigger_template where entry in (9350,9980,9981,10446,10048);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(9350, 232745, 13350, 232745, 0, 200, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 'Devouring Maw'),
(9980, 232745, 14870, 232745, 0, 200, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 'Devouring Maw'),
(9981, 232745, 14871, 232745, 0, 200, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 'Devouring Maw'),
(10446, 242946, 1044600, 242946, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Mash'),
(10048, 239388, 1004800, 239388, 0, 1.5, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Delicious Bufferfish');

delete from areatrigger_actions where entry in (9121,9606,9350,9980,9981,9368,9376,9377,10446,10048);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(9121, 0, 0, 1, 0, 8, 230959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concealing Murk - Apply'),
(9121, 0, 1, 42, 1, 8, 230959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Concealing Murk - Remove'),
(9121, 0, 2, 1, 0, 262144, 234821, 0, 0, 0, 0, 0, 0, 0, 0, 118286, 0, 0, 0, 'Concealing Murk - Cast On Npc'),
(9606, 0, 0, 1, 0, 8, 232732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Slicing Tornado - Apply'),
(9350, 0, 2, 1, 0, 8, 234621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Devouring Maw - Apply'),
(9350, 0, 3, 42, 1, 8, 234621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Devouring Maw - Remove'),
(9980, 0, 2, 1, 0, 8, 234621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Devouring Maw - Apply'),
(9980, 0, 3, 42, 1, 8, 234621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Devouring Maw - Remove'),
(9981, 0, 2, 1, 0, 8, 234621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Devouring Maw - Apply'),
(9981, 0, 3, 42, 1, 8, 234621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Devouring Maw - Remove'),
(9368, 0, 0, 1, 0, 8, 232885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Devour Whole'),
(9376, 0, 0, 1, 0, 8, 232918, 3, 232913, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Devouring Maw - Remove Befouling Ink'),
(9377, 0, 0, 1, 0, 8, 232913, 0, -232913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Befouling Ink - Apply'),
(10446, 1044600, 0, 1, 0, 4194304, 242945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Mash - Apply'),
(10446, 1044600, 1, 42, 1, 4194304, 242945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Murloc Mash - Remove'),
(10048, 1004800, 0, 1, 0, 4194304, 239369, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Delicious Bufferfish');

delete from areatrigger_scripts where entry in (1044600,1004800);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(1044600, 'at_sasszine_murloc_mash'),
(1004800, 'at_sasszine_delicious_bufferfish');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (232722,232756,232757,239430,239435);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 3, 232722, 0, 0, 31, 0, 3, 116841, 0, 0, 0, '', NULL),
(13, 2, 232756, 0, 0, 31, 0, 3, 116881, 0, 0, 0, '', NULL),
(13, 2, 232757, 0, 0, 31, 0, 3, 116841, 0, 0, 0, '', NULL),
(13, 1, 239430, 0, 0, 31, 0, 3, 119791, 0, 0, 0, '', NULL),
(13, 1, 239435, 0, 0, 31, 0, 3, 119791, 0, 0, 0, '', NULL);

delete from spell_script_names where spell_id in (230143,230201,239369);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(230143, 'spell_sasszine_hydra_shot_filter'),
(230201, 'spell_sasszine_burden_of_pain'),
(239369, 'spell_sasszine_delicious_bufferfish');

delete from spell_target_filter where spellId in (232753);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(232753, 15, 24, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Non Tank');

delete from creature_text where Entry in (115767);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(115767, 0, 0, 'Вам конец, смертные!', 14, 0, 100, 0, 0, 81500, 128012, 'AGGRO_1'),
(115767, 0, 1, 'Я убью вас во имя Азшары!', 14, 0, 100, 0, 0, 81499, 128011, 'AGGRO_1'),
(115767, 1, 0, 'Смерть заберет вас!', 14, 0, 100, 0, 0, 81510, 128022, 'THUNDERING_SHOCK_1'),
(115767, 1, 1, 'Не все молнии бьют с небес...', 14, 0, 100, 0, 0, 81532, 125952, 'THUNDERING_SHOCK_2'),
(115767, 2, 0, 'Warn: HYDRA_SHOT', 41, 0, 100, 0, 0, 0, 133482, 'HYDRA_SHOT_WARN'),
(115767, 3, 0, 'Шторм поглотит вас!', 14, 0, 100, 0, 0, 81507, 128019, 'SLICING_TORNADO_1'),
(115767, 3, 1, 'Я сорву всю плоть с ваших костей!', 14, 0, 100, 0, 0, 81531, 125951, 'SLICING_TORNADO_2'),
(115767, 4, 0, 'Warn: TORNADO', 41, 0, 100, 0, 0, 0, 127905, 'SLICING_TORNADO_WARN'),
(115767, 5, 0, 'Узрите мощь, сокрытую под волнами!', 14, 0, 100, 0, 0, 81528, 125948, 'PHASE_2'),
(115767, 6, 0, 'Вашим душам место на дне!', 14, 0, 100, 0, 0, 81512, 128024, 'CALL_VELLIUS_1'),
(115767, 6, 1, 'Ощутите холод глубин!', 14, 0, 100, 0, 0, 81511, 128023, 'CALL_VELLIUS_2'),
(115767, 6, 2, 'Волна сокрушит вас!', 14, 0, 100, 0, 0, 81494, 125953, 'CALL_VELLIUS_3'),
(115767, 7, 0, 'Не стоит противиться зову моря!', 14, 0, 100, 0, 0, 81495, 125954, 'BECKON_SARUKEL'),
(115767, 8, 0, 'Warn: SARUKEL', 41, 0, 100, 0, 0, 0, 127906, 'BECKON_SARUKEL_WARN'),
(115767, 9, 0, 'Моя королева дала мне власть над морями!', 14, 0, 100, 0, 0, 81529, 125949, 'PHASE_3'),
(115767, 10, 0, 'Я подвела... королеву...', 14, 0, 100, 0, 0, 81527, 125947, 'DEATH_1'),
(115767, 10, 1, 'Какой... позор...', 14, 0, 100, 0, 0, 81505, 128017, 'DEATH_2'),
(115767, 10, 2, 'Недостойная... смерть...', 14, 0, 100, 0, 0, 81506, 128018, 'DEATH_3');

delete from creature_difficulty_stat where entry in (115767,115902,115795);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(115767, 14, 1, 1164.8),
(115767, 15, 1, 1456),
(115767, 16, 1, 6094.25),
(115767, 17, 1, 1048.32),

(115902, 14, 1, 6.53184),
(115902, 15, 1, 8.16479),
(115902, 16, 1, 19.5833),
(115902, 17, 1, 5.877),

(115795, 14, 1, 20.4074),
(115795, 15, 1, 25.5092),
(115795, 16, 1, 67.982),
(115795, 17, 1, 18.36);


