delete from creature where id in (123929,123921,123906,124879,122634,125462);

update creature set spawntimesecs = 604800 where id = 122578;

REPLACE INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `ScriptName`) VALUES
(125646, 0, 113, 113, 0, 0, 0, 0, 100, 0, 35, 0, 0, 1, 1.14286, 1.14286, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 772, 2048, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 617299967, 128, -1, '', '', 0, 0, 0, 0, 0, 0, 'npc_kingaroth_annihilation_trigger');

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'boss_kingaroth', flags_extra = 1537 where entry = 122578;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_kingaroth_detonation_charge' where entry = 122585;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_kingaroth_ruiner' where entry = 124230;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_kingaroth_incinerator_stalker' where entry = 124879;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_kingaroth_garothi' where entry in (123906, 123921, 123929);
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_kingaroth_annihilation_trigger' where entry = 124160;
update creature_template set inhabittype = 7, mechanic_immune_mask = 617299967, ScriptName = 'npc_kingaroth_infernal_tower' where entry = 122634;
update creature_template set inhabittype = 7, mechanic_immune_mask = 617299967, ScriptName = 'npc_kingaroth_apocalypse_blast_stalker' where entry = 125462;
update creature_template set unit_flags = 33554688, mechanic_immune_mask = 617299967, flags_extra = 130 where entry = 124879;

update creature_template_wdb set Classification = 3 where entry = 122578;

delete from creature_addon where auras in ('248303', '251052');
delete from creature_template_addon where entry in (124160);

delete from creature_model_info where DisplayID in (54860);
INSERT INTO `creature_model_info` (`DisplayID`, `BoundingRadius`, `CombatReach`, `DisplayID_Other_Gender`, `hostileId`) VALUES
(54860, 17.4586, 25, 0, 0);

update gameobject_template set flags = 16 where entry in (276288,276294,276292,276289,276290,276293);

delete from spell_script_names where spell_id in (248303,246754,246779,246516,246504,246664,249455);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(246754, 'spell_kingaroth_diabolic_bomb'),
(246779, 'spell_kingaroth_diabolic_bomb_dmg'),
(248303, 'spell_kingaroth_energize_periodic'),
(246516, 'spell_kingaroth_apocalypse_protocol'),
(246504, 'spell_kingaroth_initializing'),
(246664, 'spell_kingaroth_annihilation_dmg'),
(249455, 'spell_kingaroth_annihilation_dmg');

