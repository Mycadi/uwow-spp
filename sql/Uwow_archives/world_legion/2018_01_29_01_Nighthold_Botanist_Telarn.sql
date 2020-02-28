delete from creature where id in (109583,109075,109804,112973,109164,110341,109038,109040,109041);

update creature set spawnmask = 245760, spawntimesecs = 604800 where id = 104528;

delete from creature_template where entry = 111993;
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `ScriptName`) VALUES
(111993, 0, 112, 112, 0, 0, 0, 100, 6, 16, 0, 0, 1, 0.992063, 1.14286, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2654208, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, -1, '', '', 0, 0, 0, 0, 0, 0, 'npc_telarn_plasma_sphere');

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'boss_high_botanist_telarn', flags_extra = 1537 where entry = 104528;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_nh_solarist_telarn', flags_extra = 1 where entry = 109038;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_nh_arcanist_telarn', flags_extra = 1 where entry = 109040;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_nh_naturalist_telarn', flags_extra = 1 where entry = 109041;
update creature_template set flags_extra = 130 where entry in (109164, 110341);
update creature_template set ScriptName = 'npc_telarn_duskwatch_weaver' where entry = 112973;
update creature_template set ScriptName = 'npc_telarn_controlled_chaos_stalker', flags_extra = 128 where entry = 109792;
update creature_template set speed_walk = 1, speed_run = 0.85, ScriptName = 'npc_telarn_parasitic_lasher' where entry = 109075;
update creature_template set ScriptName = 'npc_telarn_solar_collapse_stalker', flags_extra = 128 where entry = 109583;
update creature_template set ScriptName = 'npc_telarn_plasma_sphere' where entry in (109804,111993);
update creature_template set ScriptName = 'npc_telarn_toxic_spore' where entry = 110125;
update creature_template set mechanic_immune_mask = 617299967 where entry = 109164;

update creature_template_wdb set Classification = 3 where entry in (104528,109038,109040,109041);

