DELETE FROM creature WHERE id in (120928,121535,121537,121543,121542,122323,123691,123735,123755,125089);
SET @CCGUID = 505301;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`) VALUES
(@CCGUID+0, 120928, 974, 0, 0, 1, 1, '', 0, 0, -4155.222, 6067.366, 8.650113, 2.198678, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 120928 (Area: 0)
(@CCGUID+1, 121535, 974, 0, 0, 1, 1, '', 0, 0, -4154.394, 6092.305, 8.650113, 1.264475, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121535 (Area: 0)
(@CCGUID+2, 121535, 974, 0, 0, 1, 1, '', 0, 0, -4164.472, 6094.21, 8.608446, 3.639303, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121535 (Area: 0)
(@CCGUID+3, 121535, 974, 0, 0, 1, 1, '', 0, 0, -4160.743, 6098.947, 8.650113, 0.9196353, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121535 (Area: 0)
(@CCGUID+4, 121535, 974, 0, 0, 1, 1, '', 0, 0, -4180.637, 6085.783, 15.98055, 6.082071, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121535 (Area: 0)
(@CCGUID+5, 121535, 974, 0, 0, 1, 1, '', 0, 0, -4151.563, 6082.182, 8.650113, 5.956605, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121535 (Area: 0)
(@CCGUID+6, 121535, 974, 0, 0, 1, 1, '', 0, 0, -4201.344, 6009.743, 18.66162, 0.2405729, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121535 (Area: 0)
(@CCGUID+7, 121535, 974, 0, 0, 1, 1, '', 0, 0, -4173.149, 6012.269, 24.90545, 4.570531, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121535 (Area: 0)
(@CCGUID+8, 121537, 974, 0, 0, 1, 1, '', 0, 0, -4145.853, 6094.632, 8.650113, 0.4428347, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121537 (Area: 0)
(@CCGUID+9, 121537, 974, 0, 0, 1, 1, '', 0, 0, -4166.984, 6093.242, 8.608446, 0.2243, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121537 (Area: 0)
(@CCGUID+10, 121537, 974, 0, 0, 1, 1, '', 0, 0, -4151.755, 6093.879, 8.650113, 3.807009, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121537 (Area: 0)
(@CCGUID+11, 121537, 974, 0, 0, 1, 1, '', 0, 0, -4150.221, 6083.335, 8.608446, 5.956605, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121537 (Area: 0)
(@CCGUID+12, 121537, 974, 0, 0, 1, 1, '', 0, 0, -4166.031, 6082.129, 8.650113, 4.615591, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121537 (Area: 0)
(@CCGUID+14, 121542, 974, 0, 0, 1, 1, '', 0, 0, -4147.768, 6078.211, 8.608447, 5.422368, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121542 (Area: 0)
(@CCGUID+15, 121543, 974, 0, 0, 1, 1, '', 0, 0, -4140.889, 6093.861, 8.608447, 6.231746, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 121543 (Area: 0)
(@CCGUID+16, 122323, 974, 0, 0, 1, 1, '', 0, 0, -4189.096, 6003.088, 12.37921, 0, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 122323 (Area: 0) (Auras: 243893 - 243893)
(@CCGUID+17, 123691, 974, 0, 0, 1, 1, '', 0, 0, -4158.26, 6099.989, 8.650113, 4.275886, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 123691 (Area: 0)
(@CCGUID+18, 123691, 974, 0, 0, 1, 1, '', 0, 0, -4147.344, 6095.083, 8.650113, 0.4428347, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 123691 (Area: 0)
(@CCGUID+19, 123691, 974, 0, 0, 1, 1, '', 0, 0, -4165.097, 6079.419, 8.650113, 2.538733, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 123691 (Area: 0)
(@CCGUID+20, 123735, 974, 0, 0, 1, 1, '', 0, 0, -4146.897, 6087.811, 8.608446, 2.716171, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 123735 (Area: 0) (Auras: 246218 - 246218)
(@CCGUID+21, 123755, 974, 0, 0, 1, 1, '', 0, 0, -4179.649, 6084.34, 11.09846, 2.017404, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), -- 123755 (Area: 0)
(@CCGUID+22, 125089, 974, 0, 0, 1, 1, '', 0, 0, -4178.83, 6027.471, 6.328164, 0.8359578, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0); -- 125089 (Area: 0)

REPLACE INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(505301, 0, 0, 0x0, 0x1, 0x1E3, ''),
(505302, 0, 0, 0x0, 0x1, 0xA, ''),
(505303, 0, 0, 0x0, 0x1, 0x19F, ''),
(505304, 0, 0, 0x0, 0x1, 0xA, ''),
(505305, 0, 0, 0x0, 0x1, 0xA, ''),
(505306, 0, 0, 0x0, 0x1, 0xA, ''),
(505307, 0, 0, 0x0, 0x1, 0xA, ''),
(505308, 0, 0, 0x0, 0x1, 0xA, ''),
(505309, 0, 0, 0x0, 0x1, 0xA, ''),
(505310, 0, 0, 0x0, 0x1, 0x19F, ''),
(505311, 0, 0, 0x0, 0x1, 0xA, ''),
(505312, 0, 0, 0x0, 0x1, 0x0, ''),
(505313, 0, 0, 0x0, 0x1, 0xA, ''),
(505315, 0, 0, 0x0, 0x1, 0x0, ''),
(505316, 0, 0, 0x0, 0x1, 0x45, ''),
(505317, 0, 0, 0x3000000, 0x1, 0x0, '243893'),
(505318, 0, 0, 0x0, 0x1, 0xA, ''),
(505319, 0, 0, 0x0, 0x1, 0xA, ''), 
(505320, 0, 0, 0x0, 0x1, 0xA, ''),
(505321, 0, 0, 0x0, 0x1, 0x0, '246218'),
(505322, 0, 0, 0x0, 0x1, 0x0, ''),
(505323, 0, 0, 0x0, 0x1, 0x0, '');

SET @OOGUID = 545800;
DELETE FROM gameobject WHERE guid>545799 and guid<545836;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `AiID`) VALUES
(@OOGUID+0, 209293, 974, 0, 0, 1, '', -4076.297, 6284.582, 13.48965, 4.799657, 0, 0, 0, 1, 180, 255, 1, 0), -- 209293 (Area: -1)
(@OOGUID+1, 209294, 974, 0, 0, 1, '', -4076.238, 6286.19, 13.6138, 4.81711, 0, 0, 0, 1, 180, 255, 1, 0), -- 209294 (Area: -1)
(@OOGUID+2, 209295, 974, 0, 0, 1, '', -4070.679, 6285.19, 13.18937, 2.408554, 0, 0, 0, 1, 180, 255, 1, 0), -- 209295 (Area: -1)
(@OOGUID+3, 209320, 974, 0, 0, 1, '', -4121.344, 6301.191, 13.11677, 2.740162, 0, 0, 0, 1, 180, 255, 1, 0), -- 209320 (Area: -1)
(@OOGUID+4, 209342, 974, 0, 0, 1, '', -4126.568, 6322.476, 13.11676, 1.099556, 0, 0, 0, 1, 180, 255, 1, 0), -- 209342 (Area: -1)
(@OOGUID+5, 209342, 974, 0, 0, 1, '', -4130.929, 6324.452, 13.11676, 1.204277, 0, 0, 0, 1, 180, 255, 1, 0), -- 209342 (Area: -1)
(@OOGUID+6, 209342, 974, 0, 0, 1, '', -4128.738, 6323.531, 13.11676, 1.151916, 0, 0, 0, 1, 180, 255, 1, 0), -- 209342 (Area: -1)
(@OOGUID+7, 209753, 974, 0, 0, 1, '', -4086.997, 6180.832, 14.74653, 6.035173, 0, 0, 0, 1, 180, 255, 1, 0), -- 209753 (Area: -1)
(@OOGUID+8, 209818, 974, 0, 0, 1, '', -4142.936, 6388.352, 12.71087, 2.539454, 0, 0, 0, 1, 180, 255, 1, 0), -- 209818 (Area: -1)
(@OOGUID+9, 209819, 974, 0, 0, 1, '', -4147.764, 6390.693, 13.11675, 1.902406, 0, 0, 0, 1, 180, 255, 1, 0), -- 209819 (Area: -1)
(@OOGUID+10, 209820, 974, 0, 0, 1, '', -4142.321, 6385.792, 12.4233, 5.873035, 0, 0, 0, 1, 180, 255, 1, 0), -- 209820 (Area: -1)
(@OOGUID+11, 235370, 974, 0, 0, 1, '', -4253.208, 6311.089, 13.11677, 1.906481, 0, 0, 0, 1, 180, 255, 1, 0), -- 235370 (Area: -1)
(@OOGUID+12, 235371, 974, 0, 0, 1, '', -4254.005, 6310.101, 15.98044, 1.637081, 0, 0, 0, 1, 180, 255, 1, 0), -- 235371 (Area: -1)
(@OOGUID+13, 267774, 974, 0, 0, 1, '', -4210.908, 6244.987, 13.10356, 2.713986, 0, 0, 0, 1, 180, 255, 1, 0), -- 267774 (Area: -1)
(@OOGUID+14, 267775, 974, 0, 0, 1, '', -4212.792, 6241.396, 12.7931, 3.586657, 0, 0, 0, 1, 180, 255, 1, 0), -- 267775 (Area: -1)
(@OOGUID+15, 267776, 974, 0, 0, 1, '', -4201.522, 6238.404, 13.11675, 5.288351, 0, 0, 0, 1, 180, 255, 1, 0), -- 267776 (Area: -1)
(@OOGUID+16, 267836, 974, 0, 0, 1, '', -4139.212, 6090.641, 8.525117, 2.740162, 0, 0, 0, 1, 180, 255, 1, 0), -- 267836 (Area: 0)
(@OOGUID+17, 267847, 974, 0, 0, 1, '', -4163.582, 6091.204, 8.525113, 3.455756, 0, 0, 0, 1, 180, 255, 1, 0), -- 267847 (Area: 0)
(@OOGUID+18, 267848, 974, 0, 0, 1, '', -4164.469, 6094.196, 8.525113, 3.831001, 0, 0, 0, 1, 180, 255, 1, 0), -- 267848 (Area: 0)
(@OOGUID+19, 267849, 974, 0, 0, 1, '', -4166.064, 6089.66, 8.526849, 0.6283169, 0, 0, 0, 1, 180, 255, 1, 0), -- 267849 (Area: 0)
(@OOGUID+20, 267850, 974, 0, 0, 1, '', -4166.889, 6093.343, 8.525113, 0.2007113, 0, 0, 0, 1, 180, 255, 1, 0), -- 267850 (Area: 0)
(@OOGUID+21, 269654, 974, 0, 0, 1, '', -4189.545, 6037.101, 6.592328, 5.19811, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+22, 269654, 974, 0, 0, 1, '', -4190.141, 6014.097, 5.780078, 1.094468, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+23, 269654, 974, 0, 0, 1, '', -4180.639, 6009.917, 5.603321, 1.234095, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+24, 269654, 974, 0, 0, 1, '', -4191.354, 6035.88, 6.48239, 5.188609, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+25, 269654, 974, 0, 0, 1, '', -4186.573, 6012.41, 5.764399, 1.164282, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+26, 269654, 974, 0, 0, 1, '', -4165.233, 6019.992, 6.80102, 2.673987, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+27, 269654, 974, 0, 0, 1, '', -4166.168, 6014.873, 6.86055, 3.049898, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+28, 269654, 974, 0, 0, 1, '', -4165.807, 6002.394, 6.943934, 3.115356, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+29, 269654, 974, 0, 0, 1, '', -4183.018, 6011.021, 5.750341, 1.216641, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+30, 269654, 974, 0, 0, 1, '', -4193.405, 6034.806, 6.682002, 5.219549, 0, 0, 0, 1, 180, 255, 1, 0), -- 269654 (Area: 0)
(@OOGUID+31, 270925, 974, 0, 0, 1, '', -4189.179, 5987.779, 5.955768, 1.490041, 0, 0, 0.5699971, 0.8216467, 180, 255, 1, 0), -- 270925 (Area: 0)
(@OOGUID+32, 270926, 974, 0, 0, 1, '', -4191.329, 5987.343, 6.734368, 1.713306, 0, 0, 0.5699971, 0.8216467, 180, 255, 1, 0), -- 270926 (Area: 0)
(@OOGUID+33, 272825, 974, 0, 0, 1, '', -4189.743, 6002.192, 5.157309, 1.151916, 0, 0, 0, 1, 180, 255, 1, 0); -- 272825 (Area: 0)

REPLACE INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `auras`) VALUES
(121537, 0, 0x0, 0x1, ''), -- 121537 
(123691, 0, 0x0, 0x1, ''), -- 123691
(121535, 0, 0x0, 0x1, ''), -- 121535
(121543, 0, 0x0, 0x1, ''), -- 121543
(123735, 0, 0x0, 0x1, ''), -- 123735
(123755, 0, 0x0, 0x1, ''), -- 123755
(121542, 0, 0x0, 0x1, ''), -- 121542
(120928, 0, 0x0, 0x1, ''), -- 120928
(121295, 0, 0x0, 0x1, ''), -- 121295
(122323, 0, 0x3000000, 0x1, '243893'),
(125089, 0, 0x0, 0x1, ''),
(121561, 0, 0x0, 0x1, '242908'),
(122899, 0, 0x0, 0x1, '244950'), -- 122899
(121527, 0, 0x0, 0x1, '242932'), -- 121527
(121529, 0, 0x0, 0x1, '243196'), -- 121529
(121528, 0, 0x0, 0x1, '245160'); -- 121528

DELETE FROM `npc_text` WHERE `ID` IN (31826, 18290, 7381);
INSERT INTO `npc_text` (`ID`, `Probability0`, `Probability1`, `Probability2`, `Probability3`, `Probability4`, `Probability5`, `Probability6`, `Probability7`, `BroadcastTextId0`, `BroadcastTextId1`, `BroadcastTextId2`, `BroadcastTextId3`, `BroadcastTextId4`, `BroadcastTextId5`, `BroadcastTextId6`, `BroadcastTextId7`, `VerifiedBuild`) VALUES
(31826, 1, 0, 0, 0, 0, 0, 0, 0, 130589, 0, 0, 0, 0, 0, 0, 0, 26365), -- 31826
(18290, 1, 0, 0, 0, 0, 0, 0, 0, 53059, 0, 0, 0, 0, 0, 0, 0, 26365), -- 18290
(7381, 1, 0, 0, 0, 0, 0, 0, 0, 10117, 0, 0, 0, 0, 0, 0, 0, 26365); -- 7381

REPLACE INTO `creature_template` (`entry`, `trainer_type`, `gossip_menu_id`, `exp`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `npcflag2`, `RangeAttackTime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VehicleId`, `HoverHeight`, `InhabitType`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `ControllerID`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `WorldEffects`, `PassiveSpells`, `flags_extra`, `speed_walk`, `speed_run`, `BaseAttackTime`) VALUES
(123755, 0, 0, 0, 25, 25, 1555, 0, 0, 2000, 1, 768, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 123755
(125089, 0, 0, 0, 110, 110, 35, 0, 0, 2000, 1, 768, 67110912, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 125089
(122323, 0, 0, 0, 100, 100, 35, 0, 0, 2000, 1, 33587968, 67143680, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 128, 1, 1.142857, 2000), -- 122323
(121535, 0, 0, 0, 110, 110, 1555, 0, 0, 2000, 1, 768, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121535
(121537, 0, 0, 0, 110, 110, 1555, 0, 0, 2000, 1, 768, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121537
(121541, 0, 0, 0, 110, 110, 190, 0, 0, 2000, 1, 33555200, 67110912, 1, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121541
(121542, 0, 0, 0, 110, 110, 1555, 128, 0, 2000, 1, 768, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121542
(121543, 0, 0, 0, 110, 110, 1555, 128, 0, 2000, 1, 768, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121543
(121295, 0, 0, 0, 110, 110, 35, 0, 0, 2000, 1, 256, 67110912, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 128, 1, 1.142857, 2000), -- 121295
(123691, 0, 0, 0, 110, 110, 1555, 0, 0, 2000, 1, 768, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 123691
(120928, 0, 21057, 0, 110, 110, 1555, 1, 0, 2000, 1, 768, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 120928
(123735, 0, 0, 0, 110, 110, 1555, 128, 0, 2000, 1, 768, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 123735
(122899, 0, 0, 0, 112, 112, 1771, 0, 0, 2000, 1, 0, 2099200, 0, 0, 1, 3, 0, 2, 112, 2, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 122899
(122943, 0, 0, 0, 111, 111, 1771, 0, 0, 2000, 1, 0, 2048, 0, 0, 1, 3, 0, 1, 111, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 0.4, 0.2857143, 2000), -- 122943
(121527, 0, 0, 0, 112, 112, 35, 0, 0, 2000, 1, 256, 2048, 0, 0, 1, 3, 0, 2, 112, 2, 2000, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121527
(121528, 0, 0, 0, 112, 112, 35, 0, 0, 2000, 1, 256, 2048, 0, 0, 1, 3, 0, 2, 112, 2, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121528
(121529, 0, 0, 0, 112, 112, 35, 0, 0, 2000, 1, 256, 2048, 0, 0, 1, 3, 0, 2, 112, 2, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121529
(121561, 0, 0, 0, 2, 2, 35, 0, 0, 2000, 1, 33555200, 67635200, 0, 0, 1, 3, 0, 2, 2, 2, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000), -- 121561
(106548, 0, 0, 0, 110, 110, 35, 0, 0, 2000, 1, 0, 2048, 0, 0, 1, 3, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, '', '', 0, 1, 1.142857, 2000); -- 106548

REPLACE INTO `npc_vendor` (`entry`, `item`, `slot`, `maxcount`, `ExtendedCost`, `PlayerConditionID`, `IgnoreFiltering`, `VerifiedBuild`, `money`, `RandomPropertiesSeed`, `RandomPropertiesID`, `Context`, `BonusListID`, `ItemModifiers`) VALUES
(121542, 147777, 1, 0, 0, 0, 0, 26365, 1000, 0, 0, 0, '', ''), -- 147777
(121542, 147776, 2, 0, 0, 0, 0, 26365, 1000, 0, 0, 0, '', ''), -- 147776
(121542, 19222, 3, 0, 0, 0, 0, 26365, 10, 0, 0, 0, '', ''), -- 19222
(121543, 147774, 1, 0, 0, 0, 0, 26365, 25000, 0, 0, 0, '', ''), -- 14777
(123735, 151257, 1, 0, 0, 0, 0, 26365, 25000, 0, 0, 0, '', ''), -- 151257
(123735, 151256, 2, 0, 0, 0, 0, 26365, 25000, 0, 0, 0, '', ''), -- 151256
(123735, 151605, 3, 0, 0, 0, 0, 26365, 30000, 0, 0, 0, '', ''), -- 151605
(123735, 151602, 4, 0, 0, 0, 0, 26365, 20000, 0, 0, 0, '', ''), -- 151602
(123735, 151604, 5, 0, 0, 0, 0, 26365, 20000, 0, 0, 0, '', ''), -- 151604
(123735, 151603, 6, 0, 0, 0, 0, 26365, 20000, 0, 0, 0, '', ''), -- 151603
(123735, 151599, 7, 0, 0, 0, 0, 26365, 20000, 0, 0, 0, '', ''), -- 151599
(123735, 151600, 8, 0, 0, 0, 0, 26365, 20000, 0, 0, 0, '', ''), -- 151600
(123735, 151601, 9, 0, 0, 0, 0, 26365, 20000, 0, 0, 0, '', ''); -- 151601

DELETE FROM creature_equip_template WHERE CreatureID in (122899);
INSERT INTO `creature_equip_template` (`CreatureID`, `ItemID1`, `ItemID2`, `ItemID3`, `ItemID4`, `ItemID5`, `ItemID6`) VALUES
(122899, 124542, 0, 0, 0, 0, 0); -- 122899

UPDATE `creature_template` SET `exp`=0, `MinLevel`=110, `MaxLevel`=110, `faction`=35, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=768, `unit_flags2`=67110912, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=125089;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=100, `MaxLevel`=100, `faction`=35, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=33587968, `unit_flags2`=67143680, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3, `flags_extra`=`flags_extra`|128 WHERE `entry`=122323;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=110, `MaxLevel`=110, `faction`=1555, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry` IN (121535, 121537, 123691);
UPDATE `creature_template` SET `exp`=0, `MinLevel`=110, `MaxLevel`=110, `faction`=190, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=33555200, `unit_flags2`=67110912, `unit_flags3`=1, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=121541;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=110, `MaxLevel`=110, `faction`=1555, `npcflag`=128, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry` IN (121542, 121543, 123735);
UPDATE `creature_template` SET `exp`=0, `MinLevel`=110, `MaxLevel`=110, `faction`=35, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=256, `unit_flags2`=67110912, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3, `flags_extra`=`flags_extra`|128 WHERE `entry`=121295;
UPDATE `creature_template` SET `gossip_menu_id`=21057, `exp`=0, `MinLevel`=110, `MaxLevel`=110, `faction`=1555, `npcflag`=1, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=120928;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=25, `MaxLevel`=25, `faction`=1555, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=768, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=123755;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=2, `MaxLevel`=2, `faction`=35, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=33555200, `unit_flags2`=67635200, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelMin`=2, `ScaleLevelMax`=2, `ScaleLevelDelta`=2, `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=121561;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=112, `MaxLevel`=112, `faction`=1771, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=0, `unit_flags2`=2099200, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelMin`=2, `ScaleLevelMax`=112, `ScaleLevelDelta`=2, `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=122899;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=111, `MaxLevel`=111, `faction`=1771, `speed_run`='0.2857143', `speed_walk`='0.4', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=0, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelMin`=1, `ScaleLevelMax`=111, `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=122943;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=112, `MaxLevel`=112, `faction`=35, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=256, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelMin`=2, `ScaleLevelMax`=112, `ScaleLevelDelta`=2, `ScaleLevelDuration`=2000, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=121527;
UPDATE `creature_template` SET `exp`=0, `MinLevel`=112, `MaxLevel`=112, `faction`=35, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=256, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelMin`=2, `ScaleLevelMax`=112, `ScaleLevelDelta`=2, `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry` IN (121528, 121529);
UPDATE `creature_template` SET `exp`=0, `MinLevel`=110, `MaxLevel`=110, `faction`=35, `speed_run`='1.142857', `speed_walk`='1', `BaseAttackTime`=2000, `RangeAttackTime`=2000, `unit_class`=1, `unit_flags`=0, `unit_flags2`=2048, `unit_flags3`=0, `HoverHeight`='1', `ScaleLevelDuration`=100, `ControllerID`=-1, `InhabitType`=`InhabitType`|3 WHERE `entry`=106548;
UPDATE `creature_template` SET `mechanic_immune_mask`='617299967', `ScriptName`='npc_death_metal_knight' WHERE (`entry`='122899');
UPDATE `creature_template` SET `ScriptName`='npc_jay_maguire' WHERE (`entry`='120928');
UPDATE `creature_template` SET `ScriptName`='npc_darkmoon_manager' WHERE (`entry`='125089');
UPDATE `creature_template` SET `ScriptName`='npc_darkmoon_ghoul' WHERE (`entry`='122943');
UPDATE `creature_template` SET `ScriptName`='npc_devlynn_styx' WHERE (`entry`='121527');
UPDATE `creature_template` SET `lootid`='122899', flags_extra = 512 WHERE (`entry`='122899');
UPDATE `creature_template` SET `flags_extra`='128' WHERE (`entry`='125089');

DELETE FROM spell_script_names WHERE spell_id in (245162);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
('245162', 'spell_army_of_the_dead');

UPDATE `gameobject_template` SET `Data3`='312300' WHERE (`entry`='269654');
UPDATE `gameobject_template` SET `Data3`='312300' WHERE (`entry`='272825');

DELETE FROM `creature_template_spell` WHERE (`entry`='122943') AND (`spell`='245255');
DELETE FROM `creature_template_spell` WHERE (`entry`='122943') AND (`spell`='245256');
DELETE FROM `creature_template_spell` WHERE (`entry`='122943') AND (`spell`='245245');

REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
('13', '1', '245245', '0', '0', '31', '0', '3', '121527', '0', '0', '0', '', 'to target');

DELETE FROM spell_target_position WHERE id in (245105);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
('245105', '974', '-4179.87', '6024.83', '6.2537', '0');

DELETE FROM creature_text WHERE entry in (122899,121527);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
('121527', '0', '0', '|TInterface\\Icons\\WARRIOR_DISRUPTINGSHOUT.BLP:20|tДевлинн Стикс прыгает вниз и издает |cFFFF0000|Hspell:245150|h[крик]|h|r, который поражает рыцаря металла!', '41', '0', '100', '0', '0', '0', '132722', 'Девлинн Стикс'),
('122899', '0', '0', 'Я докажу раз и навсегда, что только мертвый рыцарь может быть королем металла.', '14', '0', '100', '0', '0', '0', '132118', 'Рыцарь металла'),
('122899', '1', '0', 'Вы отважно сражаетесь, но ваши тела все равно замерзают и рассыпаются!', '14', '0', '100', '0', '0', '0', '132119', 'Рыцарь металла to Рыцарь металла'),
('122899', '2', '0', 'Тьма наступает, банши дозор начинает и грустную песню поет!', '14', '0', '100', '0', '0', '0', '132120', 'Рыцарь металла'),
('122899', '3', '0', 'И мое войско получит новую душу!', '14', '0', '100', '0', '0', '0', '132123', 'Рыцарь металла to Player'),
('122899', '3', '1', 'И моя музыка получит новую душу!', '14', '0', '100', '0', '0', '0', '132122', 'Рыцарь металла to Player'),
('122899', '4', '0', 'Я вурдалаков призову, и войско их восстанет – погибелью вашей станет.', '14', '0', '100', '0', '0', '0', '132121', 'Рыцарь металла'),
('122899', '5', '0', '|TInterface\\Icons\\SPELL_DEATHKNIGHT_ARMYOFTHEDEAD.BLP:20|tРыцарь металла призывает |cFFFF0000|Hspell:245162|h[\"Войско мертвых\"]|h|r, и оно атакует Девлинн Стикс!', '41', '0', '100', '0', '0', '0', '132723', 'Рыцарь металла'),
('122899', '6', '0', 'Это еще что?! Меня нельзя победить!', '14', '0', '100', '0', '0', '0', '132125', 'Рыцарь металла to Player');

DELETE FROM areatrigger_actions WHERE entry in (10677);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES 
('10677', '0', '0', '1', '0', '8', '244954', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Стонущая стена');

DELETE FROM areatrigger_template WHERE entry in (10677);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES 
('10677', '244955', '15511', '244955', '0', '1', '1', '20', '20', '3', '3', '1', '53.9998', '5.99998', '0', '0', '3141', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Wailing Wall');

DELETE FROM areatrigger_data WHERE entry in (10677);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES 
('10677', '244955', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

DELETE FROM creature_text WHERE entry in (120928);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES 
('120928', '0', '0', 'Если хочешь оттянуться, через 20 минут начнется концерт \"Чумного вепря\"!', '14', '0', '100', '0', '0', '0', '0', 'NPC_JAY_MAGUIRE'),
('120928', '1', '0', '\"Чумной вепрь\" со своей лучшей андерграундной программой на всем восточном побережье! Звезда сегодняшнего вечера выйдет на сцену через 10 минут!', '14', '0', '100', '0', '0', '0', '0', 'NPC_JAY_MAGUIRE'),
('120928', '2', '0', '\"Чумной вепрь\" выйдет на сцену уже через минуту! Присоединяйтесь к нам в Котле рока на восточном берегу острова.', '14', '0', '100', '0', '0', '0', '0', 'NPC_JAY_MAGUIRE'),
('120928', '3', '0', 'Как настроение? Сейчас вас ждет нечто совершенно убойное! Разрешите представить... группа \"Чумной вепрь\"!', '14', '0', '100', '0', '0', '0', '0', 'NPC_JAY_MAGUIRE'),
('120928', '4', '0', 'Хочешь послушать отличную группу? Концерт \"Чумного вепря\" начнется через тридцать минут!', '14', '0', '100', '0', '0', '0', '0', 'NPC_JAY_MAGUIRE');

DELETE FROM game_event WHERE eventEntry in (71,72,73,74,79);
INSERT INTO `game_event` (`eventEntry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `world_event`) VALUES 
('71', '2018-05-01 00:10:00', '2025-06-01 00:10:00', '60', '1', '0', 'Darkmoon Concert \"Blight Boar\" Preparation 20 min', '0'),
('72', '2018-05-01 00:20:00', '2025-06-01 00:20:00', '60', '1', '0', 'Darkmoon Concert \"Blight Boar\" Preparation 10 min', '0'),
('73', '2018-05-01 00:29:00', '2025-06-01 00:29:00', '60', '1', '0', 'Darkmoon Concert \"Blight Boar\" Preparation 1 min', '0'),
('79', '2018-05-01 00:30:00', '2025-06-01 00:30:00', '60', '1', '0', 'Darkmoon Concert \"Blight Boar\"', '0'),
('74', '2018-05-01 00:00:00', '2025-06-01 00:00:00', '60', '1', '0', 'Darkmoon Concert \"Blight Boar\" Preparation 30 min', '0');

