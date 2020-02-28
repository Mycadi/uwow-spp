-- 7.3.5.26124
-- general
UPDATE `spell_bonus_data` SET `direct_bonus` = '5.5',`comments` = 'Слово Силы: Щит' WHERE `entry` = '17'; 
UPDATE `spell_bonus_data` SET `ap_bonus` = '0.2' WHERE `entry` = '10444'; 
UPDATE `spell_bonus_data` SET `direct_bonus` = '10',`comments` = 'Ледяная преграда' WHERE `entry` = '11426'; 
UPDATE `spell_bonus_data` SET `direct_bonus` = '0.92' WHERE `entry` = '77478'; 
UPDATE `spell_bonus_data` SET `ap_bonus` = '5' WHERE `entry` = '83381'; 
UPDATE `spell_bonus_data` SET `ap_bonus` = '0.46' WHERE `entry` = '95714'; 
UPDATE `spell_bonus_data` SET `ap_bonus` = '0.144' WHERE `entry` = '95725'; 
UPDATE `spell_bonus_data` SET `direct_bonus` = '42' WHERE `entry` = '116849'; 
UPDATE `spell_bonus_data` SET `ap_bonus` = '5.734' WHERE `entry` = '117418'; 
UPDATE `spell_bonus_data` SET `direct_bonus` = '9' WHERE `entry` = '152118'; 
UPDATE `spell_bonus_data` SET `ap_bonus` = '2' WHERE `entry` = '191259'; 
UPDATE `spell_bonus_data` SET `direct_bonus` = '0' , `dot_bonus` = '1' , `ap_bonus` = '0' , `ap_dot_bonus` = '1' WHERE `entry` = '191380'; 
UPDATE `spell_bonus_data` SET `direct_bonus` = '3.536' WHERE `entry` = '211545'; 
UPDATE `spell_bonus_data` SET `ap_bonus` = '3.24' WHERE `entry` = '218321'; 
UPDATE `spell_bonus_data` SET `direct_bonus` = '7' WHERE `entry` = '235313'; 
UPDATE `spell_bonus_data` SET `direct_bonus` = '7' WHERE `entry` = '235450'; 
UPDATE `spell_bonus_data` SET `ap_bonus` = '1' WHERE `entry` = '242735'; 
DELETE FROM `spell_bonus_data` WHERE `entry` = '243122'; 

-- warrior
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '6544' AND `spell_trigger` = '178367'; 
DELETE FROM `spell_trigger_delay` WHERE `spell_id` = '178367' AND `spell_trigger` = '52174' AND `target` = '0';
INSERT INTO `spell_trigger_delay` (`spell_id`, `spell_trigger`, `comment`) VALUES ('178367', '52174', 'Героический прыжок'); 

DELETE FROM `spell_pet_auras` WHERE `petEntry` = '119052' AND `spellId` = '236320';
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '236320' AND `spell_trigger` = '236321'; 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `comment`) VALUES 
('236320', '236321', '5', '0', '2', 'Боевое знамя (Талант чести)'); 

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_warr_shield_visual'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('197690', 'spell_warr_shield_visual');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-197690' AND `spell_effect` = '-147925';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-197690' AND `spell_effect` = '-146127';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
('-197690', '-147925', 'Визуал: Оборонительная стойка'),
('-197690', '-146127', 'Визуал: Оборонительная стойка');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '184362' AND `spell_effect` = '214545';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `duration`, `actiontype`, `comment`) VALUES 
('184362', '214545', '-215573', '0', '0', 'Яростный выпад'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '215538';
DELETE FROM `spell_proc_event` WHERE `entry` = '215538';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `effectmask`) VALUES 
('215538', '4', 2097152+536870912, '4', '1'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '248621';
DELETE FROM `spell_proc_event` WHERE `entry` = '248621';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `effectmask`) VALUES 
('248621', '4', '1073741824', '1'); 

UPDATE `spell_trigger` SET `spell_id` = '248579' , `spell_trigger` = '248195' WHERE `spell_id` = '209492' AND `spell_trigger` = '209493';
DELETE FROM `spell_proc_check` WHERE `entry` = '209492';
DELETE FROM `spell_proc_event` WHERE `entry` = '209492';
DELETE FROM `spell_proc_check` WHERE `entry` = '248579';
DELETE FROM `spell_proc_event` WHERE `entry` = '248579';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask3`, `effectmask`) VALUES 
('248579', '4', '1073741824', '32768', '1'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '248580';
DELETE FROM `spell_proc_event` WHERE `entry` = '248580';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask3`, `effectmask`) VALUES 
('248580', '4', '1073741824', '32768', '1'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '209541';
DELETE FROM `spell_proc_event` WHERE `entry` = '209541';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES 
('209541', '4', '33554432', '1'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '85739';
DELETE FROM `spell_proc_event` WHERE `entry` = '85739'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask3`, `effectmask`) VALUES 
('85739', '4', '1024', '8388608', '7'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '184367' AND `spell_effect` = '259679';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('184367', '259679', '6', '85739', 'Кровавый фарш'); 

DELETE FROM `spell_proc` WHERE `spellId` = '215570'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '190411' AND `spell_effect` = '215570';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `hastalent2`, `duration`, `actiontype`, `comment`) VALUES 
('190411', '215570', '5', '215569', '215570', '500', '21', 'Пушечное ядро'); 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '536870912' , `SpellFamilyMask3` = '0' WHERE `entry` = '206315' AND `effectmask` = '7'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '117313' AND `spell_effect` = '-202225';

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '238148';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `duration`, `randList`, `comment`) VALUES 
('205545', '243228', '0', '238148', '400', '243228 243223', 'Смерть и слава'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '71' AND `spell_trigger` = '195707';



-- dh
DELETE FROM `spell_trigger` WHERE `spell_id` = '235524';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `effectmask`, `comment`) VALUES ('235524', '235551', '3', '0', '0', '1', 'Пламя духа Тьмы'); 
UPDATE `spell_proc_event` SET `SpellFamilyMask1` = '16' , `procFlags` = '65536' , `effectmask` = '1' WHERE `entry` = '235524'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '235524';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '204021' AND `spell_effect` = '-235543';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '204598' AND `spell_effect` = '235543';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES ('204598', '235543', '1', '235524', 'Пламя духа Тьмы'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '235551' AND `spell_effect` = '-235543';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('235551', '-235543', '1', 'Пламя духа Тьмы'); 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '204598' AND `spell_trigger` = '235543';

DELETE FROM `spell_proc_check` WHERE `entry` = '192939';
DELETE FROM `spell_proc_event` WHERE `entry` = '192939';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('192939', '107', '262144', '0', '3'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '203556';
DELETE FROM `spell_proc_event` WHERE `entry` = '203556';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES 
('203556', '185123', '3', 'Мастер боевого клинка'); 

DELETE FROM `spell_concatenate_aura` WHERE `spellid` = '185164' AND `effectSpell` = '0' AND `auraId` = '211048' AND `effectAura` = '1' AND `option` = '1'; 

DELETE FROM `spell_script_names` WHERE `spell_id` = '211053' AND `ScriptName` = 'spell_dh_fel_barrage'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '222703' AND `spell_trigger` = '211053';
DELETE FROM `spell_trigger` WHERE `spell_id` = '222703' AND `spell_trigger` = '211053';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `effectmask`, `comment`) VALUES 
('222703', '211053', '23', '1', '5000', '1', 'Обстрел скверны'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '203557'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '203557';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES 
('203557', '162243', '1', 'Клинок Скверны'),
('203557', '203796', '1', 'Клинок Скверны'),
('203557', '235964', '1', 'Клинок Скверны'),
('203557', '203782', '1', 'Клинок Скверны');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '191427' AND `spell_effect` = '212800' AND `hastalent` = '193897';
UPDATE `spell_linked_spell` SET `comment` = 'Демоническое перерождение' WHERE `spell_trigger` = '191427' AND `spell_effect` = '198589' AND `hastalent` = '193897';

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '209651';
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '209980';
DELETE FROM `spell_trigger` WHERE `spell_id` = '204254';
DELETE FROM `spell_trigger` WHERE `spell_id` = '178940';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `effectmask`, `CreatureType`, `comment`) VALUES 
('204254', '209651', '20', '7', '1', '0', '1', '8', 'Расколотые души (месть, демон)'),
('204254', '209980', '20', '7', '1', '0', '1', 2+4+16+32+64+128+512+16384+32768, 'Расколотые души (месть)'),
('178940', '209651', '20', '7', '1', '0', '1', '8', 'Расколотые души (истребление, демон)'),
('178940', '209980', '20', '7', '1', '0', '1', 2+4+16+32+64+128+512+16384+32768, 'Расколотые души (истребление)');
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `aura`, `group`, `comment`) VALUES 
('209651', '226264', '1', '212613', '0', 'Расколотые души (месть, демон)'),
('209980', '226263', '1', '212613', '0', 'Расколотые души (месть)'), 
('209651', '226259', '1', '212612', '0', 'Расколотые души (истребление, демон)'),
('209980', '226370', '1', '212612', '0','Расколотые души (истребление)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '209795' AND `spell_effect` = '226258';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '209795' AND `spell_effect` = '209981';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `duration`, `actiontype`, `param`, `comment`) VALUES 
('209795', '209981', '5', '200', '17', '2', 'Трещина'); 
UPDATE `spell_linked_spell` SET `caster` = '3' , `target` = '3' WHERE `spell_trigger` = '209795' AND `spell_effect` = '209981';

UPDATE `spell_trigger` SET `target` = '1' WHERE `spell_id` = '203783' AND `spell_trigger` = '209981';

UPDATE `spell_trigger` SET `target` = '1' WHERE `spell_id` = '206478' AND `spell_trigger` = '209981';

UPDATE `spell_trigger` SET `target` = '1' WHERE `spell_id` = '201464' AND `spell_trigger` = '209981';

UPDATE `spell_trigger` SET `target` = '1' WHERE `spell_id` = '212827' AND `spell_trigger` = '209981';

UPDATE `spell_linked_spell` SET `caster` = '3' , `target` = '3' , `actiontype` = '17' , `param` = '2' WHERE `spell_trigger` = '207407' AND `spell_effect` = '209981';
UPDATE `spell_aura_trigger` SET `target` = '3' , `caster` = '3' WHERE `spell_id` = '207407' AND `spell_trigger` = '209981';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '214743' AND `spell_effect` = '204255';

UPDATE `spell_linked_spell` SET `spell_effect` = '209981', `target` = '3' , `caster` = '3' WHERE `spell_trigger` = '187727' AND `spell_effect` = '226258' AND `hastalent` = '227174';

UPDATE `areatrigger_actions` SET `moment` = '2048',`targetFlags` = '32' WHERE `entry` = '6351' AND `customEntry` = '11023' AND `id` = '0'; 

UPDATE `spell_linked_spell` SET `type` = '6' , `caster` = '3' , `target` = '3' WHERE `spell_trigger` = '228477' AND `spell_effect` = '207693';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '212105' AND `spell_effect` = '212106';
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '212084';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `comment`) VALUES 
('212084', '212105', '1', 'Опустошение Скверны'),
('212084', '212106', '1', 'Опустошение Скверны'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '247254'; 
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES ('247254', '32');  

UPDATE `spell_script_names` SET `spell_id` = '247454' WHERE `spell_id` = '218679' AND `ScriptName` = 'spell_dh_spirit_bomb'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '247455';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '218679' AND `spell_effect` = '218677';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('247455', '247456', 'Взрывная душа'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '189112' AND `spell_effect` = '232538';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '189110' AND `spell_effect` = '232538';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `actiontype`, `comment`) VALUES 
('189112', '232538', '1', '205628', '0', 'Ливень Хаоса (Талант чести)'); 

UPDATE `spell_proc_event` SET `procFlags` = '0' , `Cooldown` = '8' WHERE `entry` = '205625';

UPDATE `spell_trigger` SET `bp0` = '0' , `bp1` = '2' WHERE `spell_id` = '208796' AND `spell_trigger` = '208790';

UPDATE `spell_aura_dummy` SET `type` = '1' , `option` = '9' WHERE `spellId` = '228477' AND `spellDummyId` = '212821';

DELETE FROM `spell_script_names` WHERE `spell_id` = '199552' AND `ScriptName` = 'spell_dh_blade_dance_damage'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '200685' AND `ScriptName` = 'spell_dh_blade_dance_damage'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '210153' AND `ScriptName` = 'spell_dh_blade_dance_damage'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '210155' AND `ScriptName` = 'spell_dh_blade_dance_damage'; 



-- pala
UPDATE `spell_trigger` SET `option` = '20' , `effectmask` = '1' WHERE `spell_id` = '205191' AND `spell_trigger` = '205202';

DELETE FROM `spell_proc_event` WHERE `entry` = '231895'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '231895';

UPDATE `spell_script_names` SET `spell_id` = '246867' WHERE `spell_id` = '216527' AND `ScriptName` = 'spell_pal_lawbringer'; 
UPDATE `spell_target_filter` SET `spellId` = '246867' WHERE `spellId` = '216527' AND `targetId` = '15' AND `option` = '25' AND `param1` = '197277' AND `param2` = '0' AND `param3` = '0'; 
UPDATE `spell_target_filter` SET `spellId` = '246867' WHERE `spellId` = '216527' AND `targetId` = '15' AND `option` = '3' AND `param1` = '0' AND `param2` = '16' AND `param3` = '0'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20271' AND `spell_effect` = '246807';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('20271', '246807', '1', '246806', 'Законник (Талант чести)'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '225057';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('225057', '205069', '0', '0', 'Благословение серафима (Талант чести)'),
('225057', '248878', '6', '-205069', 'Благословение серафима (Талант чести)');
DELETE FROM `areatrigger_template` WHERE `entry` = '6801' AND `spellId` = '204927' AND `customEntry` = '0'; 
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `comment`) VALUES 
('6801', '204927', '40', '40', '3', '3', 'Благословение серафима (Талант чести)'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '204939';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '247675';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '247677';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
('247675', '-247677', '1', 'Молот возмездия (Талант чести)'), 
('247677', '247676', '0', 'Молот возмездия (Талант чести)'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hastype2`, `hastalent2`, `hasparam2`, `duration`, `actiontype`, `comment`) VALUES 
('247675', '31884', '6', '0', '0', '2', '31884', '13', '247677', '50', '6000', '21', 'Молот возмездия'),
('247675', '231895', '6', '0', '0', '2', '231895', '13', '247677', '50', '12000', '21', 'Молот возмездия'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '85043' AND `spell_trigger` = '85416';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES 
('85043', '85416', '20', '1', 'Великий воин Света'); 

UPDATE `areatrigger_actions` SET `actionType` = '13' , `targetFlags` = '0' WHERE `entry` = '6013' AND `customEntry` = '10700' AND `id` = '1'; 

UPDATE `spell_proc_event` SET `procFlags` = '1024' WHERE `entry` = '216868'; 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '199542';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `duration`, `actiontype`, `comment`) VALUES 
('190784', '199545', '6', '199542', '5000', '21', 'Скакун славы (Талант чести)'); 
UPDATE `areatrigger_template` SET `Radius` = '1' , `RadiusTarget` = '1' , `Height` = '1' , `HeightTarget` = '1' WHERE `entry` = '5546';

UPDATE `spell_proc_event` SET `Cooldown` = '0' , `effectmask` = '1' WHERE `entry` = '209474'; 

UPDATE `spell_linked_spell` SET `removeMask` = '16' WHERE `spell_trigger` = '-31850' AND `spell_effect` = '240059' AND `hastalent` = '238097';

DELETE FROM `spell_trigger` WHERE `spell_id` = '219562';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('219562', '196917', '3', '1', 'Свет мученика'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '196923';
DELETE FROM `spell_proc_event` WHERE `entry` = '196923';
DELETE FROM `spell_trigger` WHERE `spell_id` = '196923';
insert into `spell_trigger`(`spell_id`,`spell_trigger`,`spell_cooldown`,`option`,`target`,`caster`,`targetaura`,`targetaura2`,`bp0`,`bp1`,`bp2`,`effectmask`,`aura`,`aura2`,`chance`,`group`,`procFlags`,`procEx`,`check_spell_id`,`addptype`,`schoolMask`,`dummyId`,`dummyEffect`,`CreatureType`,`slot`,`randList`,`comment`)values
('196923','223316','0','20','7','1','0','0','0','0','0','1','0','0','0','0','0','0','0','-1','0','0','0','0','0','','Пылкий мученик');
insert into `spell_proc_event`(`entry`,`SchoolMask`,`SpellFamilyName`,`SpellFamilyMask0`,`SpellFamilyMask1`,`SpellFamilyMask2`,`SpellFamilyMask3`,`procFlags`,`procEx`,`ppmRate`,`CustomChance`,`Cooldown`,`effectmask`)values
('196923','0','10','1073741824','0','1024','0','17408','0','0','100','0','1');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '85222' AND `spell_effect` = '-210391';
DELETE FROM `spell_proc_event` WHERE `entry` = '210391'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `effectmask`) VALUES 
('210391', '10', '262144', '1'); 
UPDATE `spell_proc_event` SET `procFlags` = '2048' WHERE `entry` = '210391'; 



-- rogue
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '185565' AND `spell_effect` = '200803' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '200802' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Отравленный нож'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '200802' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '-185565' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 
DELETE FROM `spell_group` WHERE `id` = '2823' AND `spell_id` = '200802'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '200803' AND `spell_effect` = '197046' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '197044' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Смертельное варево (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '200803' AND `spell_effect` = '197051' AND `type` = '1' AND `caster` = '10' AND `target` = '5' AND `hastype` = '0' AND `hastalent` = '197050' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Дурманящий яд (Талант чести)'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '200803' AND `ScriptName` = 'spell_rog_agonizing_poison'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '79134' AND `spell_trigger` = '51637' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '2' AND `aura` = '200803' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 

DELETE FROM `spell_proc_check` WHERE `entry` = '2823' AND `entry2` = '8679' AND `entry3` = '3408' AND `checkspell` = '-185565';
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `entry3`, `checkspell`, `comment`) VALUES ('2823', '8679', '3408', '-185565', 'Отравленный нож'); 

INSERT IGNORE INTO `spell_proc_check` (`entry`, `checkspell`, `comment`) VALUES ('14190', '245388', 'Предрешенность'); 

UPDATE `spell_linked_spell` SET `hastype` = '6' WHERE `spell_trigger` = '36554' AND `spell_effect` = '36554' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '1' AND `hastalent` = '79140' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '197007' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '14' AND `group` = '0' AND `param` = '20000' AND `randList` = '' AND `comment` = 'Намерение убить (Талант чести)'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-193316' AND `spell_effect` = '-199603' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Игра в кости'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-193316' AND `spell_effect` = '-199600' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Игра в кости'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-193316' AND `spell_effect` = '-193359' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Игра в кости'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-193316' AND `spell_effect` = '-193358' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Игра в кости'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-193316' AND `spell_effect` = '-193357' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Игра в кости'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-193316' AND `spell_effect` = '-193356' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Игра в кости'; 

UPDATE `spell_proc_event` SET `SpellFamilyName` = '0' , `procFlags` = '0' , `Cooldown` = '0' , `effectmask` = '3' WHERE `entry` = '199754'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '79096';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp1`, `effectmask`, `comment`) VALUES 
('79096', '13750', '23', '1', '10', '1', 'Не знающие устали клинки'),
('79096', '199804', '23', '1', '10', '1', 'Не знающие устали клинки'), 
('79096', '2983', '23', '1', '10', '1', 'Не знающие устали клинки'),
('79096', '195457', '23', '1', '10', '1', 'Не знающие устали клинки'), 
('79096', '185767', '23', '1', '10', '1', 'Не знающие устали клинки'),
('79096', '51690', '23', '1', '10', '1', 'Не знающие устали клинки'),
('79096', '137619', '23', '1', '10', '1', 'Не знающие устали клинки'), 
('79096', '152150', '23', '1', '10', '1', 'Не знающие устали клинки'), 
('79096', '1856', '23', '1', '10', '1', 'Не знающие устали клинки');
DELETE FROM `spell_proc_check` WHERE `entry` = '79096';
INSERT INTO `spell_proc_check` (`entry`, `powertype`, `comment`) VALUES 
('79096', '4', 'Не знающие устали клинки'); 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '262144' WHERE `entry` = '198265'; 

DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '231718' AND `spelllink` = '245623'; 
DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-231718' AND `spelllink` = '-245623'; 
INSERT INTO `spell_talent_linked_spell` (`spellid`, `spelllink`, `comment`) VALUES 
('231718', '245623', 'Удар Тьмы (Уровень 2)'), ('-231718', '-245623', 'Удар Тьмы (Уровень 2)');

DELETE FROM `spell_trigger` WHERE `spell_id` = '58423' AND `spell_trigger` = '98440';
DELETE FROM `spell_proc_check` WHERE `entry` = '58423';
DELETE FROM `spell_proc_event` WHERE `entry` = '58423';

DELETE FROM `spell_trigger` WHERE `spell_id` = '185314';
DELETE FROM `spell_proc_check` WHERE `entry` = '185314';
DELETE FROM `spell_proc_event` WHERE `entry` = '185314';

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '245639';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('197835', '245640', '1', '245639', 'Серия сюрикэнов'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '193537'; 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '198952';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES 
('-158185', '199027', '198952', 'Покров сумрака'), 
('-11327', '199027', '198952', 'Покров сумрака');

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '216883';

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '212081';

DELETE FROM `spell_target_filter` WHERE `spellId` = '198688' AND `targetId` = '16' AND `option` = '13' AND `param1` = '-158185' AND `param2` = '0' AND `param3` = '0'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '185438' AND `spell_effect` = '-198688';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastype`, `hastalent`, `actiontype`, `param`, `comment`) VALUES 
('185438', '-198688', '1', '6', '198688', '7', '10', 'Кинжал во тьме (Талант чести)'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '57934' AND `spell_effect` = '248773';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '248775' AND `spell_effect` = '248776';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `target`, `hastalent`, `randList`, `comment`) VALUES 
('57934', '248773', '5', '248762', '248773 248773 248774 248775 248777', 'Воровской гамбит (Талант чести)'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
('248775', '248776', 'Воровской гамбит (Талант чести)'); 

UPDATE `areatrigger_actions` SET `actionType` = '13' WHERE `entry` = '6951' AND `customEntry` = '0' AND `id` = '1'; 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '192432' AND `spell_trigger` = '192434';
UPDATE `spell_aura_trigger` SET `target` = '5' , `caster` = '0' WHERE `spell_id` = '192432' AND `spell_trigger` = '192431'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '192431';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '192431' AND `spell_effect` = '192434';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
('192431', '192434', 'Из тени'); 
DELETE FROM `spell_bonus_data` WHERE `entry` = '192434'; 

UPDATE `spell_trigger` SET `bp1` = '5' , `effectmask` = '2' WHERE `spell_id` = '238138' AND `spell_trigger` = '192759';
UPDATE `spell_proc_event` SET `effectmask` = '2' WHERE `entry` = '238138';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '193316' AND `spell_effect` = '193356' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '240837' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '18' AND `group` = '0' AND `param` = '0' AND `randList` = '193356 193357 193358 193359 199600 199603' AND `comment` = 'Шулерские игральные кости'; 
UPDATE `spell_proc_event` SET `procFlags` = '2048' WHERE `entry` = '240837'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-197270' AND `spell_effect` = '220136';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '220136' AND `spell_effect` = '11327';
DELETE FROM `spell_proc_event` WHERE `entry` = '197256'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 1024+4, `SpellFamilyMask3` = 256+8192 WHERE `entry` = '197239'; 



-- dk
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '81141' AND `spell_effect` = '43265'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '81141' AND `spell_effect` = '203157';
DELETE FROM `spell_target_filter` WHERE `spellId` = '203157' AND `targetId` = '15' AND `option` = '4' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '203157' AND `spell_effect` = '-81141' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Алая плеть'; 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '203157' AND `spell_trigger` = '203128' AND `option` = '5' AND `aura` = '0'; 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '203157' AND `spell_trigger` = '143375' AND `option` = '5' AND `aura` = '206970'; 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `actiontype`, `comment`) VALUES 
('81141', '43265', '8', 'Алая плеть'); 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '43265' AND `spell_trigger` = '255203';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `hastalent`, `hastalent2`, `comment`) VALUES 
('43265', '255203', '194662', '188290', 'Быстрое разложение'); 

