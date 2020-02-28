replace INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
('13', '1', '222192', '0', '0', '31', '0', '3', '111581', '0', '0', '0', '', ''),
('13', '1', '222200', '0', '0', '31', '0', '3', '111581', '0', '0', '0', '', ''),
('13', '1', '222200', '0', '0', '35', '0', '1', '10', '1', '0', '0', '', '');
UPDATE `creature_template` SET  `InhabitType`='7' WHERE `entry` IN (103725, 111581);

REPLACE INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(101002, 0, 0, 'Идите сюда! Смерть ждет вас!', 14, 0, 100, 0, 0, 58449, 0, 'Крос to 0'),
(101002, 1, 0, 'Я выжгу отвагу из ваших душ!', 14, 0, 100, 0, 0, 58453, 0, 'Крос to Player'),
(101002, 2, 0, '|TInterface\\Icons\\Spell_Fire_FelFlameStrike:20|t Крос выбирает |cFFFF0404|3-3($n)|r целью заклинания |cFFFF0404|Hspell:205344|h["Сфера разрушения"]|h|r!', 41, 0, 100, 0, 0, 58453, 0, 'Крос to Player'),
(101002, 3, 0, 'Я сотру вас с лица земли...', 14, 0, 100, 0, 0, 58460, 0, 'Крос to 0'),
(101002, 4, 0, 'Я сотру вас в пыль!', 14, 0, 100, 0, 0, 58459, 0, 'Крос to 0'),
(101002, 5, 0, 'Обратитесь в прах!', 14, 0, 100, 0, 0, 58454, 0, 'Крос to Player'),
(101002, 6, 0, 'Я сокрушу ваш мир!', 14, 0, 100, 0, 0, 58458, 0, 'Крос to 0'),
(101002, 7, 0, '|TInterface\\Icons\\Spell_Holy_FistOfJustice:20|t Крос собирается уничтожить мост, применив |cFFFF0404|Hspell:205875|h[мощный удар]|h|r!', 41, 0, 100, 0, 0, 58458, 0, 'Крос to 0'),
(101002, 8, 0, 'Испытайте агонию!', 14, 0, 100, 0, 0, 58452, 0, 'Крос to Player'),
(101002, 9, 0, 'Я разрушу ваши надежды!', 14, 0, 100, 0, 0, 58455, 0, 'Крос to 0'),
(101002, 10, 0, 'Весь ваш мир сгорит!', 14, 0, 100, 0, 0, 58457, 0, 'Крос to Player'),
(101002, 11, 0, 'Азерот... должен... сгореть...', 14, 0, 100, 0, 0, 58456, 0, 'Крос to Player');

DELETE FROM gameobject WHERE `id` in (247970, 247971, 247972, 247973);
INSERT IGNORE INTO gameobject (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `AiID`) VALUES
(247970, 1530, 0, 0, 245760, '0', -34.88195, 2830.159, -80.3633, 3.665196, 2.648454E-43, 0, 0, 0, 7200, 255, 1, 0), -- 247970 (Area: 8025)
(247971, 1530, 0, 0, 245760, '0', -34.88195, 2830.159, -80.3633, 3.665196, 2.67648E-43, 0, 0, 0, 7200, 255, 1, 0), -- 247971 (Area: 8025)
(247972, 1530, 0, 0, 245760, '0', -34.88195, 2830.159, -80.3633, 3.665196, 2.662467E-43, 0, 0, 0, 7200, 255, 1, 0), -- 247972 (Area: 8025)
(247973, 1530, 0, 0, 245760, '0', -34.88195, 2830.159, -80.3633, 3.665196, 2.690493E-43, 0, 0, 0, 7200, 255, 1, 0); -- 247973 (Area: 8025)

DELETE FROM creature_template_addon WHERE `entry` in (101002);

DELETE FROM creature WHERE `id` in (101002, 103725);
INSERT INTO creature (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`) VALUES
(101002, 1530, 0, 0, 245760, 1, '0', 0, 0, -124.0191, 2779.478, 3.742909, 0.5137269, 604800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 101002 (Area: 8388)
(103725, 1530, 0, 0, 245760, 1, '0', 0, 0, -107.5851, 2776.3, 4.62847, 0.5235988, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0), -- 103725 (Area: -1) (possible waypoints or random movement)
(103725, 1530, 0, 0, 245760, 1, '0', 0, 0, -117.9236, 2793.97, 4.62847, 0.5235988, 300, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0); -- 103725 (Area: -1) (possible waypoints or random movement)

UPDATE `creature_template` SET lootid = 0, `VehicleId`=5350, `ScriptName`="boss_krosus", mechanic_immune_mask = 617299967, flags_extra = 1537 WHERE `entry`="101002";
UPDATE `creature_template` SET `ScriptName`="npc_night_hold_chaos_mage_beleron" WHERE `entry`="111225";
UPDATE `creature_template` SET `ScriptName`="npc_night_hold_summoner_xiv" WHERE `entry`="111226";
UPDATE `creature_template` SET `ScriptName`="npc_night_hold_felweaver_pharamere" WHERE `entry`="111227";
UPDATE `creature_template` SET `ScriptName`="npc_night_hold_flame_core" WHERE `entry`="111581";
UPDATE `creature_template` SET `ScriptName`="npc_krosus_fel_beam_caster" WHERE `entry`="103725";

UPDATE `creature_template` SET `exp`=6, `MinLevel`=111, `MaxLevel`=111, `faction`=14, `speed_run`=1.142857, `speed_walk`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=4, `unit_flags`=0, `unit_flags2`=2097152, `unit_flags3`=0, `VehicleId`=4801, `HoverHeight`=1, `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3, `ScriptName`="npc_krosus_burning_ember" WHERE `entry`=104262;

UPDATE `creature_template_wdb` SET classification = 3 WHERE `entry`="101002";

DELETE FROM `spell_script_names` WHERE `spell_id` in (205348, 206280, 205391);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(205348, 'spell_krosus_orb_of_destruction_dmg'),
(206280, 'spell_krosus_burning_pitch'),
(205391, 'spell_krosus_fel_beam');

delete from creature_loot_template where entry = 101002;
