update creature set spawntimesecs = 604800 where id = 122637;

delete from creature where id in (122367,122369,122333,122554,123020,123013,92461,127741,130184,130185,130186,130210,122739) and `map` = 1712;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`) VALUES
(130210, 1712, 8638, 8638, 245760, 1, '', 0, 0, -2883.3, 10870.7, 155.907, 6.06108, 14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130210, 1712, 8638, 8638, 245760, 1, '', 0, 0, -2796.91, 10809.7, 155.907, 2.13133, 14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(130210, 1712, 8638, 8638, 245760, 1, '', 0, 0, -2796.28, 10901.6, 155.907, 4.10066, 14400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

update creature_template set minlevel = 113, maxlevel = 113, faction = 14, mechanic_immune_mask = 617299967, ScriptName = 'boss_antoran_high_command', flags_extra = 130 where entry = 122637;
update creature_template set mechanic_immune_mask = 617299967, unit_flags = 0, ScriptName = 'boss_antoran_high_command_generic', flags_extra = 1 where entry in (122367,122369,122333);
update creature_template set ScriptName = 'npc_command_capsules', flags_extra = 536870912 where entry in (122554, 123020, 123013);
update creature_template set ScriptName = 'npc_command_entropic_mine' where entry = 122992;
update creature_template set lootid = 0, ScriptName = 'npc_command_reinforcements' where entry in (122890,122718);
update creature_template set ScriptName = 'npc_command_legion_cruiser', flags_extra = 0 where entry = 122739;
update creature_template set unit_flags = 0, ScriptName = 'npc_command_felshield_emitter' where entry = 122867;
update creature_template set ScriptName = 'npc_command_disruptor_beacon' where entry = 122884;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_command_screaming_shrike' where entry = 128069;
update creature_template set inhabittype = 7 where entry in (122554,123020,123013,130184,130185,130186,122944);
update creature_template set flags_extra = 130 where entry in (130184,130185,130186);
update creature_template set flags_extra = 0 where entry = 122944;
update creature_template set spell1 = 244418, spell2 = 245027, spell3 = 254219 where entry = 122554;
update creature_template set spell1 = 244418, spell2 = 255140, spell3 = 254219 where entry = 123020;
update creature_template set spell1 = 244418, spell2 = 255147, spell3 = 254219 where entry = 123013;

update creature_template_wdb set Classification = 3 where entry in (122367,122369,122333,244418);

delete from creature_loot_template where entry in (122890,122718);

delete from areatrigger_actions where entry in (10673);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10673, 0, 0, 1, 0, 8, 244910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Felshield - Apply'),
(10673, 0, 1, 42, 1, 8, 244910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Felshield - Remove');

delete from disables where sourceType = 0 and entry in (244418,257973,257974);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES
(0, 244418, 64, '', '', 'Chaos Pulse - Ignore LOS'),
(0, 257973, 64, '', '', 'Chaos Pulse - Ignore LOS'),
(0, 257974, 64, '', '', 'Chaos Pulse - Ignore LOS');

delete from conditions where SourceTypeOrReferenceId in (13, 17) and SourceEntry in (244103,244418,245103,254771,244696,254130,254219);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 244103, 0, 0, 31, 0, 3, 122367, 0, 0, 0, '', NULL),
(13, 1, 244103, 0, 1, 31, 0, 3, 122369, 0, 0, 0, '', NULL),
(13, 1, 244103, 0, 2, 31, 0, 3, 122333, 0, 0, 0, '', NULL),
(17, 0, 244418, 0, 0, 31, 1, 3, 122367, 0, 0, 0, '', NULL),
(17, 0, 244418, 0, 1, 31, 1, 3, 122369, 0, 0, 0, '', NULL),
(17, 0, 244418, 0, 2, 31, 1, 3, 122333, 0, 0, 0, '', NULL),
(17, 0, 244418, 0, 3, 31, 1, 3, 122890, 0, 0, 0, '', NULL),
(17, 0, 244418, 0, 4, 31, 1, 3, 122718, 0, 0, 0, '', NULL),
(13, 1, 245103, 0, 0, 31, 0, 3, 122890, 0, 0, 0, '', NULL),
(13, 1, 245103, 0, 1, 31, 0, 3, 122718, 0, 0, 0, '', NULL),
(13, 3, 254771, 0, 0, 31, 0, 3, 122890, 0, 0, 0, '', NULL),
(13, 3, 254771, 0, 1, 31, 0, 3, 122718, 0, 0, 0, '', NULL),
(13, 4, 254771, 0, 2, 31, 0, 3, 122992, 0, 0, 0, '', NULL),
(13, 1, 244696, 0, 0, 31, 0, 3, 122367, 0, 0, 0, '', NULL),
(13, 2, 244696, 0, 0, 31, 0, 3, 122554, 0, 0, 0, '', NULL),
(13, 1, 254130, 0, 0, 31, 0, 3, 122554, 0, 0, 0, '', NULL),
(13, 1, 254130, 0, 1, 31, 0, 3, 123020, 0, 0, 0, '', NULL),
(13, 1, 254130, 0, 2, 31, 0, 3, 123013, 0, 0, 0, '', NULL),
(17, 0, 254219, 0, 0, 31, 1, 3, 128069, 0, 0, 0, '', NULL);

delete from npc_spellclick_spells where npc_entry in (122554,123020,123013,122867);

delete from spell_script_names where spell_id in (245027,244418,257976,245304,255140,255147,244172,244627);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(245027, 'spell_command_withering_fire'),
(244418, 'spell_command_player_chaos_pulse'),
(257976, 'spell_command_chaos_pulse_filter'),
(245304, 'spell_command_entropic_mine'),
(255140, 'spell_command_felshield_or_beacon'),
(255147, 'spell_command_felshield_or_beacon'),
(244172, 'spell_command_psychic_assault'),
(244627, 'spell_command_fusillade');

delete from spell_target_filter where spellId in (245304);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(245304, 0, 15, 27, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Entropic Mine - Priority Ranged');

delete from creature_difficulty_stat where entry in (122367,122369,122333,122890,122718,128069);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(122367, 14, 1, 2035.2),
(122367, 15, 1, 2849.28),
(122367, 16, 1, 7457.74),
(122367, 17, 1, 18316.98),

(122369, 14, 1, 2035.2),
(122369, 15, 1, 2849.28),
(122369, 16, 1, 7457.74),
(122369, 17, 1, 18316.98),

(122333, 14, 1, 2035.2),
(122333, 15, 1, 2849.28),
(122333, 16, 1, 7457.74),
(122333, 17, 1, 18316.98),

(122890, 14, 1, 42.24),
(122890, 15, 1, 52.8),
(122890, 16, 1, 175.89),
(122890, 17, 1, 38.016),

(122718, 14, 1, 41.9364),
(122718, 15, 1, 52.4206),
(122718, 16, 1, 180.65),
(122718, 17, 1, 37.737),

(128069, 16, 1, 25);

delete from creature_text where entry in (122367,122554,122739,123013,123020,130184,130185,130186);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(122367, 0, 0, 'This is one engagement you will not walk away from.', 12, 0, 100, 0, 0, 86906, 133771, 0, 0, 0, 'AGGRO_1'),
(122554, 0, 0, 'Admiral Svirax exits her command pod!', 41, 0, 100, 0, 0, 0, 140942, 0, 0, 0, 'LEAVE_CAPSULE'),
(122554, 1, 0, '|TINTERFACE\\ICONS\\SPELL_ARCANE_MINDMASTERY.BLP:20|t Ваш разум подвергается |cFFFF0000|Hspell:244172|h[Псионной атаке]|h|r!', 42, 0, 100, 0, 0, 0, 140968, 0, 0, 0, 'WARN_PLAYER'),
(122739, 0, 0, '|TINTERFACE\\ICONS\\SPELL_FEL_INCINERATE.BLP:20|t Крейсер Легиона готовится открыть |cFFFF0000|Hspell:244627|h[шквальный огонь]|h|r!', 41, 0, 100, 0, 0, 88737, 132925, 0, 0, 0, 'WARN_FUSILLADE'),
(123013, 0, 0, 'General Erodus exits his command pod!', 41, 0, 100, 0, 0, 0, 140945, 0, 0, 0, 'LEAVE_CAPSULE'),
(123013, 1, 0, '|TINTERFACE\\ICONS\\SPELL_ARCANE_MINDMASTERY.BLP:20|t Ваш разум подвергается |cFFFF0000|Hspell:244172|h[Псионной атаке]|h|r!', 42, 0, 100, 0, 0, 0, 140968, 0, 0, 0, 'WARN_PLAYER'),
(123020, 0, 0, 'Chief Engineer Ishkar exits his command pod!', 41, 0, 100, 0, 0, 0, 140944, 0, 0, 0, 'LEAVE_CAPSULE'),
(123020, 1, 0, '|TINTERFACE\\ICONS\\SPELL_ARCANE_MINDMASTERY.BLP:20|t Ваш разум подвергается |cFFFF0000|Hspell:244172|h[Псионной атаке]|h|r!', 42, 0, 100, 0, 0, 0, 140968, 0, 0, 0, 'WARN_PLAYER'),
(130184, 0, 0, 'Cannons, begin firing on my mark!', 14, 0, 100, 0, 0, 88738, 134884, 0, 0, 0, 'SAY_FUSILLADE'),
(130185, 0, 0, 'I have calculated your odds of survival--zero!', 12, 0, 100, 0, 0, 86919, 134892, 0, 0, 0, 'ENTROPIC_MINE_1'),
(130185, 0, 1, 'I hope you enjoy my inventions.', 12, 0, 100, 0, 0, 86917, 134888, 0, 0, 0, 'ENTROPIC_MINE_2'),
(130185, 0, 2, 'Watch your step!', 12, 0, 100, 0, 0, 88739, 134889, 0, 0, 0, 'ENTROPIC_MINE_3'),
(130186, 0, 0, 'Demons! Charge!', 12, 0, 100, 0, 0, 86983, 134885, 0, 0, 0, 'SUMMON_REINFORCEMENTS_1'),
(130186, 0, 1, 'Leave no one alive!', 12, 0, 100, 0, 0, 86984, 134886, 0, 0, 0, 'SUMMON_REINFORCEMENTS_2'),
(130186, 0, 2, 'Legion, show these weaklings why we are the dominant force in the cosmos!', 12, 0, 100, 0, 0, 86985, 134887, 0, 0, 0, 'SUMMON_REINFORCEMENTS_3');












