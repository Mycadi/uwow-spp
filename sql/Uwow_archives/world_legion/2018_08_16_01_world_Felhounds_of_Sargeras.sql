delete from creature where id in (122507);

update creature set spawntimesecs = 604800 where id in (122135, 122477);

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_felhounds_shatug', flags_extra = 1537 where entry = 122135;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_felhounds_fharg', flags_extra = 1537 where entry = 122477;
update creature_template set inhabittype = 7, mechanic_immune_mask = 617299967, flags_extra = 130 where entry = 122507;

update creature_template_wdb set Classification = 3 where entry in (122135, 122477);

delete from creature_addon where auras = 244049;

update areatrigger_template set speed = 7 where entry = 10661;

delete from areatrigger_data where entry in (10586,10661);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(10586, 244107, 0, 1, 1000, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10661, 244107, 0, 1, 1000, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (10586,10661,10590);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10586, 0, 0, 1, 0, 8, 244131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consuming Sphere - Apply'),
(10586, 0, 1, 42, 1, 8, 244131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consuming Sphere - Remove'),
(10661, 0, 0, 1, 0, 8, 244131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consuming Sphere Mythic - Apply'),
(10661, 0, 1, 42, 1, 8, 244131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Consuming Sphere Mythic - Remove'),
(10590, 0, 0, 1, 0, 8, 245022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning Remnant - Apply'),
(10590, 0, 1, 42, 1, 8, 245022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning Remnant - Remove');

delete from areatrigger_scripts where entry in (15424);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(15424, 'at_felhounds_weight_of_darkness');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (244051,251444);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 3, 244051, 0, 0, 31, 0, 3, 122135, 0, 0, 0, '', NULL),
(13, 3, 244051, 0, 1, 31, 0, 3, 122477, 0, 0, 0, '', NULL),
(13, 8, 251444, 0, 0, 31, 0, 3, 122135, 0, 0, 0, '', NULL),
(13, 8, 251444, 0, 1, 31, 0, 3, 122477, 0, 0, 0, '', NULL);

delete from spell_script_names where spell_id in (244050,244107,244441,244471,244578,244072,244086,244069,244071,254429,245149,244054,244055,244130);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(244050, 'spell_felhounds_destroyers_boon_energize'),
(244050, 'spell_felhounds_destroyers_boon_energy_type'),
(244107, 'spell_felhounds_consuming_sphere'),
(244441, 'spell_felhounds_desolate_path'),
(244069, 'spell_felhounds_weight_of_darkness'),
(244071, 'spell_felhounds_weight_of_darkness_fear_filter'),
(254429, 'spell_felhounds_weight_of_darkness_periodic'),
(244471, 'spell_felhounds_corruption_filter'),
(244578, 'spell_felhounds_corruption_filter'),
(244072, 'spell_felhounds_molten_touch_filter'),
(244072, 'spell_felhounds_molten_touch'),
(244086, 'spell_felhounds_molten_touch_periodic'),
(245149, 'spell_felhounds_shadowscar_filter'),
(244054, 'spell_felhounds_touched_proc'),
(244055, 'spell_felhounds_touched_proc'),
(244130, 'spell_felhounds_consuming_detonation');

delete from spell_aura_trigger where spell_id in (244131);
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `option2`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `slot`, `comment`) VALUES
(244131, 254403, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Consuming Sphere');

delete from spell_target_filter where spellId in (244159);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(244159, 15, 27, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 'Consuming Sphere - Range Players Priory');

delete from spell_dummy_trigger where spell_id in (244578,244471);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(244578, 248819, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Siphon Corruption'),
(244471, 248815, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Enflame Corruption');

delete from spell_target_position where id = 253244;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(253244, 1712, -3256.1, 10417.6, -155.469, 0);

delete from spell_area where spell in (244054,244055);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `classmask`, `active_event`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(244054, 8638, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(244055, 8638, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11);

delete from creature_text where entry in (122135,122477);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(122135, 0, 0, '|TInterface\\Icons\\ABILITY_DEATHKNIGHT_DEATHSIPHON2.BLP:20|t %s начинает произносить заклинание |cFFFF0000|Hspell:244056|h[\"Вытягивание порчи\"]|h|r.', 41, 0, 100, 15, 0, 86397, 137102, 0, 0, 0, 'Шатуг'),
(122477, 0, 0, '|TInterface\\Icons\\SPELL_FIRE_MOLTENBLOOD.BLP:20|t %s начинает произносить заклинание |cFFFF0000|Hspell:244057|h[\"Возгорание порчи\"]|h|r.', 41, 0, 100, 0, 0, 0, 137103, 49125, 152485, 0, 'Ф\'арг'),
(122477, 1, 0, '|TInterface\\Icons\\ABILITY_WARLOCK_MOLTENCORE.BLP:20|t На вас действует |cFFFF0000|Hspell:244768|h[\"Опустошающий взгляд\"]|h|r!', 42, 0, 100, 0, 0, 86397, 137150, 0, 0, 0, 'Ф\'арг to Player');

delete from creature_difficulty_stat where entry in (122135,122477);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(122135, 14, 1, 1920),
(122135, 15, 1, 2400),
(122135, 16, 1, 3000),
(122135, 17, 1, 1728),
(122477, 14, 1, 1920),
(122477, 15, 1, 2400),
(122477, 16, 1, 3000),
(122477, 17, 1, 1728);

