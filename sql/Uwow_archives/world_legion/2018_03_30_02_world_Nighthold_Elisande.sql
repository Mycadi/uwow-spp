delete from creature where id in (106330,111374,111833,107754,66508,105315,105370,105367,116256) and `map` = 1530;

update creature set id = 106643, spawnmask = 245760, spawntimesecs = 604800 where id = 105297;

REPLACE INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `ScriptName`) VALUES
(105367, 0, 112, 112, 0, 0, 0, 2000, 6, 16, 0, 0, 4, 1.42857, 1.14286, 1, 0, 0, 0, 0, 1, 1500, 2000, 1, 33554688, 100663296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, -1, '', '', 0, 0, 0, 0, 0, 0, ''),
(105370, 0, 112, 112, 0, 0, 0, 2000, 6, 16, 0, 0, 4, 1.42857, 1.14286, 1, 0, 0, 0, 0, 1, 1500, 2000, 1, 33554688, 100663296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, -1, '', '', 0, 0, 0, 0, 0, 0, '');

update creature_template set lootid = 0, unit_class = 4, faction = 16, vehicleId = 4081, mechanic_immune_mask = 617299967, ScriptName = 'boss_elisande', flags_extra = 1537 where entry = 106643;
update creature_template set inhabittype = 7, flags_extra = 130 where entry = 115683;
update creature_template set ScriptName = 'npc_elisande_echo_of_elisande' where entry in (105622,105364,105624,105958,106680);
update creature_template set ScriptName = 'npc_elisande_arcanetic_ring' where entry = 105315;
update creature_template set ScriptName = 'npc_elisande_epocheric_orb' where entry = 107754;
update creature_template set ScriptName = 'npc_elisande_recursive_elemental', mechanic_immune_mask = 617299967 where entry = 105299;
update creature_template set ScriptName = 'npc_elisande_expedient_elemental', mechanic_immune_mask = 617299967 where entry = 105301;

update creature_template_wdb set Classification = 3 where entry = 106643;
update creature_template_wdb set DisplayId1 = 74381 where entry = 105622;

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (208865,208808,209620,229886);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 8, 208865, 0, 0, 5, 0, 251330, 0, 0, 0, 0, '', NULL),
(13, 1, 208808, 0, 0, 31, 0, 3, 105315, 0, 0, 0, '', NULL),
(13, 2, 209620, 0, 0, 31, 0, 3, 106643, 0, 0, 0, '', NULL),
(13, 1, 229886, 0, 0, 31, 0, 3, 115683, 0, 0, 0, '', NULL);

