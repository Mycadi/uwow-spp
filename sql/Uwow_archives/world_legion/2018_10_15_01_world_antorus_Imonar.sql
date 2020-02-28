delete from creature where id in (124550,124686,124704,124889) and `map` = 1712;

update creature set spawntimesecs = 604800 where id = 124158;

update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'boss_imonar', flags_extra = 1 where entry = 124158;
update creature_template set inhabittype = 7, mechanic_immune_mask = 617299967, ScriptName = 'npc_imonar_ship_generic' where entry in (124704,124889);
update creature_template set mechanic_immune_mask = 617299967, flags_extra = 130 where entry in (124550,128154,124776);
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_imonar_traps', flags_extra = 130 where entry in (124928,124686);

update creature_template_wdb set Classification = 3 where entry in (124158);

delete from conditions where SourceTypeOrReferenceId in (13) and SourceEntry in (248223,248224,248237,248238,248313,250136);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 248223, 0, 0, 31, 0, 3, 124686, 0, 0, 0, '', NULL),
(13, 1, 248224, 0, 0, 31, 0, 3, 124686, 0, 0, 0, '', NULL),
(13, 1, 248237, 0, 0, 31, 0, 3, 124686, 0, 0, 0, '', NULL),
(13, 1, 248238, 0, 0, 31, 0, 3, 124686, 0, 0, 0, '', NULL),
(13, 1, 248313, 0, 0, 31, 0, 3, 124550, 0, 0, 0, '', NULL),
(13, 1, 250136, 0, 0, 31, 0, 3, 124550, 0, 0, 0, '', NULL);

