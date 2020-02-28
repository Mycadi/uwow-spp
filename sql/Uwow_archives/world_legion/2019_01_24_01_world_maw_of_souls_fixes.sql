update creature_template set unit_flags = 0, flags_extra = 0 where entry = 114712;
update creature_template set mechanic_immune_mask = 617299967 where entry in (98246,99801,98363,100362,100360,100354,100188);
update creature_template set affix_state = 32 where entry in (99801,98363,100362,100360,100354,100188);
UPDATE `spell_scene` SET `SceneScriptPackageID`='1686' WHERE (`SceneScriptPackageID`='533') AND (`MiscValue`='1086');

update areatrigger_template set RadiusTarget = 4 where entry = 5077;
update areatrigger_actions set targetFlags = 8 where entry = 5077;

delete from areatrigger_data where entry in (5077);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES
(5077, 194232, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0);

delete from areatrigger_actions where entry in (5077);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `scaleVisualUpdate`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(5077, 9799, 0, 5, 0, 8, 194235, 0, -194235, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Nether Rip - Apply'),
(5077, 9799, 1, 42, 1, 8, 194235, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Nether Rip - Remove');

delete from spell_script_names where spell_id in (202098);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(202098, 'spell_helya_brackwater_barrage_filter');

REPLACE INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) VALUES
(96759, 10, 0, 'Stop squirming!', 14, 0, 100, 0, 0, 54402, 102220, 0, 0, 0, 'SUBMERGED');

-- ****************************************************************************************
-- Корректировка заселения
delete from creature where id in (102327, 98291);

-- удаляем лишнее
delete from `spell_dummy_trigger` where `spell_id` = 202408 and `spell_trigger` = 199087;
delete from `spell_dummy_trigger` where `spell_id` = 194442 and `spell_trigger` = 194443;
delete from `spell_aura_trigger` where `spell_id` = 195031 and `spell_trigger` = 195036;

-- Чтобы спелка ваншотила только птичек
delete from conditions where SourceEntry = 224473 and ConditionValue2 = 97163;
replace into `conditions`(`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 224473, 0, 0, 31, 0, 3, 97163, 0, 0, 0, '', 'True only for creatures');

-- AT
delete from areatrigger_actions where entry in (5069, 5748, 5095);
replace into `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `scaleVisualUpdate`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) values
(5069, 0, 0, 1, 0, 8, 194102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Poisonous sludge - apply'),
(5069, 0, 1, 42, 1, 8, 194102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Poisonous sludge - remove'),
(5069, 0, 2, 1024, 4, 32, 194102, 0, 0, 0, 0, 0, 0, 0.05, 0, 0, 1, 0, 0, 0, 0, 0, 'Poisonous sludge - updateScale'),

(5748, 0, 0, 1, 0, 8, 201566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Swirling muck - Apply'),
(5748, 0, 1, 42, 1, 0, 201566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Swirling muck - Remove'),

(5095, 0, 0, 1, 0, 8, 194443, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Six pound barrel - Damage');

delete from areatrigger_data where entry in (5069, 5095);
replace into `areatrigger_data`(`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) values
(5069, 194102, 0, 0, 0, 0, 0, 800, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0),

(5095, 194442, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0); 

-- updates
update `creature_template` set `scale` = 0.7, unit_flags = unit_flags | 33554432, AffixState = 16384 where `entry` = 102326;
update `creature_template` set `AIName` = '', `ScriptName` = 'npc_mos_seacursed_swiftblade' where `entry` = 98919;
update `creature_template` set `AIName` = '', `ScriptName` = 'npc_mos_helarjar_mistcaller' where `entry` = 99033;
update `creature_template` set `AIName` = '', `ScriptName` = 'npc_mos_seacursed_mistmender' where `entry` = 97365;
update `creature_template` set `AIName` = '', `ScriptName` = 'npc_mos_runecarver_slave' where `entry` = 102375;
update `creature_template` set `AIName` = '', `ScriptName` = 'npc_mos_seacursed_soulkeeper' where `entry` = 97200;
update `areatrigger_template` set `Speed` = 2 where `entry` = 5095 and `customEntry` = 9817;

-- update spell_script_names
replace into `spell_script_names`(`spell_id`, `ScriptName`) values
(199514, 'spell_torrent_of_souls'),
(194640, 'spell_mos_curse_of_hope'),
(195031, 'spell_mos_defiant_strike');

-- set full immune
update creature_template set mechanic_immune_mask = 617299711 where entry in 
(97097, 97185, 97182, 97200);
update `creature_template` set `flags_extra` = 8192 where `entry` in 
(97097, 97185, 97182, 97200);

-- full immune - MECHANIC_SILENCE - MECHANIC_INTERRUPT
update creature_template set mechanic_immune_mask = mechanic_immune_mask &~ 33554688 where entry in
(97097);

-- Добавляем недостающие диалоги
replace into `creature_text`(`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `MinTimer`, `MaxTimer`, `SpellID`, `comment`) values 
(102104, 0, 0, 'Можешь отнять мою душу, но мою волю тебе не сломить!', 14, 0, 100, 0, 0, 0, 100493, 10453, 10453, 0, 'Пленная дева щита to Проклятый морем рабовладелец');

update creature_template set AIName = 'SmartAI' where entry in 
(102104, 97163, 97119, 97097, 97185, 99188);
delete from smart_scripts where entryorguid in 
(102104, 97163, 97119, 97097, 97185, 98919, 99033, 97365, 102375, 99188, 97200);
replace into `smart_scripts`(`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
(102104, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 5000, 7000, 11, 198944, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 5s'),
(102104, 0, 1, 0, 0, 0, 100, 0, 9000, 9000, 11000, 11000, 11, 199061, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 11s'),

(97163, 0, 0, 0, 0, 0, 100, 0, 5000, 6000, 8000, 10000, 11, 199185, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 8s'),

(97119, 0, 0, 0, 0, 0, 100, 0, 3000, 7000, 6000, 8000, 11, 194506, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 6s'),

(97097, 0, 0, 0, 0, 0, 100, 0, 11000, 12000, 17000, 20000, 11, 194663, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 17s'),
(97097, 0, 1, 0, 0, 0, 100, 0, 17000, 18000, 17000, 20000, 11, 198405, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 17s'),

(97185, 0, 0, 1, 0, 0, 100, 0, 7000, 8000, 15000, 16000, 8, 0, 1, 3600, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'MoS, setReact(Passive) 3.6s'),
(97185, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 194099, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'MoS, castSpell'),
(97185, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 7000, 7000, 11, 194106, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 7s'),
(97185, 0, 3, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 115905, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'MoS, on dead -> castSpell'),
(97185, 0, 4, 0, 7, 0, 100, 0, 0, 0, 0, 0, 11, 115905, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'MoS, if evade -> castSpell'),

(97182, 0, 0, 0, 0, 0, 100, 0, 4000, 5000, 16000, 17000, 11, 192019, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 16s'),
(97182, 0, 1, 0, 0, 0, 100, 0, 15000, 15000, 16000, 16000, 11, 195279, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 16s'),
(97182, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 11, 18950, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'MoS, buffSelfDetectInvision'),

(99188, 0, 0, 0, 0, 0, 100, 0, 4000, 5000, 12000, 15000, 11, 194442, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 12s'),
(99188, 0, 1, 0, 0, 0, 100, 0, 9000, 10000, 22000, 23000, 11, 194640, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 23s'),
(99188, 0, 2, 0, 0, 0, 100, 0, 12000, 13000, 18000, 20000, 11, 194657, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 'MoS, cast every 18s');