delete from areatrigger_template where entry in (7736,7835);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(7736, 218357, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Parasitic Fetter'),
(7835, 219234, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Toxic Spore');

delete from areatrigger_data where entry in (7835);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`) VALUES
(7835, 219234, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (7736,7835,7802);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scale`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `comment`) VALUES
(7736, 0, 0, 1, 0, 8, 219259, 0, 218342, 0, 0, 0, 0, 0, 0, 0, 'Parasitic Fetter'),
(7835, 0, 0, 5, 18, 8, 219235, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Toxic Spore'),
(7802, 0, 0, 1, 0, 1, 219009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grace of Nature - Apply'),
(7802, 0, 1, 42, 1, 1, 219009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Grace of Nature - Remove');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (224885,216895,216896,218820,222010,222020,222021);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 224885, 0, 0, 31, 0, 3, 68553, 0, 0, 0, '', NULL),
(13, 1, 216895, 0, 0, 31, 0, 3, 104528, 0, 0, 0, '', NULL),
(13, 1, 216895, 0, 1, 31, 0, 3, 109038, 0, 0, 0, '', NULL),
(13, 1, 216895, 0, 2, 31, 0, 3, 109040, 0, 0, 0, '', NULL),
(13, 1, 216895, 0, 3, 31, 0, 3, 109041, 0, 0, 0, '', NULL),
(13, 1, 216896, 0, 0, 31, 0, 3, 104528, 0, 0, 0, '', NULL),
(13, 1, 216896, 0, 1, 31, 0, 3, 109038, 0, 0, 0, '', NULL),
(13, 1, 216896, 0, 2, 31, 0, 3, 109040, 0, 0, 0, '', NULL),
(13, 1, 216896, 0, 3, 31, 0, 3, 109041, 0, 0, 0, '', NULL),
(13, 1, 218820, 0, 3, 31, 0, 4, 0, 0, 0, 0, '', NULL),
(13, 3, 222010, 0, 0, 31, 0, 3, 109040, 0, 0, 0, '', NULL),
(13, 3, 222010, 0, 1, 31, 0, 3, 109041, 0, 0, 0, '', NULL),
(13, 3, 222020, 0, 0, 31, 0, 3, 109038, 0, 0, 0, '', NULL),
(13, 3, 222020, 0, 1, 31, 0, 3, 109040, 0, 0, 0, '', NULL),
(13, 3, 222021, 0, 0, 31, 0, 3, 109038, 0, 0, 0, '', NULL),
(13, 3, 222021, 0, 1, 31, 0, 3, 109041, 0, 0, 0, '', NULL);

delete from spell_script_names where spell_id in (218508,218304,218342,219278,219248,218780,218807,223437,218809,218820,216896);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(218508, 'spell_telarn_recursive_strikes'),
(218304, 'spell_telarn_parasitic_fetter'),
(218342, 'spell_telarn_parasitic_fixate'),
(219278, 'spell_telarn_parasitic_fetter_mark'),
(219248, 'spell_telarn_rampant_growth'),
(218780, 'spell_telarn_plasma_explosion'),
(218807, 'spell_telarn_call_of_night_filter'),
(223437, 'spell_telarn_call_of_night_filter'),
(218809, 'spell_telarn_call_of_night_aura'),
(218820, 'spell_telarn_arcane_eclipse_filter'),
(216896, 'spell_telarn_share_health');

delete from spell_dummy_trigger where spell_id in (218438,218424,218807,223437,219049);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(218438, 0, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Controlled Chaos'),
(218424, 219278, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Parasitic Fetter'),
(218807, 218809, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Call of Night'),
(223437, 218809, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Call of Night'),
(219049, 0, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Toxic Spores');

delete from spell_target_filter where spellId in (218438, 218424, 218148, 219049);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(218438, 15, 24, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Controlled Chaos - NonTank List'),
(218424, 15, 22, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Parasitic Fetter - Range List'),
(219049, 15, 22, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Parasitic Fetter - Range List'),
(218148, 16, 24, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Solar Collapse - NonTank List');

delete from spell_aura_trigger where spell_id in (219009);
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `option2`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `slot`, `comment`) VALUES
(219009, 219023, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Grace of Nature');

delete from spell_area where spell = 218821;
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `classmask`, `active_event`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(218821, 8348, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11);

delete from creature_text where entry in (104528,109038,109040,109041);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES 
(104528, 0, 0, 'Как вы посмели вторгнуться в мои сады?', 14, 0, 100, 0, 0, 68634, 115769, 'AGGRO'),
(104528, 0, 1, 'Похоже, пора заняться прополкой!', 14, 0, 100, 0, 0, 68633, 115770, 'AGGRO'),
(104528, 1, 0, 'Эй, не опалите бутоны, пока горите сами!', 14, 0, 100, 0, 0, 68642, 115754, 'SOLAR_COLLAPSE'),
(104528, 2, 0, 'Один вредитель уничтожит другого!', 14, 0, 100, 0, 0, 68641, 115755, 'PARASITIC_FETTER'),
(104528, 3, 0, 'Может, до вас, тугодумов, хоть так дойдет!', 14, 0, 100, 0, 0, 68640, 115756, 'CONTROLLED_CHAOS'),
(104528, 4, 0, '|TINTERFACE\\ICONS\\Spell_Arcane_PrismaticCloak:20|t Чародей Тел\'арн начинает произносить заклинание |cFFF00000|Hspell:218807|h[\"Зов ночи\"]|h|r!', 41, 0, 100, 0, 0, 0, 0, 'CALL_OF_NIGHT'),
(104528, 5, 0, 'Ночь наступает!', 14, 0, 100, 0, 0, 68635, 0, 'CALL_OF_NIGHT'),
(104528, 6, 0, 'Увядайте от жары, сорняки!', 14, 0, 100, 0, 0, 68629, 115763, 'PHASE_2'),
(104528, 6, 1, 'Солнце дарит тепло моим садам... Но вас оно сожжет!', 14, 0, 100, 0, 0, 68630, 115762, 'PHASE_2'),
(104528, 7, 0, 'Узрите три аспекта жизни... И приготовьтесь к смерти!', 14, 0, 100, 0, 0, 68628, 115764, 'PHASE_3'),
(104528, 7, 1, 'Вы надеетесь выстоять против трех первобытных сил, творящих саму жизнь?!', 14, 0, 100, 0, 0, 68627, 115765, 'PHASE_3'),
(104528, 8, 0, 'Кто-нибудь... полейте цветы.', 14, 0, 100, 0, 0, 68631, 115774, 'DEATH'),
(104528, 8, 1, 'Смерть — лишь часть великого цикла.', 14, 0, 100, 0, 0, 68624, 115771, 'DEATH'),

(104528, 9, 0, 'Из твоего трупа выйдет отличный компост!', 14, 0, 100, 0, 0, 68625, 115767, 'DEPRECATED? Kill Player'),
(104528, 9, 1, 'И где мне хранить столько удобрений?', 14, 0, 100, 0, 0, 68622, 115772, 'DEPRECATED? Kill Player'),
(104528, 9, 2, 'Больше пищи червям!', 14, 0, 100, 0, 0, 68624, 115768, 'DEPRECATED? Kill Player'),

-- Solarist Telarn
(109038, 0, 0, 'Опустится тьма... умрете и вы!', 14, 0, 100, 0, 0, 68638, 115758, 'PLASMA_SPHERES'),
(109038, 1, 0, 'Эй, не опалите бутоны, пока горите сами!', 14, 0, 100, 0, 0, 68642, 115754, 'SOLAR_COLLAPSE'),

-- Arcanist
(109040, 0, 0, 'Красота Сурамара — моя заслуга! Я овладел искусством вплетения магии в саму природу и все ее творения!', 14, 0, 100, 0, 0, 68626, 0, 'UNK'),
(109040, 1, 0, 'Похоже, пора заняться прополкой!', 14, 0, 100, 0, 0, 68633, 0, 'AGGRO'),
(109040, 1, 1, 'Как вы посмели вторгнуться в мои сады?', 14, 0, 100, 0, 0, 68634, 0, 'AGGRO'),
(109040, 2, 0, '|TINTERFACE\\ICONS\\Spell_Arcane_PrismaticCloak:20|t Чародей Тел\'арн начинает произносить заклинание |cFFF00000|Hspell:218807|h[\"Зов ночи\"]|h|r!', 41, 0, 100, 0, 0, 0, 0, 'CALL_OF_NIGHT'),
(109040, 3, 0, 'Ночь наступает!', 14, 0, 100, 0, 0, 68635, 0, 'CALL_OF_NIGHT'),
(109040, 4, 0, 'Может, до вас, тугодумов, хоть так дойдет!', 14, 0, 100, 0, 0, 68640, 115756, 'CONTROLLED_CHAOS'),

-- Naturalist Telarn
(109041, 0, 0, 'Один вредитель уничтожит другого!', 14, 0, 100, 0, 0, 68641, 115755, 'PARASITIC_FETTER'),
(109041, 1, 0, 'Природа кормит тех, кто ее ценит.', 14, 0, 100, 0, 0, 68637, 115759, 'GRACE_OF_NATURE');

-- High Botanist Telarn
delete from creature_difficulty_stat where entry in (104528,109038,109038,109040,109041,109164,109075,109804,111993);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(104528, 14, 1, 875.16),
(104528, 15, 1, 1093.95),
(104528, 16, 1, 1200.45),
(104528, 17, 1, 787.644),

(109038, 14, 1, 875.16),
(109038, 15, 1, 1093.95),
(109038, 16, 1, 1200.45),
(109038, 17, 1, 787.644),

(109040, 14, 1, 875.16),
(109040, 15, 1, 1093.95),
(109040, 16, 1, 1200.45),
(109040, 17, 1, 787.644),

(109041, 14, 1, 875.16),
(109041, 15, 1, 1093.95),
(109041, 16, 1, 1200.45),
(109041, 17, 1, 787.644),

(109164, 14, 1, 875.16),
(109164, 15, 1, 1093.95),
(109164, 16, 1, 1200.45),
(109164, 17, 1, 787.644),

(109075, 14, 1, 2.73),
(109075, 15, 1, 6.825),
(109075, 16, 1, 9.09428),
(109075, 17, 1, 2.457),

(109804, 14, 1, 4),
(109804, 15, 1, 6.5),
(109804, 16, 1, 13.325),
(109804, 17, 1, 3.6),

(111993, 16, 1, 13.325);