delete from areatrigger_actions where entry in (11020,10989,10981,11028,11238,11021,11006,11004);
delete from areatrigger_actions where customEntry in (16404);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(11020, 0, 0, 1, 0, 8, 247388, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Pulse Grenade'),
(10989, 0, 0, 1, 0, 8, 247681, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Pulse Grenade'),
(10981, 0, 0, 1, 0, 8, 247641, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Stasis Trap'),
(11028, 0, 0, 1, 0, 8, 248321, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Conflagration'),
(11238, 0, 0, 1, 0, 8, 250191, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Conflagration'),
(11021, 0, 0, 1, 0, 8, 247932, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Shrapnel Blast'),
(11006, 0, 0, 1, 0, 8, 247962, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Blastwire'),
(11004, 0, 0, 1, 0, 8, 247949, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Shrapnel'),
(0, 16404, 0, 1, 0, 8, 254181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Seared Skin - Apply'),
(0, 16404, 1, 42, 1, 8, 254181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Seared Skin - Remove');

delete from spell_dummy_trigger where spell_id in (250078,254244,247373,247375,247923,248154);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(250078, 247542, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Electrify'),
(254244, 247552, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Sleep Canister'),
(247373, 247381, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Pulse Grenade'),
(247375, 247381, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Pulse Grenade'),
(247923, 247927, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Shrapnel Blast'),
(248154, 250006, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Empowered Pulse Grenade');

delete from spell_target_filter where spellId in (247711,248313,250136);
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(247711, 0, 15, 24, 0, 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 'Charged Blasts - Exclude Tank'),
(247711, 1, 15, 1, -248968, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 'Charged Blasts - Exclude Aura'),
(248313, 0, 7, 1, -248315, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Conflagration - Exclude Aura'),
(250136, 0, 7, 1, -248315, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Conflagration - Exclude Aura');

delete from spell_script_names where spell_id in (248995,248194,250078,250256);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(248995, 'spell_imonar_jetpacks'),
(248194, 'spell_imonar_jetpacks'),
(250078, 'spell_imonar_electrify'),
(250256, 'spell_imonar_electrify');

delete from creature_summon_groups where summonerId = 124158;
INSERT INTO `creature_summon_groups` (`summonerId`, `id`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `count`, `actionType`, `distance`, `summonType`, `summonTime`) VALUES
(124158, 0, 0, 0, 124550, -10584.5, 8556.2, 1871.96, 1.56936, 0, 0, 0, 8, 0),
(124158, 1, 0, 0, 124550, -10565.9, 8709.79, 1872.07, 4.71212, 0, 0, 0, 8, 0),
(124158, 2, 0, 0, 124550, -10575.1, 8555.8, 1871.74, 1.56726, 0, 0, 0, 8, 0),
(124158, 3, 0, 0, 124550, -10565.6, 8555.97, 1871.94, 1.56842, 0, 0, 0, 8, 0),
(124158, 4, 0, 0, 124550, -10583.9, 8710.04, 1872.07, 4.7125, 0, 0, 0, 8, 0),
(124158, 5, 0, 0, 124550, -10574.8, 8710.02, 1871.84, 4.71135, 0, 0, 0, 8, 0),
(124158, 6, 0, 0, 124686, -10582.4, 8646.32, 1871.61, 4.74583, 0, 0, 0, 8, 0),
(124158, 7, 0, 0, 124686, -10575.8, 8590.96, 1871.61, 4.711, 0, 0, 0, 8, 0),
(124158, 8, 0, 0, 124686, -10567.6, 8616.81, 1871.61, 4.73935, 0, 0, 0, 8, 0),
(124158, 9, 0, 0, 124686, -10571.4, 8661.32, 1871.61, 4.69928, 0, 0, 0, 8, 0),
(124158, 10, 0, 0, 124686, -10582.5, 8632.59, 1871.62, 4.72247, 0, 0, 0, 8, 0),
(124158, 11, 0, 0, 124686, -10566.3, 8636.89, 1871.62, 4.74497, 0, 0, 0, 8, 0),
(124158, 12, 0, 0, 124686, -10570.3, 8573.8, 1871.61, 4.69135, 0, 0, 0, 8, 0),
(124158, 13, 0, 0, 124686, -10578.4, 8688.07, 1871.64, 4.71807, 0, 0, 0, 8, 0),
(124158, 14, 0, 0, 124686, -10577.7, 8640.29, 1871.61, 4.71725, 0, 0, 0, 8, 0),
(124158, 15, 0, 0, 124686, -10575.5, 8670.15, 1871.61, 4.71074, 0, 0, 0, 8, 0),
(124158, 16, 0, 0, 124686, -10571.6, 8598.17, 1871.62, 4.69722, 0, 0, 0, 8, 0),
(124158, 17, 0, 0, 124686, -10568.8, 8651.36, 1872.08, 4.6916, 0, 0, 0, 8, 0),
(124158, 18, 0, 0, 124686, -10579.7, 8571.59, 1871.61, 4.72521, 0, 0, 0, 8, 0),
(124158, 19, 0, 0, 124686, -10577.6, 8653.33, 1871.61, 4.71644, 0, 0, 0, 8, 0),
(124158, 20, 0, 0, 124686, -10567, 8592.85, 1871.62, 4.68148, 0, 0, 0, 8, 0),
(124158, 21, 0, 0, 124686, -10569.2, 8607.08, 1871.62, 4.69693, 0, 0, 0, 8, 0),
(124158, 22, 0, 0, 124686, -10571.9, 8583.21, 1871.61, 4.69763, 0, 0, 0, 8, 0),
(124158, 23, 0, 0, 124686, -10575.9, 8577.62, 1871.81, 4.71151, 0, 0, 0, 8, 0),
(124158, 24, 0, 0, 124686, -10579.5, 8623.18, 1871.61, 4.72247, 0, 0, 0, 8, 0),
(124158, 25, 0, 0, 124686, -10578.9, 8676.86, 1871.62, 4.71964, 0, 0, 0, 8, 0),
(124158, 26, 0, 0, 124686, -10581.3, 8587.83, 1871.84, 4.73761, 0, 0, 0, 8, 0),
(124158, 27, 0, 0, 124686, -10576.4, 8601.29, 1871.62, 4.71305, 0, 0, 0, 8, 0),
(124158, 28, 0, 0, 124686, -10573.1, 8681.39, 1871.78, 4.70448, 0, 0, 0, 8, 0),
(124158, 29, 0, 0, 124686, -10572.4, 8623.89, 1871.61, 4.70751, 0, 0, 0, 8, 0),
(124158, 30, 0, 0, 124686, -10567.3, 8629.06, 1871.61, 4.74592, 0, 0, 0, 8, 0),
(124158, 31, 0, 0, 124686, -10579.6, 8662.1, 1871.62, 4.72178, 0, 0, 0, 8, 0),
(124158, 32, 0, 0, 124686, -10574.5, 8610.7, 1871.61, 4.71779, 0, 0, 0, 8, 0),
(124158, 33, 0, 0, 124686, -10582.8, 8608.17, 1871.62, 4.73992, 0, 0, 0, 8, 0),
(124158, 34, 0, 0, 124686, -10583.6, 8673.48, 1872.07, 4.73215, 0, 0, 0, 8, 0),
(124158, 35, 0, 0, 124686, -10570.5, 8644.59, 1871.61, 4.73635, 0, 0, 0, 8, 0),
(124158, 36, 0, 0, 124686, -10571.5, 8686.99, 1871.64, 4.70036, 0, 0, 0, 8, 0),
(124158, 37, 0, 0, 124686, -10568.8, 8669.25, 1871.62, 4.69274, 0, 0, 0, 8, 0),
(124158, 38, 0, 0, 124686, -10574.1, 8634.14, 1871.61, 4.70187, 0, 0, 0, 8, 0),
(124158, 39, 0, 0, 124686, -10583.4, 8602.47, 1871.62, 4.7298, 0, 0, 0, 8, 0),
(124158, 40, 0, 0, 124686, -10575.9, 8617.28, 1871.61, 4.71436, 0, 0, 0, 8, 0),
(124158, 41, 0, 0, 124686, -10575.7, 8629.85, 1871.61, 4.72247, 0, 0, 0, 8, 0),
(124158, 42, 0, 0, 124686, -10583, 8595.97, 1871.62, 4.73818, 0, 0, 0, 8, 0);

delete from waypoint_data_script where id in (12415800,12415801);
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `move_flag`, `speed`) VALUES
(12415800, 1, -10574.5, 8689.31, 1871.55, 1, 20),
(12415800, 2, -10574, 8676.3, 1881.11, 1, 20),
(12415800, 3, -10579.6, 8643.87, 1881.11, 1, 20),
(12415800, 4, -10578.0, 8618.08, 1881.11, 1, 20),
(12415800, 5, -10574.4, 8575.49, 1881.11, 1, 20),
(12415800, 6, -10574.1, 8545.04, 1881.11, 1, 20),
(12415800, 7, -10575.3, 8533.7, 1871.54, 1, 20),
--
(12415801, 1, -10574.7, 8563.94, 1871.53, 1, 20),
(12415801, 2, -10574.6, 8575.29, 1883.22, 1, 20),
(12415801, 3, -10578.9, 8614.04, 1883.17, 1, 20),
(12415801, 4, -10574.9, 8651.76, 1882.66, 1, 20),
(12415801, 5, -10574.9, 8679.75, 1881.98, 1, 20),
(12415801, 6, -10574.8, 8704.43, 1881.15, 1, 20),
(12415801, 7, -10574.6, 8722.32, 1871.56, 1, 20);

delete from creature_difficulty_stat where entry = 124158;
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(124158, 14, 1, 1851.48),
(124158, 15, 1, 2314.34),
(124158, 16, 1, 6784.5),
(124158, 17, 1, 1666.33);

delete from creature_text where entry = 124158;
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(124158, 0, 0, 'Your bones will be my biggest payday.', 14, 0, 100, 0, 0, 86524, 134780, 0, 0, 0, 'AGGRO_1'),
(124158, 0, 1, 'Your heads will adorn my trophy room.', 14, 0, 100, 0, 0, 86382, 133840, 0, 0, 0, 'AGGRO_2'),
(124158, 0, 2, 'Think I\'ll keep a few of your parts as a trophy.', 14, 0, 100, 0, 0, 86523, 134779, 0, 0, 0, 'AGGRO_3'),
(124158, 1, 0, 'WARN_SLEEP_CANISTER', 42, 0, 100, 0, 0, 0, 137717, 0, 0, 0, 'WARN_SLEEP_CANISTER'),
(124158, 2, 0, 'Stay down!', 14, 0, 100, 0, 0, 86380, 134403, 0, 0, 0, 'SLEEP_CANISTER_1'),
(124158, 2, 1, 'I\'ll collect you later.', 14, 0, 100, 0, 0, 86381, 134404, 0, 0, 0, 'SLEEP_CANISTER_2'),
(124158, 2, 2, 'Sweet dreams.', 14, 0, 100, 0, 0, 86379, 134402, 0, 0, 0, 'SLEEP_CANISTER_3'),
(124158, 3, 0, 'Don\'t need a complete corpse to collect the bounty. A few pieces will do.', 14, 0, 100, 0, 0, 86373, 134408, 0, 0, 0, 'CHARGED_BLASTS_1'),
(124158, 3, 1, 'You\'ve got nowhere to run.', 14, 0, 100, 0, 0, 86375, 134440, 0, 0, 0, 'CHARGED_BLASTS_2'),
(124158, 3, 2, 'Try to keep your identifiable parts intact.', 14, 0, 100, 0, 0, 86374, 134409, 0, 0, 0, 'CHARGED_BLASTS_3'),
(124158, 4, 0, 'Bombard this area!', 14, 0, 100, 0, 0, 86378, 134456, 0, 0, 0, 'EMPOWERED_SHRAPNEL_BLAST_1'),
(124158, 4, 1, 'Fire on my position!', 14, 0, 100, 0, 0, 86377, 134455, 0, 0, 0, 'EMPOWERED_SHRAPNEL_BLAST_2'),
(124158, 4, 2, 'Looks like I\'ll have to call in the big guns.', 14, 0, 100, 0, 0, 86376, 134441, 0, 0, 0, 'EMPOWERED_SHRAPNEL_BLAST_3'),
(124158, 5, 0, 'Time for a little carnage!', 14, 0, 100, 0, 0, 86386, 134406, 0, 0, 0, 'CHANGE_PHASE_1'),
(124158, 6, 0, 'You\'re not going to make it out of this alive!', 14, 0, 100, 0, 0, 86390, 134461, 0, 0, 0, 'CHANGE_PHASE_2'),
(124158, 7, 0, 'You\'ve got to be faster than that, mortals!', 14, 0, 100, 0, 0, 86387, 134407, 0, 0, 0, 'CHANGE_PHASE_3'),
(124158, 8, 0, 'The more you fight, the higher the bounty!', 14, 0, 100, 0, 0, 86388, 134457, 0, 0, 0, 'CHANGE_PHASE_4'),
(124158, 9, 0, 'I regret... taking... this job...', 14, 0, 100, 0, 0, 86384, 133864, 0, 0, 0, 'DEATH');

