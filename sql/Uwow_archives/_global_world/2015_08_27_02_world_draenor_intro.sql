/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

REPLACE INTO `world_visible_distance` (`type`, `id`, `distance`, `comment`) VALUES ('0', '1265', '500', 'Dark Portal');

-- Permanent Feign Death
DELETE FROM creature_template_addon WHERE entry in (SELECT id FROM `creature` WHERE guid in (SELECT guid FROM `creature_addon` WHERE `auras` LIKE '%29266%'));
UPDATE creature_template SET `unit_flags` = `unit_flags` & ~(256 | 512 | 262144 | 536870912), unit_flags2 = unit_flags2 &~1 where entry in (SELECT id FROM `creature` WHERE guid in (SELECT guid FROM `creature_addon` WHERE `auras` LIKE '%29266%'));

DELETE FROM creature_template_addon WHERE entry in (SELECT id FROM `creature` WHERE guid in (SELECT guid FROM `creature_addon` WHERE `auras` LIKE '%96733%'));
UPDATE creature_template SET `unit_flags` = `unit_flags` & ~(256 | 512 | 262144 | 536870912), unit_flags2 = unit_flags2 &~1 where entry in (SELECT id FROM `creature` WHERE guid in (SELECT guid FROM `creature_addon` WHERE `auras` LIKE '%96733%'));

UPDATE `creature_template` SET `unit_flags2` = '2048', `unit_flags` = `unit_flags` &~ (256 | 512 | 262144 | 536870912)  WHERE `creature_template`.`entry` = 78507;

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 23 AND SourceGroup = 4;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, 4, 1, 0, 0, 1, 0, 176111, 0, 0, 1, 0, '', 'DARK_PORTAL_WOD no time back aura'),
(23, 4, 1, 0, 0, 27, 0, 89, 1, 0, 0, 0, '', 'DARK_PORTAL_WOD higher then 89'),
(23, 4, 2, 0, 0, 1, 0, 176111, 0, 0, 1, 0, '', 'DARK_PORTAL_WOD no time back aura'),
(23, 4, 3, 0, 0, 1, 0, 176111, 0, 0, 1, 0, '', 'DARK_PORTAL_WOD no time back aura');

-- Q36881 Q34398
INSERT IGNORE INTO `gameobject_queststarter` (`id`, `quest`) VALUES
(206109, 34398),
(206111, 34398),
(206116, 34398),
(206294, 34398),
(207320, 34398),
(207323, 34398);

UPDATE `creature_template` SET ScriptName = 'mob_wod_intro_enemy_at_portal', `AIName`='' WHERE `entry` in (78883, 81711);
--
INSERT IGNORE INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `RewardMailTemplateID`, `RewardMailDelay`, `RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES 
('36881', '0', '0', '0', '0', '0', '34398', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('34398', '0', '0', '0', '0', '0', '34398', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

UPDATE `creature_template` SET `gossip_menu_id`=16863, `exp`=4, `MinLevel`=90, `MaxLevel`=90, `faction`=35, `npcflag`=3, `speed_run`=0.9920629, `speed_walk`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=8, `unit_flags`=33024, `unit_flags2`=34816, `unit_flags3`=0, `dynamicflags`=0, `VehicleId`=0, `HoverHeight`=1 WHERE `entry`=78423;
UPDATE `creature_template` SET `gossip_menu_id`=16518, `exp`=4, `MinLevel`=90, `MaxLevel`=90, `faction`=2636, `npcflag`=4739, `speed_run`=1.142857, `speed_walk`=1, `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=33024, `unit_flags2`=34816, `unit_flags3`=0, `dynamicflags`=0, `VehicleId`=0, `HoverHeight`=1 WHERE `entry`=80521;
UPDATE `creature_template` SET `gossip_menu_id`=16641 WHERE entry = 78556;

DELETE FROM `gossip_menu` WHERE (`entry`=16376 AND `text_id`=23740) OR (`entry`=16863 AND `text_id`=24524) OR (`entry`=16641 AND `text_id`=24170) OR (`entry`=16428 AND `text_id`=23808) OR (`entry`=16858 AND `text_id`=24515) OR (`entry`=16433 AND `text_id`=23824) OR (`entry`=16518 AND `text_id`=23994);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(16376, 23740), -- 78559
(16863, 24524), -- 78423
(16641, 24170), -- 78556
(16428, 23808), -- 79316
(16858, 24515), -- 78563
(16433, 23824), -- 79675
(16518, 23994); -- 78568

ALTER TABLE `gossip_menu_option` CHANGE `option_id` `option_id` TINYINT(3) UNSIGNED NOT NULL DEFAULT '1';
ALTER TABLE `gossip_menu_option` CHANGE `npc_option_npcflag` `npc_option_npcflag` INT(10) UNSIGNED NOT NULL DEFAULT '1';

DELETE FROM `gossip_menu_option` WHERE (`menu_id`=16863 AND `id`=0) OR (`menu_id`=16641 AND `id`=0) OR (`menu_id`=16518 AND `id`=1) OR (`menu_id`=16518 AND `id`=0);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `box_coded`, `box_money`, `box_text`) VALUES
(16863, 0, 0, 'ЗА АЗЕРОТ!', 0, 0, 'Вы собираетесь отправиться на опасное задание и не сможете тотчас вернуться. Вы уверены?'), -- 78423
(16641, 0, 0, 'Кадгар попросил нас отвлечь внимание Ока Килрогга.', 0, 0, ''); -- 78556

REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`, `VerifiedBuild`) VALUES
(24524, 1, 0, 0, 0, 0, 0, 0, 0, 85996, 0, 0, 0, 0, 0, 0, 0, 19342);

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 15 AND SourceGroup = 16863;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
('15', '16863', '0', '0', '0', '9', '0', '34398', '0', '0', '0', '0', '', NULL),
('15', '16863', '0', '0', '1', '9', '0', '36881', '0', '0', '0', '0', '', NULL);

--
REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
('167771', '1265', '4066.5', '-2382.25', '94.8536', '1.570796');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=78423;
DELETE FROM smart_scripts WHERE entryorguid = 78423;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(78423, 0, 0, 0, 62, 0, 100, 0, 16863, 0, 0, 0, 11, 168956, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select cast movie'),
(78423, 0, 1, 0, 62, 0, 100, 0, 16863, 0, 0, 0, 11, 167771, 18, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At gossip select cast teleportation');

-- 3880 while not complete Q35933. but nothing linked whith it.
-- 3764 brake portal door. id 234622
-- 3948 new destroid portal. id 234623
-- 4150 crystal L id 236913
-- 4151 crystal R id 236914
-- 4143 Teron'gor Credit
-- 4142 Cho'gall Credit
-- 3248 - removed at complete Q34393
-- 3605 - for Q34392
-- 3569 - questers hide on 7 phase.
-- 3263 - 233906 for gate
-- 3264 - пак мобов тупо на фазу после сцены 621 которая пропадает сразу после принятия квеста.
-- custom phase mask 2 for HORDE 4222 - npc 81761, 78573 quest 35241 34421 HORDE
-- custom phase mask 4 for ALLIANCE 4221 -  npc 81763 81762 quest: 35242 35240 ALIANCE
-- 3209  - southeren cage A: 35240 & H:Q34421
-- 3210 - eastern cage A: 35240 & H:Q34421
-- 4011 - southeren complete something
-- 3911 - eastern complete something
-- 4011 - привал
-- 3394 3395 hide some for 34423 npc 78556
-- 3265 - orb - 83670 & npc = 81895 & 78830  & triger 81926
-- 3480 - old bridge 231137
-- 3481 - new bridge 231136
-- 4006 - new camp after finish Q34423
-- 3278 - 3 new npc for camp after finish quest Q: A:34478 H: 34427 
-- 3712 - finish door on arena
-- 3752 - завал.
-- 3790 - npc - 78561
-- 3267, 3720, 4015 - завал
-- 3330 -> 3356 npc movement to enother plase 79315, 79675
-- 3352 npc 78994 before take q34740
-- 3351 npc 78994 after complete/reward 
-- 4017 возможно трэшак в пещере
-- 4019 3594 3499 3498 3497 3268 - новое после телепорта на завале.
-- 4019 - это рабочие которые в квесте после завала получат оружие.
-- 3498 - после завала привальщики.
-- 3500 - это кадхар после обвала, который после сцены телепортирует к дамбе
-- 3824 дамба до взрыва - глобальное.
-- 3508 3551 после разрушения дамбы
-- 3579 маг после разрушения дампы и эффекта телепортации.
-- 3334 - гнар до спасения
-- 3581 - гнар после спасения
-- 3508 - npc 78568 q35747 hide at 80880 credit complete (3423 posible)
-- 3423 - видимо это горила для квевста q35747
-- 3604 - странная фаза то включаетсяя то выключается
-- 3519 - пульт управления танком го 232506, 232502, 232505
-- 3604 - инженер на танке 80521
-- 3833 - Корабли отьезда

REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `PreloadMapID`, `VisibleMapID`, `flags`, `comment`) VALUES 
('7025', '1', '0', '3248 3249 3250 3251 3263 3480 3563 3568 3605 3693 3712 3763 3764 3824 3833 3834 3880 3946 4142 4143 4200', '0', '0', '16', 'Draenor Dark Portal Intro'),
('7025', '2', '0', '', '0', '992', '0', 'Draenor Dark Portal Intro'),
('7025', '3', '0', '', '0', '683', '0', 'Draenor Dark Portal Intro'),
-- remove 3880 complete Q35933
('7025', '4', '0', '3248 3249 3250 3251 3263 3480 3563 3568 3605 3693 3712 3763 3764 3824 3833 3834 3946 4142 4143 4200', '0', '0', '16', 'DraenorIntro: Q34392 started'),
-- 3248 3249 3250 3251 3263 3480 3563 3568 3605 3693 3712 3764 3824 3833 3834 3947 4143 4150 4200 QuestID: 34392 ObjectID: 82606 remove 3605 Cho'gall Credit
-- 3248 3249 3250 3251 3263 3480 3563 3568 3605 3693 3712 3824 3833 3834 3948 4150 4151 4200 quest 34392 ObjectID: 82607 remove Teron'gor Credit
-- 3248 3249 3250 3251 3263 3480 3563 3568 3693 3712 3824 3833 3834 3948 4150 4151 4200 
('7025', '5', '0', '3248 3249 3250 3251 3263 3480 3563 3568 3693 3712 3824 3833 3834 3948 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34393 started'),
('7025', '6', '0', '3263 3480 3569 3604 3693 3712 3824 3833 3834 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34393 completed.'),
('7025', '7', '0', '3480 3604 3693 3712 3824 3833 3834 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34420 started or 34393 rewarded.'),
-- ServerToClient: SMSG_EXPLORATION_EXPERIENCE (0x0692) Length: 8 ConnIdx: 0 Time: 05/02/2015 09:00:32.000 Number: 88481 Area ID: 7041 (7041)
('7025', '8', '0', '3236 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34420 at SMSG_EXPLORATION_EXPERIENCE 7041'),
-- 
('7025', '9', '0', '3236 3264 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34420 at CMSG_SCENE_PLAYBACK_COMPLETE sceneID 621'),
--
('7025', '10', '0','3236 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34420 rewarded'),
--
('7025', '11', 2+1,'', '0', '0', '0', 'DraenorIntro: cunstom for horde after Q34420 rewarded'),
('7025', '12', 4+1,'', '0', '0', '0', 'DraenorIntro: custom for alliance Q34420 rewarded'),
-- Quest HORDE 34421 accept Quest Alliance 35240
('7025', '13', '0','3209 3210', '0', '0', '16', 'DraenorIntro: Q34421 take'),
--  easter cage
-- 					3209 3237 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 4150 4151 4200
-- 				    3209 3237 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 3911 4150 4151 4200
-- 					3209 3237 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 4150 4151 4200 

--
--					3209 3237 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 3911 4150 4151 4200

-- Southern cage
-- 					3237 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 3911 4150 4151 4200 
--					3237 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 3911 4011 4150 4151 4200 

-- tiger event Push of 770 : 3237 3265 3394 3395 3396 3480 3626 3655 3670 3693 3712 3794 3824 3833 3834 3856 3857 3911 4011 4150 4151 4200
('7025', '14', '0','4011', '0', '0', '16', 'DraenorIntro: at CMSG_SCENE_PLAYBACK_COMPLETE sceneID 770'), -- только привальные
('7025', '15', '0','3237 3265 3394 3395 3396 3480 3626 3655 3670 3693 3712 3794 3824 3833 3834 3856 3857 3911 4150 4151 4200', '0', '0', '16', 'DraenorIntro: at reward 34422'),
-- QuestID: 34423 -- ObjectID: 78556 speak with 78568 for start
-- 3237 3265 3394 3395 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 3911 4011 4150 4151 4200
-- 3237 3265 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 3911 4011 4150 4151 4200
-- QuestID: 34423 ObjectID: 78975
-- 3237 3396 3480 3626 3670 3693 3712 3794 3824 3833 3834 3856 3857 4150 4151 4200
-- Q34423 complete objective 273678 = 3
-- 3237 3266 3396 3414 3480 3582 3626 3693 3712 3794 3824 3833 3834 3856 3857 4006 4150 4151 4200
('7025', '16', '0','3237 3266 3394 3395 3396 3414 3480 3626 3693 3712 3794 3824 3833 3834 3856 3857 4006 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34423 complete objective 273678 = 3'),
-- 
('7025', '17', '0','3266 3394 3395 3396 3480 3693 3694 3712 3824 3833 3834 4006 4017 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34425'),
-- 
-- ClientToServer: CMSG_SCENE_TRIGGER_EVENT (0x0589) Length: 11 ConnIdx: 0 Time: 05/02/2015 09:20:33.000 Number: 105795
-- SceneInstanceID: 44
-- Event: Bridge
('7025', '18', '0','3266 3394 3395 3396 3481 3693 3694 3712 3824 3833 3834 4006 4017 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34425 after CMSG_SCENE_TRIGGER_EVENT Bridge'),
--
('7025', '19', '0','3266 3317 3349 3358 3359 3394 3395 3396 3416 3481 3693 3694 3712 3824 3833 3834 4006 4017 4150 4151 4200', '0', '0', '16', 'DraenorIntro: Q34425 complete & rewarded.'),
-- CMSG_SCENE_PLAYBACK_COMPLETE SceneInstanceID: 43 Ring of Fire Scene scene 
('7025', '20', '0','3266 3278 3317 3349 3350 3358 3359 3394 3395 3396 3416 3481 3693 3694 3712 3824 3833 3834 4006 4017 4150 4151 4200', '0', '0', '16', 'DraenorIntro: CMSG_SCENE_PLAYBACK_COMPLETE.'),
-- start Q34429 | 4200 4151 4150 4017 3834 3833 3824 3712 3481 3396 3395 3394 3359 3358 3350 3349 3317
('7025', '21', '0','3317 3349 3350 3358 3359 3394 3395 3396 3481 3712 3824 3833 3834 4017 4150 4151 4200', '0', '0', '16', 'DraenorIntro: start 34429'),
-- Q34429 complete objective 82066 = 99
('7025', '22', '0','3317 3349 3350 3358 3359 3394 3395 3396 3481 3692 3693 3824 3833 3834 4017 4150 4151 4200', '0', '0', '16', 'DraenorIntro: objectibe complet on q34429'),
-- after  complete 34429
('7025', '23', '0','3267 3317 3330 3394 3395 3396 3481 3693 3712 3720 3824 3833 3834 4015 4017 4150 4151 4200 3790', '0', '0', '16', 'DraenorIntro: q34429 complete'),
-- scent 48. trigger. gameobject - завалю
-- по хорошему это состоит из 2х фаз. Но лень делать. Тут просто по тригеру каст спела смены фазу идет, а вот по комплиту каста нет и у близов он в отложенном видимо методе или еще что.
-- так что ничего страшного, что моб этот будет висеть тут.
-- хотя я 3790 перенес на 23 фазу - так красивее :)
-- это можно держать или просто копипастьть все иды с офа. в любом случае будет правильно )
('7025', '24', '0','3752', '0', '0', '16', 'DraenorIntro: q34429 complete'),
-- after reward 34429
('7025', '25', '0','3267 3317 3334 3356 3394 3395 3396 3481 3693 3712 3720 3752 3790 3824 3833 3834 3936 4015 4017 4150 4151 4200', '0', '0', '16', 'DraenorIntro: q34429 rewarded'),
-- Q34740 at taking remove it. hide 78994 at take it.
('7025', '26', '0','3352', '0', '0', '16', 'DraenorIntro: before 34434, 34740'),
-- at 
('7025', '27', '0','3351', '0', '0', '16', 'DraenorIntro: after 34434, 34740'),
-- Q: 34741, 34436
('7025', '28', '0','3267 3317 3334 3394 3395 3396 3481 3693 3712 3720 3752 3790 3824 3833 3834 3936 4015 4017 4150 4151 4200', '0', '0', '16', 'DraenorIntro: q34741 34436'),
-- 
('7025', '29', '0','3268 3317 3334 3394 3395 3396 3481 3497 3498 3499 3693 3712 3752 3824 3833 3834 3936 4017 4019 4150 4151 4200', '0', '0', '16', 'DraenorIntro: q34436 q34741 completed'),
-- triger scene 801
-- 3317 3334 3394 3395 3396 3481 3498 3594 3693 3712 3752 3824 3833 3834 3936 4150 4151 4200 4019
('7025', '30', '0','3268 3317 3334 3394 3395 3396 3481 3497 3498 3499 3594 3693 3712 3752 3824 3833 3834 3936 4019 4150 4151 4200', '0', '0', '16', 'DraenorIntro: q34436 q34741 completed'),
--
('7025', '31', '0','3268 3334 3394 3395 3396 3481 3498 3499 3594 3597 3693 3712 3752 3824 3833 3834 3936 4150 4151 4200', '0', '0', '16', 'DraenorIntro: '),
--
('7025', '32', '0','3334 3394 3395 3396 3481 3498 3594 3693 3712 3752 3824 3833 3834 3936 4022 4150 4151 4200', '0', '0', '16', 'DraenorIntro: stsrt q34439'),
--
('7025', '33', '0','3500', '0', '0', '16', 'DraenorIntro: stsrt q34439 телепорт к платине мага'),
-- 3269 3334 3394 3395 3396 3481 3498 3594 3693 3712 3752 3833 3834 3936 4150 4151 4200 
-- 				   
('7025', '34', '0','3269 3334 3394 3395 3396 3423 3481 3498 3505 3594 3693 3712 3752 3833 3834 3936 4026 4150 4151 4200', '0', '0', '16', 'DraenorIntro: stsrt q34439 телепорт к платине мага'),
('7025', '35', '0','0', '1307', '0', '0', 'DraenorIntro: терран затопленная дамба.'),
-- 
('7025', '36', '0','3269 3334 3394 3395 3396 3423 3481 3498 3505 3551 3594 3693 3712 3752 3833 3834 3936 4026 4150 4151 4200', '0', '0', '16', 'DraenorIntro: stsrt q34442 start'),
--
('7025', '37', '0','3579', '0', '0', '0', 'DraenorIntro: после кадгара появления.'),
--  q 34437
('7025', '38', '0','3269 3394 3395 3396 3423 3481 3498 3505 3579 3581 3594 3693 3712 3752 3833 3834 3936 4026 4150 4151 4200', '0', '0', '16', 'DraenorIntro: stsrt q34437 start'),
--             
('7025', '39', '0','3508', '0', '0', '0', 'DraenorIntro: q35747 активно пока не реварт или 80880 обджект =1.'),
-- at obj = 80887
('7025', '40', '0','3269 3394 3395 3396 3481 3498 3542 3583 3604 3693 3712 3752 3833 3834 3936 4150 4151 4200', '0', '0', '16', 'DraenorIntro: stsrt q35747 o:80887 or reward'),
--
('7025', '41', '0','3519', '0', '0', '0', 'DraenorIntro: q35747 not non and non Q34445'),
-- complete or reward.
('7025', '42', '0','3394 3395 3396 3481 3498 3519 3583 3604 3693 3712 3752 3833 3834 3936 4028 4150 4151 4201', '0', '0', '16', 'DraenorIntro: q34445 complete or rew'),
--
('7025', '43', '0','3394 3395 3396 3481 3498 3693 3712 3752 3833 3834 3889 3936 4028 4072 4150 4151 4201', '0', '0', '16', 'DraenorIntro: q34446 35884 complete or scene complete'),
--
('7025', '44', '0','3394 3395 3396 3481 3498 3693 3712 3752 3834 3936 4028 4072 4150 4151 4201', '0', '0', '16', 'DraenorIntro: q34446 35884 complete or scene complete');

DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 23 AND SourceGroup = 7025;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, 7025, 1, 0, 0, 8, 0, 35933, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO PHASE not rewarded q35933'),
(23, 7025, 2, 0, 0, 27, 0, 89, 1, 0, 0, 0, '', 'DARK_PORTAL_INTRO PHASE1.1'),
(23, 7025, 3, 0, 0, 27, 0, 89, 1, 0, 0, 0, '', 'DARK_PORTAL_INTRO PHASE1.2'),
(23, 7025, 4, 0, 0, 8, 0, 35933, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded q35933'),
(23, 7025, 4, 0, 0, 8, 0, 34392, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO rewarded not Q34392'),
(23, 7025, 5, 0, 0, 8, 0, 34392, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded Q34392'),
(23, 7025, 5, 0, 0, 28, 0, 34393, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO completed not Q34393'),
(23, 7025, 5, 0, 0, 8, 0, 34393, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO rewarded not Q34393'),
(23, 7025, 6, 0, 0, 28, 0, 34393, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO completed Q34393'),
(23, 7025, 6, 0, 1, 8, 0, 34393, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded Q34393'),
(23, 7025, 6, 0, 1, 14, 0, 34420, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO and 34420 is none'),
(23, 7025, 7, 0, 0, 8, 0, 34393, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded Q34393'),
(23, 7025, 7, 0, 0, 39, 0, 7041, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO no area explored 7041'),
(23, 7025, 7, 0, 0, 8, 0, 34422, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34422'), --
(23, 7025, 8, 0, 0, 8, 0, 34393, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded Q34393'),
(23, 7025, 8, 0, 0, 39, 0, 7041, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO area explored 7041'),
(23, 7025, 8, 0, 0, 40, 0, 621, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not completed scene 621'),
(23, 7025, 8, 0, 0, 14, 0, 34422, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not status 34422'), --
(23, 7025, 8, 0, 0, 8, 0, 34422, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34422'), --
(23, 7025, 9, 0, 0, 40, 0, 621, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO tmp phase after complete scene 621'),
(23, 7025, 9, 0, 0, 8, 0, 34423, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34423'),
(23, 7025, 10, 0, 0, 8, 0, 34420, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded 34420'),
(23, 7025, 10, 0, 0, 9, 0, 34422, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO taken 34422'),
(23, 7025, 10, 0, 1, 28, 0, 34422, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO complete 34422'),
-- custom phase for alliance and horde
(23, 7025, 11, 0, 0, 8, 0, 34393, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded Q34393'),
(23, 7025, 11, 0, 0, 6, 0, 67, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO and  for horde'),
(23, 7025, 12, 0, 0, 8, 0, 34393, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded Q34393'),
(23, 7025, 12, 0, 0, 6, 0, 469, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO and  alliance'),
--
(23, 7025, 13, 0, 0, 8, 0, 34421, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34421'),
(23, 7025, 13, 0, 1, 8, 0, 35240, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 35240'),
(23, 7025, 14, 0, 0, 40, 0, 770, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO tmp phase after complete scene  770'),
(23, 7025, 14, 0, 1, 8, 0, 34422, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO or rewarded 34422'),
(23, 7025, 14, 0, 1, 8, 0, 34423, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not rewarded 34423'),
(23, 7025, 15, 0, 0, 8, 0, 34422, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded 34422'),
(23, 7025, 15, 0, 0, 8, 0, 34423, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not rewarded 34423'),
(23, 7025, 15, 0, 0, 41, 0, 34423, 78966, 3, 1, 0, '', 'DARK_PORTAL_INTRO and not objective 78966 = 3'),
(23, 7025, 16, 0, 0, 41, 0, 34423, 78966, 3, 0, 0, '', 'DARK_PORTAL_INTRO Q34423 objective 78966 = 3'),
(23, 7025, 16, 0, 1, 8, 0, 34423, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO OR rewarded 34423'),
(23, 7025, 16, 0, 1, 14, 0, 34425, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO Q34423 and none status 34425'),

(23, 7025, 17, 0, 0, 9, 0, 34425, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO taken 34425'),
(23, 7025, 17, 0, 0, 42, 0, 727, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not tmp phase 727'),

(23, 7025, 18, 0, 0, 42, 0, 727, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO tmp phase after prock scene triger Bridge for 727'),
(23, 7025, 18, 0, 0, 8, 0, 34425, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not rewarded 34425'),
(23, 7025, 18, 0, 0, 28, 0, 34425, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not complete 34425'),
(23, 7025, 19, 0, 0, 28, 0, 34425, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO complete 34425'),
(23, 7025, 19, 0, 1, 8, 0, 34425, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO or rewarded 34425'),
(23, 7025, 19, 0, 1, 14, 0, 34429, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO not taken, rewarded, completed 34429'),
(23, 7025, 20, 0, 0, 40, 0, 648, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO tmp phase after complete scene 648'),
(23, 7025, 20, 0, 0, 14, 0, 34429, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO not taken, rewarded, completed 34429'),
(23, 7025, 21, 0, 0, 9, 0, 34429, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO taken 34429'),
(23, 7025, 21, 0, 0, 42, 0, 796, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not event scene 796'),
(23, 7025, 21, 0, 0, 28, 0, 34429, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not complete 34429'),
(23, 7025, 21, 0, 0, 8, 0, 34429, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34429'),
(23, 7025, 22, 0, 0, 42, 0, 796, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO Q34429 after prock scene triger 796'),
(23, 7025, 22, 0, 0, 28, 0, 34429, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not complete 34429'),
(23, 7025, 22, 0, 0, 8, 0, 34429, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34429'),
(23, 7025, 23, 0, 0, 28, 0, 34429, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO only complete 34429'),
(23, 7025, 24, 0, 0, 42, 0, 803, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO tmp after event scene 803'),
(23, 7025, 24, 0, 1, 8, 0, 34429, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO or rewarded 34429'),
(23, 7025, 25, 0, 0, 8, 0, 34429, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded 34429'),
(23, 7025, 25, 0, 0, 8, 0, 34741, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not rewarded 34741'),
(23, 7025, 25, 0, 0, 8, 0, 34436, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO anod not rewarded 34436'),
(23, 7025, 26, 0, 0, 8, 0, 34429, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded 34429'),
(23, 7025, 26, 0, 0, 8, 0, 34434, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34434'),
(23, 7025, 26, 0, 0, 8, 0, 34740, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34740'),
(23, 7025, 26, 0, 0, 9, 0, 34434, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not taken 34434'),
(23, 7025, 26, 0, 0, 9, 0, 34740, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not taken 34740'),
(23, 7025, 27, 0, 0, 8, 0, 34434, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded 34434'),
(23, 7025, 27, 0, 1, 8, 0, 34740, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO or rewarded 34740'),
(23, 7025, 27, 0, 2, 28, 0, 34434, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO or complete 34434'),
(23, 7025, 27, 0, 3, 28, 0, 34740, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO or complete 34740'),
(23, 7025, 28, 0, 0, 6, 0, 67, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO for horde'),
(23, 7025, 28, 0, 0, 9, 0, 34741, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO taken 34741'),
(23, 7025, 28, 0, 0, 28, 0, 34741, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not complete 34741'),
(23, 7025, 28, 0, 0, 8, 0, 34741, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not rewarded 34741'),
(23, 7025, 28, 0, 1, 6, 0, 469, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO  for  alliance'),
(23, 7025, 28, 0, 1, 9, 0, 34436, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO OR taken 34436'),
(23, 7025, 28, 0, 1, 28, 0, 34436, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not complete 34436'),
(23, 7025, 28, 0, 1, 8, 0, 34436, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not rewarded 34436'),
(23, 7025, 29, 0, 0, 8, 0, 34429, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded 34429'),
(23, 7025, 29, 0, 0, 8, 0, 34741, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 34741'),
(23, 7025, 29, 0, 0, 28, 0, 34741, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO or not completed 34741'),
(23, 7025, 29, 0, 0, 8, 0, 34436, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO OR rewarded 34436'),
(23, 7025, 29, 0, 0, 28, 0, 34436, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO or completed 34436'),
(23, 7025, 30, 0, 0, 40, 0, 753, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO tmp phase after prock scene triger teleport for 801'),
(23, 7025, 30, 0, 0, 8, 0, 35005, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 35005'),
(23, 7025, 30, 0, 0, 8, 0, 35019, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rewarded 35019'),

(23, 7025, 31, 0, 0, 8, 0, 35005, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rewarded 35005'),
(23, 7025, 31, 0, 0, 14, 0, 34439, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO non 34439'),
(23, 7025, 31, 0, 1, 8, 0, 35019, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO OR rewarded 35019'),
(23, 7025, 31, 0, 1, 14, 0, 34439, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO non 34439'),


(23, 7025, 32, 0, 0, 14, 0, 34439, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not non 34439'),
(23, 7025, 32, 0, 0, 8, 0, 34439, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not rew 34439'),
(23, 7025, 33, 0, 0, 40, 0, 753, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO tmp phase after prock scene triger teleport for 801'),
(23, 7025, 33, 0, 0, 40, 0, 719, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO if not complete scene'),
(23, 7025, 33, 0, 0, 28, 0, 34439, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not complete 34439'),
(23, 7025, 33, 0, 0, 8, 0, 34439, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO  not rew 34439'),
(23, 7025, 34, 0, 0, 8, 0, 34439, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rew 34439'),
(23, 7025, 34, 0, 0, 14, 0, 34442, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO non 34442'),
(23, 7025, 35, 0, 0, 42, 0, 732, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO after snece event 732'),
(23, 7025, 35, 0, 1, 14, 0, 34442, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO OR not non 34442'),
(23, 7025, 36, 0, 0, 14, 0, 34442, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO non 34442'),
(23, 7025, 36, 0, 0, 14, 0, 34437, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO non 34437'),
(23, 7025, 37, 0, 0, 40, 0, 758, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO if complete scene 758'),
(23, 7025, 38, 0, 0, 14, 0, 34437, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not non 34437'),
(23, 7025, 38, 0, 0, 14, 0, 34445, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO and non 34445'),
(23, 7025, 39, 0, 0, 14, 0, 34442, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO OR not non 34442'),
(23, 7025, 39, 0, 0, 8, 0, 35747, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO OR not rew 35747'),
(23, 7025, 39, 0, 0, 41, 0, 35747, 80880, 1, 1, 0, '', 'DARK_PORTAL_INTRO OR not q35747 obj:80880'),
(23, 7025, 40, 0, 0, 41, 0, 35747, 80887, 1, 0, 0, '', 'DARK_PORTAL_INTRO q35747 obj:80887'),
(23, 7025, 40, 0, 1, 8, 0, 35747, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO and rew 35747'),
(23, 7025, 40, 0, 1, 28, 0, 34445, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not complete 34445'),
(23, 7025, 40, 0, 1, 8, 0, 34445, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and not rew 34445'),
(23, 7025, 41, 0, 0, 14, 0, 35747, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not non 34437'),
(23, 7025, 41, 0, 0, 14, 0, 34445, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO and non 34445'),
(23, 7025, 42, 0, 0, 28, 0, 34445, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO complete 34445'),
(23, 7025, 42, 0, 1, 8, 0, 34445, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO OR rew 34445'),
(23, 7025, 42, 0, 1, 8, 0, 35884, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and non rew 35884'),
(23, 7025, 42, 0, 1, 8, 0, 34446, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and non rew 34446'),
(23, 7025, 43, 0, 0, 40, 0, 740, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO if complete scene 740'),
(23, 7025, 43, 0, 0, 8, 0, 35884, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and non rew 35884'),
(23, 7025, 43, 0, 0, 8, 0, 34446, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO and non rew 34446'),
(23, 7025, 43, 0, 1, 28, 0, 35884, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO OR complete 35884'),
(23, 7025, 43, 0, 2, 28, 0, 34446, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO OR complete 34446'),
(23, 7025, 44, 0, 0, 8, 0, 35884, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO rew 35884'),
(23, 7025, 44, 0, 1, 8, 0, 34446, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO or rew 34446');

-- 34422
DELETE FROM `game_tele` WHERE name LIKE 'DarkPortalIntro';
DELETE FROM `game_tele` WHERE name LIKE 'DarkPortalWod';
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES 
(NULL, '4066.5', '-2382.25', '94.8536', '1.570796', '1265', 'DarkPortalIntro'),
(NULL, '-11840.64', '-3215.719', '-29.41927', '2.84771', '0', 'DarkPortalWod');

-- 
REPLACE INTO `spell_scene` (`SceneScriptPackageID`, `MiscValue`, `PlaybackFlags`, `trigerSpell`, MonsterCredit, `comment`) VALUES
('937', '772', '16', '167698', '0', 'Темный портал: событие дворфов spell 164678'),	-- Закрывает дверь в гробницу.
('923', '754', '16', '0', '0', 'Темный портал: грозная армия spell 163799 '),
('1018','733', '16', '0', '0', 'Темный портал: обучение души spell 163341'), 
('961', '811', '16', '0', '0', 'Q34392 Free Cho\'gall Credit spell 166407'),
('962', '812', '16', '0', '0', 'Q34392 Free Teron\'gor Credit spell 166408'),
('925', '756', '16', '0', '0', 'Q34393 spell 163807 intro guldan'),
('808', '630', '16', '0', '0', 'Q34393 spell 159260 freedom guildan'),
('806', '621', '16', '0', '0', 'Q34420 spell 158985 Run Away'),
--
('938', '782', '16', '0', '0', 'Q34420 spell 164877 Eye of Kilrogg'),
('817', '629', '16', '0', '0', 'Q34420 spell 159177 Rooftop Hatchet Scene'),
('1029', '628', '16','0', '0', 'Q34420 spell 159176 Blood Bowl Scene'),
--
('934', '771', '16', '165991', '81760', 'spell 164611 Q34422 Пламя славы'), -- 34
('933', '770', '16', '165072', '0', 'spell 164609 Q34422 move out'), -- 35
--
('813', '624', '16', '0', '0', 'Eastern Cage Scene spell 159126 Q34421, Q35240'), -- 36
('812', '625', '16', '0', '0', 'Southern Cage Scene spell 159127 Q34421, Q35240'), -- 38
-- ('938', '782', '16', '0', '0', 'UNK spell 164877'), -- 40
('942', '788', '16', '0', '0', 'Destroy Altar - next run spell 165061 Q34423'), -- 41
('940', '694', '16', '0', '0', 'Kilrogg Reveal - spell 161771 Q34423'), -- 42
('838', '648', '16', '159993', '0', 'Ring of Fire Scene - spell 159942'), -- 43
('903', '727', '16', '165867', '0', 'Shattered Hand - spell 163023 Q34425'), -- 44 165867 -> 82238
('945', '795', '20', '166216', '82139', 'Enter Arena - spell 165271 Q34429'), -- 45
('946', '796', '20', '0', '0', 'Escape Arena - spell 165549 Q34429'), -- 46
('844', '666', '16', '0', '0', 'Сцена с порталами unk 160714'), -- 47 50 51
('956', '803', '25', '167963', '0', 'Завал - spell 166223 Q34429'), -- 48
('948', '798', '16', '0', '0', 'Прибытие Лиадрин и Оулина - spell 165633 Q34429'), -- 49 Horde
('947', '797', '16', '0', '0',  'Прибытие Маладаара и Кианы - spell 165632 Q34429'), -- 49 Alliance
('870', '686', '16', '0', '0', 'Spell 161183 Лиадрин и Ирель уходят HORDE'), -- 52 for Horde
('861', '673', '16', '0', '0', 'Spell 161140 Маладаар и Ирель уходят ALLIANCE'), -- alliance
('858', '672', '16', '0', '0', 'Spell 161119 Keli\'dan FX Scene Q: 34741, 34436'), -- 53
('952', '801', '25', '0', '0', 'Spell 163772 появление Нер\'зула Q: 34741, 34436'), -- 54
('922', '753', '16', '0', '0', 'Spell 163770 подземный проход к хребту'), -- 55
('906', '729', '16', '0', '0', 'Spell 163246 вооружение пленных'), -- 56
('896', '719', '16', '0', '0', 'Spell 162540 Blackhand Reveal'), -- 57
('894', '724', '16', '0', '0', 'Spell 162685 Blackhand Reveal'), -- 58 60
('908', '730', '16', '0', '0', 'Spell 163263 от Кадгара до плотины'), -- 59
('910', '732', '25', '163783', '0', 'Spell 163319 взрыв дамбы'), -- 61
('928', '758', '16', '0', '0', 'Spell 164031 портал воды Кадгара'), -- 62
('893', '723', '20', '0', '0', 'Spell 162676 Пороховая бочка q34987'), -- 63
('911', '736', '16', '0', '0', 'Spell 163452 q34437 sceneObject'),
('871', '689', '20', '0', '0', 'Spell 161523 q34437'), -- 64
('912', '740', '16', '0', '0', 'Spell 163618 q34446 q35884'), -- 65
('986', '818', '25', '167221', '0', 'Spell 167213 q35884'), -- alliance 
('953', '817', '25', '167220', '0', 'Spell 167212 q34446');

UPDATE spell_scene SET `ScriptName` = 'sceneTrigger_q34429' WHERE MiscValue = 796;
UPDATE spell_scene SET `ScriptName` = 'sceneTrigger_q34741_34436' WHERE MiscValue = 801;
UPDATE spell_scene SET `ScriptName` = 'sceneTrigger_q34439' WHERE MiscValue = 724;
UPDATE spell_scene SET `ScriptName` = 'sceneTrigger_q34987' WHERE MiscValue = 723;
UPDATE spell_scene SET `ScriptName` = 'sceneTrigger_q34445' WHERE MiscValue = 689;

-- Basic area auras
DELETE FROM `conditions` WHERE SourceTypeOrReferenceId = 17 AND SourceEntry in (161771, 165061, 163023, 165549, 166216, 165271, 163263, 162676, 163388, 161523, 163770, 158985, 164609, 162685);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 161771, 0, 0, 41, 0, 34423, 78966, 3, 0, 0, '', 'DARK_PORTAL_INTRO SPELL 161771 Q34423 objective 78966 = 3'),
(17, 0, 163023, 0, 0, 42, 0, 727, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO SPELL 163023 if not trigered scene'),
(17, 0, 165549, 0, 0, 41, 0, 34429, 82066, 99, 0, 0, '', 'DARK_PORTAL_INTRO SPELL 165549 Q34429 objective 82066 = 99'),
(17, 0, 165549, 0, 0, 42, 0, 796, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO SPELL 165549 Q34429 not triger scen 796'),
(17, 0, 166216, 0, 0, 41, 0, 34429, 82066, 99, 1, 0, '', 'DARK_PORTAL_INTRO SPELL 166216 Q34429 not objective 82066 = 99'),
(17, 0, 165271, 0, 0, 41, 0, 34429, 82066, 95, 1, 0, '', 'DARK_PORTAL_INTRO SPELL 165271 Q34429 not objective 82066 = 99'),
(17, 0, 163388, 0, 0, 41, 0, 35747, 80880, 1, 0, 0, '', 'DARK_PORTAL_INTRO SPELL 163388 Q35747  objective 80880 = 1'),
-- (17, 0, 161523, 0, 0, 14, 0, 34446, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO SPELL 161523 non 34446'),
-- (17, 0, 161523, 0, 0, 14, 0, 35884, 0, 0, 0, 0, '', 'DARK_PORTAL_INTRO SPELL 161523 non 35884'),
(17, 0, 158985, 0, 0, 40, 0, 621, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO not completed scene 621'),
(17, 0, 164609, 0, 0, 42, 0, 770, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO SPELL 164609 if not trigered scene'),
(17, 0, 162685, 0, 0, 42, 0, 724, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO SPELL 162685 if not trigered scene'),
(17, 0, 163770, 0, 0, 40, 0, 753, 0, 0, 1, 0, '', 'DARK_PORTAL_INTRO spell 163770 not triger teleport for 801');

DELETE FROM `spell_area` WHERE area in (7025, 7041, 7129, 7040, 7042, 7043);
REPLACE INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES 
('164678', '7025', '0', '35933', '0', '0', '2', '1', '64', '65'), 
('164678', '7025', '34393', '0', '0', '0', '2', '1', '88', '11'),
('163799', '7025', '0', '0', '0', '0', '2', '1', '64', '11'),
('163341', '7025', '0', '34393', '0', '0', '2', '1', '64', '66'), 
('167421', '7025', '0', '0', '0', '0', '2', '1', '64', '11'),
('163807', '7025', '34393', '0', '0', '0', '2', '0', '10', '11'),
('159260', '7025', '34393', '34393', '0', '0', '2', '1', '2', '64'),
('158985', '7025', '34420', '34422', '0', '0', '2', '1', '74', '74'),
--
('164877', '7041', '34420', '34423', '0', '0', '2', '1', '2', '64'),
('164877', '7025', '34423', '34423', '0', '0', '2', '0', '10', '64'),
('159177', '7041', '34420', '34420', '0', '0', '2', '1', '2', '64'),
('159176', '7041', '34420', '34420', '0', '0', '2', '1', '2', '64'),
--
('164611', '7041', '34422', '34422', '0', '0', '2', '1', '10', '64'),
('164609', '7041', '34422', '34422', '0', '0', '2', '1', '10', '64'),
--
('161625', '7041', '34423', '34423', '0', '0', '2', '0', '10', '64'),
('161625', '7025', '34423', '34423', '0', '0', '2', '0', '10', '64'),
--
('161771', '7025', '34423', '34423', '0', '0', '2', '1', '10', '64'),
('165061', '7025', '34423', '34423', '0', '0', '2', '0', '10', '64'),
('169070', '7129', '34423', '34423', '0', '0', '2', '1', '10', '64'),
('161637', '7025', '34423', '34423', '0', '0', '2', '1', '10', '64'),
('159942', '7129', '0', '34429', '0', '0', '2', '1', '10', '74'), -- Ring of Fire Scene
('159942', '7040', '0', '34429', '0', '0', '2', '1', '10', '74'), -- Ring of Fire Scene
('163023', '7129', '34425', '34425', '0', '0', '2', '1', '10', '64'),
('163023', '7040', '34425', '34425', '0', '0', '2', '1', '10', '64'), -- should be 161899
('165271', '7025', '34429', '34429', '0', '0', '2', '1', '8', '66'),
('166216', '7025', '34429', '34429', '0', '0', '2', '0', '10', '64'),
('165549', '7025', '34429', '34429', '0', '0', '2', '1', '10', '64'),
('166223', '7025', '34429', '0', '0', '0', '2', '1', '2', '64'),
('165633', '7042', '34737', '0', '0', '0', '2', '1', '8', '64'), -- horde
('165632', '7042', '34431', '0', '0', '0', '2', '1', '8', '64'), -- alliance
('160714', '7042', '0', '0', '0', '0', '2', '1', '2', '64'),
('161109', '7042', '34740', '34740', '0', '0', '2', '1', '10', '64'),
('161109', '7042', '34434', '34434', '0', '0', '2', '1', '10', '64'),
('161183', '7042', '34741', '34741', '0', '0', '2', '1', '8', '66'), -- horde
('161140', '7042', '34436', '34436', '0', '0', '2', '1', '8', '66'), -- alliance
('161119', '7042', '34741', '34741', '0', '0', '2', '1', '8', '64'),
('161119', '7042', '34436', '34436', '0', '0', '2', '1', '8', '64'),
('163772', '7042', '34741', '34741', '0', '0', '2', '1', '2', '64'),
('163772', '7042', '34436', '34436', '0', '0', '2', '1', '2', '64'),
('163770', '7043', '34741', '35005', '0', '0', '2', '1', '66', '64'), -- horde
('163770', '7043', '34436', '35019', '0', '0', '2', '1', '66', '64'), -- alliance
('163246', '7043', '35005', '34439', '0', '0', '2', '1', '64', '74'), -- horde
('163246', '7043', '35019', '34439', '0', '0', '2', '1', '64', '74'), -- alliance
-- ('162540', '7043', '34439', '0', '0', '0', '2', '1', '8', '74'),
('162685', '7043', '34439', '0', '0', '0', '2', '1', '8', '74'),
('161168', '7043', '34439', '0', '0', '33555378', '2', '1', '8', '74'), -- horde
('161074', '7043', '34439', '0', '0', '18875469', '2', '1', '8', '74'), -- alliance
('163263', '7043', '34439', '34439', '0', '0', '2', '1', '10', '64'),
('163319', '7043', '34439', '34442', '0', '0', '2', '1', '64', '74'),
('164031', '7043', '34442', '0', '0', '0', '2', '1', '74', '74'),
('162676', '7043', '34987', '34987', '0', '0', '2', '1', '2', '64'),
('163452', '7043', '34437', '34437', '0', '0', '2', '1', '10', '64'),
('163388', '7025', '35747', '35747', '0', '0', '2', '1', '8', '66'),
('161523', '7025', '34445', '34445', '0', '0', '2', '1', '10', '64'),
('161527', '7025', '34445', '34445', '0', '0', '2', '0', '10', '64'),
('164042', '7025', '34445', '34445', '0', '0', '2', '0', '10', '64'),
('163618', '7025', '34446', '34446', '0', '0', '2', '1', '8', '66'),
('163618', '7025', '35884', '35884', '0', '0', '2', '1', '8', '66'),
('178256', '7025', '34446', '34446', '0', '0', '2', '1', '8', '66'),
('178256', '7025', '35884', '35884', '0', '0', '2', '1', '8', '66'),
('167212', '7025', '34446', '0', '0', '0', '2', '1', '64', '64'),
('167213', '7025', '35884', '0', '0', '0', '2', '1', '64', '64');

--
UPDATE `quest_template_addon` SET `NextQuestID` = '35933' WHERE `quest_template_addon`.`ID` in (34398, 36881);
UPDATE `quest_template` SET `RewardNextQuest` = '35933' WHERE `ID` in (34398, 36881);
UPDATE `quest_template` SET `RewardNextQuest` = '34392' WHERE `ID` = 35933;


REPLACE INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES 
('35933', '34398'),
('34392', '35933'),
('34393', '34392'),
('34420', '34393');

REPLACE INTO `quest_template_addon` (`ID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`) VALUES 
('35240', '34420', '34423', '-34423'),
('34421', '34420', '34423', '-34423'),
('35241', '34420', '34423', '-34423'),
('35242', '34420', '34423', '-34423'),
('34422', '34420', '34423', '-34423'),
('34425', '34423', '0', '0'),
('34478', '34425', '34429', '0'),
('34427', '34425', '34429', '0'),
('34739', '34429', '34741', '-34741'), -- h
('34432', '34429', '34436', '-34436'), -- a
('34737', '34429', '34741', '-34741'), -- h
('34431', '34429', '34436', '-34436'), -- a
('34740', '34429', '34741', '-34741'), -- h
('34434', '34429', '34436', '-34436'), -- a
('34741', '0', '0', '0'), -- h  def by NextQuestID &  exc group
('34436', '0', '0', '0'), -- a def by NextQuestID &  exc group
('35005', '34741', '34439', '0'), -- h
('35019', '34436', '34439', '0'), -- a
('34439', '0', '34987', '0'),
('34442', '34439', '34925', '0'),
('34958', '34439', '-35747', '0'),
('34987', '34439', '-35747', '0'),
('34437', '34925', '-35747', '0'),
('35747', '34437', '0', '0'),
('34445', '35747', '0', '0'),
('34446', '34445', '0', '0'),
('35884', '34445', '0', '0');

UPDATE `quest_template` SET AllowableRaces = 33555378 WHERE ID in (34421, 35241); -- SET HORDE
UPDATE `quest_template` SET AllowableRaces =  (1101 + 2097152  + 16777216)WHERE ID in (35242, 35240); -- SET ALLIANCE

REPLACE INTO `area_queststart` (`id`, `quest`) VALUES ('7037', '34392');
DELETE FROM `creature_queststarter` WHERE `creature_queststarter`.`id` = 78558 AND `creature_queststarter`.`quest` = 34392;

--
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(78558, 0, 0, 'Мы рассчитываем на тебя.', 12, 0, 100, 1, 0, 44868, 'Верховный маг Кадгар to Player'),
(78558, 0, 1, 'Делай свое дело, герой! Я разберусь с танком!', 14, 0, 100, 22, 0, 44861, 'Верховный маг Кадгар to Khadgar Shield Target'),
(78558, 0, 2, 'Смотрите! Портал слабеет!', 14, 0, 100, 0, 0, 44883, 'Верховный маг Кадгар to Player'),
(78558, 0, 3, 'Так держать! Продолжайте!', 14, 0, 100, 0, 0, 44884, 'Верховный маг Кадгар to Player'),
(78558, 0, 4, 'Сделай все, что в твоих силах, герой. Ты — последняя надежда Азерота.', 12, 0, 100, 1, 0, 0, 'Верховный маг Кадгар to Player'),
(78558, 0, 5, 'Держитесь за мной!', 12, 0, 100, 0, 0, 44859, 'Верховный маг Кадгар to Khadgar Shield Target'),
(78558, 0, 6, 'Не уходи далеко. Твоя помощь нужна здесь.', 12, 0, 100, 0, 0, 44879, 'Верховный маг Кадгар to Player');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=78558;
DELETE FROM smart_scripts WHERE entryorguid = 78558;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(78558, 0, 0, 0, 60, 0, 100, 0, 20000, 30000, 20000, 30000, 27, 47133, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Play visual Kit'),
(78558, 0, 1, 0, 47, 0, 100, 0, 35933, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At start q: 35933'),
(78558, 0, 2, 0, 47, 0, 100, 0, 34393, 0, 0, 0, 1, 4, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At start q: 34393');


-- Thrall quest line script
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(78553, 0, 0, 'Маг, чтобы герой справился, передовой отряд должен устоять!', 12, 0, 100, 1, 0, 46402, 'Тралл to Khadgar Shield Target'),
(78553, 0, 1, 'Я не могу стоять и смотреть, как умирают другие!', 12, 0, 100, 1, 0, 0, 'Тралл to Khadgar Shield Target'),
(78553, 1, 2, 'ГНЕВ БУРИ, УСЛЫШЬ МОЙ ЗОВ!', 14, 0, 100, 15, 0, 0, 'Тралл to Khadgar Shield Target'),
(78553, 1, 3, 'ГНЕВ ЗЕМЛИ, ДАЙ МНЕ СВОЮ СИЛУ!', 14, 0, 100, 0, 0, 0, 'Тралл to Khadgar Shield Target'),
(78553, 1, 4, 'Гнев воды, исцели наших раненых!', 14, 0, 100, 0, 0, 0, 'Тралл to 0'),
(78553, 1, 5, 'Гнев огня, воспламени наши кулаки и оружие!', 14, 0, 100, 0, 0, 0, 'Тралл to 0'),
(78553, 0, 6, 'Береги себя.', 12, 0, 100, 0, 0, 46397, 'Тралл to Player');

UPDATE `creature_template` SET exp = 5, `mindmg` = '100', `maxdmg` = '200', `attackpower` = '1000', ScriptName = 'mob_wod_thrall', `AIName`='' WHERE `entry`=78553;
DELETE FROM smart_scripts WHERE entryorguid = 78553;


-- Q34392
UPDATE `creature_template` SET `InhabitType` = '4', `AIName`='SmartAI' WHERE `creature_template`.`entry` in (81695, 81696);
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
('81695', '0', '0', '0', '25', '0', '100', '0', '0', '0', '0', '0', '11', '166539', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Тюрьма Скверны на себя.'),
('81696', '0', '0', '0', '25', '0', '100', '0', '0', '0', '0', '0', '11', '166539', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', 'Тюрьма Скверны на себя.');

-- REPLACE INTO `areatrigger_data` (`entry`, `sphereScale`, `sphereScaleMax`, `isMoving`, `moveType`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `customVisualId`, `customEntry`, `hitType`, `Height`, `RadiusTarget`, `Float5`, `Float4`, `Radius`, `HeightTarget`, `MoveCurveID`, `ElapsedTime`, `comment`) VALUES 
-- ('2757', '5', '5', '0', '0', '0', '0', '0', '0', '41185', '7371', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Тюрьма Скверны Q34392');

REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastalent`, `hastalent2`, `chance`, `cooldown`, `hitmask`, `removeMask`, `comment`) VALUES 
('166392', '166407', '1', '3', '0', '0', '0', '0', '0', '0', '0', 'Q34392: Free Cho\'gall Credit'),
('166393', '166408', '1', '3', '0', '0', '0', '0', '0', '0', '0', 'Q34392: Free Teron\'gor Credit');