UPDATE `spell_linked_spell` SET `hastype` = '0' , `hastalent` = '0' WHERE `spell_trigger` = '50842' AND `spell_effect` = '55078' AND `type` = '1' AND `caster` = '0' AND `target` = '5' AND `hastype` = '2' AND `hastalent` = '-212744' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Вскипание крови - кровавая чума'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '212744' AND `spell_effect` = '212746' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пожирание душ'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '212744' AND `spell_effect` = '213003' AND `type` = '1' AND `caster` = '0' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '1' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пожирание душ'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '212744' AND `targetId` = '16' AND `option` = '1' AND `param1` = '55078' AND `param2` = '0' AND `param3` = '0'; 
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '246426';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `actiontype`, `param`, `comment`) VALUES 
('45470', '48792', '5', '246426', '23', '2000', 'Сердце льва'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '205725' AND `spellDummyId` = '205727' AND `option` = '2' AND `effectDummy` = '0' AND `effectmask` = '7'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '49576' AND `spell_effect` = '212610';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES 
('49576', '212610', '202731', 'Ходячий мертвец (Талант чести)'); 

UPDATE `areatrigger_template` SET `Radius` = '8' , `RadiusTarget` = '8' WHERE `entry` = '7326' AND `spellId` = '199719' AND `customEntry` = '0'; 

UPDATE `areatrigger_template` SET `Radius` = '12' , `RadiusTarget` = '12' WHERE `entry` = '7325' AND `spellId` = '199642' AND `customEntry` = '0'; 

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '49184' AND `spell_trigger` = '237680' AND `option` = '0' AND `aura` = '0'; 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '49184' AND `spell_trigger` = '55095' AND `option` = '0' AND `aura` = '0'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '49184' AND `spell_effect` = '237680';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '49184' AND `spell_effect` = '55095';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '237680' AND `spell_effect` = '55095';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
('49184', '237680', '1', 'Воющий ветер'),
('49184', '55095', '1', 'Воющий ветер'),
('237680', '55095', '1', 'Воющий ветер');
UPDATE `spell_target_filter` SET `effectMask` = '1' WHERE `spellId` = '237680' AND `targetId` = '16' AND `option` = '9' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask1` = '2' WHERE `entry` = '207256'; 

UPDATE `spell_linked_spell` SET `chance` = '50' WHERE `spell_trigger` = '-51124' AND `spell_effect` = '207062' AND `hastalent` = '207061';

DELETE FROM `areatrigger_actions` WHERE `entry` = '11655'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `comment`) VALUES 
('11655', '0', '0', '4', '1', '2105346', '253594', 'Непрерывный натиск'), 
('11655', '0', '1', '2', '0', '2105346', '253594', 'Непрерывный натиск');
DELETE FROM `areatrigger_data` WHERE `entry` = '11655';
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `updateDelay`, `maxActiveTargets`) VALUES 
('11655', '253593', '1000', '1'); 
DELETE FROM `areatrigger_template` WHERE `entry` = '11655' AND `spellId` = '253593' AND `customEntry` = '0'; 
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `Radius`, `RadiusTarget`, `comment`) VALUES 
('11655', '253593', '8', '8', 'Непрерывный натиск'); 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '253594' AND `spell_trigger` = '253595';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `comment`) VALUES 
('253594', '253595', '3', 'Непрерывный натиск'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '204080';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `hastype2`, `hastalent2`, `comment`) VALUES 
('45524', '204085', '5', '204080', '6', '45524', 'Смертельная стужа (Талант чести)'), 
('49576', '45524', '6', '204080', '0', '0', 'Смертельная стужа (Талант чести)'); 

UPDATE `spell_aura_dummy` SET `spellDummyId` = '-137007' , `type` = '0' , `option` = '4' , `effectDummy` = '0' , `effectmask` = '4' WHERE `spellId` = '70890' AND `spellDummyId` = '137007' AND `option` = '9' AND `effectDummy` = '2' AND `effectmask` = '6'; 

UPDATE `creature_template` SET `unit_flags` = '0' WHERE `entry` = '27829'; 

UPDATE `pet_stats` SET `state` = '1' WHERE `entry` = '99541'; 

UPDATE `pet_stats` SET `ap` = '1' , `spd` = '-1' WHERE `entry` = '27829'; 
UPDATE `pet_stats` SET `ap` = '1' , `spd` = '-1' WHERE `entry` = '100876'; 

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '199799' AND `spell_trigger` = '191587';
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `comment`) VALUES 
('199799', '191587', '2', 'Пандемия (Талант чести)'); 

INSERT IGNORE INTO `spell_check_cast` (`spellId`, `checkType`, `dataType`, `comment`) VALUES ('223829', '6', '194310', 'Некротический удар (Талант чести)'); 

UPDATE `spell_linked_spell` SET `duration` = '10000' , `actiontype` = '21' WHERE `hastalent` = '192567';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-77535' AND `spell_effect` = '-216019';

DELETE FROM `spell_proc_check` WHERE `entry` = '192548';
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '16777216' , `Cooldown` = '0' WHERE `entry` = '192548'; 

DELETE FROM `spell_proc_check` WHERE `entry` = '192557';
DELETE FROM `spell_proc_event` WHERE `entry` = '192557';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`) VALUES 
('192557', '15', 0x200000); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '191721';
DELETE FROM `spell_proc_check` WHERE `entry` = '191721';
DELETE FROM `spell_proc_event` WHERE `entry` = '191721';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('191721', '15', '33554432', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '191494' AND `spell_trigger` = '191492';
UPDATE `spell_proc_event` SET `CustomChance` = '0' WHERE `entry` = '191494'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '108201' AND `spell_effect` = '108201' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '9' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Оскверненная земля'; 



-- dru
UPDATE `spell_trigger` SET `aura` = '231042' WHERE `spell_id` = '24858' AND `spell_trigger` = '157228';

DELETE FROM `spell_aura_dummy` WHERE `spellDummyId` = '197637';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1850' AND `spell_effect` = '1850' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '9' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Порыв'; 

UPDATE `spell_aura_trigger` SET `chance` = '10' WHERE `spell_id` = '164815' AND `spell_trigger` = '202497' AND `option` = '0' AND `hastalent` = '202342' AND `hastalent2` = '0'; 
UPDATE `spell_aura_trigger` SET `chance` = '10' WHERE `spell_id` = '164812' AND `spell_trigger` = '202497' AND `option` = '0' AND `hastalent` = '202342' AND `hastalent2` = '0'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '106830' AND `spell_effect` = '211141';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hitmask`, `comment`) VALUES 
('106830', '211141', '1', 'Взбучка'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '1822' AND `spellDummyId` = '102543' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '5221' AND `spellDummyId` = '102543' AND `option` = '9' AND `effectDummy` = '2' AND `effectmask` = '4'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '5221' AND `spellDummyId` = '102543' AND `option` = '7' AND `effectDummy` = '2' AND `effectmask` = '4'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-5487' AND `spell_effect` = '-1178';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '1178';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '108299' AND `spell_effect` = '108300' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '768' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Druid - Killer Instinct'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '108299' AND `spell_effect` = '108300' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '5487' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Druid - Killer Instinct'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '768' AND `spell_effect` = '108300'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '108300';
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '108300'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1822' AND `spell_effect` = '163505' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '5215' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-58984' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Глубокая рана'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1822' AND `spell_effect` = '163505' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '58984' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Глубокая рана'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1822' AND `spell_effect` = '163505' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '102547' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-58984' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Глубокая рана'; 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '155722' AND `spellDummyId` = '5215' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '155722' AND `spellDummyId` = '102543' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '155722' AND `spellDummyId` = '58984' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `effectmask`, `custombp`, `hastalent`, `hastalent2`, `comment`) VALUES 
('155722', '5215', '1', '9', '2', '1', '100', '-102543', '0', 'Глубокая рана'),
('155722', '102543', '1', '9', '2', '1', '100', '-5215', '0', 'Король джунглей'),
('155722', '58984', '1', '9', '2', '1', '100', '-102543', '0', 'Глубокая рана'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20484' AND `spell_effect` = '-69369';

DELETE FROM `spell_script_names` WHERE `spell_id` = '197628' AND `ScriptName` = 'spell_dru_lunar_strike2'; 
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('197628', 'spell_dru_lunar_strike2'); 

DELETE FROM `spell_linked_spell`  WHERE `hastalent` = '155672';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES 
('339', '145152', '155672', 'Кровавые когти'),
('8936', '145152', '155672', 'Кровавые когти'),
('235963', '145152', '155672', 'Кровавые когти'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '33917' AND `spell_effect` = '-93622';
DELETE FROM `spell_proc_check` WHERE `entry` = '210706';
DELETE FROM `spell_proc_event` WHERE `entry` = '210706';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask3`) VALUES 
('210706', '7', '2048', 256+1048576, '128'); 

