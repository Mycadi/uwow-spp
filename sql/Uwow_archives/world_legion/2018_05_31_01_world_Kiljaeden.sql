delete from creature where id in (120839,121193,120270,121721,118052,121227,121788,124590,124598,121789,120390,119206);

update creature set position_z = 5385.65 where id = 117269;

REPLACE INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `ScriptName`) VALUES
(120082, 0, 113, 113, 0, 0, 0, 0, 100, 0, 16, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 33554432, 4196352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 617299967, 0, -1, '', '', 0, 0, 0, 0, 0, 0, ''),
(119663, 0, 113, 113, 0, 0, 0, 0, 100, 0, 35, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 617299967, 0, -1, '', '', 0, 0, 0, 0, 0, 0, '');

update creature_template set inhabittype = 3, mechanic_immune_mask = 617299967, ScriptName = 'boss_tos_kiljaeden', flags_extra = 1537 where entry = 117269;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_armageddon_stalker', flags_extra = 130 where entry = 120839;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_erupting_reflection' where entry = 119206;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_wailing_reflection' where entry = 119107;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_hopeless_reflection' where entry = 119663;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_shadowsoul' where entry = 121193;
update creature_template set ScriptName = 'npc_tos_stage4_illidan_stormrage' where entry = 121227;
update creature_template set inhabittype = 7, mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_demonic_obelisk' where entry = 120270;
update creature_template set inhabittype = 7, mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_nether_rift' where entry = 120390;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_tos_flaming_orb' where entry = 120082;

update creature_template_wdb set Classification = 3 where entry = 117269;

delete from creature_template_addon where entry in (120839,121193,120270,121721,118052,121227,121788,124590,124598,121789,120390,119206);