-- Q34393
UPDATE `creature_template` SET `InhabitType` = '4', `ScriptName` = 'mob_wod_intro_guldan' WHERE `creature_template`.`entry` = 78333;
UPDATE `creature_template_addon` SET `emote` = '416' WHERE `creature_template_addon`.`entry` = 78333;
DELETE FROM creature_addon WHERE guid in (select guid from creature where id = 78333);

-- A: Q35240 & H: Q34421
update `gameobject` set phaseMask = 7, PhaseId = '3209' WHERE `id` in (229352, 229353);
UPDATE `gameobject_template` SET `ScriptName` = 'go_wod_slaves_cage' WHERE `gameobject_template`.`entry` in (229352, 229353);
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_frostwolf_slave' WHERE `creature_template`.`entry` in (78529, 82871, 85142, 85141);
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(78529, 0, 0, 'На помощь!', 14, 0, 100, 0, 0, 43876, 'Раб из клана Северного Волка to Player'),
(82871, 0, 0, 'На помощь!', 14, 0, 100, 0, 0, 43876, ''),
(85142, 0, 0, 'Освободи нас!', 14, 0, 100, 0, 0, 43877, ''), -- восточная
(85141, 0, 0, 'Освободи нас!', 14, 0, 100, 0, 0, 43877, 'Раб из клана Северного Волка to Player'); -- восточная