delete from areatrigger_template where entry in (10886,11149);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(10886, 246746, 15708, 246746, 0, 3, 3, 0, 0, 0, 0, 1, 0, 16, 1, 16, 0, 0, 0, 0, 3200, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Diabolic Bomb'),
(11149, 249429, 15701, 249429, 0, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empowered Ruiner');

delete from areatrigger_template_circle where entry in (10886);
INSERT INTO `areatrigger_template_circle` (`entry`, `spellId`, `Radius`, `Speed`, `HasTarget`, `HasCenterPoint`, `IsReverse`, `IsActive`, `RandRevers`, `IsDinamicRadius`) VALUES
(10886, 246746, 0, 0, 1, 0, 0, 1, 0, 1);

delete from areatrigger_data where entry in (10875,11149);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(10875, 246667, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(11149, 249429, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_scripts where entry in (15701);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(15701, 'at_kingaroth_annihilation');

delete from areatrigger_actions where entry in (10886,10895,11015,10875,11149,12244);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10886, 0, 0, 1, 0, 8, 246779, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Diabolic Bomb'),
(10895, 0, 0, 1, 0, 8, 246840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ruiner - Apply'),
(10895, 0, 1, 42, 1, 8, 246840, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ruiner - Remove'),
(11015, 0, 0, 1, 0, 8, 258021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Purging Protocol - Apply'),
(11015, 0, 1, 42, 1, 8, 258021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Purging Protocol - Remove'),
(10875, 0, 0, 1, 15, 8, 246670, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Annihilation'),
(11149, 0, 0, 1, 15, 8, 249430, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Empowered Ruiner'),
(12244, 0, 0, 1, 15, 8, 258020, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Purging Protocol Trap - Check player');

REPLACE INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(122578, 14, 1, 2400),
(122578, 15, 1, 2999.999298619043),
(122578, 16, 1, 10399.99756854602),
(122578, 17, 1, 2160),

(123906, 14, 1, 191.3848306121993),
(123906, 15, 1, 159.4745640906232),
(123906, 16, 1, 531.2496444028838),
(123906, 17, 1, 171.9),

(123921, 14, 1, 191.3848306121993),
(123921, 15, 1, 159.4745640906232),
(123921, 16, 1, 531.2496444028838),
(123921, 17, 1, 171.9),

(123929, 14, 1, 191.3848306121993),
(123929, 15, 1, 159.4745640906232),
(123929, 16, 1, 531.2496444028838),
(123929, 17, 1, 171.9);

delete from creature_text where entry = 122578;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(122578, 0, 0, 'Time to work.', 14, 0, 100, 0, 0, 87004, 135247, 0, 0, 0, 'AGGRO_1'),
(122578, 0, 1, 'Prepare to be deconstructed.', 14, 0, 100, 0, 0, 87003, 135246, 0, 0, 0, 'AGGRO_2'),
(122578, 0, 2, 'You hope to topple my machines with those pathetic weapons?', 14, 0, 100, 0, 0, 87008, 133836, 0, 0, 0, 'AGGRO_3'),
(122578, 1, 0, 'There is no escape!', 14, 0, 100, 0, 0, 86995, 135008, 0, 0, 0, 'RUINER_1'),
(122578, 1, 1, 'Allow me to demonstrate my newest invention.', 14, 0, 100, 0, 0, 86993, 135006, 0, 0, 0, 'RUINER_2'),
(122578, 1, 2, 'Let\'s see how fast you can run.', 14, 0, 100, 0, 0, 86994, 135007, 0, 0, 0, 'RUINER_3'),
(122578, 2, 0, 'I will turn you to ash!', 14, 0, 50, 0, 0, 86998, 135012, 0, 0, 0, 'REVERBERATING_STRIKE'),
(122578, 2, 1, 'Die!', 14, 0, 50, 0, 0, 86997, 135011, 0, 0, 0, 'REVERBERATING_STRIKE'),
(122578, 2, 2, 'Witness true power!', 14, 0, 50, 0, 0, 86996, 135010, 0, 0, 0, 'REVERBERATING_STRIKE'),
(122578, 3, 0, '|TInterface\\Icons\\SPELL_FIRE_FELFIREWARD.BLP:20|tKin\'garoth begins to channel  |cFFFF0000|Hspell:246516|h[Apocalypse Protocol]|h|r!', 14, 0, 100, 0, 0, 0, 138778, 0, 0, 0, 'WARN: PHASE_2'),
(122578, 4, 0, 'Such an honor! You will be test subjects for my ultimate weapon!', 14, 0, 100, 0, 0, 87000, 135013, 0, 0, 0, 'PHASE_2'),
(122578, 5, 0, '|TInterface\\Icons\\SPELL_FIRE_FELIMMOLATION.BLP:20|tKin\'garoth is about to activate |cFFFF0000|Hspell:248061|h[Purging Protocol]|h|r! Get out!', 41, 0, 100, 0, 0, 0, 138780, 0, 0, 0, 'WARN: PHASE_2 PREPARE TRAP'),
(122578, 6, 0, 'It appears adjustments still need to be made.', 14, 0, 100, 0, 0, 87001, 135014, 0, 0, 0, 'PHASE_2 END'),
(122578, 7, 0, 'Now I\'m just... extra parts.', 14, 0, 100, 0, 0, 87011, 133839, 0, 0, 0, 'DEATH_1'),
(122578, 7, 1, 'This was not in the instructions...', 14, 0, 100, 0, 0, 87005, 135248, 0, 0, 0, 'DEATH_2'),
(122578, 8, 0, '|TInterface\\Icons\\SPELL_FIRE_FELFLAMEBREATH.BLP:20|tКин\'гарот усиливает способность |cFFFF0000|Hspell:246840|h[Разрушитель]|h|r!', 41, 0, 100, 0, 0, 0, 134187, 0, 0, 0, 'WARN: EMPOWERED_RUINER'),
(122578, 9, 0, '|TInterface\\Icons\\SPELL_FIRE_FLAMETOUNGE.BLP:20|tКин\'гарот сделал |cFFFF0000|Hspell:248475|h[\"Гулкий удар\"]|h|r еще мощнее!', 41, 0, 100, 0, 0, 0, 134188, 0, 0, 0, 'WARN: EMPOWERED_REVERBERATING'),
(122578, 10, 0, '|TInterface\\Icons\\SPELL_FIRE_FELFLAMERING.BLP:20|tКин\'гарот сделал |cFFFF0000|Hspell:246779|h[демоническую бомбу]|h|r еще мощнее!', 41, 0, 100, 0, 0, 0, 134189, 0, 0, 0, 'WARN: EMPOWERED_DIABOLIC_BOMB');

