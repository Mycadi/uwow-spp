-- Neltarion lair

-- if plr has q -> true
replace into `conditions`(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(16, 0, 103597, 0, 0, 9, 0, 41857, 0, 0, 0, 0, '', 'if plr has q -> true (Glazzer)');

-- HP bosses, tresh, summons  bosses
replace into creature_difficulty_stat(entry, difficulty, dmg_multiplier, HealthModifier) VALUES 
(91003, 8, 1, 99.816), (91003, 23, 1, 99.816),
(91004, 8, 1, 99.816), (91004, 23, 1, 99.816),
(91005, 8, 1, 99.816), (91005, 23, 1, 99.816),
(91007, 8, 1, 105.519), (91007, 23, 1, 105.519),

(98406, 8, 1, 14.259), (98406, 23, 1, 14.259),
(96247, 8, 1, 4.936), (96247, 23, 1, 4.936),
(91006, 8, 1, 14.259), (91006, 23, 1, 14.259),
(91001, 8, 1, 14.259), (91001, 23, 1, 14.259),
(101438, 8, 1, 14.259), (101438, 23, 1, 14.259),
(91000, 8, 1, 22.815), (91000, 23, 1, 22.815),
(105636, 8, 1, 14.259), (105636, 23, 1, 14.259),
(105720, 8, 1, 14.259), (105720, 23, 1, 14.259),
(92610, 8, 1, 8.556), (92610, 23, 1, 8.556),
(103597, 8, 1, 14.259), (103597, 23, 1, 14.259),
(90997, 8, 1, 14.259), (90997, 23, 1, 14.259),
(91008, 8, 1, 14.259), (91008, 23, 1, 14.259),
(92387, 8, 1, 2.852), (92387, 23, 1, 2.852),
(91332, 8, 1, 14.259), (91332, 23, 1, 14.259),
(90998, 8, 1, 14.259), (90998, 23, 1, 14.259),
(101437, 8, 1, 1.141), (101437, 23, 1, 1.141),
(102404, 8, 1, 14.259), (102404, 23, 1, 14.259),
(102430, 8, 1, 2.194), (102430, 23, 1, 2.194),
(102253, 8, 1, 14.259), (102253, 23, 1, 14.259),
(113537, 8, 1, 23.602), (113537, 23, 1, 23.602),
(102232, 8, 1, 14.259), (102232, 23, 1, 14.259),
(103459, 8, 1, 2.852), (103459, 23, 1, 2.852),
(102287, 8, 1, 23.602), (102287, 23, 1, 23.602),
(102295, 8, 1, 14.259), (102295, 23, 1, 14.259),
(113536, 8, 1, 14.259), (113536, 23, 1, 14.259),

(92612, 8, 1, 14.259), (92612, 23, 1, 14.259);

-- update say
update creature_text set Text = 'Порвать их в клочья!', Sound = 60773, BroadcastTextID = 104586, MinTimer = 6631, MaxTimer = 6631, `comment` = 'Углепанцирный подчинитель' 
where Entry = 102295;

-- set full immune
update creature_template set mechanic_immune_mask = 617299711 where entry in 
(92387);

-- set full immune - mechanic_immune_stun - mechanic_immune_root
update creature_template set mechanic_immune_mask = 617297599 where entry in 
(91000);

-- set immune for knock effect
UPDATE `creature_template` SET `flags_extra` = 8192 WHERE `entry` in 
(92387);

-- levels bosses, elite mobs
UPDATE `creature_template` SET `minlevel` = 112, `maxlevel` = 112, `ScaleLevelMax` = 112, `ScaleLevelDuration` = 2000,  `ScaleLevelDelta` = 0 WHERE `entry` = 91003;
UPDATE `creature_template` SET `minlevel` = 112, `maxlevel` = 112, `ScaleLevelMax` = 112, `ScaleLevelDuration` = 2000,  `ScaleLevelDelta` = 0 WHERE `entry` = 91004;
UPDATE `creature_template` SET `minlevel` = 112, `maxlevel` = 112, `ScaleLevelMax` = 112, `ScaleLevelDuration` = 2000,  `ScaleLevelDelta` = 0 WHERE `entry` = 91005;
UPDATE `creature_template` SET `minlevel` = 112, `maxlevel` = 112, `ScaleLevelMax` = 112, `ScaleLevelDuration` = 2000,  `ScaleLevelDelta` = 0 WHERE `entry` = 91007;

UPDATE `creature_template` SET `minlevel` = 111, `maxlevel` = 111, `ScaleLevelMax` = 111, `ScaleLevelDuration` = 1000,  `ScaleLevelDelta` = 0 WHERE `entry` = 91000;
UPDATE `creature_template` SET `minlevel` = 111, `maxlevel` = 111, `ScaleLevelMax` = 111, `ScaleLevelDuration` = 1000,  `ScaleLevelDelta` = 0 WHERE `entry` = 102287;
UPDATE `creature_template` SET `minlevel` = 111, `maxlevel` = 111, `ScaleLevelMax` = 111, `ScaleLevelDuration` = 1000,  `ScaleLevelDelta` = 0 WHERE `entry` = 113537;

-- update vehicle_template_accessory
UPDATE `vehicle_template_accessory` SET `minion` = 0 WHERE `EntryOrAura` = 113742 AND `seat_id` = 0;

-- spells
delete from spell_linked_spell where spell_trigger = 183526 and spell_effect = 183527;
delete from spell_linked_spell where spell_trigger = 183548 and spell_effect = 183554;
replace into `spell_linked_spell`(`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `effectMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `param`, `randList`, `comment`) VALUES 
(183433, 183430, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, '', 'NL, spell on NPC 91001 (Glazzer)'),
(183526, 183527, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, '', 'NL, spell on NPC 92610 (Glazzer)');

delete from spell_dummy_trigger where spell_id = 183527 and spell_trigger = 183528;
delete from spell_dummy_trigger where spell_id = 183548 and spell_trigger = 183554;
replace into spell_dummy_trigger (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES 
(183527, 183528, 5, 4, 0, 0, 0, 0, 0, 7, 8, 0, 0, 'spell on NPC 92610 (Glazzer)'),
(183548, 183554, 5, 4, 0, 0, 0, 0, 0, 7, 8, 0, 0, 'spell on NPC 102404 (Glazzer)');

-- AT
replace into `areatrigger_actions`(`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES 
(8681, 0, 0, 1, 0, 10, 226388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rancid_ooze_Apply (Glazzer)'),
(8681, 0, 1, 42, 1, 10, 226388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rancid_ooze_Remove (Glazzer)'),

(4100, 0, 0, 1, 0, 10, 183566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rancid_pool_Apply (Glazzer)'),
(4100, 0, 1, 42, 1, 10, 183566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'rancid_pool_Remove (Glazzer)');

-- update ScriptName
update creature_template set ScriptName = 'npc_nl_tarspitter_lurker', AIName = '' where entry = 91001;
update creature_template set ScriptName = 'npc_nl_vileshard_hulk', AIName = '' where entry = 91000;
update creature_template set ScriptName = 'npc_nl_understone_drummer', AIName = '' where entry = 92610;
update creature_template set ScriptName = 'npc_nl_understone_demolisher', AIName = '' where entry = 102253;
update creature_template set ScriptName = 'npc_emberhusk_dominator', AIName = '' where entry = 102287;
update creature_template set ScriptName = 'npc_emberhusk_dominator', AIName = '' where entry = 102295;

-- update creature AIName
update `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` in 
(96247, 98406, 101438, 90997, 91008, 91332, 91006, 90998, 102404, 91002, 101437, 92538, 102232, 92612);

-- smart_scripts
delete from smart_scripts where entryorguid in 
(96247, 98406, 101438, 90997, 91008, 91332, 91006, 90998, 102404, 91002, 101437, 92538, 102232, 92612);
replace into `smart_scripts`(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(96247, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 183401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NL, castOnDead (Glazzer)'),

(98406, 0, 0, 0, 0, 0, 100, 0, 7000, 8000, 17000, 17000, 11, 193941, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 17s (Glazzer)'),

(101438, 0, 0, 1, 0, 0, 100, 0, 3000, 3000, 20000, 20000, 8, 0, 1, 3500, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, setReactPassive 3.5s (Glazzer)'),
(101438, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 226287, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, castSpell (Glazzer)'),

(90997, 0, 0, 1, 0, 0, 100, 0, 7000, 7000, 17000, 17000, 8, 0, 1, 3500, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, setReactPassive 3.5s (Glazzer)'),
(90997, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 183088, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, castSpell (Glazzer)'),

(91008, 0, 0, 0, 0, 0, 100, 0, 500, 500, 1500, 1500, 11, 183633, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 2s (Glazzer)'),
(91008, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, autoAttack_Disable (Glazzer)'),

(91332, 0, 0, 0, 1, 0, 100, 257, 0, 0, 0, 0, 12, 91006, 6, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, summonPet (Glazzer)'),
(91332, 0, 1, 0, 0, 0, 100, 0, 500, 500, 20000, 20000, 11, 202198, 0, 0, 0, 0, 0, 19, 91006, 20, 0, 0, 0, 0, 0, 'NL, buffPet (Glazzer)'),
(91332, 0, 2, 0, 0, 0, 100, 0, 4000, 4000, 10000, 11000, 11, 226347, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 10s (Glazzer)'),
(91332, 0, 3, 0, 38, 0, 100, 0, 1, 1, 5000, 5000, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NL, if getData -> say (Glazzer)'),

(91006, 0, 0, 0, 1, 0, 100, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 'NL, moveToSummoner (Glazzer)'),
(91006, 0, 1, 0, 0, 0, 100, 0, 7000, 7000, 15000, 19000, 11, 193639, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 15s (Glazzer)'),
(91006, 0, 2, 3, 23, 0, 100, 0, 202198, 1, 0, 0, 11, 202181, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'NL, if has aura -> castSpell (Glazzer)'),
(91006, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 91332, 20, 0, 0, 0, 0, 0, 'NL, if has aura -> setData (Glazzer)'),

(90998, 0, 0, 0, 0, 0, 100, 0, 500, 500, 4000, 4000, 11, 186269, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 4s (Glazzer)'),
(90998, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 46000, 46000, 11, 202108, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 46s (Glazzer)'),

(102404, 0, 0, 0, 0, 0, 100, 0, 7000, 7000, 12000, 15000, 11, 202230, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 12s (Glazzer)'),
(102404, 0, 1, 0, 0, 0, 100, 0, 3000, 4000, 9000, 12000, 11, 226347, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 9s (Glazzer)'),
(102404, 0, 2, 0, 0, 0, 100, 0, 10000, 11000, 30000, 31000, 11, 183548, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 30s (Glazzer)'),

(101437, 0, 0, 0, 0, 0, 100, 0, 500, 500, 11000, 11000, 11, 202075, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 11s (Glazzer)'),

(91002, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, if respawn -> stopMove'),
(91002, 0, 1, 0, 0, 0, 100, 0, 6000, 7000, 6000, 7000, 11, 183539, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 6s (Glazzer)'),
(91002, 0, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'NL, attackStart (Glazzer)'),

(92538, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NL, combatStart (Glazzer)'),
(92538, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 'NL, attackStart (Glazzer)'),
(92538, 0, 2, 3, 11, 0, 100, 0, 0, 0, 0, 0, 11, 193803, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, P0, if respawn -> castSpell (Glazzer)'),
(92538, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'NL, P0, switch phase_1 (Glazzer)'),
(92538, 0, 4, 0, 0, 1, 100, 0, 12000, 12000, 20000, 20000, 11, 193803, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, P1, cast every 20s (Glazzer)'),
(92538, 0, 5, 0, 7, 1, 100, 0, 0, 0, 0, 0, 41, 1000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, P1, if evade -> despawn (Glazzer)'),

(102232, 0, 0, 0, 0, 0, 100, 0, 500, 500, 2000, 2000, 11, 183633, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 2s (Glazzer)'),
(102232, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 21000, 25000, 11, 193585, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'NL, cast every 21s (Glazzer)'),

(92612, 0, 0, 1, 0, 0, 100, 0, 16000, 16000, 17000, 17000, 8, 0, 1, 3500, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, setReactPassive 3.5s (Glazzer)'),
(92612, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 183088, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, castSpell (Glazzer)'),
(92612, 0, 2, 0, 1, 0, 100, 1, 0, 0, 0, 0, 11, 86319, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, castSpell_OOC (Glazzer)'),
(92612, 0, 3, 0, 0, 0, 100, 1, 0, 0, 0, 0, 11, 86319, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'NL, castSpell_IC (Glazzer)'),
(92612, 0, 4, 5, 1, 0, 100, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 'NL, selectTargetForAttack (Glazzer)');
-- 14.01
update creature set spawnMask = 8388614 where id = 103597 and map = 1458;