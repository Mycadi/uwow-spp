UPDATE `gameobject_template` SET `ScriptName`='go_brewfest_music' WHERE `entry`=186221;
UPDATE `gameobject_template` SET `ScriptName`='go_midsummer_music' WHERE `entry`=188174;
UPDATE `gameobject_template` SET `ScriptName`='go_darkmoon_faire_music' WHERE `entry`=180335;
UPDATE `gameobject_template` SET `ScriptName`='go_pirate_day_music' WHERE `entry`=190363;

DELETE FROM gameobject WHERE id IN (180335,190363);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `AiID`, `state`, `isActive`, `personal_size`) VALUES
('180335', '0', '12', '87', '1', '65535', '', '-9545.05', '85.5244', '59.4632', '3.79461', '-0', '-0', '-0.947168', '0.320737', '300', '0', '0', '1', '0', '0'),
('180335', '1', '215', '215', '1', '65535', '', '-1470.55', '196.996', '-7.79192', '0.805653', '-0', '-0', '-0.39202', '-0.919957', '300', '0', '0', '1', '0', '0'),
('190363', '0', '5287', '43', '1', '1', '', '-14734', '533.353', '3.08796', '2.37013', '-0', '-0', '-0.926523', '-0.376239', '300', '0', '0', '1', '0', '0'),
('190363', '0', '5287', '35', '1', '1', '', '-14424.6', '531.979', '24.7592', '1.94603', '-0', '-0', '-0.826586', '-0.56281', '300', '0', '0', '1', '0', '0');

UPDATE `gameobject` SET `position_x`='1190.59', `position_y`='-4115.8559', `position_z`='21.54595', `orientation`='0.87352' WHERE (`guid`='72889');

REPLACE INTO `game_event_gameobject` (`eventEntry`, `guid`) SELECT 50, guid FROM gameobject WHERE id IN (190363);
REPLACE INTO `game_event_gameobject` (`eventEntry`, `guid`) SELECT 75, guid FROM gameobject WHERE id IN (180335);