DELETE FROM creature_summon_groups WHERE summonerId in (125089);
INSERT INTO `creature_summon_groups` (`summonerId`, `id`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `count`, `actionType`, `distance`, `summonType`, `summonTime`) VALUES 
('125089', '0', '0', '0', '121529', '-4185.21', '6004.5', '9.05861', '1.35961', '0', '0', '0', '1', '312300'),
('125089', '1', '0', '0', '121527', '-4187.19', '6007.59', '9.05861', '1.01851', '0', '0', '0', '1', '312300'),
('125089', '2', '0', '0', '121528', '-4190.75', '6007.19', '9.05861', '1.01851', '0', '0', '0', '1', '312300'),
('125089', '3', '0', '0', '121561', '-4189.3', '5999.49', '11.6305', '0.701845', '0', '0', '0', '1', '312300'),
('125089', '4', '0', '0', '121561', '-4190.66', '6000.35', '11.6305', '1.83869', '0', '0', '0', '1', '312300'),
('125089', '5', '0', '0', '121295', '-4188.55', '6004.21', '9.33991', '1.23788', '0', '0', '0', '1', '313000'),
('125089', '6', '0', '0', '122899', '-4171.11', '6045.45', '6.5301', '4.28443', '0', '0', '0', '1', '312300'),
('125089', '7', '0', '0', '121535', '-4175.42', '6011.29', '5.59598', '4.32378', '0', '0', '0', '1', '312300'),
('125089', '8', '0', '0', '121535', '-4190.8', '6022.91', '5.84941', '4.24131', '0', '0', '0', '1', '312300'),
('125089', '9', '0', '0', '121535', '-4184.83', '6024.96', '6.2419', '4.27665', '0', '0', '0', '1', '312300'),
('125089', '10', '0', '0', '121535', '-4178.02', '6021.45', '5.93297', '4.38504', '0', '0', '0', '1', '312300'),
('125089', '11', '0', '0', '121537', '-4171.64', '6022.86', '5.90263', '4.29864', '0', '0', '0', '1', '312300'),
('125089', '12', '0', '0', '123691', '-4177.68', '6030.26', '5.95272', '4.32613', '0', '0', '0', '1', '312300');