-- Q34423
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_ariok' WHERE `creature_template`.`entry` = 78556;
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_ariok_mover' WHERE `creature_template`.`entry` = 80087;

DELETE FROM `creature_text` WHERE entry = 80087;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(80087, 0, 0, 'Ты и я – против целого клана? Это мне по нраву.', 12, 0, 100, 396, 0, 46156, 'Ариок to Player'),
(80087, 1, 0, 'С помощью магии крови орки Кровавой Глазницы превращают воинов в огромных берсерков.', 12, 0, 100, 396, 0, 46157, 'Ариок to Player'),
(80087, 2, 0, 'Если повезет, мы уберемся отсюда раньше, чем они завершат ритуал.', 12, 0, 100, 396, 0, 46158, 'Ариок to Player'),
(80087, 3, 0, 'Мы здесь, трусы! Сюда! Бейтесь с нами!', 14, 0, 100, 0, 0, 46159, 'Ариок to Player'),
(80087, 4, 0, 'Как бы их отвлечь от ритуала… Давай уничтожим кровавые сферы.', 12, 0, 100, 0, 0, 0, 'Ариок to Player'),
(80087, 5, 0, 'Похоже, Кадгар и все остальные уже в пути. Наша работа почти завершена!', 12, 0, 100, 0, 0, 46162, 'Ариок to Player');