delete from areatrigger_template where entry in (10383,10430,10003,10160,10024,10033,10689,10270);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(10383, 241983, 15243, 241983, 0, 300, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil'),
(10430, 241983, 15286, 241983, 0, 300, 300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil'),
(10003, 239130, 14886, 239130, 0, 50, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tear Rift'),
(10160, 239130, 15028, 239130, 0, 200, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 'Tear Rift'),
(10024, 239256, 1002400, 239256, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flaming Orb'),
(10033, 239267, 1003300, 239267, 188, 10, 10, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flaming Detonation'),
(10689, 243542, 1068900, 243542, 0, 1, 1, 0, 0, 0, 0, 1, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chaotic Eruption'),
(10270, 237728, 1027000, 237728, 136, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hopelessness');

delete from areatrigger_data where entry in (10237,10247,10383,10689);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(10237, 234295, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(10247, 240911, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(10383, 241983, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(10689, 243542, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (10237,10247,10383,10430,10366,10003,10024,10033,10689,10270);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10237, 0, 0, 1, 15, 8, 240832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armageddon Rain - Apply Visual'),
(10237, 0, 1, 42, 15, 8, 240832, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armageddon Rain - Remove Visual'),
(10247, 0, 0, 1, 15, 8, 240915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armageddon Hail - Apply Visual'),
(10247, 0, 1, 42, 15, 8, 240915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armageddon Hail - Remove Visual'),
(10383, 0, 0, 4, 0, 8, 236555, 0, -241721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil RHit - Apply'),
(10383, 0, 1, 4, 1, 8, 236555, 0, 241721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil RHit - Remove'),
(10383, 0, 2, 42, 1, 8, 236555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil RHit - Remove'),
(10383, 0, 3, 4, 0, 8, 242696, 0, 241721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil - Apply'),
(10383, 0, 4, 4, 1, 8, 242696, 0, -241721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil - Remove'),
(10383, 0, 5, 42, 1, 8, 242696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil - Remove'),
(10430, 0, 0, 1, 0, 8, 241822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil - Apply'),
(10430, 0, 1, 42, 1, 8, 241822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil - Remove'),
(10366, 0, 0, 1, 0, 8, 241721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cursed Sight'),
(10003, 0, 0, 1, 0, 8, 239154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravity Squeeze - Apply'),
(10003, 0, 1, 42, 1, 8, 239154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravity Squeeze - Remove'),
(10024, 0, 0, 1, 15, 4194312, 239267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flaming Detonation'),
(10033, 0, 0, 1, 0, 8, 240262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning - Apply'),
(10033, 0, 1, 42, 1, 8, 240262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning - Remove'),
(10033, 0, 2, 512, 19, 256, 240262, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning - Activate Moving'),
(10689, 0, 0, 1, 0, 8, 245017, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chaotic Eruption'),
(10270, 0, 0, 1, 0, 8, 236602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soul Anguish - Apply'),
(10270, 0, 1, 42, 1, 8, 236602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soul Anguish - Remove');

delete from areatrigger_scripts where entry in (15115,15121,1002400,1003300,1027000);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(15115, 'at_tos_armageddon'),
(15121, 'at_tos_armageddon'),
(1002400, 'at_tos_flaming_orb'),
(1003300, 'at_tos_flaming_detonation'),
(1027000, 'at_tos_hopelessness');

delete from spell_script_names where spell_id in (238502,242074,238999,239154,239280,243536,243624,243625,237728);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(238502, 'spell_tos_focused_dreadflame'),
(242074, 'spell_tos_destabilized_shadowsoul'),
(238999, 'spell_tos_darkness_thousand_souls'),
(239154, 'spell_tos_gravity_squeeze'),
(239280, 'spell_tos_flaming_orb_fixate'),
(243536, 'spell_tos_lingering_eruption'),
(243624, 'spell_tos_lingering_wail'),
(243625, 'spell_tos_lingering_wail_jump'),
(237728, 'spell_tos_hopelessness');

delete from spell_dummy_trigger where spell_id in (238429,244856);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(238429, 0, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Bursting Dreadflame'),
(244856, 0, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Flaming Orb');

delete from spell_target_filter where spellId in (236381,236710,237590,243621);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(236381, 16, 2, 0, 10, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Sorrowful Wail - 10yard'),
(236710, 16, 3, 0, 16, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Shadow Reflection: Erupting'),
(237590, 16, 3, 0, 16, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Shadow Reflection: Hopeless'),
(237590, 16, 24, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Shadow Reflection: Hopeless'),
(243621, 16, 24, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Lingering Hope');

delete from creature_text where entry in (121227, 117269);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(121227, 0, 0, 'Ко мне, герои! Я дарую вам истинное зрение!', 12, 0, 100, 0, 0, 83608, 130043, 'ILLIDAN_STAGE_4'),
-- 
(117269, 0, 0, 'Этот бой станет для вас последним!', 14, 0, 100, 0, 0, 83607, 130033, 'AGGRO_1'),
(117269, 0, 1, 'Проявить храбрость против моих слуг – простая задача. Но хватит ли вам отваги противостоять тьме внутри вас?', 14, 0, 100, 0, 0, 83648, 129634, 'AGGRO_2'),
(117269, 1, 0, 'Ливень смерти настигнет вас!', 14, 0, 100, 0, 0, 83620, 130045, 'ARMAGEDDON_1'),
(117269, 1, 1, 'Грядет уничтожение!', 14, 0, 100, 0, 0, 83619, 130044, 'ARMAGEDDON_2'),
(117269, 2, 0, '|TInterface\Icons\SPELL_FIRE_FELRAINOFFIRE:20|t%s вызывает |cFFFF0000|Hspell:240910|h[армагеддон]|h|r!', 41, 0, 100, 0, 0, 0, 130398, 'WARN: ARMAGEDDON'),
(117269, 3, 0, 'Вам не одолеть тьму внутри вас.', 14, 0, 100, 0, 0, 83637, 129638, 'REFLECTION_ERUPTING_1'),
(117269, 3, 1, 'Сразитесь с тьмой внутри вас!', 14, 0, 100, 0, 0, 83635, 129636, 'REFLECTION_ERUPTING_2'),
(117269, 4, 0, 'Склонитесь передо мной!', 14, 0, 100, 0, 0, 83621, 129612, 'RUPTURING_SINGULARITY_1'),
(117269, 4, 1, 'Ну и кто вас теперь спасет?', 14, 0, 100, 0, 0, 83622, 129613, 'RUPTURING_SINGULARITY_2'),
(117269, 5, 0, '|TInterface\Icons\Ability_Socererking_arcanemines:20|t%s создает |cFFFF0000|Hspell:235059|h[разрывающую сингулярность]|h|r!', 41, 0, 100, 0, 0, 0, 130397, 'WARN: RUPTURING_SINGULARITY'),
(117269, 6, 0, 'Все еще сопротивляетесь? Я вас проучу.', 14, 0, 100, 0, 0, 83629, 129629, 'STAGE_2_CHANGE'),
(117269, 7, 0, 'Ты послужишь вместилищем моего гнева!', 14, 0, 100, 0, 0, 83623, 129631, 'Fly_Point_1'),
(117269, 8, 0, 'Поглоти их всех!', 14, 0, 100, 0, 0, 83624, 130047, 'BURSTING_DREADFLAME'),
(117269, 9, 0, 'Кто разделит твою участь?', 14, 0, 100, 0, 0, 83626, 130048, 'FOCUSED_DREADFLAME'),
(117269, 10, 0, '|TInterface\Icons\ABILITY_MAGE_FIRESTARTER:20|t%s выбирает |cFFFF0000|3-3($n)|r целью для |cFFFF0000|Hspell:238502|h[сосредоточенного пламени ужаса]|h|r!', 41, 0, 100, 0, 0, 0, 130805, 'WARN: FOCUSED_DREADFLAME'),
(117269, 11, 0, 'Я чувствую в вас порчу.', 14, 0, 100, 0, 0, 83636, 129637, 'WAILING'),
(117269, 12, 0, 'Узрите свою судьбу!', 14, 0, 100, 0, 0, 83639, 130052, 'HOPELESS_1'),
(117269, 12, 1, 'Не противьтесь вашим страхам и соблазнам!', 14, 0, 100, 0, 0, 83638, 130051, 'HOPELESS_2'),
(117269, 13, 0, 'Вы не сдаетесь, даже столкнувшись со своими страхами и сомнениями? Невозможно!', 14, 0, 100, 0, 0, 83649, 129635, 'STAGE_4_CHANGE'),
(117269, 14, 0, 'Провалитесь во тьму!', 14, 0, 100, 0, 0, 83658, 130073, 'DECEIVER_VEIL_FINISH_CAST'),
(117269, 15, 0, 'Вы еще живы? Неважно. Узрите наши чудеса, смертные, и отчайтесь! Этот мир станет вашей могилой!', 14, 0, 100, 0, 0, 83660, 129641, 'STAGE_5'),
(117269, 16, 0, 'Сдавайтесь! Пусть тьма заберет вас!', 14, 0, 100, 0, 0, 83659, 130074, 'TEAR_RIFT_1'),
(117269, 16, 1, 'Ваша реальность раскололась!', 14, 0, 100, 0, 0, 83657, 129642, 'TEAR_RIFT_2'),
(117269, 17, 0, 'Ваши души канут в забвение!', 14, 0, 100, 0, 0, 83652, 130064, 'DARKNESS_THOUSAND_SOULS_1'),
(117269, 17, 1, 'Моя разрушительная мощь безгранична!', 14, 0, 100, 0, 0, 83651, 130063, 'DARKNESS_THOUSAND_SOULS_2'),
(117269, 18, 0, 'Я развею ваш пепел в Пустоте!', 14, 0, 100, 0, 0, 83654, 129645, 'FLAMING_ORB');

delete from creature_difficulty_stat where entry in (117269,119206,121193,119107,119663);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(117269, 14, 1, 1702.6),
(117269, 15, 1, 2128.26),
(117269, 16, 1, 7847.74),
(117269, 17, 1, 1532.34),

(119206, 14, 1, 22.8142),
(119206, 15, 1, 28.5178),
(119206, 16, 1, 107.008),
(119206, 17, 1, 20.529),

(121193, 14, 1, 11.4071),
(121193, 15, 1, 14.2589),
(121193, 16, 1, 102.5495833110295),
(121193, 17, 1, 10.26),

(119107, 15, 1, 69.41834194776863),
(119107, 16, 1, 259.0723361893647),

(119663, 16, 1, 28.68098569235951);








