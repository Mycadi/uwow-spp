DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '212356' AND `spell_effect` = '212921' AND `type` = '1' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Раскол души (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '212356' AND `spell_effect` = '236471' AND `type` = '1' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Раскол души (Талант чести)'; 

DELETE FROM `spell_script_names` WHERE `spell_id` = '145108' AND `ScriptName` = 'spell_dru_ysera_gift'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('145108', 'spell_dru_ysera_gift'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '248643' AND `ScriptName` = 'spell_monk_tigereye_brew_proc';
DELETE FROM `spell_script_names` WHERE `spell_id` = '247483' AND `ScriptName` = 'spell_monk_tigereye_brew';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('247483', 'spell_monk_tigereye_brew');

DELETE FROM `spell_concatenate_aura` WHERE `spellid` = '-159195' AND `effectSpell` = '0' AND `auraId` = '155783' AND `effectAura` = '0' AND `option` = '4'; 
DELETE FROM `spell_concatenate_aura` WHERE `spellid` = '155783' AND `effectSpell` = '0' AND `auraId` = '159195' AND `effectAura` = '0' AND `option` = '4'; 
DELETE FROM `spell_concatenate_aura` WHERE `spellid` = '155783' AND `auraId` = '159195'; 
INSERT INTO `spell_concatenate_aura` (`spellid`, `auraId`, `effectSpell`, `option`, `comment`) VALUES ('155783', '159195', '0', '1', 'Искусность: Страж природы'); 
INSERT INTO `spell_concatenate_aura` (`spellid`, `auraId`, `effectSpell`, `option`, `comment`) VALUES ('155783', '159195', '0', '2', 'Искусность: Страж природы');


UPDATE `spell_proc_event` SET `procFlags` = '4' , `CustomChance` = '15' WHERE `entry` = '203563'; 

UPDATE `spell_proc_event` SET `procFlags` = '0' , `CustomChance` = '0' , `Cooldown` = '0.2' WHERE `entry` = '238125'; 

DELETE FROM `areatrigger_data` WHERE `entry` = '1613' AND `spellId` = '13813'; 
DELETE FROM `areatrigger_data` WHERE `entry` = '4424' AND `spellId` = '187651'; 
DELETE FROM `areatrigger_data` WHERE `entry` = '4435' AND `spellId` = '187699'; 
DELETE FROM `areatrigger_data` WHERE `entry` = '9810' AND `spellId` = '236775'; 
DELETE FROM `areatrigger_data` WHERE `entry` = '2392' AND `spellId` = '162496';
DELETE FROM `areatrigger_data` WHERE `entry` = '5084' AND `spellId` = '194277';
DELETE FROM `areatrigger_data` WHERE `entry` = '5084' AND `spellId` = '194278';  
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES
('1613','13813','6094','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0'),
('4424','187651','9170','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0'),
('4435','187699','9181','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0'),
('9810','236775','14725','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0'),
('2392','162496','6966','0','0','0','0','0','1','0','0','0','0','0','0','0','1','0','1','0'),
('5084','194278','9805','0','0','0','0','1000','1','0','0','0','0','0','0','0','1','0','1','0');
DELETE FROM `areatrigger_template` WHERE `entry` = '1613' AND `spellId` = '82938' AND `customEntry` = '6094'; -- spellId not exist
UPDATE `areatrigger_template` SET `Radius` = '3' , `RadiusTarget` = '3' WHERE `entry` = '1613' AND `spellId` = '82938' AND `customEntry` = '6094'; -- 13813
UPDATE `areatrigger_template` SET `Radius` = '3' , `RadiusTarget` = '3' WHERE `entry` = '4424' AND `spellId` = '187651' AND `customEntry` = '9170'; -- 187651
UPDATE `areatrigger_template` SET `Radius` = '3' , `RadiusTarget` = '3' WHERE `entry` = '4435' AND `spellId` = '187699' AND `customEntry` = '9181'; -- 187699
UPDATE `areatrigger_template` SET `Radius` = '3' , `RadiusTarget` = '3' WHERE `entry` = '2392' AND `spellId` = '162496' AND `customEntry` = '6966'; -- 162496
UPDATE `areatrigger_template` SET `Radius` = '3' , `RadiusTarget` = '3' WHERE `entry` = '9810' AND `spellId` = '236775' AND `customEntry` = '14725'; -- 236775

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '117952' AND `spell_effect` = '-235054' AND `type` = '10' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '235054' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Императорский конденсатор'; 
UPDATE `spell_linked_spell` SET `spell_trigger` = '-117952' , `type` = '0' , `caster` = '3' , `target` = '3' WHERE `spell_trigger` = '117952' AND `spell_effect` = '-235054' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '235054' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Императорский конденсатор'; 

UPDATE `spell_dummy_trigger` SET `handlemask` = '8' WHERE `spell_id` = '200653' AND `spell_trigger` = '200654' AND `option` = '5' AND `aura` = '0'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '200653';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES 
('200653', '30', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', 'Избавление Тира'), 
('200653', '30', '3', '0', '16', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Избавление Тира');

DELETE FROM `spell_proc_event` WHERE `entry` = '155783'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('155783', '2148042752', '2'); 
DELETE FROM `spell_script_names` WHERE `spell_id` = '155783' AND `ScriptName` = 'spell_dru_natures_guardian'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('155783', 'spell_dru_natures_guardian');


UPDATE `spell_aura_dummy` SET `effectmask` = '2' WHERE `spellId` = '228532' AND `spellDummyId` = '206478' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '4'; 

UPDATE `spell_proc_event` SET `Cooldown` = '0' WHERE `entry` = '195222'; 

UPDATE `spell_aura_dummy` SET `effectmask` = '3' WHERE `spellId` = '13812' AND `spellDummyId` = '199543';

DELETE FROM `spell_script_names` WHERE `spell_id` = '115181' AND `ScriptName` = 'spell_monk_breath_of_fire'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('115181', 'spell_monk_breath_of_fire'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '115181' AND `spell_effect` = '227681' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '213183' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '600' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Отвар драконьего пламени'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '115181' AND `spell_effect` = '202274' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '202272' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '200' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Воспламеняющий отвар (Талант чести)'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '202274';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '115181' AND `spell_effect` = '195630' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '251829' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Monk T21 Brewmaster 2P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '115181' AND `spell_effect` = '195630' AND `type` = '3' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '117906' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Верткий задира'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '115181' AND `spell_effect` = '123725' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '6' AND `hastalent` = '121253' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пламенное дыхание'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '115181' AND `spell_effect` = '123725' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '6' AND `hastalent` = '196733' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пламенное дыхание'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '115181' AND `spell_effect` = '115203' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '224489' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-2000' AND `randList` = '' AND `comment` = 'Старинный отвар огнекаменного странника'; 

UPDATE `spell_dummy_trigger` SET `option` = '0' , `handlemask` = '8' WHERE `spell_id` = '196734' AND `spell_trigger` = '196732';


DELETE FROM `areatrigger_actions` WHERE `entry` = '6777';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `actionType`, `targetFlags`, `spellId`, `comment`) VALUES 
('6777', '11312', '15', '4194304', '183416', 'Аура жертвенности'); 
INSERT IGNORE INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('11312', 'spell_pal_at_aura_of_sacrifice');

DELETE FROM `spell_script_names` WHERE `spell_id` = '199324' AND `ScriptName` = 'spell_pal_divine_vision'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('199324', 'spell_pal_divine_vision'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-196770' AND `spell_effect` = '-211805';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('-196770', '-211805', 'Предвестие бури'); 

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '210152' AND `spell_trigger` = '245862' AND `option` = '4' AND `aura` = '242226'; 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '188499' AND `spell_trigger` = '245862' AND `option` = '4' AND `aura` = '242226'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '210152' AND `spell_effect` = '245862';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '188499' AND `spell_effect` = '245862';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `cooldown`, `hitmask`, `comment`) VALUES 
('210152', '245862', '242226', '0', '1', 'Item - Demon Hunter T20 Havoc 2P Bonus'), 
('188499', '245862', '242226', '0', '1', 'Item - Demon Hunter T20 Havoc 2P Bonus');

UPDATE `spell_proc_event` SET `procFlags` = '0', `Cooldown` = '0.1' WHERE `entry` = '68164';


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '228260' AND `spell_effect` = '-232698' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик бездны - снятие облика тьмы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-194249' AND `spell_effect` = '232698' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик бездны - облик тьмы'; 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '193320' AND `spellDummyId` = '193213' AND `option` = '1' AND `effectDummy` = '0' AND `effectmask` = '1';

UPDATE `spell_proc_event` SET `procFlags` = '0' WHERE `entry` = '242953';


DELETE FROM `spell_script_names` WHERE `spell_id` = '215479' AND `ScriptName` = 'spell_monk_ib'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('215479', 'spell_monk_ib'); 

UPDATE `areatrigger_actions` SET `actionType` = '0' WHERE `entry` = '7326' AND `customEntry` = '0' AND `id` = '0';

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 32768+4096 , `SpellFamilyMask2` = 1024+4194304 , `SpellFamilyMask3` = 2097152+16777216+8 WHERE `entry` = '210702'; 

DELETE FROM `spell_target_filter` WHERE `spellId` = '213121';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `effectMask`, `resizeType`, `count`, `addcaster`, `comments`) VALUES 
('213121', '31', '9', '0', '0', '0', '1', '1', '2', '0', 'Сила верховного друида');

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 131072+2048 WHERE `entry` = '199527';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '200025' AND `spell_effect` = '53651';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `duration`, `effectMask`, `actiontype`, `comment`) VALUES 
('200025', '53651', '6', '3', '3', '8000', '1', '21', 'Частица добродетели'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '200025';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `effectMask`, `resizeType`, `count`, `addcaster`, `comments`) VALUES 
('200025', '31', '0', '0', '0', '0', '6', '1', '3', '0', 'Частица добродетели'),
('200025', '31', '9', '0', '0', '0', '6', '0', '0', '0', 'Частица добродетели'),
('200025', '31', '3', '0', '16', '0', '6', '0', '0', '0', 'Частица добродетели');

DELETE FROM `spell_script_names` WHERE `spell_id` = '198013' AND `ScriptName` = 'spell_dh_eye_beam'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '213410' AND `ScriptName` = 'spell_dh_demonism'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('198013', 'spell_dh_eye_beam'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '213410';

UPDATE `spell_trigger` SET `aura` = '248083' WHERE `spell_id` = '248521' AND `spell_trigger` = '248522';

DELETE FROM `spell_target_filter` WHERE `spellId` = '199486';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `effectMask`, `resizeType`, `count`, `addcaster`, `comments`) VALUES 
('199486', '16', '9', '0', '0', '0', '1', '0', '0', '0', 'Душевная связь (Талант чести)'),
('199486', '16', '25', '589', '0', '0', '1', '0', '0', '0', 'Душевная связь (Талант чести)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '49576' AND `spell_effect` = '51399' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '137008' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Хватка смерти - Провокация';

UPDATE `spell_proc_event` SET `Cooldown` = '0.5' WHERE `entry` = '79684';

UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '19434' AND `spell_effect` = '191043' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '190852' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '100' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '17' AND `group` = '0' AND `param` = '6' AND `randList` = '' AND `comment` = 'Наследие Ветрокрылых'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '191582';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `aura`, `comment`) VALUES 
('191582', '191580', '20', '1', '0', 'Шаманское исцеление'), 
('191582', '191591', '45', '1', '0', 'Шаманское исцеление');
UPDATE `spell_proc_event` SET `Cooldown` = '0' WHERE `entry` = '191582'; 
UPDATE `spell_proc_check` SET `hastalent` = '-191591' WHERE `entry` = '191582' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '0' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0';

UPDATE `areatrigger_template` SET `RadiusTarget` = '30' WHERE `entry` = '658' AND `spellId` = '120517' AND `customEntry` = '3921';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '253220' AND `spellDummyId` = '251857';
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '253220' AND `spellDummyId` = '238055';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `effectmask`, `comment`) VALUES ('253220', '251857', '5', '12', '1', 'Item - Mage T21 Fire 2P Bonus'); 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `effectmask`, `comment`) VALUES ('253220', '238055', '5', '12', '1', 'Предварительное воспламенение');

