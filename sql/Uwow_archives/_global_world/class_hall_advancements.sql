----------
-- Mage --
----------

-- T2. Teleportation Nexus http://www.wowhead.com/order-advancement=386/teleportation-nexus
DELETE FROM `spell_target_position` WHERE `id` IN (225920, 220449, 220450, 220451, 220452, 220453, 223429, 223430, 220463, 220464, 220465);
INSERT INTO `spell_target_position` (`id`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`, `target_map`) VALUES
(225920, 6733.75, 3118.58, 262.08, 2.198766, 1116), -- 225920 go 252203
(220449, -837.37, 4714.88, 917.23, 3.067765, 1513), -- 220449 go 252183
(220450, -843.92, 4715.85, 917.23, 6.122964, 1513), -- 220450 go 252196
(220451, -840.94, 4675.65, 917.23, 3.031113, 1513), -- 220451 go 252197
(220452, -848.93, 4676.69, 917.23, 6.090327, 1513), -- 220452 go 252198
(220453, 1142.35, 6015.06, 100.04, 4.177794, 1220), -- 220453 go 252199
(223429, 1578.66, 4802.07, 140.97, 0.7869689, 1220), -- 223429 go 253145
(223430, -859.57, 4698.15, 917.24, 6.098006, 1513), -- 223430 go 255825
(220463, 3954.06, 5467.33, 629.92, 3.103195, 1220), -- 220463 go 252201
(220464, 2836.21, 3215.08, 652.98, 5.352925, 1220), -- 220464 go 252202
(220465, 2904.48, 6782.44, 271.9, 4.991642, 1220); -- 220465 go 252203

DELETE FROM gameobject WHERE id in (252203, 252183, 252196, 252197, 252198, 252199, 253145, 255825, 252201, 253144);
INSERT IGNORE INTO gameobject (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `AiID`) VALUES
(252203, 1513, 0, 0, 3, '', -850.3055, 4676.871, 917.6243, 0, 0, 0, 0, 1, 7200, 255, 1, 11129), -- 252203 (Area: 7879) spell 225920
(252183, 1220, 0, 0, 1, '', 1140.674, 6012.731, 100.035, 0, 0, 0, 0, 1, 180, 255, 1, 11129), -- 252183 (Area: 7361) spell 220449
(252196, 1220, 0, 0, 1, '', 3955.382, 5468.721, 629.6637, 0, 0, 0, 0, 1, 180, 255, 1, 11129), -- 252196 (Area: 8050) spell 220450
(252197, 1220, 0, 0, 1, '', 2836.236, 3215.219, 653.0571, 0.05034146, 0, 0, 0, 1, 180, 255, 1, 11129), -- 252197 (Area: 7542) spell 220451
(252198, 1220, 0, 0, 1, '', 2903.827, 6782.101, 271.9237, 0.05683932, 0, 0, 0, 1, 180, 255, 1, 11129), -- 252198 (Area: 7677) spell 220452
(252199, 1513, 0, 0, 3, '', -834.533, 4714.744, 917.6133, 0.3243126, 0, 0, 0, 1, 7200, 255, 1, 11129), -- 252199 (Area: 7879) spell 220453
(253145, 1513, 0, 0, 3, '', -862.1563, 4698.139, 917.7846, 0, 0, 0, 0, 1, 7200, 255, 1, 11129), -- 253145 (Area: 7879) spell 223429
(255825, 1116, 0, 0, 1, '', 6733.86, 3118.458, 261.8056, 0.6452367, 0, 0, 0, 1, 180, 255, 1, 11129), -- 255825 (Area: 6782) spell 223430
(252201, 1513, 0, 0, 3, '', -846.1146, 4715.936, 917.9227, 0, 0, 0, 0, 1, 7200, 255, 1, 11129), -- 252201 (Area: 7879)
(252202, 1513, 0, 0, 3, '', -839.75, 4675.699, 917.8201, 4.959614, 0, 0, 0, 1, 7200, 255, 1, 11129), -- 252202 (Area: 7879) spell 220464
(253144, 1220, 0, 0, 1, '', 1579.425, 4802.655, 140.9679, 0, 0, 0, 0, 1, 180, 255, 1, 11129); -- 253144 (Area: 7840)

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(17, 0, 225920, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 220449, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 220450, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 220451, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 220452, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 220453, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 223429, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 223430, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 220463, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 220464, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386'),
(17, 0, 220465, 0, 0, 49, 0, 386, 0, 0, 0, 0, '', 'req ch: advancement 386');

-- not active displayID = 9011
UPDATE `gameobject_template` SET `displayId` = '36541' WHERE `gameobject_template`.`entry` = 252203;
UPDATE `gameobject_template` SET `displayId` = '36528' WHERE `gameobject_template`.`entry` = 252199;
UPDATE `gameobject_template` SET `displayId` = '36538' WHERE `gameobject_template`.`entry` = 253145;
UPDATE `gameobject_template` SET `displayId` = '36533' WHERE `gameobject_template`.`entry` = 252201;
UPDATE `gameobject_template` SET `displayId` = '36534' WHERE `gameobject_template`.`entry` = 252202;