DELETE FROM creature_loot_template WHERE entry in (122899);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES 
('122899', '151252', '3.1341', '0', '0', '1', '1', '0'),
('122899', '151253', '2.5517', '0', '0', '1', '1', '0'),
('122899', '151254', '1.5632', '0', '0', '1', '1', '0'),
('122899', '151255', '1.5096', '0', '0', '1', '1', '0'),
('122899', '151256', '48.567', '0', '0', '1', '1', '0'),
('122899', '151257', '48.0383', '0', '0', '1', '1', '0'),
('122899', '151265', '9.2567', '0', '0', '1', '1', '0'),
('122899', '151380', '0.7816', '0', '0', '1', '1', '0'),
('122899', '151381', '6.7739', '0', '0', '1', '1', '0'),
('122899', '151382', '1.4483', '0', '0', '1', '1', '0'),
('122899', '151383', '5.433', '0', '0', '1', '1', '0'),
('122899', '151386', '14.5441', '0', '0', '1', '1', '0'),
('122899', '151387', '14.8352', '0', '0', '1', '1', '0'),
('122899', '151388', '14.4981', '0', '0', '1', '1', '0'),
('122899', '151389', '14.0613', '0', '0', '1', '1', '0'),
('122899', '151390', '14.8046', '0', '0', '3', '3', '0'),
('122899', '151391', '17.3793', '0', '0', '4', '6', '0'),
('122899', '151392', '13.7778', '0', '0', '1', '1', '0'),
('122899', '151393', '16.2452', '0', '0', '1', '1', '0'),
('122899', '151394', '16', '0', '0', '2', '4', '0'),
('122899', '151397', '14.9655', '0', '0', '1', '1', '0'),
('122899', '151431', '16.092', '0', '0', '1', '1', '0'),
('122899', '151444', '15.9157', '0', '0', '1', '2', '0'),
('122899', '151473', '7.272', '0', '0', '1', '1', '0'),
('122899', '151478', '6.59', '0', '0', '1', '1', '0'),
('122899', '151479', '3.6628', '0', '0', '1', '1', '0'),
('122899', '151481', '5.5096', '0', '0', '1', '1', '0'),
('122899', '151753', '3.1418', '0', '0', '1', '1', '0'),
('122899', '151754', '4.4061', '0', '0', '1', '1', '0'),
('122899', '151755', '2.567', '0', '0', '1', '1', '0'),
('122899', '151756', '4.4981', '0', '0', '1', '1', '0'),
('122899', '151757', '6.613', '0', '0', '1', '1', '0'),
('122899', '151758', '7.0575', '0', '0', '1', '1', '0'),
('122899', '151759', '2.3372', '0', '0', '1', '1', '0'),
('122899', '151760', '4.3448', '0', '0', '1', '1', '0');