DELETE FROM `spell_check_cast` WHERE `spellId` = '202246' AND `type` = '0'; 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '8936' AND `spellDummyId` = '16870';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `effectDummy`, `effectmask`, `comment`) VALUES 
('8936', '16870', '1', '9', '2', '2', '3', 'Момент ясности'); 
UPDATE `spell_aura_dummy` SET `custombp` = '15' , `hastalent` = '155577' WHERE `spellId` = '8936' AND `spellDummyId` = '16870' AND `option` = '9' AND `effectDummy` = '2' AND `effectmask` = '3'; 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '33891' AND `spell_trigger` = '132213' AND `option` = '0' AND `hastalent` = '-1' AND `hastalent2` = '-1'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '33891' AND `spell_effect` = '5420';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '33891' AND `spell_effect` = '132213';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastype`, `hastalent`, `chance`, `duration`, `comment`) VALUES 
('33891', '132213', '5', '17', '-1', '30', '0', 'Древо жизни'),
('33891', '5420', '0', '0', '0', '0', '0', 'Древо жизни');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '102342' AND `spell_effect` = '247563';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES 
('102342', '247563', '247543', 'Опутывающая кора (Талант чести)'); 

DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-203553' AND `spelllink` = '203554'; 
INSERT INTO `spell_talent_linked_spell` (`spellid`, `spelllink`, `type`, `comment`) VALUES 
('-203553', '203554', '5', 'Средоточие роста (Талант чести)'); 

UPDATE `spell_trigger` SET `option` = '21' WHERE `spell_id` = '203407' AND `spell_trigger` = '774';
UPDATE `spell_linked_spell` SET `actiontype` = '17' , `param` = '2' , `comment` = 'Ободрение (Талант чести)' WHERE `spell_trigger` = '774' AND `spell_effect` = '203407';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '210723' AND `spellDummyId` = '77493' AND `option` = '1' AND `effectDummy` = '2' AND `effectmask` = '2'; 
UPDATE `spell_aura_dummy` SET `caster` = '2' WHERE `spellDummyId` = '145152';

DELETE FROM `spell_trigger` WHERE `spell_id` = '210666';
DELETE FROM `spell_proc_check` WHERE `entry` = '210666';
DELETE FROM `spell_proc_event` WHERE `entry` = '210666';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1079' AND `spell_effect` = '210670';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `duration`, `hitmask`, `actiontype`, `comment`) VALUES 
('1079', '210670', '210666', '24000', '1', '21', 'Открытые раны'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '238086';
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '81262' AND `spell_trigger` = '240484';
DELETE FROM `spell_trigger` WHERE `spell_id` = '238086';
DELETE FROM `spell_proc_event` WHERE `entry` = '238086';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '81269' AND `spell_effect` = '240484';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('238086', '7', '2', '16384', '101', '1'); 
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `caster`, `slot`, `comment`) VALUES ('238086', '240484', '20', '0', '0', 'Весенняя радость');

DELETE FROM `spell_trigger` WHERE `spell_id` = '203018' AND `spell_trigger` = '213672';



-- sham
DELETE FROM `spell_aura_dummy` WHERE `spellDummyId` = '168534'; 
DELETE FROM `spell_bonus_data` WHERE `comments` = 'Волнение стихий'; 
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `comments`) VALUES 
('45284', 1.75 * 0.85, 'Волнение стихий'), 
('45297', 1.5 * 0.85, 'Волнение стихий'),
('77451', 2.75 * 0.85, 'Волнение стихий'),
('114738', 1.86 * 0.85, 'Волнение стихий'),
('120588', 7.25 * 0.85, 'Волнение стихий'),
('219271', 9 * 0.85, 'Волнение стихий');

UPDATE `spell_linked_spell` SET `type` = '0' , `caster` = '3' , `target` = '3' WHERE `spell_trigger` = '188196' AND `spell_effect` = '214815';

UPDATE `spell_linked_spell` SET `type` = '0' , `caster` = '3' , `target` = '3' WHERE `spell_trigger` = '45284' AND `spell_effect` = '214816';

DELETE FROM `spell_trigger` WHERE `spell_id` = '210707'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '210707';
DELETE FROM `spell_proc_event` WHERE `entry` = '210707'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '214131' AND `spell_trigger` = '214134';
DELETE FROM `spell_proc_check` WHERE `entry` = '214134';
UPDATE `spell_proc_event` SET `CustomChance` = '0' WHERE `entry` = '214131'; 

UPDATE `spell_linked_spell` SET `type` = '5' WHERE `spell_trigger` = '117014' AND `spell_effect` = '118522'; 
UPDATE `spell_linked_spell` SET `type` = '5' WHERE `spell_trigger` = '120588' AND `spell_effect` = '118522';

UPDATE `spell_trigger` SET `option` = '39', `bp1` = '5' WHERE `spell_id` = '108281' AND `spell_trigger` = '114911';
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '108281' AND `spell_trigger` = '114911';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES 
('108281', '114911', '14', '1', 'Наставление предков'); 
UPDATE `spell_target_filter` SET `count` = '3' , `maxcount` = '0' WHERE `spellId` = '114911';

UPDATE `spell_trigger` SET `option` = '20', `chance` = '101' WHERE `spell_id` = '210689' AND `spell_trigger` = '197209';
DELETE FROM `spell_trigger` WHERE `spell_id` = '210689' AND `spell_trigger` = '197568';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `targetaura`, `effectmask`, `aura`, `comment`) VALUES 
('210689', '197568', '3', '2', '2', '197209', 'Грозовой разрядник'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '197209';
DELETE FROM `spell_proc_event` WHERE `entry` = '197209'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '197209'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '210689'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '210689';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `Cooldown`, `effectmask`) VALUES 
('210689', '11', '3', '0', '3');

INSERT IGNORE INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('8537', '192078', '12676', '5000'); 
UPDATE `areatrigger_actions` SET `moment` = '5' WHERE `entry` = '8537' AND `customEntry` = '12676' AND `id` = '0'; 

UPDATE `areatrigger_actions` SET `aura` = '-202318' WHERE `entry` = '7108' AND `customEntry` = '11577' AND `id` = '2'; 

UPDATE `spell_proc_event` SET `CustomChance` = '100' WHERE `entry` = '204247'; 

UPDATE `areatrigger_actions` SET `actionType` = '13' WHERE `entry` = '6523' AND `customEntry` = '11142' AND `id` = '1';

UPDATE `spell_trigger` SET `bp2` = '50' WHERE `spell_id` = '204264' AND `spell_trigger` = '204266' AND `option` = '45' AND `bp0` = '3000' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '58875' AND `spell_effect` = '58875' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '9' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Поступь духа'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '58875' AND `spell_effect` = '58876' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Spirit Walk'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask1` = '0' , `Cooldown` = '0.1', `SpellFamilyMask2` = 4+4096 WHERE `entry` = '187878'; 

UPDATE `spell_trigger` SET `option` = '20' WHERE `spell_id` = '194084' AND `spell_trigger` = '10444';
UPDATE `spell_proc_event` SET `effectmask` = '2' WHERE `entry` = '194084'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask2` = 4096+4 , `procFlags` = 0 , `Cooldown` = '0.2' WHERE `entry` = '215864'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask1` = '0' WHERE `entry` = '197992'; 

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '197214' AND `spell_trigger` = '197619';
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '197214' AND `spell_trigger` = '216170';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '197214' AND `spell_effect` = '216170'; 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `effectMask`, `comment`) VALUES ('197214', '216170', '1', '1', 'Раскол'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '114051' AND `spell_effect` = '17364' AND `actiontype` = '8';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '114051' AND `spell_effect` = '115356' AND `actiontype` = '8';
INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `actiontype`, `comment`) VALUES 
('114051', '17364', '6', '8', 'Перерождение'),
('114051', '115356', '6', '8', 'Перерождение');

UPDATE `spell_trigger` SET `spell_trigger` = '213307' , `option` = '20' , `bp0` = '0' , `effectmask` = '1' WHERE `spell_id` = '195222' AND `spell_trigger` = '195256' AND `option` = '3' AND `bp0` = '20' AND `effectmask` = '3' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '108280' AND `spell_trigger` = '114942' AND `option` = '8' AND `hastalent` = '0' AND `hastalent2` = '0'; 
UPDATE `spell_aura_trigger` SET `effectmask` = '2' WHERE `spell_id` = '108280' AND `spell_trigger` = '114942' AND `option` = '9' AND `hastalent` = '0' AND `hastalent2` = '0'; 
UPDATE `spell_aura_trigger` SET `option` = '0' WHERE `spell_id` = '108280' AND `spell_trigger` = '208205'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '114941'; 
INSERT INTO `spell_proc_event` (`entry`, `Cooldown`) VALUES ('114941', '0.2');
UPDATE `spell_target_filter` SET `resizeType` = '1' , `count` = '10' WHERE `spellId` = '114942' AND `targetId` = '31';

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '207778' AND `spell_trigger` = '255227'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '207778' AND `spell_effect` = '255227';
DELETE FROM `spell_script_names` WHERE `spell_id` = '207778' AND `ScriptName` = 'spell_monk_gift_of_queen'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('207778', 'spell_monk_gift_of_queen'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '255227';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `resizeType`, `count`, `comments`) VALUES ('255227', '31', '1', '6', 'Дар королевы'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '114049' AND `ScriptName` = 'spell_sha_ascendance'; 

UPDATE `spell_aura_dummy` SET `caster` = '2' , `removeAura` = '0' WHERE `spellId` = '61295' AND `spellDummyId` = '73685'; 
UPDATE `spell_proc_event` SET `SpellFamilyMask2` = 65536+16 WHERE `entry` = '73685'; 

DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-236501' AND `spelllink` = '236502'; 
INSERT INTO `spell_talent_linked_spell` (`spellid`, `spelllink`, `type`, `comment`) VALUES 
('-236501', '236502', '5', 'Вестник приливов (Талант чести)'); 

DELETE FROM `spell_aura_dummy` WHERE `spellDummyId` = '191647';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `effectDummy`, `effectmask`, `comment`) VALUES 
('45284', '191647', '1', '9', '2', '0', '1', 'Властелин стихий'), 
('45297', '191647', '1', '9', '2', '0', '1', 'Властелин стихий'),
('77451', '191647', '1', '9', '2', '0', '1', 'Властелин стихий'),
('114738', '191647', '1', '9', '2', '0', '1', 'Властелин стихий'),
('120588', '191647', '1', '9', '2', '0', '1', 'Властелин стихий'),
('219271', '191647', '1', '9', '2', '0', '1', 'Властелин стихий');

DELETE FROM `spell_proc_check` WHERE `entry` = '191717';
DELETE FROM `spell_proc_event` WHERE `entry` = '191717';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `effectmask`) VALUES ('191717', '11', '32768', '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '114074' AND `spell_effect` = '114738' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '191602' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '10' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Статическая перегрузка'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '188443' AND `spell_effect` = '45297' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '191602' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '10' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Статическая перегрузка'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '191602';
DELETE FROM `spell_proc_event` WHERE `entry` = '191602';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES ('191602', '11', '32768', '17408', '1'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '191634';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `aura`, `comment`) VALUES 
('191634', '45284', '13', '0', '1', '188196', 'Статическая перегрузка'), 
('191634', '45297', '13', '0', '1', '188443', 'Статическая перегрузка');
DELETE FROM `spell_proc_check` WHERE `entry` = '191634';
DELETE FROM `spell_proc_event` WHERE `entry` = '191634';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES ('191634', '11', '3', '0', '1'); 



-- mage
UPDATE `spell_proc_event` SET `effectmask` = '3' WHERE `entry` = '235711'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198123' AND `spell_effect` = '-112965' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '137020' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '1' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Глубокий раскол - отключаем Ледяные пальцы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-198123' AND `spell_effect` = '112965' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '137020' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '1' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Глубокий раскол - включаем Ледяные пальцы'; 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '31707' AND `spellDummyId` = '65220'; 
DELETE FROM `spell_bonus_data` WHERE `entry` = '31707'; 

DELETE FROM `spell_concatenate_aura` WHERE `spellid` = '-205030' AND `effectSpell` = '0' AND `auraId` = '112965' AND `effectAura` = '0' AND `option` = '4'; 
DELETE FROM `spell_concatenate_aura` WHERE `spellid` = '112965' AND `effectSpell` = '0' AND `auraId` = '205030' AND `effectAura` = '0' AND `option` = '4'; 

UPDATE `areatrigger_data` SET `maxCount` = '1' WHERE `entry` = '10228' AND `spellId` = '240692' AND `customEntry` = '15101'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5143' AND `spell_effect` = '187292'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5143' AND `spell_effect` = '7268'; 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `chance`, `duration`, `actiontype`, `comment`) VALUES 
('5143', '187292', '6', '215463', '33', '2000', '21', 'Правило троек'),
('5143', '7268', '0', '187292', '0', '0', '0', 'Правило троек'); 

UPDATE `spell_trigger` SET `option` = '46' , `bp1` = '2' ,`effectmask` = '1' WHERE `spell_id` = '211386' AND `spell_trigger` = '12051';
UPDATE `spell_proc_event` SET `procFlags` = '4096' WHERE `entry` = '211386'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-44544' AND `spell_effect` = '-126084';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '30455' AND `spell_effect` = '-126084';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastype`, `hastalent`, `hasparam`, `actiontype`, `param`, `comment`) VALUES 
('30455', '-126084', '13', '44544', '1', '7', '1', 'Ледяные пальцы'); 
UPDATE `spell_linked_spell` SET `caster` = '3' , `target` = '3' WHERE `spell_trigger` = '30455' AND `spell_effect` = '-126084';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '190356' AND `spell_effect` = '190356' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '240555' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '3' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Леденящий дождь'; 
UPDATE `areatrigger_data` SET `maxCount` = '2' WHERE `entry` = '4658' AND `spellId` = '190356' AND `customEntry` = '0'; 



-- monk
UPDATE `areatrigger_actions` SET `moment` = '1' WHERE `entry` = '373' AND `customEntry` = '3282' AND `id` = '0'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '121253' AND `spell_effect` = '115203' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '137023' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-228563' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-4000' AND `randList` = '' AND `comment` = 'Удар бочонком'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '121253' AND `spell_effect` = '115203' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '228563' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-6000' AND `randList` = '' AND `comment` = 'Удар бочонком - серия нокаутов'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '121253' AND `spell_effect` = '115399' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '137023' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-228563' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-4000' AND `randList` = '' AND `comment` = 'Удар бочонком'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '121253' AND `spell_effect` = '115399' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '228563' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-6000' AND `randList` = '' AND `comment` = 'Удар бочонком - серия нокаутов'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '121253' AND `spell_effect` = '119582' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '137023' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-228563' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '14' AND `group` = '0' AND `param` = '4000' AND `randList` = '' AND `comment` = 'Удар бочонком'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '121253' AND `spell_effect` = '119582' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '228563' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '14' AND `group` = '0' AND `param` = '6000' AND `randList` = '' AND `comment` = 'Удар бочонком - серия нокаутов'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '121253' AND `ScriptName` = 'spell_monk_keg_smash'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('121253', 'spell_monk_keg_smash'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '205523' AND `spell_effect` = '195630';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hitmask`, `comment`) VALUES ('205523', '195630', '1', 'Нокаутирующая атака'); 

UPDATE `spell_proc_event` SET `effectmask` = '16' WHERE `entry` = '196736'; 