UPDATE  `creature_template` SET  `npcflag` =  `npcflag` | 16777216 WHERE `entry` =83670;
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
 ('83670', '167955', '3', '0');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 18 AND `SourceEntry` = 66306;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`, `ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`NegativeCondition`,`Comment`)
VALUES (18, 83670, 167955, 9, 0, 34423, 0, 0, 'Required quest active for spellclick');
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 2, 167955, 0, 0, 31, 0, 3, 83670, 0, 0, 0, '', NULL);

REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('167955', 'spell_wod_destroying');

-- Q34425
UPDATE `creature_template` SET `ScriptName` = 'mob_khadgar_q34425' WHERE `creature_template`.`entry` = 80244;
DELETE FROM `creature_text` WHERE entry = 80244;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(80244, 0, 0, 'Сперва разберемся с мостом.', 12, 0, 100, 25, 0, 44849, 'Верховный маг Кадгар to Player'),
(80244, 1, 0, 'Так, а теперь пошли!', 12, 0, 100, 273, 0, 44850, 'Верховный маг Кадгар to Player');

SET @id = 0;
SET @entry = 80244;
DELETE FROM `script_waypoint` WHERE `entry` = @entry;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `point_comment`) VALUES 
(@entry, @id := @id+ 1, 4221.65, -2792.031, 21.28993, NULL),
(@entry, @id := @id+ 1, 4228.165, -2808.644, 17.32043, NULL),
(@entry, @id := @id+ 1, 4229.694, -2812.865, 17.2561, NULL);

