DELETE FROM `vehicle_template_accessory` WHERE (`EntryOrAura`='80098') AND (`seat_id`='0');

DELETE FROM waypoint_data_script where id = 80098;
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
(80098, 1, 184.135, -420.372, 110.867, 0, 0, 1, 0, 100, 0, 0),
(80098, 2, 155.087, -435.981, 121.828, 0, 2000, 1, 0, 100, 0, 0),
(80098, 3, 135.413, -424.362, 125.574, 0, 0, 1, 0, 100, 0, 0),
(80098, 4, 143.882, -403.948, 125.327, 0, 0, 1, 0, 100, 0, 0),
(80098, 5, 169.565, -406.845, 125.202, 0, 0, 1, 0, 100, 0, 0),
(80098, 6, 184.15, -417.56, 115.218, 0, 0, 1, 0, 100, 0, 0),
(80098, 7, 179.082, -420.37, 110.472, 0, 0, 1, 0, 100, 0, 0);

DELETE FROM spell_dummy_trigger where spell_id in (161811,161987,162085);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `group`,`comment`) VALUES 
(161811, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Tarbek - Noxious Spit'),
(161987, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Tarbek - Iron Reaver'),
(162085, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Tarbek - Imbued Iron Axe');

 -- Ярокрыл
DELETE FROM waypoint_data_script WHERE id in (7681300,7683700,7658500);
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`) VALUES 
(7681300, 1, 26.7769, -430.114, 110.77, 0, 0, 1),
(7681300, 2, 31.6178, -423.644, 110.962, 0, 0, 1),
(7681300, 3, 36.6789, -398.784, 110.727, 0, 0, 1),
(7681300, 4, 26.7769, -430.114, 110.77, 0, 0, 1),
(7683700, 1, 30.2494, -380.687, 110.727, 0, 0, 1),
(7683700, 2, 35.4452, -414.441, 110.765, 0, 0, 1),
(7683700, 3, 30.2494, -380.687, 110.727, 0, 0, 1),
(7658500, 1, 71.1633, -419.872, 139.789, 3, 5000, 1),
(7658500, 2, -3.46972, -405.176, 129.546, 0.03, 5000, 1),
(7658500, 3, 22.08, -404.66, 115.5, 0, 0, 1); 

UPDATE `creature_text` SET `BroadcastTextID`='91534' WHERE (`Entry`='76585') AND (`Text`='%s He begins to exhale |cFFFF0404|Hspell:155031|h[\"Engulfing Fire\"]|h|r!');

 -- Заела
DELETE FROM spell_dummy_trigger WHERE spell_id in (155720,155705);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `group`, `comment`) VALUES 
(155720, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Zaela - Black Iron Cyclone'),
(155705, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Zaela - Rebounding Blade');

DELETE FROM waypoint_data_script WHERE id = 8248000;
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
(8248000, 1, -12.4091, -123.59, 95.657, 0, 1000, 1, 0, 100, 0, 0),
(8248000, 2, 2.09523, -56.5817, 109.16, 0, 0, 1, 0, 100, 0, 0),
(8248000, 3, 14.7827, -12.476, 118.377, 0, 0, 1, 0, 100, 0, 0),
(8248000, 4, 35.8678, 12.8592, 121.689, 0, 0, 1, 0, 100, 0, 0),
(8248000, 5, 81.3443, 6.12083, 127.105, 0, 15000, 1, 0, 100, 0, 0),
(8248000, 6, 84.7788, -23.5574, 128.325, 0, 0, 1, 0, 100, 0, 0),
(8248000, 7, 90.5996, -81.4702, 120.84, 0, 0, 1, 0, 100, 0, 0),
(8248000, 8, 53.3684, -119.943, 130.064, 0, 0, 1, 0, 100, 0, 0),
(8248000, 9, 31.7618, -124.968, 123.817, 0, 1000, 1, 0, 100, 0, 0),
(8248000, 10, 51.3412, -1.54165, 122.773, 0, 0, 1, 0, 100, 0, 0);

DELETE FROM waypoint_data_script WHERE id >= 8242800 AND id <= 8242805;
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`) VALUES 
(8242800, 1, 45.85, -131.02, 98.6, 3.1, 0, 1),
(8242801, 1, 45.12, -120.77, 98.6, 3.1, 0, 1),
(8242802, 1, 46.9, -109.61, 98.6, 3.1, 0, 1),
(8242803, 1, 35.24, -97.68, 98.6, 4.7, 0, 1),
(8242804, 1, 23.92, -98.41, 98.6, 4.7, 0, 1),
(8242805, 1, 7.67, -97.51, 98.6, 4.7, 0, 1);

 -- Кирак
DELETE FROM spell_dummy_trigger WHERE spell_id in (177660,161207,161235,162589);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `group`, `comment`) VALUES 
(177660, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Kyrak - Debilitating Fixation'),
(161207, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Kyrak - Vileblood Serum target'),
(161235, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Kyrak - Vileblood Serum friendly'),
(162589, 0, 11, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Kyrak - Salve of Toxic Fumes');

 -- Горашан
DELETE FROM waypoint_data_script WHERE id in (7646400,7646401);
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
(7646400, 1, 126.402, -276.79, 95, 0, 0, 1, 0, 100, 0, 0),
(7646400, 2, 126.354, -240.77, 95, 0, 0, 1, 0, 100, 0, 0),
(7646400, 3, 162.362, -240.705, 95, 0, 0, 1, 0, 100, 0, 0),
(7646400, 4, 162.401, -276.824, 95, 0, 0, 1, 0, 100, 0, 0),
(7646401, 1, 162.362, -240.705, 95, 0, 0, 1, 0, 100, 0, 0),
(7646401, 2, 162.401, -276.824, 95, 0, 0, 1, 0, 100, 0, 0),
(7646401, 3, 126.402, -276.79, 95, 0, 0, 1, 0, 100, 0, 0),
(7646401, 4, 126.354, -240.77, 95, 0, 0, 1, 0, 100, 0, 0);

 -- [Небесный Путь] ---
 -- Ранжит
DELETE FROM  areatrigger_actions WHERE entry in (3683,3684,1590);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
('3683', '6062', '0', '1', '0', '8', '153759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ranjit - Windwall_L apply'),
('3683', '6062', '1', '42', '1', '8', '153759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ranjit - Windwall_L remove'),
('3684', '6062', '0', '1', '0', '8', '153759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ranjit - Windwall_L apply'),
('3684', '6062', '1', '42', '1', '8', '153759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ranjit - Windwall_L remove'),
('1590', '6062', '0', '1', '0', '8', '153759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ranjit - Windwall_L apply'),
('1590', '6062', '1', '42', '1', '8', '153759', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Ranjit - Windwall_L remove');

UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='165733') AND (`spell_trigger`='0') AND (`option`='4') AND (`aura`='0');
 -- Аракнат
UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='159215') AND (`spell_trigger`='0') AND (`option`='0') AND (`aura`='0');
 -- Misc
DELETE FROM creature WHERE id = 81088 AND position_x > 1090 AND position_x < 1105;
DELETE FROM creature WHERE guid IN (256797,256886,256802,256846,256916,256917,256885,256875,256908,256909,256855,256874);
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='76119');

 -- [Железные доки] --
 -- Нок'Гар
DELETE FROM `vehicle_attachment_offset` WHERE (`entry`='81297') AND (`seat_id`='0');
DELETE FROM `vehicle_template_accessory` WHERE (`EntryOrAura`='81297') AND (`seat_id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2596') AND (`customEntry`='7224') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2596') AND (`customEntry`='7224') AND (`id`='1');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2569') AND (`customEntry`='7198') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2569') AND (`customEntry`='7198') AND (`id`='1');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2614') AND (`customEntry`='7238') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2614') AND (`customEntry`='7238') AND (`id`='1');
 -- Головорезы Мрачных Путей
DELETE FROM `vehicle_template_accessory` WHERE (`EntryOrAura`='83672') AND (`seat_id`='2');
DELETE FROM `vehicle_template_accessory` WHERE (`EntryOrAura`='83672') AND (`seat_id`='0');
DELETE FROM `vehicle_template_accessory` WHERE (`EntryOrAura`='83672') AND (`seat_id`='1');
UPDATE creature_template SET unit_flags = 0 WHERE entry in (80805,80808,80816);
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2636') AND (`customEntry`='7276') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2636') AND (`customEntry`='7276') AND (`id`='1');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2634') AND (`customEntry`='7276') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2634') AND (`customEntry`='7276') AND (`id`='1');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2479') AND (`customEntry`='7089') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2479') AND (`customEntry`='7089') AND (`id`='1');
UPDATE `creature_text` SET `BroadcastTextID`='85476' WHERE (`Entry`='80805') AND (`Text`='You will burn!');
UPDATE `creature_text` SET `BroadcastTextID`='91795' WHERE (`Entry`='80816') AND (`Text`='|TInterface\\Icons\\ability_deathwing_bloodcorruption_earth.blp:20|t%s begins to create |cFFFF0000|Hspell:163689|h[Blood Sphere]|h|r!');
 -- Ошир
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='79852');
UPDATE `spell_dummy_trigger` SET `option`='11' WHERE spell_id in (178126,178128,161530);
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2279') AND (`customEntry`='6833') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2279') AND (`customEntry`='6833') AND (`id`='1');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='3596') AND (`customEntry`='8200') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='3596') AND (`customEntry`='8200') AND (`id`='1');
DELETE FROM `areatrigger_scripts` WHERE (`entry`='10154');
 -- Черепон
DELETE FROM waypoint_data_script WHERE id in (8361300);
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
(8361300, 1, 6754.64, -979.937, 22.8173, 0, 0, 1, 0, 100, 0, 0),
(8361300, 2, 6765.4, -999.779, 23.0471, 0, 0, 1, 0, 100, 0, 0),
(8361300, 3, 6771.34, -961.237, 23.0473, 0, 0, 1, 0, 100, 0, 0),
(8361300, 4, 6774.23, -978.967, 23.0455, 0, 0, 1, 0, 100, 0, 0),
(8361300, 5, 6783.6, -991.868, 23.0465, 0, 0, 1, 0, 100, 0, 0),
(8361300, 6, 6793.95, -1000.73, 23.0465, 0, 0, 1, 0, 100, 0, 0),
(8361300, 7, 6804.59, -988.942, 23.1284, 0, 0, 1, 0, 100, 0, 0),
(8361300, 8, 6813.55, -973.701, 23.0469, 0, 0, 1, 0, 100, 0, 0),
(8361300, 9, 6826.54, -988.055, 23.1396, 0, 0, 1, 0, 100, 0, 0),
(8361300, 10, 6834.98, -971.328, 23.0466, 0, 0, 1, 0, 100, 0, 0),
(8361300, 11, 6754.67, -980.256, 22.8168, 0, 0, 1, 0, 100, 0, 0);

UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='168227') AND (`spell_trigger`='168167') AND (`option`='0') AND (`aura`='0');
UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='168970') AND (`spell_trigger`='168400') AND (`option`='0') AND (`aura`='0');
UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='169073') AND (`spell_trigger`='168939') AND (`option`='0') AND (`aura`='0');

DELETE FROM instance_encounters WHERE entry IN (1754);
INSERT INTO `instance_encounters` (`entry`, `difficulty`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES
('1754', '-1', '0', '83612', '0', 'Черепон');

 -- Вечное Цветение
UPDATE creature_template SET lootid = 0 WHERE entry in (83893,83892);

DELETE FROM eventobject WHERE id in (732,731);
INSERT INTO `eventobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
('731', '1279', '7109', '7384', '262', '1', '', '623.204', '1734.31', '143.635', '4.83923'),
('732', '1279', '7109', '7330', '1', '1', '', '866.079', '-1223.83', '198.677', '0.10171');

DELETE FROM eventobject_template WHERE entry in (731,732);
INSERT INTO `eventobject_template` (`entry`, `name`, `radius`, `SpellID`, `WorldSafeLocID`, `ScriptName`) VALUES
('731', 'Everbloom - Enter to Stormwind', '5', '0', '4869', ''),
('732', 'Everbloom - Exit from Stormwind', '5', '0', '4870', '');

 -- Некропль Призрачной Луны
UPDATE `creature_template` SET `speed_walk`='0.9', `speed_run`='0.9' WHERE (`entry`='75966');
DELETE FROM creature WHERE id=75778 AND position_x > 1770 AND position_x < 1820;
UPDATE `creature_template_wdb` SET `Displayid1`='59486', `Displayid2`='0', `Displayid3`='0' WHERE (`Entry`='75977');
UPDATE `creature_template_wdb` SET `Displayid1`='58948', `Displayid2`='0', `Displayid3`='0' WHERE (`Entry`='85541');

UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2404') AND (`customEntry`='6975') AND (`id`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='8' WHERE (`entry`='2404') AND (`customEntry`='6975') AND (`id`='1');
UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='153240') AND (`spell_trigger`='0') AND (`option`='4') AND (`aura`='0');
UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='153691') AND (`spell_trigger`='0') AND (`option`='4') AND (`aura`='0');
UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='177691') AND (`spell_trigger`='0') AND (`option`='4') AND (`aura`='0');
UPDATE `spell_dummy_trigger` SET `option`='11' WHERE (`spell_id`='153623') AND (`spell_trigger`='0') AND (`option`='4') AND (`aura`='0');
UPDATE `creature_template_addon` SET `auras`='' WHERE (`entry`='76407');

 -- fix mythic spawns
UPDATE creature SET spawnmask = 8388870 WHERE map in (1176,1209,1195,1279,1175);
UPDATE creature SET spawnmask = 8913158 WHERE map = 1358;