DELETE FROM `spell_proc_check` WHERE `entry` = '196730';
DELETE FROM `spell_proc_event` WHERE `entry` = '196730';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `SpellFamilyMask3`, `effectmask`) VALUES 
('196730', '53', '4', '32768', '1'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '196734' AND `targetId` = '16' AND `option` = '0' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 
UPDATE `spell_dummy_trigger` SET `option` = '0' , `effectmask` = '1' WHERE `spell_id` = '196734' AND `spell_trigger` = '196732'; 
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `effectMask`, `resizeType`, `count`, `comments`) VALUES 
('196734', '16', '1', '2', '1', 'Особая доставка'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '115176'; 
INSERT INTO `spell_proc_check` (`entry`, `hastalent`, `comment`) VALUES 
('115176', '-208878', 'Фундаментальные наблюдения'), 
('115176', '-202200', 'Управляемая медитация (Талант чести)');

UPDATE `spell_linked_spell` SET `duration` = '200',`type` = '5' WHERE `spell_trigger` = '115181' AND `spell_effect` = '202274'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '116680' AND `spell_effect` = '209584' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '209583' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Дзен-концентрация (Талант чести)'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '116670' AND `spell_effect` = '119611' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '1' AND `hastalent` = '119611' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '202523' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Освежающий ветерок (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '116670' AND `spell_effect` = '191840' AND `hastalent` = '202523';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `hastype2`, `hastalent2`, `comment`) VALUES 
('116670', '191840', '8', '202523', '6', '191840', 'Освежающий ветерок (Талант чести)'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '210802';
DELETE FROM `spell_proc_event` WHERE `entry` = '210802';
DELETE FROM `spell_trigger` WHERE `spell_id` = '210802';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '228649' AND `spell_effect` = '210803';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `comment`) VALUES ('210802', '210803', '1', '1', '1', 'Дух журавля'); 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('210802', '16', '100', '1'); 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES ('210802', '228649', '1', 'Дух журавля'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100784' AND `spell_effect` = '228649';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100784' AND `spell_effect` = '-202090';
DELETE FROM `spell_trigger` WHERE `spell_id` = '202090';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `comment`) VALUES ('202090', '228649', '20', '1', '1', 'Дух журавля'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '202090';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES ('202090', '100784', '1', 'Монастырские знания'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '101545' AND `spell_effect` = '159535' AND `hastalent` = '159534';
UPDATE `spell_linked_spell` SET `type` = '6' WHERE `spell_trigger` = '101545' AND `spell_effect` = '159535'  AND `hastalent` = '232879';

UPDATE `spell_proc_event` SET `SpellFamilyName` = '53' , `procFlags` = '4112' , `CustomChance` = '100' , `effectmask` = '1' WHERE `entry` = '196082'; 

UPDATE `creature_template` SET `scale` = '1' WHERE `entry` = '101297'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 48-32 , `SpellFamilyMask2` = '4096' , `procFlags` = '5136' , `Cooldown` = '0' WHERE `entry` = '195300'; 



-- hunter
UPDATE `spell_linked_spell` SET `param` = '-12000' WHERE `spell_trigger` = '217200' AND `spell_effect` = '19574' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-211172' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '231548' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-15000' AND `randList` = '' AND `comment` = 'Ужасный зверь'; 
UPDATE `spell_linked_spell` SET `param` = '-12000' WHERE `spell_trigger` = '120679' AND `spell_effect` = '19574' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-211172' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '231548' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-15000' AND `randList` = '' AND `comment` = 'Ужасный зверь'; 
UPDATE `spell_linked_spell` SET `param` = '-16000' WHERE `spell_trigger` = '120679' AND `spell_effect` = '19574' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211172' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '231548' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-23000' AND `randList` = '' AND `comment` = 'Item - Hunter T19 Beastmaster 2P bonus'; 
UPDATE `spell_linked_spell` SET `param` = '-16000' WHERE `spell_trigger` = '217200' AND `spell_effect` = '19574' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211172' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '231548' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-23000' AND `randList` = '' AND `comment` = 'Item - Hunter T19 Beastmaster 2P bonus'; 

UPDATE `spell_linked_spell` SET `duration` = '166' WHERE `spell_trigger` = '217200' AND `spell_effect` = '217207' AND `type` = '0' AND `caster` = '1' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '100' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '17' AND `group` = '0' AND `param` = '5' AND `randList` = '' AND `comment` = 'Ужасное бешенство'; 
UPDATE `spell_linked_spell` SET `duration` = '166' WHERE `spell_trigger` = '217200' AND `spell_effect` = '218635' AND `type` = '0' AND `caster` = '1' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '218638' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '100' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '17' AND `group` = '0' AND `param` = '5' AND `randList` = '' AND `comment` = 'Гром титанов'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '217200' AND `spell_effect` = '246152';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '217200' AND `spell_effect` = '246851';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '217200' AND `spell_effect` = '246852';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '217200' AND `spell_effect` = '246853';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '217200' AND `spell_effect` = '246854';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `group`, `comment`) VALUES 
('217200', '246152', '5', '-246152', '1', 'Ужасное бешенство'), 
('217200', '246851', '5', '-246851', '1', 'Ужасное бешенство'),
('217200', '246852', '5', '-246852', '1', 'Ужасное бешенство'),
('217200', '246853', '5', '-246853', '1', 'Ужасное бешенство'),
('217200', '246854', '5', '-246854', '1', 'Ужасное бешенство');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '186254' AND `spell_effect` = '212704';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-186254' AND `spell_effect` = '-212704';

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '213875' AND `spell_trigger` = '213882' AND `option` = '0' AND `hastalent` = '0' AND `hastalent2` = '0'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '214579';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('214579', '193534', '5', '193533', 'Устойчивая концентрация'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '209793' AND `spell_trigger` = '5116';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('209793', '5116', '20', '2', 'Эффективная взрывчатка (Талант чести)'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '209793';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `effectmask`) VALUES ('209793', '9', '64', '2'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '248443';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `comment`) VALUES 
('248443', '186265', '23', '1', '1', 'Проворство следопыта (Талант чести)'),
('248443', '186257', '23', '1', '1', 'Проворство следопыта (Талант чести)'),
('248443', '109304', '23', '1', '1', 'Проворство следопыта (Талант чести)');
DELETE FROM `spell_proc_check` WHERE `entry` = '248443';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `hastalent`, `target`, `effectmask`, `comment`) VALUES 
('248443', '19434', '187131', '1', '1', 'Проворство следопыта (Талант чести)'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '202800' AND `spell_effect` = '202800' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '204315' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-3000' AND `randList` = '202800 186289' AND `comment` = 'Звериные инстинкты'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '202800' AND `spell_effect` = '190925' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '204315' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '14' AND `group` = '0' AND `param` = '3000' AND `randList` = '190925 190928' AND `comment` = 'Звериные инстинкты'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '204315';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `effectmask`, `group`, `randList`, `comment`) VALUES 
('204315', '232646', '20', '0', '0', '1', '0', '', 'Звериные инстинкты');
DELETE FROM `spell_proc_event` WHERE `entry` = '204315'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `Cooldown`) VALUES 
('204315', '9', '256', '1');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '232646'; 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `actiontype`, `group`, `randList`, `param`, `comment`) VALUES 
('232646', '202800', '13', '1', '202800 186289', '-3000', 'Звериные инстинкты'), 
('232646', '190925', '14', '2', '190925 190928', '3000', 'Звериные инстинкты');

UPDATE `spell_aura_dummy` SET `caster` = '2' WHERE `spellId` = '16827' AND `spellDummyId` = '53184'; 
UPDATE `spell_aura_dummy` SET `caster` = '2' WHERE `spellId` = '17253' AND `spellDummyId` = '53184'; 
UPDATE `spell_aura_dummy` SET `caster` = '2' WHERE `spellId` = '49966' AND `spellDummyId` = '53184';

DELETE FROM `spell_pet_auras` WHERE `petEntry` = '-1' AND `spellId` = '218955'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '218955' AND `spellDummyId` = '203669' AND `option` = '2' AND `effectDummy` = '0' AND `effectmask` = '1'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask3` = '0' WHERE `entry` = '191328'; 
UPDATE `spell_proc_event` SET `effectmask` = '1' WHERE `entry` = '191328'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '240777' AND `spell_effect` = '240777';

UPDATE `pet_stats` SET `ap` = '0.6' ,`spd` = '-0.6' WHERE `entry` = '106548'; 
UPDATE `pet_stats` SET `ap` = '0.6' ,`spd` = '-0.6' WHERE `entry` = '106549'; 
UPDATE `pet_stats` SET `ap` = '0.6' ,`spd` = '-0.6' WHERE `entry` = '106550'; 
UPDATE `pet_stats` SET `ap` = '0.6' ,`spd` = '-0.6' WHERE `entry` = '106551'; 
UPDATE `pet_stats` SET `ap` = '0.6' ,`spd` = '-0.6' WHERE `entry` = '100324'; 



-- priest
DELETE FROM `spell_target_filter` WHERE `spellId` = '596';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `resizeType`, `count`, `comments`) VALUES 
('596', '31', '18', '2', '1', '5', 'Молитва исцеления'); 

UPDATE `spell_target_filter` SET `option` = '4' , `count` = '5', `effectMask` = '1' WHERE `spellId` = '34861' AND `targetId` = '31'; 

UPDATE `spell_trigger` SET `option` = '45' WHERE `spell_id` = '109186' AND `spell_trigger` = '114255';

UPDATE `spell_target_filter` SET `effectMask` = '2' , `count` = '5' WHERE `spellId` = '204883' AND `targetId` = '31'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-47788' AND `spell_effect` = '47788' AND `type` = '0' AND `caster` = '10' AND `target` = '10' AND `hastype` = '0' AND `hastalent` = '196602' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '200209' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '22' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-30000' AND `randList` = '' AND `comment` = 'Ангел-хранитель'; 

UPDATE `spell_proc_event` SET `effectmask` = '2047' WHERE `entry` = '213610'; 

UPDATE `spell_target_filter` SET `count` = '5' WHERE `spellId` = '194509' AND `targetId` = '31'; 

UPDATE `spell_linked_spell` SET `hastype` = '6' WHERE `spell_trigger` = '47540' AND `spell_effect` = '204215' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '1' AND `hastalent` = '204213' AND `hasparam` = '0' AND `hastype2` = '2' AND `hastalent2` = '204197' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Очищение зла'; 

UPDATE `spell_linked_spell` SET `type` = '0' , `removeMask` = '10' WHERE `spell_trigger` = '-17' AND `spell_effect` = '47755' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '197045' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '8' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Эффективный щит'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '246287';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `actiontype`, `param`, `comment`) VALUES 
('246287', '194384', '1', '23', '6000', 'Проповедь'); 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '194384' AND `spellDummyId` = '197419' AND `option` = '12' AND `effectDummy` = '0' AND `effectmask` = '7'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '232698' AND `spell_effect` = '185908' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '107906' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик тьмы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '232698' AND `spell_effect` = '185911' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-107906' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик тьмы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '232698' AND `spell_effect` = '205128' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '126745' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик тьмы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-232698' AND `spell_effect` = '-205128' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик тьмы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-232698' AND `spell_effect` = '-185911' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик тьмы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-232698' AND `spell_effect` = '-185908' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик тьмы'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '232698' AND `spell_effect` = '185908';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-232698' AND `spell_effect` = '-185908';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
('232698', '185908', 'Облик тьмы'), 
('-232698', '-185908', 'Облик тьмы');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-194249' AND `spell_effect` = '-218413' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик бездны'; 

DELETE FROM `spell_proc_check` WHERE `entry` = '199145';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `comment`) VALUES ('199145', '-34914', 'Щит бездны (Талант чести)'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '199259';
INSERT INTO `spell_proc_check` (`entry`, `hastalent`, `comment`) VALUES ('199259', '194249', 'Доведенный до безумия (Талант чести)'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '15407' AND `spell_effect` = '589' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '199445' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '1' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Повреждение разума'; 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '15407' AND `spell_trigger` = '247776';
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '15407' AND `spell_trigger` = '247777';
DELETE FROM `spell_linked_spell` WHERE `spell_effect` = '247777';
DELETE FROM `spell_linked_spell` WHERE `spell_effect` = '247776';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `hasparam`, `removeMask`, `comment`) VALUES 
('15407', '247777', '8', '199445', '0', '0', 'Повреждение разума (Талант чести)'),
('15407', '247776', '8', '199445', '0', '0', 'Повреждение разума (Талант чести)'); 

UPDATE `spell_proc_event` SET `procFlags` = '65536' , `CustomChance` = '100' WHERE `entry` = '215776'; 

DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-199572' AND `spelllink` = '-199579'; 
INSERT INTO `spell_talent_linked_spell` (`spellid`, `spelllink`, `comment`) VALUES 
('-199572', '-199579', 'Мания Тьмы');

INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('207946', '-223126', 'Световая перегрузка'); 
INSERT IGNORE INTO `spell_proc_event` (`entry`, `SpellFamilyMask2`) VALUES ('214858', '1073741824'); 
UPDATE `spell_proc_event` SET `procFlags` = 0 WHERE `entry` = '214858'; 

UPDATE `spell_proc_event` SET `procFlags` = '656040' WHERE `entry` = '238099'; 

DELETE FROM `spell_target_filter` WHERE `spellId` = '196810' AND `targetId` = '31' AND `option` = '8' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '196812' AND `targetId` = '16' AND `option` = '8' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask1` = '1024' WHERE `entry` = '194093'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '194093';



-- warlock
UPDATE `creature_template` SET `unit_flags` = '768' , `flags_extra` = '0' WHERE `entry` = '59262'; 
UPDATE `creature_template` SET `unit_flags` = '768' , `flags_extra` = '0' WHERE `entry` = '59271'; 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '980' AND `spell_trigger` = '17941';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `chance`, `comment`) VALUES ('980', '17941', '2', '15', 'Агония (временно, до переноса хотфикса)'); 

DELETE FROM `spell_pet_auras` WHERE `petEntry` = '103679' AND `spellId` = '205247' AND `option` = '0' AND `target` = '0' AND `bp0` = '0' AND `aura` = '0' AND `createdspell` = '0'; 
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = '103679';

