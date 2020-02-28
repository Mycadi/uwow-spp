ALTER TABLE `zone_loot_template`   
  ADD COLUMN `ClassificationMask` TINYINT(3) DEFAULT 0 NOT NULL AFTER `maxcount`;

DELETE FROM `creature_loot_template` WHERE `item` in (146903,146905,146906,146907,146908,146909);
replace into `zone_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `ClassificationMask`) values
('7543','146905','10','0','0','-1469057543','1','4');
replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
('1469057543','146903','0','0','1','1','1'),
('1469057543','146905','0','0','1','1','1'),
('1469057543','146906','0','0','1','1','1'),
('1469057543','146907','0','0','1','1','1'),
('1469057543','146908','0','0','1','1','1'),
('1469057543','146909','0','0','1','1','1');

DELETE FROM `creature_loot_template` WHERE `item` in (147482,147483,147484,147485,147486);
replace into `zone_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `ClassificationMask`) values
('7543','147482','3','0','0','-1474827543','1','4');
replace into `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`) values
('1474827543','147482','0','0','1','1','1'),
('1474827543','147483','0','0','1','1','1'),
('1474827543','147484','0','0','1','1','1'),
('1474827543','147485','0','0','1','1','1'),
('1474827543','147486','0','0','1','1','1');