UPDATE `spell_proc_event` SET `Cooldown` = '0' WHERE `entry` = '203550';

DELETE FROM `spell_script_names` WHERE `spell_id` = '164815' AND `ScriptName` = 'spell_dru_sunfire_dot'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '164815' AND `spellDummyId` = '231050' AND `option` = '4'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('164815', 'spell_dru_sunfire_dot');

DELETE FROM `spell_script_names` WHERE `spell_id` = '253434' AND `ScriptName` = 'spell_dru_t21_4p_rest'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('253434', 'spell_dru_t21_4p_rest');

DELETE FROM `spell_proc_event` WHERE `entry` = '234110'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `procFlags`, `effectmask`) VALUES ('234110', '4', 0x000A22A8-0x2000, '1');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '106830' AND `spell_effect` = '-145152';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1822' AND `spell_effect` = '-145152';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1079' AND `spell_effect` = '-145152';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '210722' AND `spell_effect` = '-145152';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `effectMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `param`, `randList`, `comment`) VALUES
('106830','-145152','8','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','12','0','0','','Кровавые когти'),
('1822','-145152','8','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','12','0','0','','Кровавые когти'),
('1079','-145152','8','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','12','0','0','','Кровавые когти'),
('210722','-145152','8','0','3','0','0','0','0','0','0','0','0','0','0','0','0','0','-1','12','0','0','','Кровавые когти'); -- need rewamp bonus for artif spell
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '1079' AND `spellDummyId` = '145152'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '1822' AND `spellDummyId` = '145152'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '106830' AND `spellDummyId` = '145152'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '155722' AND `spellDummyId` = '145152'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '210723' AND `spellDummyId` = '145152';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `effectmask`, `comment`) VALUES
('210723', '145152', '1', '9', '2', '3', 'Кровавые когти'); -- need rewamp bonus for artif spell