delete from areatrigger_template where entry in (9053);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(9053, 229889, 0, 229889, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

delete from areatrigger_data where entry in (6616,9053);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(6616, 209500, 0, 0, 0, 0, 1000, 1000, 0, 0, 0, 0, 0, 0, 0, 0),
(9053, 229889, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (6616,6505,6512,6484,7175);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(6616, 0, 0, 5, 0, 8, 209433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spanning Singularity'),
(6616, 0, 1, 5, 4, 8, 209433, 0, 0, 0, 0, -0.07, 0.3, 0, 0, 0, 0, 0, 'Spanning Singularity - Change Scale'),
(6505, 0, 0, 1, 0, 72, 209165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Slow Time - Apply Player'),
(6505, 0, 1, 1, 0, 262208, 209165, 0, 0, 0, 0, 0, 0, 0, 105315, 0, 0, 0, 'Slow Time - Apply Creature'),
(6512, 0, 0, 1, 0, 72, 209166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fast Time - Apply Player'),
(6512, 0, 1, 1, 0, 262208, 209166, 0, 0, 0, 0, 0, 0, 0, 105315, 0, 0, 0, 'Fast Time - Apply Creature'),
(6484, 0, 0, 1, 0, 8, 208659, 0, -208659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcanetic Ring - Apply'),
(6484, 0, 1, 42, 1, 8, 208659, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcanetic Ring - Remove'),
(7175, 0, 0, 1, 15, 8, 213956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Epocheric Orb - Enter Player'),
(7175, 0, 1, 42, 15, 8, 213956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Epocheric Orb - Leave Player');

delete from areatrigger_actions where entry in (9053);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(9053, 0, 0, 5, 0, 8, 27965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Terminate - Kill Player'),
(9053, 0, 1, 1024, 4, 32, 229887, 0, 0, 0, 0, 0.03, 0, 8, 0, 0, 0, 0, 0, 'Terminate - Scale');

delete from spell_target_position where id in (229889);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(229889, 1530, 282.31, 3135.5, 226.85, 0);

delete from spell_script_names where spell_id in 
(209174,209168,229739,229740,209165,209242,209248,214278,214295,213956,210024,210546,211799,225653,211261,209599,209621);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(209168, 'spell_elisande_spanning_singularity_filter'),
(209174, 'spell_elisande_spanning_singularity'),
(229739, 'spell_elisande_cascadent_star_filter'),
(229740, 'spell_elisande_cascadent_star'),
(209165, 'spell_elisande_time_slow_regulator'),
(209242, 'spell_elisande_delphuric_beam_filter'),
(209248, 'spell_elisande_delphuric_beam_dmg_filter'),
(214278, 'spell_elisande_delphuric_beam'),
(214295, 'spell_elisande_delphuric_beam'),
(213956, 'spell_elisande_epocheric_orb_at'),
(210024, 'spell_elisande_epocheric_orb_dmg'),
(210546, 'spell_elisande_epocheric_orb_dmg'),
(211799, 'spell_elisande_ablating_explosion_dmg'),
(225653, 'spell_elisande_permeliative_torment_filter'),
(211261, 'spell_elisande_permeliative_torment'),
(209599, 'spell_elisande_conflexive_burst_dmg'),
(209621, 'spell_elisande_recursion');

delete from creature_text where entry in (106643,105364,105622,105624,106680);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES 
(106643, 0, 0, 'Ритуал прерван. Фигура в Ночном Колодце пробуждается.', 16, 0, 100, 0, 0, 0, 122436, 'INTRO'),
(106643, 1, 0, 'Ваше время вышло!', 14, 0, 100, 0, 0, 58561, 108669, 'AGGRO'),
(106643, 2, 0, 'Волны времени сметут вас!', 14, 0, 100, 0, 0, 58566, 108674, 'ARCANETIC_RING'),
(106643, 3, 0, '|TInterface\\Icons\\Spell_Mage_ArcaneOrb.blp:20|t |cFFFF0000|Hspell:228877|h[Кинетические кольца]|h|r схлопываются, двигаясь от края комнаты к центру!', 41, 0, 100, 0, 0, 0, 0, 'ARCANETIC_RING'),
(106643, 4, 0, 'Я здесь доминирую, не вы!', 14, 0, 100, 0, 0, 58565, 108673, 'SPANNING_SINGULARITY'),
(106643, 5, 0, 'Вы живы лишь здесь и сейчас. А мои возможности безграничны!', 14, 0, 100, 11, 0, 58568, 108676, 'Change Phase 2'),
(106643, 6, 0, 'Времена меняются! Ваша смерть все ближе!', 14, 0, 100, 11, 0, 58569, 108677, 'CHANGE_PHASE_3'),
(106643, 7, 0, 'Время нестабильно – сейчас вы сами в этом убедитесь.', 14, 0, 100, 0, 0, 58567, 108675, 'EPOCHERIC_ORB'),
(106643, 8, 0, '|TInterface\\Icons\\SPELL_ARCANE_INVOCATION:20|t С неба падают |cFFFF0000|Hspell:210022|h[эпохальные сферы]|h|r!', 41, 0, 100, 0, 0, 0, 0, 'EPOCHERIC_ORB'),
(106643, 9, 0, 'Мне подвластно само время!', 14, 0, 100, 0, 0, 58562, 108670, 'DELPHURIC_BEAM'),
(106643, 10, 0, '|TInterface\\Icons\\Spell_Mage_ArcaneOrb.blp:20|t%s направляет на своих врагов |cFFFF0000|Hspell:214278|h[пророческий луч]|h|r !', 41, 0, 100, 0, 0, 0, 0, 'DELPHURIC_BEAM'),
(106643, 11, 0, 'Хотите пронзить ткань времени? Или навсегда остаться в Вечности?', 14, 0, 100, 0, 0, 58563, 0, 'CONFLEXIVE_BURST'),
(106643, 12, 0, '|TInterface\\Icons\\6BF_Explosive_Shard.blp:20|t%s пускает импульсы |cFFFF0000|Hspell:209598|h[искривляющей]|h|r энергии в своих противников!', 41, 0, 100, 0, 0, 58563, 0, 'CONFLEXIVE_BURST'),
(106643, 13, 0, 'Неизбежный исход.', 14, 0, 100, 0, 0, 58565, 108673, 'KILL_PLAYER'),
(106643, 13, 1, 'Я это предвидела.', 14, 0, 100, 0, 0, 58572, 108680, 'KILL_PLAYER'),
(106643, 14, 0, 'Немыслимо! Победа должна была достаться мне...', 14, 0, 100, 0, 0, 58575, 108683, 'DEATH'),
(106643, 15, 0, 'Безрадостная победа. Но так было необходимо.', 14, 0, 100, 0, 0, 58576, 108684, 'EVADE'),
(106643, 16, 0, 'Вы обречены на смерть.', 14, 0, 100, 0, 0, 58574, 108682, 'UNK'),
(106643, 17, 0, 'Время... уходит! Как это возможно?', 14, 0, 100, 0, 0, 58571, 108679, 'UNK'),
(106643, 18, 0, 'Я управляю потоками времени! Вам не победить!', 14, 0, 100, 0, 0, 58570, 0, 'UNK'),
-- 
(105364, 0, 0, 'Волны времени сметут вас!', 14, 0, 100, 0, 0, 77035, 112410, 'ARCANETIC_RING'),
(105364, 1, 0, '|TInterface\\Icons\\Spell_Mage_ArcaneOrb.blp:20|t |cFFFF0000|Hspell:228877|h[Кинетические кольца]|h|r схлопываются, двигаясь от края комнаты к центру!', 41, 0, 100, 0, 0, 0, 0, 'ARCANETIC_RING'),
-- 
(105622, 0, 0, 'Это я здесь доминирую, не вы!', 14, 0, 100, 0, 0, 77034, 112411, 'SPANNING_SINGULARITY'),
-- 
(105624, 0, 0, 'Мне подвластно само время!', 14, 0, 100, 0, 0, 77031, 112414, 'DELPHURIC_BEAM'),
(105624, 1, 0, '|TInterface\\Icons\\Spell_Mage_ArcaneOrb.blp:20|t%s направляет на своих врагов |cFFFF0000|Hspell:214278|h[пророческий луч]|h|r !', 41, 0, 100, 0, 0, 0, 0, 'DELPHURIC_BEAM'),
--
(106680, 0, 0, 'Время нестабильно – сейчас вы сами в этом убедитесь.', 14, 0, 100, 0, 0, 77036, 112409, 'EPOCHERIC_ORB'),
(106680, 1, 0, '|TInterface\\Icons\\SPELL_ARCANE_INVOCATION:20|t С неба падают |cFFFF0000|Hspell:210022|h[эпохальные сферы]|h|r!', 41, 0, 100, 0, 0, 0, 0, 'EPOCHERIC_ORB');

