delete from creature where id in (124167);

update creature set spawntimesecs = 604800 where id = 122450;

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'boss_worldbreaker', flags_extra = 1537 where entry = 122450;
update creature_template set unit_flags = 0, mechanic_immune_mask = 617299967, ScriptName = 'npc_worldbreaker_annihilation_decimator', flags_extra = 536870912 where entry in (122773,122778);
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_worldbreaker_annihilation_trigger', flags_extra = 130 where entry in (122818,124330);
update creature_template set inhabittype = 7, mechanic_immune_mask = 617299967, ScriptName = 'npc_worldbreaker_surging_fel_trigger', flags_extra = 130 where entry = 124167;
update creature_template set inhabittype = 3, mechanic_immune_mask = 617299967, ScriptName = 'npc_worldbreaker_surging_fel_trigger', flags_extra = 130 where entry = 128429;

update creature_template_wdb set Classification = 3 where entry = 122450;

delete from areatrigger_template where entry in (10903);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(10903, 246848, 1090300, 246848, 0, 100, 100, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 0, 'Luring Destruction');

delete from areatrigger_scripts where entry in (15496);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(15496, 'at_worldbreaker_annihilation');

delete from areatrigger_data where entry in (10662);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(10662, 244795, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (10662);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10662, 0, 0, 1, 15, 8, 244799, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Annihilation');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (244449,245237,249970,254948);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 4, 244449, 0, 0, 31, 0, 3, 125476, 0, 0, 0, '', NULL),
(13, 4, 244449, 0, 1, 31, 0, 3, 125478, 0, 0, 0, '', NULL),
(13, 2, 245237, 0, 0, 31, 0, 3, 122773, 0, 0, 0, '', NULL),
(13, 2, 245237, 0, 1, 31, 0, 3, 122778, 0, 0, 0, '', NULL),
(13, 1, 249970, 0, 1, 31, 0, 3, 122450, 0, 0, 0, '', NULL),
(13, 8, 254948, 0, 0, 31, 0, 3, 125480, 0, 0, 0, '', NULL),
(13, 8, 254948, 0, 1, 31, 0, 3, 124436, 0, 0, 0, '', NULL),
(13, 8, 254948, 0, 2, 31, 0, 3, 125476, 0, 0, 0, '', NULL);

delete from spell_target_filter where spellId in (244150);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(244150, 15, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Fel Bombardment - Only Victim');

delete from spell_script_names where spell_id in (244536,244761,247044,244152,244106,244969);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(244536, 'spell_worldbreaker_fel_bombardment'),
(244761, 'spell_worldbreaker_annihilation_dmg'),
(247044, 'spell_worldbreaker_annihilation_dmg'),
(244152, 'spell_worldbreaker_apocalypse_drive'),
(244106, 'spell_worldbreaker_carnage'),
(244969, 'spell_worldbreaker_eradication');

delete from spell_proc_event where entry = 244106;
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES
(244106, 0, 0, 0, 0, 0, 0, 40, 0, 0, 100, 0, 1);

delete from creature_difficulty_stat where entry in (122450,122773,122778);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(122450, 14, 1, 1601.6),
(122450, 15, 1, 2002),
(122450, 16, 1, 5335.33),
(122450, 17, 1, 1441.44),
(122773, 14, 1, 58.5),
(122773, 15, 1, 73.125),
(122773, 16, 1, 194.878),
(122773, 17, 1, 52.65),
(122778, 14, 1, 58.5),
(122778, 15, 1, 73.125),
(122778, 16, 1, 194.878),
(122778, 17, 1, 52.65);

delete from creature_text where Entry = 122450;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(122450, 0, 0, 'Обнаружен противник. Уровень угрозы – номинальный.', 14, 0, 100, 0, 0, 86397, 132426, 0, 0, 0, 'AGGRO_1'),
(122450, 1, 0, 'Пленных не брать.', 14, 0, 100, 0, 0, 86396, 132432, 0, 0, 0, 'ANNIHILATION_1'),
(122450, 1, 1, 'Цели обнаружены!', 14, 0, 100, 0, 0, 86971, 135267, 0, 0, 0, 'ANNIHILATION_2'),
(122450, 1, 2, 'Орудие готово к аннигиляции.', 14, 0, 100, 0, 0, 86394, 132430, 0, 0, 0, 'ANNIHILATION_3'),
(122450, 2, 0, 'Цели обнаружены.', 14, 0, 100, 0, 0, 86971, 135267, 0, 0, 0, 'DECIMATION_1'),
(122450, 2, 1, 'Цели для децимации захвачены.', 14, 0, 100, 0, 0, 86393, 132429, 0, 0, 0, 'DECIMATION_2'),
(122450, 2, 2, 'Наведение на цель завершено.', 14, 0, 100, 0, 0, 86395, 132431, 0, 0, 0, 'DECIMATION_3'),
(122450, 3, 0, '|TInterface\\ICONS\\ABILITY_MAGE_FIRESTARTER.BLP:20|t Вы стали целью |cFFF00000|Hspell:244410|h[Децимации]|h|r!', 42, 0, 100, 0, 0, 0, 132901, 0, 0, 0, 'WARN: DECIMATION'),
(122450, 4, 0, '|TInterface\\ICONS\\Ability_BossFelMagnaron_HandEmpowered.blp:20|t %s усиливает |cFFF00000|Hspell:244152|h[реактор апокалипсиса]|h|r!', 41, 0, 100, 0, 0, 0, 132631, 0, 0, 0, 'WARN: APOCALYPSE_DRIVE'),
(122450, 5, 0, 'Реактор апокалипсиса активирован.', 14, 0, 100, 0, 0, 86399, 132433, 0, 0, 0, 'APOCALYPSE_DRIVE'),
(122450, 6, 0, '|TInterface\\ICONS\\ABILITY_WARRIOR_COLOSSUSSMASH.BLP:20|tРазрушитель миров Кин’гарота замахивается, чтобы использовать способность |cFFF00000|Hspell:244969|h[\"Искоренение\"]|h|r! Спасайтесь!', 41, 0, 100, 0, 0, 0, 138536, 0, 0, 0, 'WARN: ERADICATION'),
(122450, 7, 0, 'Системы перезапущены. Орудия готовы к бою.', 14, 0, 100, 0, 0, 86400, 132434, 0, 0, 0, 'ERADICATION'),
(122450, 8, 1, 'Протокол... самоуничтожения...', 14, 0, 100, 0, 0, 86973, 135269, 0, 0, 0, 'DEATH_2'),
(122450, 8, 0, 'Критические повреждения...', 14, 0, 100, 0, 0, 86398, 132428, 0, 0, 0, 'DEATH_1');