UPDATE `spell_target_filter` SET `effectMask` = '6' WHERE `spellId` = '27243' AND `targetId` = '16' AND `option` = '25' AND `param1` = '-27243' AND `param2` = '0' AND `param3` = '0'; 
UPDATE `spell_target_filter` SET `effectMask` = '6', `resizeType` = '1' WHERE `spellId` = '27243' AND `targetId` = '16' AND `option` = '18' AND `param1` = '8' AND `param2` = '0' AND `param3` = '0'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '171140' AND `spell_effect` = '171138';
UPDATE `spell_linked_spell` SET `type` = '0' , `caster` = '2' WHERE `spell_trigger` = '171138' AND `spell_effect` = '171140';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '171138' AND `spell_effect` = '171138';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `actiontype`, `comment`) VALUES ('171138', '171138', '3', 'Замок мира теней (Особая способность)');
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '171140'; 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `effectmask`, `handlemask`, `comment`) VALUES
('171140', '0', '11', '0', '1', '1', '8', 'Замок мира теней (Особая способность)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '6360' AND `spell_effect` = '6360';
UPDATE `spell_linked_spell` SET `type` = '0' , `caster` = '2' WHERE `spell_trigger` = '6360' AND `spell_effect` = '119909';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `actiontype`, `comment`) VALUES ('6360', '6360', '3', 'Удар кнутом (Особая способность)'); 

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('212356', 'spell_warl_soulshatter'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '248813';
DELETE FROM `spell_proc_event` WHERE `entry` = '248814';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES ('248813', '5', '2', '1'); 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('248814', '69632', '1'); 

UPDATE `spell_linked_spell` SET `type` = '0',`hitmask` = '1' WHERE `spell_trigger` = '193439' AND `spell_effect` = '194379';

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '157736' AND `spell_trigger` = '193540';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `comment`) VALUES ('157736', '193540', '1', 'Жертвенный огонь'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '193541' AND `spell_trigger` = '193540';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('193541', '193540', '20', '1', 'Жертвенный огонь'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '193541'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '193541'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `CustomChance`, `effectmask`) VALUES ('193541', '5', '16', '2', '50', '1'); 

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('29722', 'spell_warl_incinerate'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '17962' AND `spell_effect` = '245330';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('17962', '245330', 'Поджигание'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '17877' AND `spell_effect` = '245731';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `target`, `comment`) VALUES ('17877', '245731', '3', '3', 'Ожог тьмы'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '216722'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('216722', '5', '2', '100', '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '216721' AND `spell_effect` = '244840';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `chance`, `comment`) VALUES ('216721', '244840', '33', 'Души проклятых - сбежавшая душа'); 

UPDATE `spell_proc_event` SET `CustomChance` = '100' WHERE `entry` = '199471'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '218572';
DELETE FROM `spell_proc_check` WHERE `entry` = '218572';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('218572', '5', '262144', '35', '1'); 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES ('218572', '603', '1', 'Двойной рок'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '196586' AND `spell_effect` = '187370';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `effectMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `param`, `randList`, `comment`) VALUES
('196586','187370','0','0','0','5','-238146','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0','187370 196639 215276','Пространственный разлом (Артефакт)'),
('196586','187370','0','0','0','5','238146','0','0','0','0','0','0','0','0','0','0','0','-1','0','0','0','187370 196639 215276 242983','Пространственный разлом (Артефакт)');

-- Tier 17/18 proc_event spells
DELETE FROM `spell_proc_event` WHERE `entry` = '165337'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165337', '0', '4', '0', '8192', '0', '0', '0', '2', '0', '0', '0', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '165349'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165349', '0', '4', '16', '0', '0', '0', '0', '0', '0', '0', '0', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '165353'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165353', '0', '0', '0', '0', '0', '0', '0', '16', '0', '0', '0', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '165431'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165431', '0', '7', '4096', '0', '4194304', '0', '0', '0', '0', '0', '0', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '165432'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165432', '0', '7', '0', '0', '64', '0', '0', '0', '0', '0', '0', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '165439'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165439', '0', '10', '8388608', '0', '0', '0', '0', '0', '0', '0', '0', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '165446'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165446', '0', '10', '16384', '0', '0', '0', '0', '0', '0', '0', '0', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '165459'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165459', '0', '3', '0', '0', '0', '4194304', '0', '0', '0', '0', '0', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '165469'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165469', '0', '3', '0', '0', '536870912', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '165476'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165476', '0', '3', '0', '0', '4', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '165478'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165478', '0', '8', '0', '1', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '165519'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165519', '0', '9', '131072', '0', '0', '0', '0', '2', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '165525'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165525', '0', '9', '0', '2097152', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '165545'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165545', '0', '9', '0', '128', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '165547'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165547', '0', '15', '2097152', '0', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '165568'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165568', '0', '15', '2097152', '0', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '165610'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('165610', '0', '11', '0', '65536', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '167694'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('167694', '0', '6', '0', '0', '0', '8388608', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '167702'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('167702', '0', '11', '0', '0', '0', '512', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '167718'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('167718', '0', '53', '33554432', '0', '0', '0', '0', '2', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '167740'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('167740', '0', '0', '0', '0', '0', '0', '0', '64', '0', '0', '0', '1');

DELETE FROM `spell_proc_event` WHERE `entry` = '185542'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('185542', '0', '53', '0', '128', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '185543'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('185543', '0', '53', '0', '8388608', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '185675'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('185675', '0', '10', '16384', '0', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '185677'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('185677', '0', '10', '16384', '0', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '185872'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('185872', '0', '11', '0', '0', '67108864', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '185883'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('185883', '0', '5', '0', '256', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '185884'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('185884', '0', '5', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '186167'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('186167', '0', '3', '4194304', '0', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '186298'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `procEx`, `ppmRate`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('186298', '0', '6', '536870912', '0', '0', '0', '0', '0', '0', '0', '0', '1');

-- legendary items (before 7.2)
-- gen
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '207472' AND `spellDummyId` = '162700' AND `option` = '1' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '207472' AND `spellDummyId` = '162702' AND `option` = '1' AND `effectDummy` = '0' AND `effectmask` = '1'; 

-- war
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_warr_rampage'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
('201363', 'spell_warr_rampage'),
('201364', 'spell_warr_rampage'),
('184707', 'spell_warr_rampage'),
('184709', 'spell_warr_rampage'),
('218617', 'spell_warr_rampage'); 

DELETE FROM `spell_aura_trigger` WHERE `hastalent` = '248118'; 
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `hastalent`, `comment`) VALUES 
('46924', '248142', '1', '248118', 'Око Великой Бури'),
('227847', '248142', '1', '248118', 'Око Великой Бури');
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `caster`, `effectmask`, `hastype`, `hastalent`, `slot`, `comment`) VALUES 
('227876', '248142', '0', '0', '2', '0', '248118', '0', 'Око Великой Бури'); 

-- pala
DELETE FROM `spell_trigger` WHERE `spell_id` = '248033' AND `spell_trigger` = '31842';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `aura`, `comment`) VALUES 
('248033', '31842', '48', '0', '2', '0', 'Высокая башня'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '248033'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248033', '10', '262144', '17408', '10', '2'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '248033'; 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `hastalent`, `chance`, `effectmask`, `comment`) VALUES 
('248033', '0', '-31842', '0', '2', 'Высокая башня'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '53385' AND `spell_effect` = '248289';
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '248289';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `duration`, `actiontype`, `comment`) VALUES 
('53385', '248289', '8', '248289', '400', '21', 'Искупление Алого инквизитора'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-248103' AND `spell_effect` = '-248289';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('-248103', '-248289', 'Искупление Алого инквизитора'); 

-- dh
DELETE FROM `spell_trigger` WHERE `spell_id` = '248072';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `bp1`, `bp2`,`effectmask`, `aura`, `comment`) VALUES ('248072', '247938', '48', '-4000', '0', '0', '1', '0', 'Теория хаоса'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '248072'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '248072'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('248072', '107', '0', '0', '10', '1');
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `hastalent`, `chance`, `effectmask`, `comment`) VALUES 
('248072', '200685', '-247938', '0', '1', 'Теория хаоса'), ('248072', '210155', '-247938', '0', '1', 'Теория хаоса'); 

-- rogue
DELETE FROM `spell_proc_event` WHERE `entry` = '248106'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248106', '8', '8388608', '0', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '79096' AND `spell_trigger` = '202665';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `targetaura2`, `effectmask`, `aura2`, `comment`) VALUES ('79096', '202665', '23', '1', '1', '1', '248107', 'Проклятие беспокойства'); 
UPDATE `spell_trigger` SET `bp1` = '20' WHERE `spell_id` = '79096' AND `spell_trigger` = '202665';

DELETE FROM `spell_proc_event` WHERE `entry` = '248110'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248110', '8', '2097152', '0', '0', '1'); 

-- dk
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '235592' AND `spell_trigger` = '235599';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `comment`) VALUES ('235592', '235599', '1', 'Хладное сердце'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-235592' AND `spell_effect` = '-235599';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('-235592', '-235599', 'Хладное сердце'); 
DELETE FROM `spell_script_names` WHERE `spell_id` = '248397' AND `ScriptName` = 'spell_dk_cold_heart'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('248397', 'spell_dk_cold_heart'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '235599'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES ('235599', '15', '4', '1'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '235599' AND `spell_trigger` = '248397';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('235599', '248397', '20', '1', 'Хладное сердце'); 

-- dru
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '248034';
DELETE FROM `spell_trigger` WHERE `spell_id` = '248034';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `targetaura2`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `aura2`, `chance`, `group`, `procFlags`, `comment`) VALUES 
('248034', '117679', '48', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', 'Изменчивая песнь'),
('248034', '33891', '45', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', 'Изменчивая песнь');  
DELETE FROM `spell_proc_event` WHERE `entry` = '248034'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248034', '7', '67108864', '17408', '15', '2'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '248163';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `aura`, `comment`) VALUES ('248163', '202788', '45', '1', '1', '0', 'Сияющий лунный свет'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '248163';
DELETE FROM `spell_proc_event` WHERE `entry` = '248163';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES ('248163', '202771', '1', 'Сияющий лунный свет'); 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `procFlags`, `CustomChance`, `Cooldown`, `effectmask`) VALUES ('248163', '7', '65536', '100', '30', '1'); 

DELETE FROM `spell_linked_spell` WHERE `comment` = 'Неистовость природы';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES 
('5487', '248521', '248083', 'Неистовость природы'),
('-5487', '-248521', '0', 'Неистовость природы');
DELETE FROM `spell_trigger` WHERE `spell_id` = '248521';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `comment`) VALUES ('248521', '248522', '39', '30', '2', 'Неистовость природы'); 
UPDATE `spell_trigger` SET `schoolMask` = '72' WHERE `spell_id` = '248521' AND `spell_trigger` = '248522';
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '248521' AND `spell_trigger` = '248522';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('248521', '248522', '14', '2', 'Неистовость природы'); 

-- sha
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '248036';
DELETE FROM `spell_trigger` WHERE `spell_id` = '248036';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `targetaura2`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `aura2`, `chance`, `group`, `procFlags`, `comment`) VALUES 
('248036', '114052', '48', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', 'Глубинное пламя');  
DELETE FROM `spell_proc_event` WHERE `entry` = '248036'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248036', '11', '1048576', '17408', '15', '2'); 

-- mage
DELETE FROM `spell_trigger` WHERE `spell_id` = '248099';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('248099', '248146', '20', '1', 'Стабильное ядро инфернала'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '248099'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES ('248099', '3', 1+4194304, '1'); 
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '248146';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastype`, `hastalent`, `hasparam`, `comment`) VALUES 
('11366', '177345', '13', '248146', '30', 'Стабильное ядро инфернала'),
('133', '177345', '13', '248146', '30', 'Стабильное ядро инфернала'),
('177345', '-248146', '13', '248146', '30', 'Стабильное ядро инфернала');

DELETE FROM `spell_trigger` WHERE `spell_id` = '248100';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('248100', '248176', '20', '1', 'Костяные осколки Синдрагосы'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '248100'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `procFlags`, `effectmask`) VALUES ('248100', '3', '32', '4096', '4096', '1'); 
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '248176';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastype`, `hastalent`, `hasparam`, `comment`) VALUES 
('228597', '153595', '13', '248176', '15', 'Костяные осколки Синдрагосы'),
('44614', '153595', '13', '248176', '15', 'Костяные осколки Синдрагосы'),
('153595', '-248176', '13', '248176', '15', 'Костяные осколки Синдрагосы');

-- monk
DELETE FROM `spell_trigger` WHERE `spell_id` = '248035';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `chance`, `comment`) VALUES ('248035', '248293', '20', '0', '1', '101', 'Путь в никуда'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '248035'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('248035', '53', '2048', '1024', '0', '1');

DELETE FROM `spell_proc_event` WHERE `entry` = '248101'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '248101'; 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES ('248101', '205320', '3', 'Завывание ветра');

-- hunter
DELETE FROM `spell_proc_event` WHERE `entry` = '248084'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248084', '9', '4194304', '0', '0', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '248087'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248087', '9', '536870912', '0', '0', '1'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '1613' AND `customEntry` = '6094' AND `id` = '3'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '13812' AND `spell_effect` = '248212';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES ('13812', '248212', '1', '248089', 'Плащ невидимого хищника'); 

-- priest
DELETE FROM `spell_trigger` WHERE `spell_id` = '248037';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `targetaura2`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `aura2`, `chance`, `group`, `procFlags`, `comment`) VALUES 
('248037', '10060', '48', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', 'Сокрытое сияние');  
DELETE FROM `spell_proc_event` WHERE `entry` = '248037'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248037', '6', '4194304', '0', '35', '2'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '248037'; 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `hastalent`, `chance`, `effectmask`, `comment`) VALUES 
('248037', '0', '-10060', '0', '2', 'Сокрытое сияние'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '248295';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `targetaura2`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `aura2`, `chance`, `group`, `procFlags`, `comment`) VALUES 
('248295', '200183', '48', '0', '0', '0', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', 'Алебастровая леди');  
DELETE FROM `spell_proc_event` WHERE `entry` = '248295'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('248295', '6', '4194304', '1024', '15', '2'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '248295'; 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `hastalent`, `chance`, `effectmask`, `comment`) VALUES 
('248295', '0', '-200183', '0', '2', 'Алебастровая леди'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '248296';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('248296', '248219', '3', '2', 'Сердце бездны'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '248296'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('248296', '6', '16', '65536', '100', '2'); 


-- t20 + t21
-- war
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '167105' AND `spell_effect` = '227847' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242298' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-2000' AND `randList` = '' AND `comment` = 'Item - Warrior T20 Arms 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '167105' AND `spell_effect` = '152277' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242298' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-2000' AND `randList` = '' AND `comment` = 'Item - Warrior T20 Arms 4P Bonus'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242298';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('242298', '227847', '23', '1', '0', '10', '0', '1', 'Item - Warrior T20 Arms 2P Bonus'),
('242298', '152277', '23', '1', '0', '10', '0', '2', 'Item - Warrior T20 Arms 2P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242298'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `effectmask`) VALUES 
('242298', '4', '1073741824', '3'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '85288' AND `spell_effect` = '242952' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242301' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Warrior T20 Fury 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '117313' AND `spell_effect` = '-242952' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242301' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Warrior T20 Fury 4P Bonus'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242301';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `targetaura2`, `effectmask`, `aura2` , `comment`) VALUES 
('242301', '242952', '20', '1', '1', '-215573' , 'Item - Warrior T20 Fury 4P Bonus'),
('242301', '242953', '20', '1', '1', '215573' , 'Item - Warrior T20 Fury 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242301'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242952';
DELETE FROM `spell_proc_event` WHERE `entry` = '242953';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask2`, `procFlags`, `effectmask`) VALUES 
('242301', '4', '8192', '0', '0', '1'), 
('242952', '4', '1024', '0', '0', '1'),
('242953', '4', '1024', '0', '0', '1');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '23922' AND `spell_effect` = '18499' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242373' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '1' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-3000' AND `randList` = '' AND `comment` = 'Item - Warrior T20 Protection 4P Bonus'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242373';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('242373', '18499', '23', '1', '0', '10', '0', '1', 'Item - Warrior T20 Protection 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242373'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `effectmask`) VALUES 
('242373', '4', '512', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251878'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `effectmask`) VALUES 
('251878', '4', '1073741824', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251879'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES 
('251879', '4', '33554432', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251881'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES 
('251881', '4', '16', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251880';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('251880', '253384', '3', '0', '0', '2', '0', '1', 'Item - Warrior T21 Fury 2P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251880'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procEx`, `effectmask`) VALUES 
('251880', '4', '4096', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251883';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('251883', '254339', '20', '0', '0', '0', '0', '1', 'Item - Warrior T21 Protection 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251883'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('251883', '0', '0', '64', '1'); 
DELETE FROM `spell_script_names` WHERE `spell_id` = '254339' AND `ScriptName` = 'spell_war_t21_prot_4p'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('254339', 'spell_war_t21_prot_4p'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251882'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES 
('251882', '4', '16', '1'); 

-- pala
DELETE FROM `spell_proc_event` WHERE `entry` = '242262'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `effectmask`) VALUES 
('242262', '10', '262144', '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20271' AND `spell_effect` = '31935' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242263' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '25' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T20 Protection 2P Bonus'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242263';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('242263', '31935', '4', '1', '0', '0', '0', '1', 'Item - Paladin T20 Protection 2P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242263'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('242263', '10', '8388608', '0', '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '31935' AND `spell_effect` = '242265' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242264' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T20 Protection 4P Bonus'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242264'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('242264', '10', '16384', '0', '1'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '184575' AND `spellDummyId` = '197277' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '3'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '198137' AND `spellDummyId` = '197277' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '3'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242267'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('242267', '10', '8388608', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242266' AND `spell_trigger` = '111528' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242266'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '228231' AND `spellDummyId` = '242266';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `effectDummy`, `effectmask`, `comment`) VALUES 
('228231', '242266', '2', '1', '1', 'Item - Paladin T20 Retribution 2P Bonus'); 
UPDATE `spell_dummy_trigger` SET `option` = '0' WHERE `spell_id` = '198034' AND `spell_trigger` = '228231' AND `option` = '4' AND `aura` = '0'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '251865'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('251865', '10', '2097152', '65536', '0', '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '251869' AND `spell_effect` = '253331';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-251869' AND `spell_effect` = '-253331';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
('251869', '253331', 'Item - Paladin T21 Protection 2P Bonus'),
('-251869', '-253331', 'Item - Paladin T21 Protection 2P Bonus');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '132403' AND `spell_effect` = '253331';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-132403' AND `spell_effect` = '253331';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '251870' AND `spell_effect` = '253331';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-251870' AND `spell_effect` = '253331';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `target`, `hastalent`, `actiontype`, `comment`) VALUES 
('132403', '253331', '3', '3', '251870', '0', 'Item - Paladin T21 Protection 4P Bonus'), 
('-132403', '253331', '3', '3', '251870', '0', 'Item - Paladin T21 Protection 4P Bonus'),
('251870', '253331', '3', '3', '0', '0', 'Item - Paladin T21 Protection 4P Bonus'),
('-251870', '253331', '3', '3', '0', '0', 'Item - Paladin T21 Protection 4P Bonus');
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '253331' AND `spellDummyId` = '251870';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `caster`, `hastalent`, `hastalent2`, `effectmask`, `comment`) VALUES 
('253331', '251870', '1', '2', '-132403', '251870', '1', 'Item - Paladin T21 Protection 4P Bonus'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251868'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('251868', '10', '8388608', '0', '1'); 

-- dh
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '188499' AND `spell_trigger` = '210041' AND `option` = '1' AND `aura` = '242226'; 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '210152' AND `spell_trigger` = '210041' AND `option` = '1' AND `aura` = '242226'; 
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '242226';
DELETE FROM `spell_dummy_trigger` WHERE `aura` = '242226'; 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `effectmask`, `handlemask`, `aura`, `comment`) VALUES 
('188499', '245862', '4', '3', '3', '1', '9', '242226', 'Item - Demon Hunter T20 Havoc 4P Bonus'), 
('210152', '245862', '4', '3', '3', '1', '9', '242226', 'Item - Demon Hunter T20 Havoc 4P Bonus');

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '242228';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('203794', '246115', '1', '242228', 'Item - Demon Hunter T20 Vengeance 2P Bonus'),
('210042', '246115', '1', '242228', 'Item - Demon Hunter T20 Vengeance 2P Bonus'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '204513' AND `spell_effect` = '242230' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242229' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Demon Hunter T20 Vengeance 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '204596' AND `spell_effect` = '242230' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242229' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Demon Hunter T20 Vengeance 4P Bonus'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242229';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES
('242229', '242230', '20', '1', 'Item - Demon Hunter T20 Vengeance 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242229'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES
('242229', '107', '2147483648', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251774';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('251774', '187827', '23', '1', '0', '0', '0', '1', 'Item - Demon Hunter T21 Vengeance 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251774'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('251774', '0', '0', '32', '1'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '251769';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('198013', '252165', '8', '251769', 'Item - Demon Hunter T21 Havoc 4P Bonus'); 

-- rogue
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '242278';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('-13750', '246558', '0', '242278', 'Item - Rogue T20 Outlaw 4P Bonus'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251776'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('251776', '8', '8', '0', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251777'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('251777', '8', 65536+268435456, '2', '1'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '251778';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES 
('197834', '252285', '251778', 'Item - Rogue T21 Outlaw 2P Bonus'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251785';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp1`, `effectmask`, `comment`) VALUES 
('251785', '212283', '46', '1', '10', '1', 'Item - Rogue T21 Subtlety 2P Bonus'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '251785';
INSERT INTO `spell_proc_check` (`entry`, `effectmask`, `powertype`, `comment`) VALUES ('251785', '1', '4', 'Item - Rogue T21 Subtlety 2P Bonus'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251788'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask3`, `procEx`, `effectmask`) VALUES 
('251788', '8', '4', 8192+256, '0', '1'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '257945';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('257945', '252732', '29', '1', '0', '0', '100', '0', '1', 'Item - Rogue T21 Subtlety 4P Bonus'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '257945';
INSERT INTO `spell_proc_check` (`entry`, `effectmask`, `powertype`, `comment`) VALUES ('257945', '7', '4', 'Item - Rogue T21 Subtlety 4P Bonus'); 

-- dk
DELETE FROM `spell_trigger` WHERE `spell_id` = '242001';
UPDATE `spell_proc_event` SET `procFlags` = '0' , `procEx` = '0' , `CustomChance` = '0' WHERE `entry` = '242001'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '242009' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '242010' AND `spellDummyId` = '242009'; 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `effectmask`, `comment`) VALUES 
('242010', '242009', '4', '2', 'Item - Death Knight T20 Blood 4P Bonus'); 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '2097152' , `procFlags` = '0' WHERE `entry` = '242058'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242064';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES 
('242064', '246995', '20', '1', 'Item - Death Knight T20 Unholy 2P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242064'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES 
('242064', '15', '2048', '1');
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '242064';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `actiontype`, `param`, `comment`) VALUES 
('42651', '246995', '0', '242064', '23', '3000', 'Item - Death Knight T20 Unholy 2P Bonus');

DELETE FROM `spell_trigger` WHERE `spell_id` = '251871';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('251871', '253367', '3', '0', '0', '0', '2', '0', '1', 'Item - Death Knight T21 Unholy 2P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251871'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('251871', '15', '8192', '65536', '1');

DELETE FROM `spell_trigger` WHERE `spell_id` = '251872';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('251872', '47632', '45', '0', '0', '400', '0', '0', '1', 'Item - Death Knight T21 Unholy 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251872'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES 
('251872', '15', '8192', '1');

DELETE FROM `spell_proc_event` WHERE `entry` = '251875'; 
INSERT INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `effectmask`) VALUES ('251875', '16', '15', '1'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '251875'; 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES ('251875', '-253590', '1', 'Item - Death Knight T21 Frost 4P Bonus'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '49028' AND `spell_effect` = '253381';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `duration`, `comment`) VALUES 
('49028', '253381', '251877', '8000', 'Death Knight T21 Blood 4P Bonus'); 

-- dru
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '78674' AND `spellDummyId` = '242231'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '78674' AND `spell_effect` = '242232' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242233' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Druid T20 Balance 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '191034' AND `spell_effect` = '242232' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242233' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Druid T20 Balance 4P Bonus'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242233';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('242233', '242232', '20', '1', 'Item - Druid T20 Balance 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242233'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES ('242233', '7', '33554432', '8388608', 65536+4096, '1'); 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '1079' AND `spell_trigger` = '220952' AND `option` = '0' AND `hastalent` = '242234' AND `hastalent2` = '0'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242234'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES ('242234', '7', '2097152', '0', 0, '1'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '1079' AND `spellDummyId` = '242235' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '1079' AND `spellDummyId` = '242235' AND `option` = '12' AND `effectDummy` = '1' AND `effectmask` = '1'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '192081' AND `spell_effect` = '22842' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242237' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '14' AND `group` = '0' AND `param` = '2000' AND `randList` = '' AND `comment` = 'Item - Druid T20 Guardian 4P Bonus'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242237'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `procFlags`, `effectmask`) VALUES ('242237', '7', 16+1024+4096+16384+65536, '2'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '18562' AND `spell_effect` = '242315' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242313' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Druid T20 Restoration 4P Bonus'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242313'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES ('242313', '7', '2', '0', 0, '1'); 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '81269' AND `spellDummyId` = '242315'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '251813'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `procEx`, `effectmask`) VALUES 
('251813', '7', '262144', '0', '0', '1');

DELETE FROM `spell_proc_event` WHERE `entry` = '251814'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `effectmask`) VALUES 
('251814', '7', '67108864', '1024', '1');

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '251791';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `removeMask`, `actiontype`, `param`, `comment`) VALUES 
('-93622', '22812', '251791', '2', '13', '-1000', 'Item - Druid T21 Guardian 2P Bonus'); 

DELETE FROM `spell_linked_spell` WHERE`hastalent` = '251792';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `removeMask`, `comment`) VALUES 
('-22812', '253575', '251792', '16', 'Item - Druid T21 Guardian 4P Bonus'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251789'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('251789', '7', '2097152', '0', '0', '1');
DELETE FROM `spell_trigger` WHERE `spell_id` = '251789';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `comment`) VALUES 
('251789', '252750', '3', '100', '1', 'Item - Druid T21 Feral 2P Bonus'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251790'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `effectmask`) VALUES 
('251790', '7', '2097152', '0', '1');

DELETE FROM `spell_proc_event` WHERE `entry` = '251809'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES 
('251809', '7', '33554432', '8388608', 65536+4096, '1'); 

-- sham
DELETE FROM `spell_trigger` WHERE `spell_id` = '242282';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('242282', '198067', '23', '1', '0', '10', '0', '1', 'Item - Shaman T20 Elemental 4P Bonus'),
('242282', '198067', '23', '1', '0', '10', '0', '2', 'Item - Shaman T20 Elemental 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242282'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('242282', '11', '268435456', '2', '3'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '242281'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('242281', '11', '536870912', '8388608', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242283' AND `spell_trigger` = '242284' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
UPDATE `spell_proc_event` SET `procFlags` = '0' , `CustomChance` = '0' WHERE `entry` = '242283'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242285' AND `spell_trigger` = '242286' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
UPDATE `spell_proc_event` SET `procFlags` = '0' , `Cooldown` = '0.1', `procEx` = '0' , `CustomChance` = '0' WHERE `entry` = '242285'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242287';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('242287', '246729', '20', '0', '0', '0', '0', '1', 'Item - Shaman T20 Elemental 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242287'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `procEx`, `effectmask`) VALUES 
('242287', '11', '0', '16384', '0', '1'); 
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '246729';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `hastalent2`, `duration`, `actiontype`, `comment`) VALUES 
('61295', '-246729', '0', '246729', '0', '0', '0', 'Прилив'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '242288'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `procEx`, `effectmask`) VALUES 
('242288', '11', '16', '0', '2', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251764';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `caster`, `effectmask`, `CreatureType`, `comment`) VALUES 
('251764', '252154', '20', '11', '1', '73400', 'Item - Shaman T21 Restoration 2P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251764'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `procEx`, `Cooldown`, `effectmask`) VALUES 
('251764', '11', '1048576', '0', '0', '0.2', '1'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '252154';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `resizeType`, `count`, `addcaster`, `comments`) VALUES 
('252154', '31', '1', '6', '-1', 'Ливень'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251765';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `caster`, `effectmask`, `CreatureType`, `comment`) VALUES 
('251765', '252159', '20', '11', '1', '73400', 'Item - Shaman T21 Restoration 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251765'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `procEx`, `Cooldown`, `effectmask`) VALUES 
('251765', '11', '1048576', '0', '0', '0.2', '1'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '252159';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `resizeType`, `count`, `addcaster`, `comments`) VALUES 
('252159', '31', '1', '6', '-1', 'Ливневый дождь'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251761'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('251761', '11', '262144', '0', '0', '1');

DELETE FROM `spell_proc_event` WHERE `entry` = '251762'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `SpellFamilyMask1`, `Cooldown`, `effectmask`) VALUES 
('251762', '11', '4096', '0', '0.2', '1');

DELETE FROM `spell_proc_event` WHERE `entry` = '251757'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('251757', '11', '4096', '0', '1');

DELETE FROM `spell_trigger` WHERE `spell_id` = '251758';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `schoolMask`, `chance`, `comment`) VALUES 
('251758', '252143', '3', '95', '1', '8', '0', 'Item - Shaman T21 Elemental 4P Bonus'), 
('251758', '256561', '3', '95', '1', '16', '0', 'Item - Shaman T21 Elemental 4P Bonus');
DELETE FROM `spell_proc_event` WHERE `entry` = '251758'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('251758', '11', 1048576+2147483648, '0', '1');

-- mage
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '205025' AND `spell_effect` = '242247' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242246' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Mage T20 Arcane 2P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '242247' AND `spell_effect` = '208030' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242246' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '17' AND `group` = '0' AND `param` = '4' AND `randList` = '' AND `comment` = 'Item - Mage T20 Arcane 2P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5143' AND `spell_effect` = '205025' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242248' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-205025' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-4000' AND `randList` = '' AND `comment` = 'Item - Mage T20 Arcane 4P Bonus'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242248'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `effectmask`) VALUES 
('242248', '3', '32', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '246225';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('246225', '205025', '23', '1', '0', '20', '0', '1', 'Item - Mage T20 Arcane 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '246225'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('246225', '3', '2048', '4096', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242249'; 
UPDATE `spell_proc_event` SET `procFlags` = '0' , `CustomChance` = '0' WHERE `entry` = '242249'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242250';
UPDATE `spell_proc_event` SET `procFlags` = '0' , `CustomChance` = '0' WHERE `entry` = '242250'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '2120' AND `spellDummyId` = '242251' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '11366' AND `spellDummyId` = '242251' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198149' AND `spell_effect` = '242253' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242252' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Mage T20 Frost 2P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '84714' AND `spell_effect` = '242253' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242252' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Mage T20 Frost 2P Bonus'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242252'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `effectmask`) VALUES 
('242252', '3', '536870912', 17408, '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '190446' AND `spell_effect` = '84714' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242254' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-5000' AND `randList` = '' AND `comment` = 'Item - Mage T20 Frost 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '190446' AND `spell_effect` = '198149' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242254' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-5000' AND `randList` = '' AND `comment` = 'Item - Mage T20 Frost 4P Bonus'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242254'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES 
('242254', '3', '262144', '17408', '1'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242254';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp1`, `effectmask`, `comment`) VALUES 
('242254', '84714', '23', '1', '10', '1', 'Item - Mage T20 Frost 4P Bonus'), 
('242254', '198149', '23', '1', '10', '1', 'Item - Mage T20 Frost 4P Bonus');

DELETE FROM `spell_proc_event` WHERE `entry` = '251862'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('251862', '3', '4', '0', '0', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251858'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('251858', '3', '67108864', '0', '0', '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-190446' AND `spell_effect` = '253257';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '228598' AND `spell_effect` = '-253257';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `removeMask`, `comment`) VALUES 
('-190446', '253257', '251860', '2', 'Item - Mage T21 Frost 4P Bonus'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES 
('228598', '-253257', '253257', 'Арктический взрыв'); 

-- monk
DELETE FROM `spell_trigger` WHERE `spell_id` = '242255';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `randList`, `comment`) VALUES 
('242255', '124503', '20', '1', '124503 124506', 'Item - Monk T20 Brewmaster 2P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242255'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `effectmask`) VALUES 
('242255', '53', '1048576', '4', 32768, '1'); 

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_monk_gift_of_the_ox_heal'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
('124507', 'spell_monk_gift_of_the_ox_heal'), 
('213464', 'spell_monk_gift_of_the_ox_heal');

DELETE FROM `spell_proc_event` WHERE `entry` = '242257'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `effectmask`) VALUES 
('242257', '53', '0', '0', '2048', '1'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '246328'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES 
('246328', '53', '0', '0', '0', '17408', '1'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '242258';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `removeMask`, `comment`) VALUES 
('-246328', '247891', '242258', '2', 'Item - Monk T20 Mistweaver 4P Bonus'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '242259';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('113656', '247255', '8', '242259', 'Item - Monk T20 Windwalker 2P Bonus');

DELETE FROM `spell_trigger` WHERE `spell_id` = '242260';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('242260', '113656', '23', '1', '0', '0', '0', '1', 'Item - Monk T20 Windwalker 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242260'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('242260', '53', '128', '2', '1'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '251829';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `comment`) VALUES 
('115181', '195630', '1', '251829', 'Item - Monk T21 Brewmaster 2P Bonus');

DELETE FROM `spell_trigger` WHERE `spell_id` = '251830';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('251830', '115181', '23', '1', '0', '10', '0', '1', 'Item - Monk T21 Brewmaster 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251830'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('251830', '0', '0', '16', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251825'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procEx`, `effectmask`) VALUES 
('251825', '53', '16384', '0', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251826'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procEx`, `effectmask`) VALUES 
('251826', '53', '2', '0', '1'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '253581';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `effectMask`, `comments`) VALUES 
('253581', '30', '25', '253448', '1', 'Заряд ци'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '251823';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `removeMask`, `comment`) VALUES 
('-116768', '252768', '251823', '2', 'Item - Monk T21 Windwalker 4P Bonus'); 

-- hunter
DELETE FROM `spell_proc_event` WHERE `entry` = '242239'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('242239', '9', '33554432', '0', '1'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '2643' AND `spellDummyId` = '242240' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '3'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '193455' AND `spellDummyId` = '242240' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '3'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '-1' AND `spellId` = '242240' AND `option` = '0' AND `target` = '0' AND `bp0` = '0' AND `aura` = '242240' AND `createdspell` = '0'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242240'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procEx`, `effectmask`) VALUES 
('242240', '9', '33554432', '0', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '242241'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('242241', '9', '131072', '0', '1'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '185855' AND `spellDummyId` = '242244' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '3'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '202800' AND `spell_effect` = '185855' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242244' AND `hasparam` = '0' AND `hastype2` = '1' AND `hastalent2` = '185855' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '10' AND `group` = '0' AND `param` = '6000' AND `randList` = '' AND `comment` = 'Item - Hunter T20 Survival 2P Bonus'; 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '190928' AND `spellDummyId` = '242245' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '3'; 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `effectmask`, `hastype`, `hastalent`, `comment`) VALUES 
('190928', '242245', '1', '9', '2', '3', '6', '185855', 'Item - Hunter T20 Survival 4P Bonus'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251756';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `comment`) VALUES 
('251756', '193530', '23', '1', '0', '0', '0', '1', 'Item - Hunter T21 Beast Mastery 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251756'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `effectmask`) VALUES 
('251756', '9', '2048', '4096', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251753';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `chance`, `comment`) VALUES 
('251753', '212621', '45', '0', '400', '0', '0', '1', '101', 'Item - Hunter T21 Marksmanship 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '251753'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('251753', '9', '2', '4096', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251752'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES 
('251752', '9', '1', '0', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251751'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `effectmask`) VALUES 
('251751', '9', '256', '0', '1'); 

-- priest
DELETE FROM `spell_proc_event` WHERE `entry` = '242269'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('242269', '6', '1', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242271';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `comment`) VALUES 
('242271', '2050', '46', '1', '0', '5', '3', '1', '2050', 'Item - Priest T20 Holy 4P Bonus'),
('242271', '34861', '23', '1', '0', '5', '3', '1', '34861', 'Item - Priest T20 Holy 4P Bonus'),
('242271', '88625', '23', '1', '0', '5', '3', '1', '88625', 'Item - Priest T20 Holy 4P Bonus');
DELETE FROM `spell_proc_event` WHERE `entry` = '242271'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '242272'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `effectmask`) VALUES 
('242272', '6', '64', '0', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251844'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('251844', '6', '4194304', '0', '1'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '47540' AND `spell_effect` = '252848';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `hastalent2`, `duration`, `actiontype`, `comment`) VALUES 
('47540', '252848', '252848', '251844', '2000', '21', 'Item - Priest T21 Discipline 4P Bonus'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251831'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `Cooldown`, `effectmask`) VALUES 
('251831', '6', '512', '0', '0.1', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251842'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('251842', '6', 4096+2048, '0', '1'); 

-- warlock
DELETE FROM `spell_proc_event` WHERE `entry` = '242290'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procEx`, `effectmask`) VALUES 
('242290', '5', '2', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242291'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '242291'; 

UPDATE `spell_proc_event` SET  `procFlags` = '0' , `CustomChance` = '0' WHERE `entry` = '242293'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242294'; 
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '33554432' , `procFlags` = '4096' , `CustomChance` = '0' WHERE `entry` = '242294'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '242295'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251847';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `comment`) VALUES 
('251847', '233490', '22', '0', '0', '0', '0', '1', '0', 'Item - Warlock T21 Affliction 2P Bonus'),
('251847', '233496', '22', '0', '0', '0', '0', '1', '0', 'Item - Warlock T21 Affliction 2P Bonus'),
('251847', '233497', '22', '0', '0', '0', '0', '1', '0', 'Item - Warlock T21 Affliction 2P Bonus'),
('251847', '233498', '22', '0', '0', '0', '0', '1', '0', 'Item - Warlock T21 Affliction 2P Bonus'),
('251847', '233499', '22', '0', '0', '0', '0', '1', '0', 'Item - Warlock T21 Affliction 2P Bonus');
DELETE FROM `spell_proc_event` WHERE `entry` = '251847'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('251847', '5', '1024', '0', '0', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251849'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('251849', '5', 256+16, '0', '0', '1'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '256807';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `effectMask`, `comments`) VALUES 
('256807', '15', '13', '980', '0', '0', '1', 'Истязающая агония'); 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '256807' AND `spell_trigger` = '252938'; 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES 
('256807', '252938', '5', '1', 'Истязающая агония'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '251854'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('251854', '5', '8192', '0', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '251855';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `bp1`, `bp2`, `effectmask`, `aura`, `comment`) VALUES 
('251855', '253097', '3', '0', '0', '2', '0', '1', '0', 'Item - Warlock T21 Destruction 4P Bonus');
DELETE FROM `spell_proc_event` WHERE `entry` = '251855'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES 
('251855', '5', '8192', '0', '0', '1'); 



-- misc fixes
-- new racial spells
DELETE FROM `spell_proc_event` WHERE `entry` = '255652'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('255652', '16777216', '100', '1'); 

DELETE FROM `spell_bonus_data` WHERE `entry` = '256893'; 
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `ap_bonus`, `comments`) VALUES ('256893', '6.25', '6.25', 'Правосудие Света (Расовая)'); 

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('257040', 'spell_gen_spatial_rift'); 
DELETE FROM `areatrigger_actions` WHERE `entry` = '11983';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES 
('11983', '16670', '0', '512', '15', '260', '256948', '1', 'Пространственный разлом'); 

INSERT IGNORE INTO `creature_template` (`entry`, `minlevel`, `maxlevel`, `npcflag`, `unit_flags`) VALUES ('129356', '110', '110', '67108864', 131970); 
UPDATE `creature_template` SET `InhabitType` = '7' WHERE `entry` = '129356'; 
UPDATE `creature_template_wdb` SET `TypeFlags` = '1048576' WHERE `Entry` = '129356'; 

DELETE FROM `spell_bonus_data` WHERE `entry` = '260364'; 
INSERT INTO `spell_bonus_data` (`entry`, `direct_bonus`, `ap_bonus`, `comments`) VALUES ('260364', '2', '2', 'Чародейский импульс (Расовая)'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '11887' AND `customEntry` = '16575'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `targetFlags`, `spellId`, `comment`) VALUES ('11887', '16575', '2', '255723', 'Бычий натиск (Расовая)'); 


-- other
DELETE FROM `spell_proc_check` WHERE `entry` = '53651' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '-183998' AND `hastalent` = '-234862' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '183998' AND `spell_effect` = '-234862';
DELETE FROM `spell_proc_check` WHERE `entry` = '234862';
DELETE FROM `spell_proc_event` WHERE `entry` = '234862';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastalent`, `comment`) VALUES 
('183998', '-234862', '8', '3', '3', '234862', 'Предсмертный вдох Мараада'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '208771'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '208772'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('208771', 'spell_pri_smite_absorb'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('208772', 'spell_pri_smite_dummy'); 
DELETE FROM `spell_bonus_data` WHERE `entry` = '208771'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '214620' AND `spell_trigger` = '194384' AND `option` = '5';
UPDATE `spell_trigger` SET `option` = '21' , `target` = '0' , `caster` = '0' WHERE `spell_id` = '214620' AND `spell_trigger` = '194384';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '47666' AND `spell_effect` = '194384' AND `hastalent` = '214620';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `hastalent`, `actiontype`, `param`, `comment`) VALUES 
('47666', '194384', '3', '214620', '23', '3000', 'Хватка Халана Ужасного'); 

UPDATE `spell_aura_dummy` SET `effectmask` = '1' WHERE `spellId` = '49184' AND `spellDummyId` = '216059' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '2'; 
UPDATE `spell_aura_dummy` SET `effectmask` = '1' WHERE `spellId` = '237680' AND `spellDummyId` = '216059' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '2'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '212800' AND `spell_effect` = '216758' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '208985' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Неутолимый голод'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '208985'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES ('208985', '107', '8', '4096', '1'); 

DELETE FROM `spell_proc` WHERE `spellId` = '225947'; 

DELETE FROM `spell_proc_check` WHERE `entry` = '210992';
INSERT INTO `spell_proc_check` (`entry`, `hastalent`, `target`, `effectmask`, `comment`) VALUES 
('210992', '53563', '1', '1', 'Обсидиановый наплеч'),
('210992', '156910', '1', '1', 'Обсидиановый наплеч'),
('210992', '200025', '1', '1', 'Обсидиановый наплеч');
UPDATE `spell_proc_event` SET  `procFlags` = 32768+16384, `Cooldown` = '0' , `effectmask` = '1' WHERE `entry` = '210992'; 
UPDATE `spell_trigger` SET `caster` = '0' WHERE `spell_id` = '210992' AND `spell_trigger` = '210999';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '20473' AND `spellDummyId` = '211436'; 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '188370' AND `spellDummyId` = '211553'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '53600' AND `spell_effect` = '184092' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211554' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '35' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T19 Protection 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '53600' AND `spell_effect` = '213652' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211554' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '35' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T19 Protection 4P Bonus'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '211554';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `comment`) VALUES 
('211554', '184092', '4', '1', '1', 'Item - Paladin T19 Protection 4P Bonus'),
('211554', '213652', '4', '1', '1', 'Item - Paladin T19 Protection 4P Bonus'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '211554'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `effectmask`) VALUES 
('211554', '10', '1048576', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '238093';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `bp0`, `effectmask`, `chance`, `comment`) VALUES ('238093', '121253', '45', '0', '400', '1', '101', 'Расколотый бочонок'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '238093';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('238093', '53', '33554432', '16', '100', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '238112';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `chance`, `comment`) VALUES ('238112', '23881', '45', '400', '1', '101', 'Клятвенная кровь'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '238112';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('238112', '4', '1024', '16', '100', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '238121';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `chance`, `comment`) VALUES ('238121', '77758', '45', '400', '1', '101', 'Продолжительная взбучка'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '238121';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('238121', '7', '4194304', '16', '100', '1'); 

UPDATE `spell_target_filter` SET `option` = '9' WHERE `spellId` = '224637' AND `targetId` = '16';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '194466' AND `spell_effect` = '224637';
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '194466' AND `spell_trigger` = '224637'; 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `handlemask`, `comment`) VALUES 
('194466', '224637', '16', '400', '2', '8', 'Пламя феникса');

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_monk_sotw'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
('222029', 'spell_monk_sotw'),
('205414', 'spell_monk_sotw');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '203720' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '15' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '202137' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '204596' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '207684' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '207682' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '204513' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '202140' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '202138' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187827' AND `spell_effect` = '218256' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210867' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наплечье мастера рун'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '210867';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `target`, `effectmask`, `comment`) VALUES 
('210867', '218256', '4', '1', '0', '1', 'Наплечье мастера рун'),
('210867', '203720', '42', '1', '1', '1', 'Наплечье мастера рун'),
('210867', '202137', '4', '1', '0', '1', 'Наплечье мастера рун'),
('210867', '202138', '4', '1', '0', '1', 'Наплечье мастера рун'),
('210867', '207684', '4', '1', '0', '1', 'Наплечье мастера рун'),
('210867', '207682', '4', '1', '0', '1', 'Наплечье мастера рун'),
('210867', '202140', '4', '1', '0', '1', 'Наплечье мастера рун'),
('210867', '204596', '4', '1', '0', '1', 'Наплечье мастера рун');
DELETE FROM `spell_proc_event` WHERE `entry` = '210867'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `effectmask`) VALUES 
('210867', '107', '268435456', '0', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '210840';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `randList`, `comment`) VALUES 
('210840', '204596', '23', '1', '1', '204596 207684 202137', 'Осквернение Разелиха'); 

UPDATE `spell_proc_event` SET `procFlags` = '4112' , `CustomChance` = '100' , `Cooldown` = '0' , `effectmask` = '7' WHERE `entry` = '208436';

UPDATE `spell_proc_check` SET `checkspell` = '185438' WHERE `entry` = '211663';

UPDATE `spell_trigger` SET `bp1` = '2' , `bp2` = '0' WHERE `spell_id` = '211671' AND `spell_trigger` = '211672';

DELETE FROM `spell_trigger` WHERE `spell_id` = '211041' AND `spell_trigger` = '211040';

UPDATE `spell_dummy_trigger` SET `option` = '5' , `handlemask` = '9' WHERE `spell_id` = '214273' AND `spell_trigger` = '214452';
UPDATE `spell_target_filter` SET `option` = '4' , `resizeType` = '2' , `count` = '1' WHERE `spellId` = '214273' AND `targetId` = '16';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '8004' AND `spell_effect` = '-208764' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Искупление Нобундо'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1064' AND `spell_effect` = '-210607' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Сосредоточение Джоната'; 

UPDATE `spell_proc_event` SET `procFlags` = '16384' WHERE `entry` = '51564'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '60103' AND `spell_effect` = '201846' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211988' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '201845' AND `hasparam2` = '0' AND `chance` = '20' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Shaman T19 Enhancement 4P bonus'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '211988';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `aura`, `comment`) VALUES 
('211988', '201846', '13', '1', '60103', 'Item - Shaman T19 Enhancement 4P Bonus'); 

UPDATE `spell_linked_spell` SET `chance` = '10' WHERE `spell_trigger` = '48107' AND `spell_effect` = '211399' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211395' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '25' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Mage T19 Fire 4P bonus'; 
UPDATE `spell_linked_spell` SET `chance` = '10' WHERE `spell_trigger` = '48108' AND `spell_effect` = '211399' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211395' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '25' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Mage T19 Fire 4P bonus'; 

UPDATE `spell_linked_spell` SET `param` = '-2000' WHERE `spell_trigger` = '115181' AND `spell_effect` = '115203' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '224489' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-1000' AND `randList` = '' AND `comment` = 'Старинный отвар огнекаменного странника'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '0' , `Cooldown` = '0' ,`SpellFamilyMask3` = '2'  WHERE `entry` = '206902'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100780' AND `spell_effect` = '115399' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-211417' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-1000' AND `randList` = '' AND `comment` = 'Лапа тигра'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100780' AND `spell_effect` = '115203' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-211417' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-1000' AND `randList` = '' AND `comment` = 'Лапа тигра'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100780' AND `spell_effect` = '115203' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211417' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-2000' AND `randList` = '' AND `comment` = 'Item - Monk T19 Brewmaster 4P bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100780' AND `spell_effect` = '115399' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211417' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-2000' AND `randList` = '' AND `comment` = 'Item - Monk T19 Brewmaster 4P bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100780' AND `spell_effect` = '119582' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-211417' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '14' AND `group` = '0' AND `param` = '1000' AND `randList` = '' AND `comment` = 'Лапа тигра'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '100780' AND `spell_effect` = '119582' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211417' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '137023' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '14' AND `group` = '0' AND `param` = '2000' AND `randList` = '' AND `comment` = 'Item - Monk T19 Brewmaster 4P bonus'; 

UPDATE `spell_aura_trigger` SET `chance` = '5' WHERE `spell_id` = '119611' AND `spell_trigger` = '197206' AND `option` = '0' AND `hastalent` = '211418' AND `hastalent2` = '0'; 

UPDATE `spell_aura_dummy` SET `caster` = '2' , `effectmask` = '2' WHERE `spellId` = '116670' AND `spellDummyId` = '211423' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '7'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '235721'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `SpellFamilyMask3`, `effectmask`) VALUES ('235721', '9', '16384', '16', '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '217200' AND `spell_effect` = '19574' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-211172' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '231548' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-12000' AND `randList` = '' AND `comment` = 'Ужасный зверь'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '120679' AND `spell_effect` = '19574' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-211172' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '231548' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-12000' AND `randList` = '' AND `comment` = 'Ужасный зверь'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '120679' AND `spell_effect` = '19574' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211172' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '231548' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-16000' AND `randList` = '' AND `comment` = 'Item - Hunter T19 Beastmaster 2P bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '217200' AND `spell_effect` = '19574' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '211172' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '231548' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-16000' AND `randList` = '' AND `comment` = 'Item - Hunter T19 Beastmaster 2P bonus'; 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_hun_bw'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('120679', 'spell_hun_bw'),('217200', 'spell_hun_bw'); 

UPDATE `spell_linked_spell` SET `hasparam` = '6' WHERE `spell_trigger` = '190928' AND `spell_effect` = '211362' AND `type` = '0' AND `caster` = '3' AND `target` = '3' AND `hastype` = '14' AND `hastalent` = '190931' AND `hasparam` = '5' AND `hastype2` = '0' AND `hastalent2` = '211357' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Hunter T19 Survival 4P bonus'; 

UPDATE `spell_trigger` SET `option` = '4' WHERE `spell_id` = '214484' AND `spell_trigger` = '47540';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '194249' AND `spellDummyId` = '224999' AND `option` = '2';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `effectDummy`, `effectmask`, `comment`) VALUES ('194249', '224999', '2', '1', '1', 'Усиление Ириды');  
UPDATE `spell_aura_dummy` SET `caster` = '2' WHERE `spellId` = '15290' AND `spellDummyId` = '224999' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 

UPDATE `spell_proc_check` SET `hastalent` = '-212800' WHERE `entry` = '203468';

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '2097152' , `SpellFamilyMask1` = '65536' , `procEx` = '2' , `effectmask` = '1' WHERE `entry` = '53576';

UPDATE `spell_proc_event` SET `Cooldown` = '0.5' WHERE `entry` = '12950'; 

UPDATE `spell_proc_check` SET `hastalent` = '0' WHERE `entry` = '208051' AND `entry2` = '234867' AND `entry3` = '236763';

DELETE FROM `spell_proc_event` WHERE `entry` = '44448'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '211440'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '211442';  
DELETE FROM `spell_proc_event` WHERE `entry` = '211443'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('211440', '16384', '1'), ('211442', '16384', '1'), ('211443', '65536', '1'); 

UPDATE `areatrigger_data` SET `maxCount` = '3' WHERE `entry` = '4488'; 

UPDATE `areatrigger_data` SET `maxCount` = '3' WHERE `entry` = '4658'; 

UPDATE `areatrigger_data` SET `maxCount` = '3' WHERE `entry` = '5420'; 

UPDATE `spell_talent_linked_spell` SET `spelllink` = '53563' , `type` = '5' WHERE `spellid` = '200025' AND `spelllink` = '-53563'; 

UPDATE `spell_linked_spell` SET `hastalent2` = '-116680' WHERE `spell_trigger` = '107428' AND `spell_effect` = '116680' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210804' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нарастающий гром'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '199641' AND `spell_effect` = '214411';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('199641', '214411', '5', 'Небесное дыхание'); 
UPDATE `spell_proc_check` SET `hastalent` = '-214411' WHERE `entry` = '199640' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '116680' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 

DELETE FROM `spell_proc_check` WHERE `entry` = '14161' AND `entry2` = '79096' AND `entry3` = '193359';
DELETE FROM `spell_proc_check` WHERE `entry` = '14161';
DELETE FROM `spell_proc_check` WHERE `entry` = '79096';
DELETE FROM `spell_proc_check` WHERE `entry` = '193359';
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `entry3`, `checkspell`, `effectmask`, `powertype`, `comment`) VALUES 
('14161', '79096', '193359', '0', '1', '4', '0');
DELETE FROM `spell_proc_check` WHERE `entry` = '202665';
UPDATE `spell_trigger` SET `bp1` = '10' WHERE `spell_id` = '193359';

UPDATE `spell_aura_dummy` SET `hastype` = '6' , `hastalent` = '237844' WHERE `spellId` = '49184' AND `spellDummyId` = '216059' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
UPDATE `spell_aura_dummy` SET `hastype` = '6' , `hastalent` = '237844' WHERE `spellId` = '237680' AND `spellDummyId` = '216059' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `areatrigger_actions` WHERE `entry` = '6917' AND `customEntry` = '11420' AND `id` = '2'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `auraCaster`, `comment`) VALUES 
('6917', '11420', '2', '4', '2', '237844', '216059', 'Стойкость черного мученика');

INSERT IGNORE INTO `spell_proc_event` (`entry`, `SpellFamilyName`) VALUES ('27243', '5'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '373';
DELETE FROM `areatrigger_actions` WHERE `entry` = '7104';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES 
('373', '3282', '0', '553', '0', '260', '124507', '1', 'Дар быка'), 
('373', '3282', '1', '16', '0', '260', '224863', '1', 'Дар быка'), 
('373', '3282', '2', '40', '3', '260', '224863', '1', 'Дар быка'),   
('7104', '0', '0', '553', '0', '260', '213464', '1', 'Дар быка - переполнение'),  
('7104', '0', '1', '16', '0', '260', '224863', '1', 'Дар быка - переполнение'), 
('7104', '0', '2', '40', '3', '260', '224863', '1', 'Дар быка - переполнение');  

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 4096+32768, `SpellFamilyMask2` = 1024, `SpellFamilyMask3` = 2097152+16777216+1073741824+8 WHERE `entry` = '159286'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '202028' AND `spell_effect` = '34071';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hitmask`, `effectMask`, `comment`) VALUES ('202028', '34071', '1', '1', 'Жестокий удар когтями'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '135700';
DELETE FROM `spell_proc_event` WHERE `entry` = '135700';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `effectmask`) VALUES 
('135700', '7', '32768', '1024', 1073741824+8, 16+4096, '15'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '236026' AND `spell_effect` = '236025';

DELETE FROM `pet_stats` WHERE `entry` = '128140' OR `entry` = '128142' OR `entry` = '19668' OR `entry` = '67235' OR `entry` = '67236' OR `entry` = '62982'; 
INSERT INTO `pet_stats` (`entry`, `hp`, `ap`, `state`, `energy`, `comment`) VALUES 
('19668', '0.3', '-3', '2', '1', 'Исчадие тьмы'),
('67235', '0.3', '-3', '2', '1', 'Исчадие ша'),
('67236', '0.3', '-3', '2', '1', 'Исчадие ша'),
('62982', '0.3', '-3', '2', '1', 'Подчиняющий разум'),
('128140', '0.3', '-3', '2', '1', 'Порождение Света'),
('128142', '0.3', '-3', '2', '1', 'Порождение Бездны'); 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '128140' OR `petEntry` = '128142';
INSERT INTO `spell_pet_auras` (`petEntry`, `spellId`, `option`, `target`, `targetaura`, `bp0`, `bp1`, `bp2`, `aura`, `casteraura`, `createdspell`, `fromspell`, `comment`) VALUES
('128142','34429','0','0','0','0','0','0','0','0','0','0','Облик Тьмы'),
('128142','57989','0','0','0','0','0','0','0','0','0','0','Смерть исчадия Тьмы'),
('128142','63619','0','0','0','0','0','0','0','0','0','0','Стелющаяся Тьма'),
('128142','123050','0','0','0','0','0','0','0','0','0','0','Высасывание маны (Пассивная)'),
('128142','195178','0','0','1','0','0','0','81749','0','0','0','Искупление вины (Пассивная)'),
('128140','248948','0','0','0','0','0','0','0','0','0','0','Облик Тьмы'),
('128140','63619','0','0','0','0','0','0','0','0','0','0','Стелющаяся Тьма'),
('128140','123050','0','0','0','0','0','0','0','0','0','0','Высасывание маны (Пассивная)'),
('128140','195178','0','0','1','0','0','0','81749','0','0','0','Искупление вины (Пассивная)');

DELETE FROM `spell_proc_event` WHERE `entry` = '145722'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `procFlags`, `CustomChance`, `Cooldown`, `effectmask`) VALUES 
('145722', '6', 128+512+2048+4096, '4', '0', '4194304', 1024+16384+65536, '100', '0.1', '1'); 

DELETE FROM `areatrigger_data` WHERE `spellId` = '198929'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `AngleToCaster`) VALUES 
('5487', '198929', '10194', '0', 0), 
('5489', '198929', '10194', '0', 0.157), 
('5490', '198929', '10194', '0', 0.157*2), 
('5491', '198929', '10194', '0', 0.157*3),
('5492', '198929', '10194', '0', 0.157*4),
('5493', '198929', '10194', '0', 0.157*5);

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '215111' AND `spellDummyId` = '211123';
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '98035' AND `spellId` = '215111' AND `option` = '0' AND `target` = '0' AND `bp0` = '0' AND `aura` = '211123' AND `createdspell` = '0'; 

-- trinkets
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '225133' AND `spell_effect` = '229700' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '4000' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '11' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Сфера разрушения'; 

DELETE FROM `areatrigger_actions` WHERE `entry` = '9076'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `targetFlags`, `spellId`, `comment`) VALUES ('9076', '13117', '4', '2', '230215', 'Ураган пламени'); 
DELETE FROM `areatrigger_data` WHERE `entry` = '9076';
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('9076', '230213', '13117', '1000'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '231952' AND `spell_effect` = '230213';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `duration` , `comment`) VALUES ('231952', '230213', '500', 'Ураган пламени'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '7158'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `targetFlags`, `spellId`, `comment`) VALUES ('7158', '11612', '1024', '32', '213786', 'Сумерки'); 
DELETE FROM `areatrigger_data` WHERE `entry` = '7158';
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('7158', '213785', '11612', '1000'); 

DELETE FROM `spell_linked_spell` WHERE `spell_effect` = '251034';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
('251459', '251034', 'Призыв ловчего Бездны'), 
('251461', '251034', 'Призыв ловчего Бездны');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '242612';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES 
('242612', '244584', 'Фрагмент неутомимости'),
('242612', '244585', 'Фрагмент неутомимости'),
('242612', '244586', 'Фрагмент неутомимости'),
('242612', '244587', 'Фрагмент неутомимости');
DELETE FROM `areatrigger_actions` WHERE `entry` = '10528' AND `customEntry` = '15381'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES 
('10528', '15381', '4', '243630', '1', 'Фрагмент неутомимости'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '243630';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `actiontype`, `param`, `comment`) VALUES 
('243630', '242612', '0', '23', '3000', 'Фрагмент неутомимости'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '242619';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `actiontype`, `param`, `comment`) VALUES 
('242619', '242621', '8', '0', '0', 'Очищающая матрица'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '10415'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES 
('10415', '15273', '1', '2', '242525', '1', 'Ужас из глубин'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-243941';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `target`, `removeMask`, `comment`) VALUES 
('-243941', '243942', '3', '3', '48', 'Коварная порча'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '242609' AND `ScriptName` = 'spell_item_living_carapace'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242609', 'spell_item_living_carapace'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-242640' AND `spell_effect` = '-242642';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('-242640', '-242642', 'Сила воли'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '242218' AND `spellDummyId` = '246654';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `effectDummy`, `effectmask`, `comment`) VALUES 
('242218', '246654', '2', '7', '2', '1', '1', 'Танцующее пламя'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '10858'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES 
('10858', '15685', '1024', '32', '246464', '3', 'Призыв жуткого отражения'); 
DELETE FROM `areatrigger_data` WHERE `entry` = '10858'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES 
('10858', '246461', '15685', '1000'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '10421'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES 
('10421', '15279', '0', '1024', '32', '242556', '0', 'Град темных глеф'),
('10421', '15279', '1', '2048', '32', '242557', '0', 'Град темных глеф'); 
DELETE FROM `areatrigger_data` WHERE `entry` = '10421'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES 
('10421', '242553', '15279', '1000'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '253324' AND `spell_effect` = '255609';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastype`, `hastalent`, `hasparam`, `comment`) VALUES 
('253324', '255609', '1', '12', '1', '5', 'Теневой удар'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '253310';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `comment`) VALUES ('253310', '256025', '1', 'Огненные мины'); 
DELETE FROM `areatrigger_actions` WHERE `entry` = '11883'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES 
('11883', '16572', '552', '288', '253321', '1', 'Огненные мины'); 
DELETE FROM `spell_script_names` WHERE `spell_id` = '253322' AND `ScriptName` = 'spell_gen_fire_mines'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('253322', 'spell_gen_fire_mines'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '253326';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `comment`) VALUES ('253326', '253327', 'Эхо Горшалака'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '253327';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '253329';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '255673';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastype`, `hastalent`, `hasparam`, `duration`, `comment`) VALUES 
('253327', '253329', '13', '253327', '15', '0', 'Эхо Горшалака'), 
('253329', '255673', '0', '0', '0', '400', 'Эхо Горшалака'),
('255673', '-253327', '0', '0', '0', '0', 'Эхо Горшалака');
DELETE FROM `spell_aura_dummy` WHERE `spellDummyId` = '253327';
INSERT INTO `spell_aura_dummy`(`spellId`,`spellDummyId`,`type`,`option`,`target`,`caster`,`targetaura`,`aura`,`removeAura`,`effectDummy`,`effectmask`,`attr`,`attrValue`,`custombp`,`hastype`,`hastalent`,`hasparam`,`hastype2`,`hastalent2`,`hasparam2`,`comment`)VALUES
('253329','253327','2','7','0','2','0','0','0','0','1','0','0','100','0','0','0','0','0','0','Наследие Горшалака'),
('255673','253327','2','7','0','2','0','0','0','0','1','0','0','100','0','0','0','0','0','0','Наследие Горшалака'),
('253329','253327','1','9','0','2','0','0','0','0','1','0','0','-50','0','0','0','0','0','0','Наследие Горшалака'),
('255673','253327','1','9','0','2','0','0','0','0','1','0','0','-50','0','0','0','0','0','0','Наследие Горшалака');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-251946' AND `spell_effect` = '251947';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `removeMask`, `comment`) VALUES ('-251946', '251947', '16', 'Пылающий бастион'); 
DELETE FROM `areatrigger_actions` WHERE `customEntry` = '16555'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `hitMaxCount`, `comment`) VALUES 
('11869', '16555', '0', '1', '2', '251948', '-1', 'Волна пламени'),
('11870', '16555', '1', '1', '2', '251948', '-1', 'Волна пламени'),
('11871', '16555', '2', '1', '2', '251948', '-1', 'Волна пламени'),
('11872', '16555', '3', '1', '2', '251948', '-1', 'Волна пламени'); 
DELETE FROM `areatrigger_data` WHERE `spellId` = '251947'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `AngleToCaster`) VALUES 
('11869', '251947', '16555', '0', '0'), 
('11870', '251947', '16555', '0', '1.57'), 
('11871', '251947', '16555', '0', '3.14'), 
('11872', '251947', '16555', '0', '4.71');

DELETE FROM `spell_script_names` WHERE `spell_id` = '255629' AND `ScriptName` = 'spell_item_proto_person_decimator'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('255629', 'spell_item_proto_person_decimator'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '253277' AND `ScriptName` = 'spell_item_felshield'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('253277', 'spell_item_felshield'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '253268';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `comment`) VALUES ('253268', '253269', 'Цикл ответной реакции'); 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '253284' AND `spell_trigger` = '255981'; 
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `caster`, `target`, `effectmask`, `comment`) VALUES ('253284', '255981', '13', '3', '3', '1', 'Освежающая агония'); 


DELETE FROM `areatrigger_actions` WHERE `entry` = '9080';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `hitMaxCount`, `comment`) VALUES 
('9080', '13120', '0', '1', '2', '230242', '0', '0', 'Нестабильная энергия'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '9082';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `hitMaxCount`, `comment`) VALUES 
('9082', '13122', '0', '10', '32', '230261', '1', '0', 'Венец пламени'); 

UPDATE `spell_trigger` SET `spell_trigger` = '215649' WHERE `spell_id` = '215648';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '215649' AND `spell_effect` = '215648';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `target`, `actiontype`, `param`, `comment`) VALUES ('215649', '215648', '3', '3', '7', '1', 'Призма лунного света'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '215857'; 
INSERT INTO `spell_proc_event` (`entry`, `procEx`, `effectmask`) VALUES ('215857', '2', '1'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '215859';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '215884';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `comment`) VALUES 
('215859', '215884', '6', '0', '0', '14', '215859', '5', 'Нестабильная магия'), 
('215884', '-215859', '1', '5', '5', '0', '0', '0', 'Нестабильная магия');

UPDATE `spell_trigger` SET `spell_trigger` = '214399' WHERE `spell_id` = '215444'; 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '214399' AND `spell_trigger` = '215407'; 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `comment`) VALUES ('214399', '215407', '1', 'Темный взрыв'); 

UPDATE `areatrigger_template` SET `isMoving`='0',`Distance`='0' WHERE `entry`='8158' AND `spellId`='221857' AND `customEntry`='12383'; 
DELETE FROM `areatrigger_data` WHERE `entry`='8158' AND `spellId`='221857' AND `customEntry`='12383'; 
INSERT INTO `areatrigger_data`(`entry`,`spellId`,`customEntry`,`moveType`,`waitTime`,`speed`,`activationDelay`,`updateDelay`,`maxCount`,`hitType`,`AngleToCaster`,`AnglePointA`,`AnglePointB`,`maxActiveTargets`,`Param`) VALUES 
('8158','221857','12383','0','0','0','0','1000','0','0','0','0','0','0','0'); 
DELETE FROM `areatrigger_actions` WHERE `entry`='8158' AND `customEntry`='12383'; 
INSERT INTO `areatrigger_actions`(`entry`,`customEntry`,`id`,`moment`,`actionType`,`targetFlags`,`spellId`,`maxCharges`,`aura`,`hasspell`,`chargeRecoveryTime`,`hitMaxCount`,`amount`,`onDespawn`,`comment`) VALUES 
('8158','12383','0','1024','0','32','221865','0','0','0','0','0','0','0','Мучительный смерч'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '215405' AND `ScriptName` = 'spell_item_raincid_maw'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('215405', 'spell_item_raincid_maw'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '215672';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `dummyId`, `dummyEffect`, `comment`) VALUES 
('215672', '215695', '3', '2', '0', '0', 'Морская порча'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '221992' AND `spell_effect` = '221903' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '1' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Очищающий огонек'; 

DELETE FROM `areatrigger_actions` WHERE `entry` = '9070';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `hitMaxCount`, `comment`) VALUES 
('9070', '13112', '0', '1', '4', '230144', '1', '0', 'Свободная мана'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '224346' AND `spell_effect` = '224347';
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_item_hammer_forged';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('224347', 'spell_item_hammer_forged'); 

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('251952', 'spell_item_hammer_forged'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '251949';

DELETE FROM `spell_trigger` WHERE `spell_id` = '225138';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `aura2`, `dummyId`, `dummyEffect`, `comment`) VALUES 
('225138', '225766', '1', '137012', '225138', '1', 'Временной сдвиг'),
('225138', '225767', '1', '137024', '225138', '1', 'Временной сдвиг'),
('225138', '225768', '1', '137029', '225138', '1', 'Временной сдвиг'),
('225138', '225769', '1', '137032', '225138', '1', 'Временной сдвиг'),
('225138', '225770', '1', '137031', '225138', '1', 'Временной сдвиг'),
('225138', '225771', '1', '137039', '225138', '1', 'Временной сдвиг'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '215938';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `dummyId`, `dummyEffect`, `comment`) VALUES 
('215938', '215940', '3', '1', '0', '0', 'Иссушение души'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '8167';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `hitMaxCount`, `comment`) VALUES 
('8167', '12389', '0', '1', '4', '222027', '1', '0', 'Кошмарный гной'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '8152';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hitMaxCount`, `comment`) VALUES 
('8152', '12378', '0', '1', '0', '4', '221805', '0', '0', 'Обессиливающий мор'),
('8152', '12378', '1', '42', '1', '4', '221805', '0', '0', 'Обессиливающий мор'),
('8152', '12378', '2', '1024', '0', '32', '221804', '0', '0', 'Зараженная земля'); 
DELETE FROM `areatrigger_data` WHERE `entry` = '8152';
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('8152', '221803', '12378', '1000'); 

DELETE FROM `areatrigger_actions` WHERE `customEntry` = '11781'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `comment`) VALUES 
('7329', '11781', '0', '1', '2', '215047', '2', 'Теневая волна'),
('7331', '11781', '1', '1', '2', '215047', '2', 'Теневая волна'),
('7332', '11781', '2', '1', '2', '215047', '2', 'Теневая волна'),
('7335', '11781', '3', '1', '2', '215047', '2', 'Теневая волна'); 
DELETE FROM `areatrigger_data` WHERE `spellId` = '215058'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `AngleToCaster`) VALUES 
('7329', '215058', '11781', '0', '0'), 
('7331', '215058', '11781', '0', '1.57'), 
('7332', '215058', '11781', '0', '3.14'), 
('7335', '215058', '11781', '0', '4.71');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-214971' AND `spell_effect` = '214972';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `removeMask`, `effectMask`, `comment`) VALUES ('-214971', '214972', '24', '2', 'Пузырь газа'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '215266';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `check_spell_id`, `dummyId`, `dummyEffect`, `comment`) VALUES 
('215266', '225298', '1', '5185', '0', '0', 'Слабые отголоски'),
('215266', '225298', '1', '8936', '0', '0', 'Слабые отголоски'),
('215266', '225281', '1', '116694', '0', '0', 'Слабые отголоски'),
('215266', '225281', '1', '124682', '0', '0', 'Слабые отголоски'),
('215266', '225297', '1', '19750', '0', '0', 'Слабые отголоски'),
('215266', '225297', '1', '82326', '0', '0', 'Слабые отголоски'),
('215266', '225366', '1', '186263', '0', '0', 'Слабые отголоски'),
('215266', '225366', '1', '17', '0', '0', 'Слабые отголоски'),
('215266', '225294', '1', '2060', '0', '0', 'Слабые отголоски'),
('215266', '225294', '1', '2061', '0', '0', 'Слабые отголоски'),
('215266', '225292', '1', '8004', '0', '0', 'Слабые отголоски'),
('215266', '225292', '1', '77472', '0', '0', 'Слабые отголоски'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '215266'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `CustomChance`, `effectmask`) VALUES ('215266', '17408', '100', '1'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-215267' AND `spell_effect` = '215270';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('-215267', '215270', 'Слабый отголосок'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-215266' AND `spell_effect` = '-215267';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '215267';

DELETE FROM `areatrigger_actions` WHERE `entry` = '8210';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `targetFlags`, `spellId`, `maxCharges`, `hitMaxCount`, `comment`) VALUES 
('8210', '12410', '0', '1', '2', '222197', '1', '0', 'Взрывоопасный гной'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '7385';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hitMaxCount`, `comment`) VALUES 
('7385', '11833', '0', '1', '0', '4', '215476', '0', '0', 'Схлопывающаяся тень'),
('7385', '11833', '1', '42', '1', '4', '215476', '0', '0', 'Схлопывающаяся тень'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '214128' AND `spellDummyId` = '228447'; 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `caster`, `effectDummy`, `effectmask`, `comment`) VALUES
('214128', '228447', '1', '2', '0', '2', 'Ускорение'), 
('214128', '228447', '2', '2', '1', '1', 'Ускорение');

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242458', 'spell_item_rishing_tides'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '242622';
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `target`, `perchp`, `comment`) VALUES ('242622', '248747', '0', '-35', 'Направляющая длань'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '242606';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '242608';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `target`, `duration`, `comment`) VALUES 
('242606', '242608', '0', '0', '2200', 'Копье страданий'), 
('242606', '246751', '0', '0', '3000', 'Копье страданий');


DELETE FROM `areatrigger_actions` WHERE `entry` = '12015'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `targetFlags`, `spellId`, `comment`) VALUES ('12015', '16725', '1024', '32', '257442', 'Изумрудный цветок'); 
DELETE FROM `areatrigger_data` WHERE `entry` = '12015'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('12015', '256823', '16725', '2000'); 
DELETE FROM `spell_proc_check` WHERE `entry` = '257470';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `effectmask`, `comment`) VALUES 
('257470', '774', '1', 'Знак Эонар'),
('257470', '116670', '1', 'Знак Эонар'),
('257470', '2061', '1', 'Знак Эонар'),
('257470', '200829', '1', 'Знак Эонар'),
('257470', '19750', '1', 'Знак Эонар'),
('257470', '77472', '1', 'Знак Эонар'); 

DELETE FROM `areatrigger_actions` WHERE `entry` = '12002'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `moment`, `targetFlags`, `spellId`, `comment`) VALUES ('12002', '16713', '1024', '32', '257286', 'Раздирающая плоть буря'); 
DELETE FROM `areatrigger_data` WHERE `entry` = '12002'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('12002', '256820', '16713', '1000'); 





-- misc 
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '17' AND `SourceGroup` = '0' AND `SourceEntry` = '129787';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
('17', '129787', '27', '1', '94', '4', 'Spell only if target player 94 or lower lvl'); 

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '17' AND `SourceGroup` = '0' AND `SourceEntry` = '127266';
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
('17', '127266', '27', '1', '93', '4', 'Spell only if target 93 or lower lvl'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '236282' AND `spell_effect` = '224324' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '30' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Сокрушитель'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '211796' AND `spell_effect` = '203796' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '203555' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '60' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '1' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Демонические клинки'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '211797' AND `spell_effect` = '203796' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '203555' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '60' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '1' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Демонические клинки'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '203555'; 
INSERT INTO `spell_proc_event` (`entry`, `CustomChance`, `effectmask`) VALUES ('203555', '60', '1'); 

DELETE FROM `spell_proc_event` WHERE `entry` = '14161'; 
INSERT INTO `spell_proc_event` (`entry`, `procEx`) VALUES ('14161', '3'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '236282' AND `spell_effect` = '207844' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '207841' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-207844' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Рукавицы Какушана из чешуи наг'; 
DELETE FROM `spell_proc` WHERE `spellId` = '207844'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '210802' AND `spell_trigger` = '210803' AND `option` = '1' AND `bp0` = '1' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '210802' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '228649' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '196105';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `duration`, `hitmask`, `actiontype`, `comment`) VALUES ('30108', '233494', '196105', '8000', '1', '21', 'Заражение'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '170572' AND `spell_effect` = '-79808' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Чародейские стрелы!'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '79808' AND `spell_effect` = '-170571' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Чародейские стрелы!'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-79683' AND `spell_effect` = '-79808' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Визуалка чародейские стрелы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '79683' AND `spell_effect` = '79808' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '13' AND `hastalent` = '79683' AND `hasparam` = '2' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Визуалка чародейские стрелы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-79683' AND `spell_effect` = '-170571' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Визуалка чародейские стрелы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '79683' AND `spell_effect` = '170571' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '13' AND `hastalent` = '79683' AND `hasparam` = '1' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Визуалка чародейские стрелы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-79683' AND `spell_effect` = '-170572' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Визуалка чародейские стрелы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '79683' AND `spell_effect` = '170572' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '13' AND `hastalent` = '79683' AND `hasparam` = '3' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Визуалка чародейские стрелы'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '79683' AND `ScriptName` = 'spell_mage_arcane_missiles'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('79683', 'spell_mage_arcane_missiles'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '79808'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '170571'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '170572'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '77762' AND `spell_effect` = '174928' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Волна лавы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-77762' AND `spell_effect` = '-174928' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Волна лавы - снимаем визуалку'; 

UPDATE `creature_template` SET `flags_extra` = '2' WHERE `entry` = '82521'; 
DELETE FROM `areatrigger_actions` WHERE `entry` = '1713' AND `customEntry` = '6212' AND `id` = '8'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `scaleStep`, `scaleMin`, `scaleMax`, `comment`) VALUES 
('1713', '6212', '8', '1024', '4', '32', '152280', '0.05', '0', '0', 'Осквернение - расширение'); 

UPDATE `spell_proc_event` SET `SchoolMask` = '0' , `procFlags` = 8+32+128+512+8192+131072 WHERE `entry` = '31661'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '44448';
DELETE FROM `spell_proc_check` WHERE `entry` = '44448';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '2120' AND `spell_effect` = '48108' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '48107' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '205020' AND `hasparam2` = '0' AND `chance` = '8' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пироманьяк'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '11366' AND `spell_effect` = '48108' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '48107' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '205020' AND `hasparam2` = '0' AND `chance` = '8' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пироманьяк'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '31661' AND `spell_effect` = '48107' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '235870' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-48107' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Ярость Алекстразы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '31661' AND `spell_effect` = '48108' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '235870' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '48107' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Ярость Алекстразы'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '235870';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `procEx`, `CustomChance`, `effectmask`) VALUES 
('235870', '3', '8388608', '69632', '0', '100', '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '178070';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `duration`, `comment`) VALUES 
('178070', '2098', '5', '137036', '200', 'Смерть с небес'), 
('178070', '32645', '5', '137037', '200', 'Смерть с небес'),
('178070', '196819', '5', '137035', '200', 'Смерть с небес');



DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '242570' AND `spell_trigger` = '242571';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `comment`) VALUES ('242570', '242571', '4', '2', 'Призрачная сова'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242570';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `group`, `comment`) VALUES ('242570', '246442', '4', '1', 'Призрачная сова'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '12294' AND `spell_effect` = '-242188';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastype`, `hastalent`, `actiontype`, `param`, `comment`) VALUES 
('12294', '-242188', '1', '6', '242188', '4', '1', 'Точность палача'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '108300' AND `spellDummyId` = '108299'; 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '152277' AND `spell_trigger` = '248439';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `comment`) VALUES ('152277', '248439', '4', 'Опустошитель'); 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '76168' AND `spellId` = '153709'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '76168' AND `spellId` = '177466';
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '76168' AND `spellId` = '63416';
INSERT INTO `spell_pet_auras` (`petEntry`, `spellId`, `comment`) VALUES 
('76168', '63416', 'Опустошитель - визуалка'),
('76168', '177466', 'Опустошитель - визуалка'), 
('76168', '153709', 'Опустошитель - визуалка'); 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_warr_ravager_visual'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('177466', 'spell_warr_ravager_visual'); 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '156287' AND `spellDummyId` = '208086';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `effectDummy`, `effectmask`, `comment`) VALUES 
('156287', '208086', '1', '9', '1', '2', '1', 'Опустошитель'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '220357';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-228287' AND `spell_effect` = '-220358';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `target`, `actiontype`, `param`, `comment`) VALUES 
('-228287', '-220358', '3', '3', '7', '1', 'Порывы вихря'); 
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 1024+16+32 , `SpellFamilyMask1` = '128' , `procFlags` = '4112' WHERE `entry` = '220357';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '185099' AND `spell_effect` = '228287' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '220357' AND `hasparam` = '0' AND `hastype2` = '6' AND `hastalent2` = '-228287' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Порывы вихря'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '185099' AND `spell_effect` = '220358' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '220357' AND `hasparam` = '0' AND `hastype2` = '6' AND `hastalent2` = '-228287' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Порывы вихря'; 