UPDATE spell_scene SET `ScriptName` = 'sceneTrigger_q34425' WHERE MiscValue = 727;

REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastalent`, `hastalent2`, `chance`, `cooldown`, `hitmask`, `removeMask`, `comment`)
 VALUES ('165867', '82238', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Q34425 update phase');

-- Q: A:34478 H: 34427
REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
('159904', '1265', '4298', '-2716', '9', '0');

-- Q: 34429
-- spells: 167314, 168182
UPDATE `creature_template` SET `faction` = '14' WHERE `creature_template`.`entry` = 83539;
UPDATE `creature_template` SET `ScriptName` = 'mob_arena_combatant_q34429' WHERE `creature_template`.`entry` in (82057, 82141, 83539);
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_cordona_welsong' WHERE `creature_template`.`entry` = 78430;
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_archimage_khadgar' WHERE `creature_template`.`entry` = 78560;
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_olin_oberhind' WHERE `creature_template`.`entry` = 79315;

REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastalent`, `hastalent2`, `chance`, `cooldown`, `hitmask`, `removeMask`, `comment`) VALUES
('165549', '-165271', '3', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('165549', '-166216', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

UPDATE spell_scene SET `ScriptName` = 'sceneTrigger_q34429' WHERE MiscValue = 796;
REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
('167960', '1265', '4406.44', '-2832.71', '4.72191', '1.637773');

REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastalent`, `hastalent2`, `chance`, `cooldown`, `hitmask`, `removeMask`, `comment`)
VALUES ('167963', '82238', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Q34429 update phase');

DELETE FROM `creature_text` WHERE entry = 78561;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(78561, 0, 0, 'Леди Лиадрин, вам с Оулином нужно осмотреть пещеру.', 12, 0, 100, 0, 0, 44858, 'Верховный маг Кадгар to Player'),
(78561, 1, 0, 'Не уходи далеко. Твоя помощь нужна здесь.', 12, 0, 100, 0, 0, 44879, 'Верховный маг Кадгар to Player');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=78561;
DELETE FROM smart_scripts WHERE entryorguid = 78561;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(78561, 0, 0, 0, 50, 0, 100, 0, 34429, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'at complete q34429');

-- q: 34431, 34737
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_irel' WHERE `creature_template`.`entry` = 78994;
DELETE FROM `creature_text` WHERE entry = 78994;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(78994, 0, 0, 'Кто здесь?! Ох, слава Свету, я не одна здесь сражаюсь с этими монстрами.', 12, 0, 100, 0, 0, 45551, 'Ирель to Player');


-- Q: 34434, 34740
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_q34434_q34740' WHERE `creature_template`.`entry` = 79795;
DELETE FROM `creature_text` WHERE entry = 79795;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(79795, 0, 0, 'Надо торопиться - орками Призрачной Луны командует некий Нер''зул.', 12, 0, 100, 396, 0, 45552, 'Ирель to Player'),
(79795, 1, 0, 'После гибели своих командиров, Нер''зул начнет искать нас.', 12, 0, 100, 396, 0, 45553, 'Ирель to Player'),
(79795, 2, 0, 'О, я вижу наверху твои друзья? Думаю, я смогу добраться туда.', 12, 0, 100, 0, 0, 45554, 'Ирель to Player');

-- Q: 34741, 34436
UPDATE `creature_template` SET `ScriptName` = 'mob_wod_q34741_34436' WHERE `creature_template`.`entry` = 79702;
DELETE FROM `creature_text` WHERE entry = 79702;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(79702, 0, 0, 'Гость из портала! Из тебя выйдет отличная жертва.', 14, 0, 100, 0, 0, 45980, 'Кели''дан Разрушитель to Player'),
(79702, 1, 0, 'Пустота поглотит тебя!', 14, 0, 100, 0, 0, 45982, 'Кели''дан Разрушитель to 0'),
(79702, 2, 0, 'Подойди поближе… и сгори!', 14, 0, 100, 0, 0, 45981, 'Кели''дан Разрушитель to Кели''дан Разрушитель'),
(79702, 3, 0, 'Нер''зул... Помоги мне…', 14, 0, 100, 20, 0, 45983, 'Кели''дан Разрушитель to 0');

UPDATE `gameobject_template` SET `ScriptName` = 'go_wod_gate_q34741_34436' WHERE `gameobject_template`.`entry` = 233197;

-- Q: 35005, 35019
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES
('53478', '112337', '-100', '1', '0', '1', '3', '0'), -- 231816
('53479', '112337', '-100', '1', '0', '1', '3', '0'), -- 231817
('53477', '112337', '-100', '1', '0', '1', '3', '0'), -- 231815
('53479', '112337', '-100', '1', '0', '1', '3', '0'), -- 231164
('53477', '112337', '-100', '1', '0', '1', '3', '0'), -- 231160
('53478', '112337', '-100', '1', '0', '1', '3', '0'), -- 231163
('53480', '112337', '-100', '1', '0', '1', '3', '0'), -- 231167
('53480', '112337', '-100', '1', '0', '1', '3', '0'), -- 231820
('53480', '112337', '-100', '1', '0', '1', '3', '0'), -- 231166
('53480', '112337', '-100', '1', '0', '1', '3', '0'), -- 231168
('53480', '112337', '-100', '1', '0', '1', '3', '0'), -- 231819
('53480', '112337', '-100', '1', '0', '1', '3', '0'); -- 231818

-- Q: 34439
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastalent`, `hastalent2`, `chance`, `cooldown`, `hitmask`, `removeMask`, `comment`)
VALUES ('162685', '162540', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Q34439 link phase'),
('163783', '82238', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Q34439 update phase');

-- Q: 34987
UPDATE `gameobject_template` SET `Data1` = '231119' WHERE `gameobject_template`.`entry` = 231119;
REPLACE INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES
('231119', '112323', '-100', '1', '0', '1', '1', '0'); -- 231119

DELETE FROM `creature_text` WHERE entry = 78569;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(78569, 0, 0, 'Быстрей сюда!', 12, 0, 100, 0, 0, 45699, 'Гензель Большерук to Player'),
(78569, 1, 0, 'Искра пошла...', 12, 0, 100, 0, 0, 45702, 'Гензель Большерук to Player'),
(78569, 2, 0, '...еще чуть-чуть...', 12, 0, 100, 0, 0, 45703, 'Гензель Большерук to Player'),
(78569, 3, 0, 'БУМ! Ха-ха!', 12, 0, 100, 0, 0, 45704, 'Гензель Большерук to Player'),
(78569, 4, 0, 'Ох… какая красотища, правда?', 12, 0, 100, 0, 0, 45705, 'Гензель Большерук to Player'),
(78509, 5, 0, 'СОКРУШИТЬ, РАСТЕРЕТЬ!', 12, 0, 100, 0, 0, 0, 'Берсерк из клана Кровавой Глазницы to Player'),
(78509, 6, 0, 'С ДОРОГИ, НИЧТОЖЕСТВО!', 12, 0, 100, 0, 0, 0, 'Берсерк из клана Кровавой Глазницы to Player');

-- Q: 34925
DELETE FROM `creature_text` WHERE entry = 79917;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(79917, 0, 0, 'Просто освободи меня, и я убью сотню этих вонючих хряков одной лопатой.', 12, 0, 100, 0, 0, 45045, 'Га''нар to Player');

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=79917;
DELETE FROM smart_scripts WHERE entryorguid = 79917;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(79917, 0, 0, 0, 47, 0, 100, 0, 34925, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'At start q: 34925');

-- Q: 35747
UPDATE `creature_template` SET `npcflag` = 4739, `gossip_menu_id`=16518, `ScriptName` = 'mob_wod_thaelin_darkanvil' WHERE entry = 78568; -- Thaelin Darkanvil 
UPDATE `creature_template_wdb` SET `KillCredit1` = '80880' WHERE `creature_template_wdb`.`Entry` = 78568;
REPLACE INTO `gossip_menu` (`entry`, `text_id`) VALUES
(16518, 23994); -- 78568
REPLACE INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextID0`, `BroadcastTextID1`, `BroadcastTextID2`, `BroadcastTextID3`, `BroadcastTextID4`, `BroadcastTextID5`, `BroadcastTextID6`, `BroadcastTextID7`, `VerifiedBuild`) VALUES
(23994, 1, 0, 0, 0, 0, 0, 0, 0, 83003, 0, 0, 0, 0, 0, 0, 0, 19865);
REPLACE INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `box_coded`, `box_money`, `box_text`, option_id) VALUES
(16518, 0, 1, 'Мне бы хотелось купить что-нибудь у вас.', 0, 0, '', 3), -- 78568
(16518, 1, 0, 'Да. Помоги-ка мне управиться с этим огромным танком.', 0, 0, '', 1); -- 78568

UPDATE `creature_template` SET `ScriptName` = 'mob_wod_q35747' WHERE `creature_template`.`entry` = 80886;
DELETE FROM `creature_text` WHERE entry = 80886;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(80886, 0, 0, 'Ты сражайся, а я буду чинить. Давай, забирайся на танк!', 12, 0, 100, 0, 0, 46831, 'Телин Темная Наковальня to Player'),
(80886, 1, 0, 'Смотри. По тем цепям можно забраться наверх.', 12, 0, 100, 0, 0, 46838, 'Телин Темная Наковальня to Player'),
(80886, 2, 0, 'Я нашел рычаги!', 12, 0, 100, 0, 0, 46839, 'Телин Темная Наковальня to Player');

-- Q: 34445
-- spell 164040 
-- spell 161523
-- spell at go use. 164042
REPLACE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastalent`, `hastalent2`, `chance`, `cooldown`, `hitmask`, `removeMask`, `comment`)
VALUES ('161523', '164040', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Q34445 triger summon');

DELETE FROM `creature_text` WHERE entry = 80521;
REPLACE INTO `creature_text` (`entry`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`) VALUES
(80521, 0, 0, 'Орки по правому борту!', 14, 0, 100, 0, 0, 46840, 'Телин Темная Наковальня to Player'),
(80521, 1, 0, 'Эй, вставай за турель и не подпускай их!', 12, 0, 100, 0, 0, 46841, 'Телин Темная Наковальня to Player');

-- cast at complete 176159 go 232538
UPDATE `gameobject_template` SET `ScriptName` = 'go_wod_q34445' WHERE `gameobject_template`.`entry` = 232538;

-- Q: 34446 35884
REPLACE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('167421', 'spell_wod_khadgar_watch');

REPLACE INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
('167221', '1116', '2308.57', '447.469', '5.11977', '2.199202'), -- alliance
('167220', '1116', '5535.01', '5019.88', '12.6375', '5.174203');