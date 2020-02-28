UPDATE `spell_proc_event` SET `procFlags` = 0, `Cooldown` = '0.5', `SpellFamilyMask0` = 8388608+16777216, `SpellFamilyMask2` = 2101248+4+262144+67108864, `procFlags` = '0' WHERE `entry` = '201845'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask3` = '32768' WHERE `entry` = '248621'; 

UPDATE `spell_linked_spell` SET `actiontype` = '5', `hastalent` = '0' WHERE `spell_trigger` = '226014' AND `spell_effect` = '69369';

UPDATE `spell_proc_event` SET `procFlags` = '344336' WHERE `entry` = '239042'; 

DELETE FROM `areatrigger_data` WHERE `entry` = '5534' AND `spellId` = '199391' AND `customEntry` = '10244'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `updateDelay`) VALUES ('5534', '199391', '10244', '4000'); 
UPDATE `areatrigger_actions` SET `moment` = '5' WHERE `entry` = '5534' AND `customEntry` = '10244' AND `id` = '0'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-5487' AND `spell_effect` = '-236440';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-5487' AND `spell_effect` = '-234081';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-108299' AND `spell_effect` = '-108300';
DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-108299' AND `spelllink` = '-108300'; 
DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-236019' AND `spelllink` = '-236440'; 
DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-233754' AND `spelllink` = '-234081'; 
INSERT INTO `spell_talent_linked_spell` (`spellid`, `spelllink`, `comment`) VALUES 
('-236019', '-236440', 'Зубы и когти (Талант чести)'), 
('-233754', '-234081', 'Небесный страж (Талант чести)'),
('-108299', '-108300', 'Инстинкт убийцы'); 

UPDATE `spell_proc_event` SET `Cooldown` = '0.5'  WHERE `entry` = '223817'; 


DELETE FROM `spell_trigger` WHERE `spell_id` = '242271' AND `spell_trigger` = '2050' AND `option` = '46' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '2050' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242271' AND `spell_trigger` = '34861' AND `option` = '23' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '34861' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242271' AND `spell_trigger` = '88625' AND `option` = '23' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '88625' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '228598' AND `spell_effect` = '-253257' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '253257' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Арктический взрыв'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '253257'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '253257'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('253257', '65536', '1'); 

UPDATE `spell_proc_event` SET `procFlags` = 0x1110 WHERE `entry` = '246126'; 


DELETE FROM `spell_trigger` WHERE `spell_id` = '188026' AND `spell_trigger` = '60229' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '162698' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '188026' AND `spell_trigger` = '60229' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '162702' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '188026' AND `spell_trigger` = '60233' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '162697' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '188026' AND `spell_trigger` = '60233' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '162700' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '188026' AND `spell_trigger` = '60234' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '162699' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '188026' AND `spell_trigger` = '60234' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '162701' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_proc_event`WHERE `entry` = '188026';
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('188026', 0x254154, '1'); 

UPDATE `pet_stats` SET `energy` = '0' WHERE `entry` = '31216'; 
UPDATE `pet_stats` SET `energy` = '0' WHERE `entry` = '47243'; 
UPDATE `pet_stats` SET `energy` = '0' WHERE `entry` = '47244'; 
UPDATE `creature_template` SET `spell1` = '88082', `flags_extra` = '64' WHERE `entry` = '47244'; 
UPDATE `creature_template` SET `spell1` = '88084', `flags_extra` = '64' WHERE `entry` = '47243'; 
UPDATE `creature_template` SET `spell1` = '59638', `flags_extra` = '64' WHERE `entry` = '31216'; 
DELETE FROM `creature_template_spell` WHERE `entry` = '31216' AND `spell` = '59638'; 
DELETE FROM `creature_template_spell` WHERE `entry` = '47244' AND `spell` = '88082'; 
DELETE FROM `creature_template_spell` WHERE `entry` = '47243' AND `spell` = '88084'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-225774' AND `spell_effect` = '225776';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '225774' AND `spell_effect` = '225776';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('-225774', '225776', 'Доля дьявола'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '248011' AND `ScriptName` = 'spell_gen_fel_heart_bond'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('248011', 'spell_gen_fel_heart_bond');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-248779' AND `spell_effect` = '254161';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('-248779', '254161', 'Магический покров');

UPDATE `spell_trigger` SET `option` = '20', `effectmask` = '1' WHERE `spell_id` = '117907' AND `spell_trigger` = '191894';

UPDATE `creature_template` SET `spell1` = '250433' , `spell2` = '251699' , `spell3` = '250434' WHERE `entry` = '126143'; 
DELETE FROM `areatrigger_data` WHERE `entry` = '11332' AND `spellId` = '250433' AND `customEntry` = '16100'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`) VALUES 
('11332', '250433', '16100', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1');
DELETE FROM `areatrigger_actions` WHERE `entry` = '11332' AND `customEntry` = '16100' AND `id` = '0'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES 
('11332', '16100', '0', '1', '0', '2', '250889', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Залп правосудия');

DELETE FROM `spell_proc_check` WHERE `entry` = '81749';

DELETE FROM `spell_pet_auras` WHERE `petEntry` = '128140' AND `spellId` = '123050' AND `option` = '0' AND `target` = '0' AND `bp0` = '0' AND `aura` = '0' AND `createdspell` = '0'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '128142' AND `spellId` = '123050' AND `option` = '0' AND `target` = '0' AND `bp0` = '0' AND `aura` = '0' AND `createdspell` = '0'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '67235' AND `spellId` = '28305' AND `option` = '0' AND `target` = '0' AND `bp0` = '0' AND `aura` = '0' AND `createdspell` = '0';

UPDATE `spell_proc_event` SET `SpellFamilyName` = '0' WHERE `entry` = '195606'; 


INSERT IGNORE INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('205603', '131072');
 
INSERT IGNORE INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('213480', '131072');

INSERT IGNORE INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('256374', 4+16+64+256+16384+65536+262144+2097152); 
INSERT IGNORE INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('255669', 4+16+64+256+16384+65536+262144+2097152); 


UPDATE `spell_proc_event` SET `CustomChance` = '0' WHERE `entry` = '109186'; 
UPDATE `spell_trigger` SET `chance` = '101' WHERE `spell_id` = '109186';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '2061' AND `spell_effect` = '-114255' AND `type` = '0' AND `caster` = '0' AND `target` = '10' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '7' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Пробуждение света'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-1079' AND `spell_effect` = '-210670';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1079' AND `spell_effect` = '-210670';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1079' AND `spell_effect` = '210670';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-1079' AND `spell_effect` = '5217' AND `type` = '0' AND `caster` = '3' AND `target` = '3' AND `hastype` = '1' AND `hastalent` = '202021' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '32' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Хищник'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '1079' AND `ScriptName` = 'spell_dru_rip'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('1079', 'spell_dru_rip');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = '13' AND `SourceGroup` = '1' AND `SourceEntry` = '251911' AND `SourceId` = '0' AND `ElseGroup` = '0' AND `ConditionTypeOrReference` = '31' AND `ConditionTarget` = '0' AND `ConditionValue1` = '3' AND `ConditionValue2` = '0' AND `ConditionValue3` = '0'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '251911';
INSERT INTO `spell_target_filter` (`spellId`, `index`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES 
('251911', '0', '16', '3', '0', '8', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Апокалиптический взрыв');

UPDATE `spell_proc_event` SET `SpellFamilyName` = '53' , `SpellFamilyMask3` = '2' , `procFlags` = '1024' WHERE `entry` = '206902'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '206902' AND `spell_trigger` = '115310' AND `option` = '23' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '206902' AND `ScriptName` = 'spell_monk_petrichor_lagniappe'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('206902', 'spell_monk_petrichor_lagniappe');


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20271' AND `spell_effect` = '197277' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231663' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Правосудие'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20271' AND `spell_effect` = '214222' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231644' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Правосудие - Свет'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20271' AND `spell_effect` = '246807' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '246806' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '1' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Законник (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20271' AND `spell_effect` = '246867' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '246806' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Законник (Талант чести)'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '246867';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `effectMask`, `comments`) VALUES ('246867', '15', '25', '246807', '1', 'Законник (Талант чести)'); 
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param2`, `effectMask`, `comments`) VALUES ('246867', '15', '3', '16', '1', 'Законник (Талант чести)'); 

UPDATE `spell_trigger` SET `chance` = '0' WHERE `spell_id` = '238123' AND `spell_trigger` = '243042';
DELETE FROM `spell_proc_check` WHERE `entry` = '238123';
DELETE FROM `spell_proc_event` WHERE `entry` = '238123';
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `effectmask`) VALUES ('238123', '9', '4194304', '1');

DELETE FROM `spell_trigger` WHERE `spell_id` = '210579' AND `spell_trigger` = '210583';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `addptype`, `comment`) VALUES ('210579', '210583', '1', '3', 'Энергия Пеплошкурой');

UPDATE `areatrigger_actions` SET `actionType` = '13' WHERE `entry` = '7385' AND `customEntry` = '11833' AND `id` = '1';

DELETE FROM `spell_concatenate_aura` WHERE `spellid` = '155783' AND `effectSpell` = '0' AND `auraId` = '159195'; 
DELETE FROM `spell_concatenate_aura` WHERE `spellid` = '-159195' AND `effectSpell` = '0' AND `auraId` = '155783'; 
INSERT INTO `spell_concatenate_aura` (`spellid`, `auraId`, `option`, `comment`) VALUES ('-159195', '155783', '4', 'Искусность: Страж природы'); 
INSERT INTO `spell_concatenate_aura` (`spellid`, `auraId`, `option`, `comment`) VALUES ('155783', '159195', '4', 'Искусность: Страж природы');

UPDATE `spell_proc_event` SET `procFlags` = '1' WHERE `entry` = '255652' AND `effectmask` = '1'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '256896';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `addcaster`, `comments`) VALUES 
('256896', '31', '0', '2', '-1', 'Воздаяние Света (Расовая)');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '197835' AND `spell_effect` = '212743' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Шквал сюрикэнов'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '197835' AND `spell_effect` = '245640' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '245639' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Серия сюрикэнов';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '212283' AND `spellDummyId` = '242280' AND `option` = '2' AND `effectDummy` = '0' AND `effectmask` = '1';

DELETE FROM `spell_target_filter` WHERE `spellId` = '200025';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `effectMask`, `resizeType`, `count`, `addcaster`, `comments`) VALUES 
('200025', '31', '0', '0', '0', '0', '6', '1', '4', '0', 'Частица добродетели'),
('200025', '31', '3', '0', '16', '0', '6', '0', '0', '0', 'Частица добродетели');

UPDATE `spell_proc_event` SET `procFlags` = 16+256+16384+65536+262144 WHERE `entry` = '252207'; 
UPDATE `spell_proc_event` SET `procFlags` = 16+256+65536+262144 WHERE `entry` = '252875'; 
UPDATE `spell_proc_event` SET `procFlags` = 16+256+65536+262144 WHERE `entry` = '252888'; 
UPDATE `spell_proc_event` SET `procFlags` = 16+256+65536+262144 WHERE `entry` = '252906'; 
UPDATE `spell_proc_event` SET `procFlags` = 16+256+65536+262144 WHERE `entry` = '252922'; 
UPDATE `spell_proc_event` SET `procFlags` = 16+256+16384+65536+262144 WHERE `entry` = '253070'; 
UPDATE `spell_proc_event` SET `procFlags` = 16+256+16384+65536+262144 WHERE `entry` = '253093'; 
UPDATE `spell_proc_event` SET `procFlags` = 32+128+512+131072+524288 WHERE `entry` = '253111';

DELETE FROM `spell_script_names` WHERE `spell_id` = '215405' AND `ScriptName` = 'spell_item_rancid_maw'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('215405', 'spell_item_rancid_maw');


DELETE FROM `areatrigger_actions` WHERE `entry` = '10228' AND `customEntry` = '15101'; 
DELETE FROM `areatrigger_data` WHERE `entry` = '10228' AND `spellId` = '240692' AND `customEntry` = '15101'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '238126' AND `spell_trigger` = '240689';
DELETE FROM `spell_trigger` WHERE `spell_id` = '238126' AND `spell_trigger` = '240692';
DELETE FROM `spell_script_names` WHERE `spell_id` = '238126' AND `ScriptName` = 'spell_mage_time_and_space'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('238126', 'spell_mage_time_and_space'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '238126'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `Cooldown`, `effectmask`) VALUES ('238126', '3', '4096', '0', '1');

DELETE FROM `spell_target_filter` WHERE `spellId` = '55090' AND `targetId` = '16' AND `option` = '18' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '70890' AND `targetId` = '16' AND `option` = '18' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '207311' AND `targetId` = '16' AND `option` = '18' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '70890' AND `ScriptName` = 'spell_dk_scourge_strike_trigger'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('70890', 'spell_dk_scourge_strike_trigger'); 

INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '8680'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '115804'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '199845'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '200587'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '198819'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '54680'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '30213'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '115625'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2236', '197046');

UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '6518' AND `customEntry` = '0' AND `id` = '0'; 
UPDATE `areatrigger_actions` SET `actionType` = '13' , `targetFlags` = '0' WHERE `entry` = '6518' AND `customEntry` = '0' AND `id` = '1';

UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '6596' AND `customEntry` = '0' AND `id` = '0'; 
UPDATE `areatrigger_actions` SET `actionType` = '13' , `targetFlags` = '0' WHERE `entry` = '6596' AND `customEntry` = '0' AND `id` = '1';

UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '6336' AND `customEntry` = '11004' AND `id` = '0'; 
UPDATE `areatrigger_actions` SET `actionType` = '13' , `targetFlags` = '0' WHERE `entry` = '6336' AND `customEntry` = '11004' AND `id` = '1'; 

UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '5760' AND `customEntry` = '10471' AND `id` = '0'; 
UPDATE `areatrigger_actions` SET `actionType` = '13' , `targetFlags` = '0' WHERE `entry` = '5760' AND `customEntry` = '10471' AND `id` = '1'; 

UPDATE `areatrigger_actions` SET `targetFlags` = '2049' WHERE `entry` = '8537' AND `customEntry` = '12676' AND `id` = '0';

DELETE FROM `spell_script_names` WHERE `spell_id` = '214366' AND `ScriptName` = 'spell_item_crystalline_body'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214366', 'spell_item_crystalline_body');


UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '6770' AND `customEntry` = '11305' AND `id` = '0'; 
UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '6770' AND `customEntry` = '11305' AND `id` = '1'; 
UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '6770' AND `customEntry` = '11305' AND `id` = '2'; 
UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '6770' AND `customEntry` = '11305' AND `id` = '3'; 

UPDATE `areatrigger_actions` SET `targetFlags` = '2057' WHERE `entry` = '6777' AND `customEntry` = '11312' AND `id` = '0'; 
UPDATE `areatrigger_actions` SET `targetFlags` = '0' WHERE `entry` = '6777' AND `customEntry` = '11312' AND `id` = '1';

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('6940', 'spell_pal_hand_of_sacrifice');

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('226829', 'spell_gen_artificial_threat');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-5487' AND `spell_effect` = '5487' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '1500' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '3' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик медведя - ГКД'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-768' AND `spell_effect` = '768' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '1500' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '3' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик кошки - ГКД'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-24858' AND `spell_effect` = '24858' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '1500' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '3' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик совуха - ГКД'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-783' AND `spell_effect` = '783' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '1500' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '3' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Походный облик - ГКД'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-197625' AND `spell_effect` = '197625' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '1500' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '3' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик совуха - ГКД'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-210053' AND `spell_effect` = '210053' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '1500' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '3' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик древня - гкд'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '768' AND `spell_effect` = '-783' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '768' AND `spell_effect` = '-114282' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '768' AND `spell_effect` = '-24858' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '783' AND `spell_effect` = '-5487' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '783' AND `spell_effect` = '-768' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '783' AND `spell_effect` = '-114282' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '783' AND `spell_effect` = '-24858' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '-783' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '-114282' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '-24858' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '24858' AND `spell_effect` = '-5487' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '24858' AND `spell_effect` = '-768' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '24858' AND `spell_effect` = '-114282' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '24858' AND `spell_effect` = '-783' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '114282' AND `spell_effect` = '-5487' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '114282' AND `spell_effect` = '-768' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '114282' AND `spell_effect` = '-783' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '114282' AND `spell_effect` = '-24858' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Снятие формы'; 
INSERT IGNORE INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('2237', '1'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2237', '5487'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2237', '768'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2237', '783'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2237', '114282'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2237', '197625'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2237', '210053'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-768' AND `spell_effect` = '210655' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210650' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-214274' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Покровительство Пеплошкурой'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-768' AND `spell_effect` = '214274' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210650' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-214274' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Покровительство Пеплошкурой'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '768' AND `spell_effect` = '-210655' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '210650' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Покровительство Пеплошкурой';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '185565' AND `spell_effect` = '2818' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '2823' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Отравленный нож'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '185565' AND `spell_effect` = '3409' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '3408' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Отравленный нож'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '185565' AND `spell_effect` = '8680' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '8679' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Отравленный нож'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '2823' AND `entry2` = '8679' AND `entry3` = '3408' AND `checkspell` = '-185565' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '185565' AND `ScriptName` = 'spell_rog_poison_knife'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('185565', 'spell_rog_poison_knife');

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '190456' AND `spellDummyId` = '137048' AND `option` = '1' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '190456' AND `spellDummyId` = '203225' AND `option` = '1' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '190456' AND `spell_effect` = '-203581' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Чешуя дракона';

INSERT IGNORE INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hasparam`, `actiontype`, `comment`) VALUES ('235963', '235963', '0', '69369', '3', 'Хватка земли - затычка'); 

UPDATE `spell_trigger` SET `bp1` = '3' WHERE `spell_id` = '209567' AND `spell_trigger` = '209569';






-- october
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '585' AND `spell_effect` = '14914' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231687' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '20' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '8' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Кара'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '585' AND `spell_effect` = '208771' AND `type` = '1' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '231682' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Кара'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '585' AND `spell_effect` = '208772' AND `type` = '1' AND `caster` = '3' AND `target` = '5' AND `hastype` = '0' AND `hastalent` = '231682' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Кара'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '208772' AND `ScriptName` = 'spell_pri_smite_dummy'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '585' AND `ScriptName` = 'spell_pri_smite'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('585', 'spell_pri_smite');

DELETE FROM `spell_proc_check` WHERE `entry` = '210540';
UPDATE `spell_proc_event` SET `SpellFamilyName` = '10', `procFlags` = '32768' , `Cooldown` = '0.2' WHERE `entry` = '210540';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '207171' AND `spell_effect` = '-211794' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '4' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Зима близко'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '196771' AND `spell_effect` = '207171' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '14' AND `hastalent` = '211794' AND `hasparam` = '5' AND `hastype2` = '6' AND `hastalent2` = '-207171' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Зима близко'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '196771' AND `spell_effect` = '211794' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '51271' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '207170' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Зима близко'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '196771' AND `ScriptName` = 'spell_dk_remorseless_winter'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('196771', 'spell_dk_remorseless_winter');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-47788' AND `spell_effect` = '47788' AND `type` = '0' AND `caster` = '10' AND `target` = '10' AND `hastype` = '0' AND `hastalent` = '200209' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-196602' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '22' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '13' AND `group` = '0' AND `param` = '-150000' AND `randList` = '' AND `comment` = 'Ангел-хранитель'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-47788' AND `spell_effect` = '234693' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '234689' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '8' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Объятия Фирикс'; 

INSERT IGNORE INTO `spell_proc_event` (`entry`, `SchoolMask`, `SpellFamilyName`, `effectmask`) VALUES ('44448', '4', '3', '1');

DELETE FROM `spell_trigger` WHERE `spell_id` = '242255';
DELETE FROM `spell_script_names` WHERE `spell_id` = '242255' AND `ScriptName` = 'spell_monk_t20_brew_2p'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242255', 'spell_monk_t20_brew_2p'); 

INSERT IGNORE INTO `areatrigger_template` (`entry`, `spellId`, `Radius`, `RadiusTarget`, `comment`) VALUES ('7104', '213458', '2', '1', 'Дар быка'); 
INSERT IGNORE INTO `areatrigger_template` (`entry`, `spellId`, `Radius`, `RadiusTarget`, `comment`) VALUES ('7104', '213460', '2', '1', 'Дар быка');

DELETE FROM `spell_trigger` WHERE `spell_id` = '215938' AND `spell_trigger` = '215940';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-243941' AND `spell_effect` = '243942';
DELETE FROM `spell_script_names` WHERE `spell_id` = '243941' AND `ScriptName` = 'spell_item_insidious_corruption'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('243941', 'spell_item_insidious_corruption');


DELETE FROM `pet_stats` WHERE `entry` = '101398'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '101398' AND `spellId` = '199845' AND `option` = '0' AND `target` = '3' AND `bp0` = '0' AND `aura` = '0' AND `createdspell` = '0'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '101398' AND `spellId` = '34429' AND `option` = '0' AND `target` = '0' AND `bp0` = '0' AND `aura` = '0' AND `createdspell` = '0'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '101398' AND `spellId` = '31366' AND `option` = '0' AND `target` = '0' AND `bp0` = '0' AND `aura` = '0' AND `createdspell` = '0'; 
UPDATE `creature_template` SET `ScriptName` = 'npc_psyfiend_pvp' WHERE `entry` = '101398'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '199845' AND `ScriptName` = 'spell_pri_psyflay_pvp'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('199845', 'spell_pri_psyflay_pvp');

UPDATE `spell_proc_check` SET `perchp` = '0' WHERE `entry` = '235966' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '-235967';
DELETE FROM `spell_trigger` WHERE `spell_id` = '235966' AND `spell_trigger` = '235967';

DELETE FROM `spell_proc_check` WHERE `entry` = '53651' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '-633' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0';

DELETE FROM `spell_trigger` WHERE `spell_id` = '178940' AND `spell_trigger` = '209651' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '8'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '178940' AND `spell_trigger` = '209980' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '49910'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '204254' AND `spell_trigger` = '209980' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '49910'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '204254' AND `spell_trigger` = '209651' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '8'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '178940' AND `ScriptName` = 'spell_dh_ss';
DELETE FROM `spell_script_names` WHERE `spell_id` = '204254' AND `ScriptName` = 'spell_dh_ss';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('178940', 'spell_dh_ss'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('204254', 'spell_dh_ss');

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '8936' AND `spellDummyId` = '209730' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '8936' AND `spell_effect` = '209731' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '209730' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Защитник рощи (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '8936' AND `spell_effect` = '-209731' AND `type` = '8' AND `caster` = '0' AND `target` = '10' AND `hastype` = '0' AND `hastalent` = '209731' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Защитник рощи (Талант чести)'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '8936' AND `ScriptName` = 'spell_dru_regrowth'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('8936', 'spell_dru_regrowth');


DELETE FROM `spell_trigger` WHERE `spell_id` = '222512' AND `spell_trigger` = '222520';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `dummyId`, `comment`) VALUES ('222512', '222520', '7', '222512', 'Союзники природы');

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '253331' AND `spellDummyId` = '251870' AND `option` = '1' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-132403' AND `spell_effect` = '253331' AND `type` = '0' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '251870' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T21 Protection 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-251869' AND `spell_effect` = '-253331' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T21 Protection 2P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '251869' AND `spell_effect` = '253331' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T21 Protection 2P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '132403' AND `spell_effect` = '253331' AND `type` = '0' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '251870' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T21 Protection 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '251870' AND `spell_effect` = '253331' AND `type` = '0' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T21 Protection 4P Bonus'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-251870' AND `spell_effect` = '253331' AND `type` = '0' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Paladin T21 Protection 4P Bonus'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '251869' AND `ScriptName` = 'spell_pal_t21_prot'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('251869', 'spell_pal_t21_prot');

DELETE FROM `spell_trigger` WHERE `spell_id` = '208908' AND `spell_trigger` = '208909' AND `option` = '44' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0';

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '236320' AND `spell_trigger` = '236321' AND `option` = '5' AND `aura` = '0'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '119052' AND `spellId` = '236321'; 
INSERT INTO `spell_pet_auras` (`petEntry`, `spellId`, `target`, `comment`) VALUES ('119052', '236321', '0', 'Боевое знамя (Талант чести)');

DELETE FROM `spell_trigger` WHERE `spell_id` = '187464' AND `spell_trigger` = '186439' AND `option` = '16' AND `bp0` = '0' AND `effectmask` = '2' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '187464' AND `spell_trigger` = '186439' AND `option` = '1' AND `hastalent` = '1' AND `hastalent2` = '0'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '187464' AND `ScriptName` = 'spell_pri_shadow_mend_aura'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('187464', 'spell_pri_shadow_mend_aura');


DELETE FROM `spell_trigger` WHERE `spell_id` = '238106' AND `spell_trigger` = '228887' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '238106' AND `effectmask` = '1';

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_mage_living_bomb'; 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_mage_living_bomb_damage'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('217694', 'spell_mage_living_bomb'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('244813', 'spell_mage_living_bomb');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('44461', 'spell_mage_living_bomb_damage'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '203179' AND `spell_trigger` = '203178'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '203179'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '0' WHERE `entry` = '199854' AND `effectmask` = '1';

UPDATE `areatrigger_data` SET `updateDelay` = '800' WHERE `entry` = '4756' AND `spellId` = '191034' AND `customEntry` = '9482';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '77489' AND `spellDummyId` = '211638' AND `option` = '1' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '77485' AND `spell_trigger` = '77489'; 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '194384' AND `spellDummyId` = '211563' AND `option` = '12' AND `effectDummy` = '0' AND `effectmask` = '7'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '194384' AND `spellDummyId` = '214205' AND `option` = '12' AND `effectDummy` = '0' AND `effectmask` = '7'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '194384' AND `spell_effect` = '198076' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '198074' AND `hasparam` = '0' AND `hastype2` = '6' AND `hastalent2` = '-194384' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Грехи многих'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-194384' AND `spell_effect` = '-198076' AND `type` = '0' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '7' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Грехи многих'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-194384' AND `spell_effect` = '-212100' AND `type` = '0' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '7' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Мольба'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '194384' AND `spell_effect` = '212100' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '81749' AND `hasparam` = '0' AND `hastype2` = '6' AND `hastalent2` = '-194384' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Мольба'; 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_pri_atonement_aura'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('194384', 'spell_pri_atonement_aura'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214206', 'spell_pri_atonement_aura'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '17' AND `spell_effect` = '194384' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '81749' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-214205' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Искупление вины'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '186263' AND `spell_effect` = '194384' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '81749' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-214205' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Искупление вины'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '194509' AND `spell_effect` = '194384' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-214205' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '9000' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '21' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Слово силы: Сияние'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '200829' AND `spell_effect` = '194384' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '81749' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Искупление вины'; 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_pri_plea';   
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('200829', 'spell_pri_plea'); 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_pri_pw_radiance';   
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('194509', 'spell_pri_pw_radiance'); 

UPDATE `spell_target_filter` SET `option` = '0' WHERE `spellId` = '194509' AND `targetId` = '31' AND `option` = '18' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 

UPDATE `spell_target_filter` SET `option` = '13' , `param2` = '214206' WHERE `spellId` = '197862' AND `targetId` = '31' AND `option` = '25' AND `param1` = '194384' AND `param2` = '0' AND `param3` = '0'; 
UPDATE `spell_target_filter` SET `option` = '13' , `param2` = '214206' WHERE `spellId` = '197871' AND `targetId` = '31' AND `option` = '25' AND `param1` = '194384' AND `param2` = '0' AND `param3` = '0'; 
UPDATE `spell_target_filter` SET `option` = '13' , `param2` = '214206' WHERE `spellId` = '209885' AND `targetId` = '31' AND `option` = '25' AND `param1` = '194384' AND `param2` = '0' AND `param3` = '0'; 

DELETE FROM `spell_group_stack_rules` WHERE `group_id` = '2238'; 
INSERT IGNORE INTO `spell_group_stack_rules` (`group_id`, `stack_rule`) VALUES ('2238', '2'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2238', '194384'); 
INSERT IGNORE INTO `spell_group` (`id`, `spell_id`) VALUES ('2238', '214206');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '246287' AND `spell_effect` = '194384' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '23' AND `group` = '0' AND `param` = '6000' AND `randList` = '' AND `comment` = 'Проповедь'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '246287' AND `ScriptName` = 'spell_pri_evangelism'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('246287', 'spell_pri_evangelism'); 

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '197862' AND `spell_trigger` = '194384'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '197862' AND `ScriptName` = 'spell_pri_archangel'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('197862', 'spell_pri_archangel');

DELETE FROM `spell_script_names` WHERE `spell_id` = '114074' AND `ScriptName` = 'spell_sha_lava_beam'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '114738' AND `ScriptName` = 'spell_sha_lava_beam';

INSERT IGNORE INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `aura`, `comment`) VALUES 
('191634', '114738', '13', '1', '114074', 'Статическая перегрузка');

UPDATE `spell_trigger` SET `spell_trigger` = '192249' , `bp1` = '15' , `effectmask` = '1' WHERE `spell_id` = '242282' AND `spell_trigger` = '198067' AND `option` = '23' AND `bp0` = '0' AND `effectmask` = '2' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0';


DELETE FROM `spell_trigger` WHERE `spell_id` = '199441' AND `spell_trigger` = '199443';

UPDATE `spell_proc_event` SET `procFlags` = 32768+524288 , `Cooldown` = '0' WHERE `entry` = '210540';

DELETE FROM `spell_script_names` WHERE `spell_id` = '214855' AND `ScriptName` = 'spell_pal_tyr_deliverance'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214855', 'spell_pal_tyr_deliverance'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '214855';

DELETE FROM `spell_script_names` WHERE `spell_id` = '214083' AND `ScriptName` = 'spell_pal_wake_of_ashes_proc'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214083', 'spell_pal_wake_of_ashes_proc'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '214083';

DELETE FROM `spell_script_names` WHERE `spell_id` = '214843' AND `ScriptName` = 'spell_dru_ashamane_frenzy_proc'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214843', 'spell_dru_ashamane_frenzy_proc');

DELETE FROM `spell_script_names` WHERE `spell_id` = '214837' AND `ScriptName` = 'spell_dk_consumption_proc'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214837', 'spell_dk_consumption_proc');

DELETE FROM `spell_proc_event` WHERE `entry` = '214839'; 
INSERT INTO `spell_proc_event` (`entry`, `CustomChance`, `Cooldown`, `effectmask`) VALUES ('214839', '10', '0', '2');

DELETE FROM `spell_script_names` WHERE `spell_id` = '214862' AND `ScriptName` = 'spell_rog_curse_of_the_dreadblades_proc'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214862', 'spell_rog_curse_of_the_dreadblades_proc');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '225133' AND `spell_effect` = '229700' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '4000' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Сфера разрушения';

UPDATE `spell_proc_event` SET `procFlags` = 2048+32768+524288+2147483648 WHERE `entry` = '216519';



-- november
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 32768, `SpellFamilyMask2` = '1024', `SpellFamilyMask3` = 2097152+16777216+8, `CustomChance` = '0' WHERE `entry` = '210702'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '210702';
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '210705' AND `spellDummyId` = '210702'; 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `caster`, `effectmask`, `custombp`, `comment`) VALUES 
('210705', '210702', '1', '2', '1', '400', 'Укус Пеплошкурой');

DELETE FROM `spell_script_names` WHERE `spell_id` = '253242' AND `ScriptName` = 'spell_item_proto_person_decimator_proc'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('253242', 'spell_item_proto_person_decimator_proc');

DELETE FROM `areatrigger_actions` WHERE `entry` = '7108' AND `customEntry` = '11577'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `comment`) VALUES 
('7108', '11577', '0', '1', '0', '4096', '196942', 'Тотем вуду'),
('7108', '11577', '1', '42', '13', '0', '196942', 'Тотем вуду'),
('7108', '11577', '2', '1', '0', '4096', '202318', 'Тотем вуду');
UPDATE `areatrigger_actions` SET `hasAura` = '-202318' WHERE `entry` = '7108' AND `customEntry` = '11577' AND `id` = '2';
DELETE FROM `spell_linked_spell` WHERE `spell_effect` = '93958';
DELETE FROM `spell_linked_spell` WHERE `spell_effect` = '-93958';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('196942', '93958', '1', 'Cглаз'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES ('-196942', '-93958', '0', 'Cглаз'); 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_sha_hex'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('51514', 'spell_sha_hex'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('210873', 'spell_sha_hex'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('211004', 'spell_sha_hex'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('211010', 'spell_sha_hex'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('211015', 'spell_sha_hex'); 

UPDATE `spell_linked_spell` SET `spell_trigger` = '49998' , `type` = '0' , `caster` = '3' , `target` = '3' WHERE `spell_trigger` = '45470' AND `spell_effect` = '48792' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '246426' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '23' AND `group` = '0' AND `param` = '2000' AND `randList` = '' AND `comment` = 'Сердце льва'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '242628'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('242628', 0x000A22A8-0x2000);


UPDATE `spell_trigger` SET `bp0` = '0.5' , `bp1` = '0', `bp2` = '0' , `effectmask` = '1' , `targetaura` = '0', `aura` = '0' WHERE `spell_id` = '123050' AND `spell_trigger` = '123051';
UPDATE `spell_trigger` SET `bp0` = '0' , `bp1` = '0', `bp2` = '0' , `effectmask` = '1' , `targetaura` = '0', `aura` = '0' WHERE `spell_id` = '123050' AND `spell_trigger` = '200010';

DELETE FROM `spell_proc_event` WHERE `entry` = '118'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '3355';
INSERT INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('3355', 0x800AAAA8-0x8000);

DELETE FROM `spell_proc_event` WHERE `entry` = '20066'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('20066', 0x800AAAA8-0x8000);

DELETE FROM `spell_proc_event` WHERE `entry` = '213691';
INSERT INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('213691', 0x800AAAA8-0x8000);

UPDATE `spell_linked_spell` SET `hitmask` = '1' WHERE `spell_trigger` = '51723' AND `spell_effect` = '234278';

UPDATE `spell_linked_spell` SET `duration` = '100' WHERE `spell_trigger` = '19434' AND `spell_effect` = '191043' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '190852' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '15' AND `cooldown` = '0' AND `duration` = '166' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '17' AND `group` = '0' AND `param` = '6' AND `randList` = '' AND `comment` = 'Наследие Ветрокрылых';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '207736' AND `spell_effect` = '207756' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '2' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Дуэль в тенях'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '207736' AND `spell_effect` = '207756' AND `type` = '1' AND `caster` = '5' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '1' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Дуэль в тенях'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '207736' AND `spell_effect` = '210558' AND `type` = '6' AND `caster` = '0' AND `target` = '11' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '4' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Дуэль в тенях'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '207736' AND `spell_effect` = '210558' AND `type` = '6' AND `caster` = '11' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '4' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Дуэль в тенях'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '32612' AND `spell_effect` = '54661' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Invisibility Sanctuary Effect'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5215' AND `spell_effect` = '54661' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Prowl Sanctuary Effect'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '1856' AND `spell_effect` = '54661' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Stealth Sanctuary Effect';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '156527' AND `spell_effect` = '178070' AND `type` = '1' AND `caster` = '0' AND `target` = '4' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Смерть с небес'; 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '178153' AND `spell_trigger` = '178070'; 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `bp0`, `effectmask`, `handlemask`, `comment`) VALUES ('178153', '178070', '16', '200', '1', '8', 'Смерть с небес');
UPDATE `spell_linked_spell` SET `duration` = '100' WHERE `spell_trigger` = '178070' AND `spell_effect` = '196819' AND `type` = '5' AND `caster` = '0';
UPDATE `spell_linked_spell` SET `duration` = '100' WHERE `spell_trigger` = '178070' AND `spell_effect` = '32645' AND `type` = '5' AND `caster` = '0';
UPDATE `spell_linked_spell` SET `duration` = '100' WHERE `spell_trigger` = '178070' AND `spell_effect` = '2098' AND `type` = '5' AND `caster` = '0';

UPDATE `spell_trigger` SET `option` = '20' WHERE `spell_id` = '194331' AND `spell_trigger` = '194329' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '7' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0';
DELETE FROM `spell_proc_check` WHERE `entry` = '194329' AND `entry2` = '194331';
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `checkspell`, `spelltypeMask`, `comment`) VALUES ('194329', '194331', '-2120', '0', 'Огненные чары');
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `checkspell`, `spelltypeMask`, `comment`) VALUES ('194329', '194331', '-44457', '0', 'Огненные чары');
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `checkspell`, `spelltypeMask`, `comment`) VALUES ('194329', '194331', '-205472', '0', 'Огненные чары'); 
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `checkspell`, `spelltypeMask`, `comment`) VALUES ('194329', '194331', '-175396', '0', 'Огненные чары'); 
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `checkspell`, `spelltypeMask`, `comment`) VALUES ('194329', '194331', '-155158', '0', 'Огненные чары');  
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `checkspell`, `spelltypeMask`, `comment`) VALUES ('194329', '194331', '-153561', '0', 'Огненные чары'); 
INSERT INTO `spell_proc_check` (`entry`, `entry2`, `checkspell`, `spelltypeMask`, `comment`) VALUES ('194329', '194331', '-153564', '0', 'Огненные чары');


DELETE FROM `spell_proc_check` WHERE `entry` = '197147';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `hastalent`, `target`, `effectmask`, `comment`) VALUES 
('197147', '223829', '194310', '1', '1', 'Гнойная язва');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '15407' AND `spell_effect` = '247776' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '199445' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Повреждение разума (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '15407' AND `spell_effect` = '247777' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '199445' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Повреждение разума (Талант чести)'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '15407' AND `ScriptName` = 'spell_pri_mind_flay'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('15407', 'spell_pri_mind_flay');

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '199799' AND `spell_trigger` = '191587' AND `option` = '0' AND `aura` = '0'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '199799' AND `ScriptName` = 'spell_dk_pandemic_pvp'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('199799', 'spell_dk_pandemic_pvp');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '199373' AND `spell_effect` = '191727' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '3' AND `hastalent` = '191731' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '191727 191728 191729 191730' AND `comment` = 'Армии проклятых'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '199373' AND `ScriptName` = 'spell_dk_claw_owner'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('199373', 'spell_dk_claw_owner');

DELETE FROM `spell_trigger` WHERE `spell_id` = '197209' AND `spell_trigger` = '197568' AND `option` = '3' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '197209' AND `ScriptName` = 'spell_sha_lightning_rod'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('197209', 'spell_sha_lightning_rod');

UPDATE `spell_proc_event` SET `procEx` = '2' WHERE `entry` = '242250';

DELETE FROM `spell_pet_auras` WHERE `petEntry` = '24207' AND `spellId` = '47466';
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '24207' AND `spellId` = '47448';
INSERT INTO `spell_pet_auras` (`petEntry`, `spellId`, `comment`) VALUES ('24207', '47466', 'Войско мертвых - самооглушение при призыве'); 
INSERT INTO `spell_pet_auras` (`petEntry`, `spellId`, `comment`) VALUES ('24207', '47448', 'Войско мертвых - спавн');



UPDATE `spell_linked_spell` SET `hastalent2` = '-5277' WHERE `spell_trigger` = '36554' AND `spell_effect` = '5277' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '192422' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '2000' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '21' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Стремительность тени';

UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '214634' AND `spell_effect` = '190446' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '190446' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '300' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Ebonbolt'; 
UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '214634' AND `spell_effect` = '190446' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '-190446' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Ebonbolt (no delay)';

DELETE FROM `vehicle_template_accessory` WHERE `EntryOrAura` = '98035' AND `seat_id` = '0'; 
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` = '98035' AND `spell_id` = '46598';

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '214345';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `actiontype`, `param`, `comment`) VALUES ('196273', '1122', '214345', '13', '-2000', 'Печать усиленного призыва Вилфреда'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `actiontype`, `param`, `comment`) VALUES ('196274', '1122', '214345', '13', '-2000', 'Печать усиленного призыва Вилфреда');
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `actiontype`, `param`, `comment`) VALUES ('196273', '18540', '214345', '13', '-2000', 'Печать усиленного призыва Вилфреда'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `actiontype`, `param`, `comment`) VALUES ('196274', '18540', '214345', '13', '-2000', 'Печать усиленного призыва Вилфреда');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '216463' AND `spell_effect` = '244840';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '216721' AND `spell_effect` = '244840';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `chance`, `comment`) VALUES ('216463', '244840', '15', 'Души проклятых - сбежавшая душа'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `chance`, `comment`) VALUES ('216721', '244840', '30', 'Души проклятых - сбежавшая душа'); 

UPDATE `spell_linked_spell` SET `hastalent` = '16974' WHERE `spell_trigger` = '226014' AND `spell_effect` = '69369' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '5' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Прыгуны Айлуро'; 

-- 
UPDATE `spell_linked_spell` SET `hastalent` = '-1' , `hasparam` = '8' WHERE `spell_trigger` = '253324' AND `spell_effect` = '255609' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '12' AND `hastalent` = '1' AND `hasparam` = '5' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Теневой удар'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '253287' AND `ScriptName` = 'spell_item_highfathers_timekeeping'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('253287', 'spell_item_highfathers_timekeeping'); 
DELETE FROM `spell_script_names` WHERE `spell_id` = '253258' AND `ScriptName` = 'spell_item_reverberating_vitality'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('253258', 'spell_item_reverberating_vitality'); 
DELETE FROM `spell_script_names` WHERE `spell_id` = '251952' AND `ScriptName` = 'spell_item_hammer_forged'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('251952', 'spell_item_hammer_forged');
DELETE FROM `spell_proc_event` WHERE `entry` = '251925';
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('251925', 0x000A22A8-0x2000, '1');
DELETE FROM `spell_trigger` WHERE `spell_id` = '251925';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `dummyId`, `dummyEffect`, `randList`, `comment`) VALUES 
('251925', '251928', '20', '1', '0', '0', '251928 252546 252551', 'Нестабильные порталы');
DELETE FROM `areatrigger_actions` WHERE `entry` = '11439';
DELETE FROM `areatrigger_actions` WHERE `entry` = '11536';
DELETE FROM `areatrigger_actions` WHERE `entry` = '11537';
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `hitMaxCount`, `comment`) VALUES 
('11439', '16201', '0', '16', '0', '292', '251939', '-1', 'Нестабильные порталы'),
('11536', '16259', '0', '16', '0', '292', '252543', '-1', 'Нестабильные порталы'),
('11537', '16260', '0', '16', '0', '292', '252549', '-1', 'Нестабильные порталы');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '251939';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '252543';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '252549';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('251939', '251938', 'Нестабильные порталы'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('252543', '252545', 'Нестабильные порталы'); 
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('252549', '256415', 'Нестабильные порталы'); 
DELETE FROM `spell_trigger` WHERE `spell_id` = '231943';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `dummyId`, `randList`, `comment`) VALUES ('231943', '231945', '1', '231947', '231945 231946 231947', 'Пульсирующий разрядный конденсатор'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '214054'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214054', 0x11140-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '250768'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('250768', 0x204400-0x200400+0x40000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '250846'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('250846', 0x51000-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '238498'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('238498', 0x254400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215813'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215813', 0x51000-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215264'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215264', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215648'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215648', 0x51140-0x1000, '7');
DELETE FROM `spell_proc_event` WHERE `entry` = '224073'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('224073', 0x1154-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '224076'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('224076', 0x51000-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215224'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215224', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215196'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215196', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215293'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215293', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '214571'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214571', 0x11014-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '214492'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214492', 0x1014-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215630'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215630', 0x11140-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '214396'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214396', 0x1014-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215404'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215404', 0x11140-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '214340'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214340', 0x1014-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '214140'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214140', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215444'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215444', 0x11140-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '213782'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('213782', 0x51000-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '214349'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214349', 0x51140-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '215247'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('215247', 0x00204400-0x00200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '221748'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('221748', 0x204400-0x200400+0x40000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '221786'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('221786', 0x1154-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '221873'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('221873', 0x204400-0x200400+0x40000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '222167'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('222167', 0x1014-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '221845'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('221845', 0x51140-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '221811'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('221811', 0x51000-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '230236'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('230236', 0x51140-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '230140'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('230140', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '230257'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('230257', 0x51140-0x1000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '225138'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('225138', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '225136'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('225136', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '242616'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('242616', 0x000A22A8-0x2000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '242207'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('242207', 0x000A22A8-0x2000, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '242325'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('242325', 0x204400-0x400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '253268'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('253268', 0x204400-0x200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '214120'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214120', 0x255554-0x201400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '253259';
INSERT INTO `spell_proc_event` (`entry`, `procEx`, `effectmask`) VALUES ('253259', 2, '7');
DELETE FROM `spell_proc_event` WHERE `entry` = '253285'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('253285', 0x00204400-0x00200400, '1');
DELETE FROM `spell_proc_event` WHERE `entry` = '253287'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('253287', 0x000A22A8-0x2000, '1');


UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '30108' AND `spell_effect` = '233499' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '6' AND `hastalent` = '-233499' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 
UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '30108' AND `spell_effect` = '233498' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '6' AND `hastalent` = '-233498' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 
UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '30108' AND `spell_effect` = '233497' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '6' AND `hastalent` = '-233497' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 
UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '30108' AND `spell_effect` = '233496' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '6' AND `hastalent` = '-233496' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 
UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '30108' AND `spell_effect` = '233490' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '6' AND `hastalent` = '-233490' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '238118' AND `spell_trigger` = '207744' AND `option` = '22' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '238118' AND `spell_trigger` = '207771' AND `option` = '22' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '238118' AND `ScriptName` = 'spell_dh_flaming_soul'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('238118', 'spell_dh_flaming_soul');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198013' AND `spell_effect` = '162264' AND `type` = '1' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '213410' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '162264' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '10' AND `group` = '0' AND `param` = '8000' AND `randList` = '' AND `comment` = 'Демонизм'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-198013' AND `spell_effect` = '162264' AND `type` = '0' AND `caster` = '0' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '213410' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-162264' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '8000' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '21' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Демонизм'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '198013' AND `ScriptName` = 'spell_dh_eye_beam'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('198013', 'spell_dh_eye_beam');

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '24858' AND `spellDummyId` = '233752';
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '24858' AND `spellDummyId` = '-233752'; 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `caster`, `effectDummy`, `effectmask`, `custombp`, `comment`) VALUES 
('24858', '-233752', '2', '2', '1', '256', '0', 'Железноперые доспехи (Талант чести)');

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '164815' AND `spellDummyId` = '231050';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `caster`, `effectmask`, `comment`) VALUES 
('164815', '231050', '4', '2', '2', 'Солнечный огонь (Уровень 2)');



-- december
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '212436' AND `spell_effect` = '118253';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastype`, `hastalent`, `comment`) VALUES ('212436', '118253', '1', '2', '87935', 'Укус змеи'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '211918' AND `ScriptName` = 'spell_mage_immolation'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('211918', 'spell_mage_immolation'); 
DELETE FROM `spell_script_names` WHERE `spell_id` = '194462' AND `ScriptName` = 'spell_mage_highblades_will'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('194462', 'spell_mage_highblades_will'); 
DELETE FROM `spell_script_names` WHERE `spell_id` = '194466' AND `ScriptName` = 'spell_mage_phoenixs_flames'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('194466', 'spell_mage_phoenixs_flames');

UPDATE `areatrigger_template` SET `Radius` = '3' , `RadiusTarget` = '3' WHERE `entry` = '5977' AND `spellId` = '204255' AND `customEntry` = '10665'; 
UPDATE `areatrigger_template` SET `Radius` = '6' , `RadiusTarget` = '6' WHERE `entry` = '6007' AND `spellId` = '204256' AND `customEntry` = '11267'; 
UPDATE `areatrigger_template` SET `Radius` = '3' , `RadiusTarget` = '3' WHERE `entry` = '6710' AND `spellId` = '203795' AND `customEntry` = '11266'; 
UPDATE `areatrigger_template` SET `Radius` = '3' , `RadiusTarget` = '3' WHERE `entry` = '6711' AND `spellId` = '204062' AND `customEntry` = '10693';
UPDATE `areatrigger_template` SET `Radius` = '6' , `RadiusTarget` = '6' WHERE `entry` = '6659' AND `spellId` = '209788' AND `customEntry` = '11231'; 
UPDATE `areatrigger_template` SET `Radius` = '6' , `RadiusTarget` = '6' WHERE `entry` = '8867' AND `spellId` = '228537' AND `customEntry` = '12929';

DELETE FROM `areatrigger_actions` WHERE `entry` IN (5977,6007,6659,6710,6711,8867); 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
('5977','10665','0','16','0','292','203981','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Поглощение души - малый фрагмент (танк)'), -- 226258-204255 , малый фрагмент души (танк)
('5977','10665','1','552','3','292','203981','0','0','0','0','0','0','0','0','0','-1','0','0','0','0','Поглощение души - малый фрагмент (танк)'),
('5977','10665','2','513','0','292','208014','1','0','0','0','0','0','0','0','0','0','0','1','0','0','Поглощение души - малый фрагмент (танк)'),

('6710','11266','0','16','0','292','203981','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Поглощение души - большой фрагмент (танк)'), -- 226263-203795, большой фрагмент(танк)
('6710','11266','1','552','3','292','203981','0','0','0','0','0','0','0','0','0','-1','0','0','0','0','Поглощение души - большой фрагмент (танк)'),
('6710','11266','2','513','0','292','210047','1','0','0','0','0','0','0','0','0','0','0','1','0','0','Поглощение души - большой фрагмент (танк)'),

('6711','10693','0','16','0','292','203981','0','0','0','0','0','0','0','0','0','0','0','0','0','0','Поглощение души - большой фрагмент (танк), демон'), -- 226264-204062, большой фрагмент(танк)демон
('6711','10693','1','552','3','292','203981','0','0','0','0','0','0','0','0','0','-1','0','0','0','0','Поглощение души - большой фрагмент (танк), демон'),
('6711','10693','2','513','0','292','210050','1','0','0','0','0','0','0','0','0','0','0','1','0','0','Поглощение души - большой фрагмент (танк), демон'),

('8867','11231','0','513','0','292','228542','1','0','0','0','0','0','0','0','0','0','0','1','0','0','Поглощение души - малый фрагмент (дд)'), -- 228536-228537, малый фрагмент (дд)

('6659','11231','0','513','0','292','228540','1','0','0','0','0','0','0','0','0','0','0','1','0','0','Поглощение души - большой фрагмент (дд)'), -- 226370-209788, большой фрагмент(дд)

('6007','11267','0','513','0','292','228556','1','0','0','0','0','0','0','0','0','0','0','1','0','0','Поглощение души - большой фрагмент(дд), демон'); -- 226259-204256 большой фрагмент(дд)демон

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dh_shatter_soul'; 
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('228533', 'spell_dh_shatter_soul'); -- lesser havoc
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('209980', 'spell_dh_shatter_soul'); -- lesser veng
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('209981', 'spell_dh_shatter_soul'); -- big veng
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('209651', 'spell_dh_shatter_soul'); -- big havoc
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('210038', 'spell_dh_shatter_soul'); -- big veng (demon)
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('237867', 'spell_dh_shatter_soul'); -- big havoc (demon)

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '207407' AND `spell_trigger` = '209981';
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '207407' AND `spell_trigger` = '209980';
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `target`, `caster`, `effectmask`, `comment`) VALUES ('207407', '209980', '3', '3', '1', 'Разрубатель душ'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '207407' AND `spell_effect` = '209981';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '207407' AND `spell_effect` = '209980';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `target`, `actiontype`, `param`, `comment`) VALUES ('207407', '209980', '3', '3', '17', '2', 'Разрубатель душ'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187727' AND `spell_effect` = '209981';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '187727' AND `spell_effect` = '209980';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastalent`, `chance`, `comment`) VALUES ('187727', '209980', '1', '3', '3', '227174', '70', 'Жаркий выброс'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '209795' AND `spell_effect` = '209981';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '209795' AND `spell_effect` = '209980';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `duration`, `actiontype`, `param`, `comment`) VALUES ('209795', '209980', '5', '3', '3', '200', '17', '2', 'Трещина'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '203783' AND `spell_trigger` = '209981'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '203783' AND `spell_trigger` = '209980';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `comment`) VALUES ('203783', '209980', '20', '1', '1', 'Иссечение'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '206478' AND `spell_trigger` = '209981'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '206478' AND `spell_trigger` = '228533';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `comment`) VALUES ('206478', '228533', '20', '1', '1', 'Демонический аппетит'); 
DELETE FROM `spell_aura_dummy` WHERE `spellDummyId` = '206478';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `target`, `caster`, `targetaura`, `aura`, `removeAura`, `effectDummy`, `effectmask`, `attr`, `attrValue`, `custombp`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `comment`) VALUES
('178963','206478','0','4','0','0','0','0','0','0','2','0','0','0','0','0','0','0','0','0','Демонический аппетит'),
('202644','206478','0','4','0','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','Демонический аппетит'),
('203794','206478','0','4','0','0','0','0','0','0','2','0','0','0','0','0','0','0','0','0','Демонический аппетит'),
('228532','206478','0','4','0','0','0','0','0','0','4','0','0','0','0','0','0','0','0','0','Демонический аппетит');
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '202644' AND `spell_effect` = '163073' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Поглощение души'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '201464' AND `spell_trigger` = '228533'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '201464' AND `spell_trigger` = '209981';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `chance`, `comment`) VALUES ('201464', '228533', '20', '1', '1', '101', 'Переполняющая энергия'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '212827' AND `spell_trigger` = '209981'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '212827' AND `spell_trigger` = '209980'; 
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `effectmask`, `chance`, `comment`) VALUES ('212827', '209980', '20', '1', '1', '101', 'Раскол души');


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '49028' AND `spell_effect` = '253381' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '251877' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '8000' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Death Knight T21 Blood 4P Bonus'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '27893' AND `spellId` = '253381' AND `option` = '5' AND `target` = '1' AND `bp0` = '0' AND `aura` = '251877' AND `createdspell` = '0'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-81256' AND `spell_effect` = '253381';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES ('-81256', '253381', '251877', 'Item - Death Knight T21 Blood 4P Bonus'); 

UPDATE `areatrigger_actions` SET `targetFlags` = '260' , `hitMaxCount` = '-1' WHERE `entry` = '7478' AND `customEntry` = '0' AND `id` = '0'; 

UPDATE `areatrigger_actions` SET `maxCharges` = '0' WHERE `entry` = '373' AND `customEntry` = '3282' AND `id` = '1'; 
UPDATE `areatrigger_actions` SET `maxCharges` = '0' , `hitMaxCount` = '-1' WHERE `entry` = '373' AND `customEntry` = '3282' AND `id` = '2'; 

UPDATE `areatrigger_actions` SET `maxCharges` = '0' WHERE `entry` = '7104' AND `customEntry` = '0' AND `id` = '1'; 
UPDATE `areatrigger_actions` SET `maxCharges` = '0' , `hitMaxCount` = '-1' WHERE `entry` = '7104' AND `customEntry` = '0' AND `id` = '2';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '104318' AND `spellDummyId` = '242922' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '205196' AND `spell_effect` = '242922' AND `type` = '1' AND `caster` = '0' AND `target` = '5' AND `hastype` = '3' AND `hastalent` = '238109' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Зев тьмы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '104316' AND `spell_effect` = '242922' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '238109' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Зев Тьмы'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '205196' AND `ScriptName` = 'spell_warl_dreadbite'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('205196', 'spell_warl_dreadbite'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '215111' AND `ScriptName` = 'spell_warl_sharpened_dreadfangs'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('215111', 'spell_warl_sharpened_dreadfangs'); 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '98035' AND `spellId` = '215111'; 
INSERT INTO `spell_pet_auras` (`petEntry`, `spellId`, `targetaura`, `aura`, `comment`) VALUES ('98035', '215111', '1', '211123', 'Заточенные клыки');

DELETE FROM `spell_trigger` WHERE `spell_id` = '213017' AND `spell_trigger` = '187827' AND `option` = '25' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '213017' AND `ScriptName` = 'spell_dh_fueled_by_pain'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('213017', 'spell_dh_fueled_by_pain');


UPDATE `spell_proc_event` SET `SpellFamilyMask3` = '32768' WHERE `entry` = '251878'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '104316' AND `spell_effect` = '193331' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Призыв зловещих охотников'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '104316' AND `spell_effect` = '193332' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Призыв зловещих охотников'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '104316' AND `spell_effect` = '196281' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Призыв зловещих охотников'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '104316' AND `ScriptName` = 'spell_warl_call_dreadstalker'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('104316', 'spell_warl_call_dreadstalker'); 
DELETE FROM `spell_trigger_delay` WHERE `spell_id` = '194247' AND `spell_trigger` = '205196'; 
INSERT INTO `spell_trigger_delay` (`spell_id`, `spell_trigger`, `target`, `comment`) VALUES ('194247', '205196', '5', 'Укус ужаса');


UPDATE `creature_template` SET `ScriptName` = 'npc_chi_ji', `spell1` = '213373', `speed_run` = '2.2' WHERE `entry` = '100868'; 
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '100868' AND `spellId` = '213370';
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '100868' AND `spellId` = '198764';
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '100868' AND `spellId` = '36747';
DELETE FROM `spell_pet_auras` WHERE `petEntry` = '100868' AND `spellId` = '-36747';
INSERT INTO `spell_pet_auras` (`petEntry`, `spellId`, `option`, `target`, `bp0`, `comment`) VALUES ('100868', '213370', '0', '6', '0', 'Чи-Цзи'); 
INSERT INTO `spell_pet_auras` (`petEntry`, `spellId`, `option`, `target`, `bp0`, `comment`) VALUES ('100868', '-36747', '0', '0', '0', 'Чи-Цзи'); 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '213373' AND `spell_trigger` = '198756';
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '198766' AND `spell_trigger` = '198756';
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '198764' AND `spell_trigger` = '213370';
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `handlemask`, `comment`) VALUES ('213373', '198756', '5', '1', '8', 'Исцеление Журавля'); 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `handlemask`, `comment`) VALUES ('198766', '198756', '5', '1', '8', 'Исцеление Журавля'); 
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `handlemask`, `comment`) VALUES ('198764', '213370', '6', '1', '8','Исцеление Журавля'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '198766';
DELETE FROM `spell_target_filter` WHERE `spellId` = '213373';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `effectMask`, `resizeType`, `count`, `comments`) VALUES ('213373', '31', '1', '1', '3', 'Исцеление Журавля'); 
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `effectMask`, `resizeType`, `count`, `comments`) VALUES ('198766', '31', '1', '1', '3', 'Исцеление Журавля'); 
UPDATE `pet_stats` SET `ap` = '2' , `spd` = '-2' WHERE `entry` = '100868';

DELETE FROM `spell_script_names` WHERE `spell_id` = '230121' AND `ScriptName` = 'spell_item_guardians_familiar'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('230121', 'spell_item_guardians_familiar'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '230121';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `effectMask`, `comments`) VALUES ('230121', '31', '1', '-230121', '5', 'Фамилиар Хранителя');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '66196' AND `spell_effect` = '-51714' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '14' AND `hastalent` = '51714' AND `hasparam` = '5' AND `hastype2` = '0' AND `hastalent2` = '207057' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '4' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Разбивающие удары'; 


UPDATE `spell_proc_event` SET `procFlags` = 65536+4096 WHERE `entry` = '209405'; 

DELETE FROM `spell_target_filter` WHERE `spellId` = '200821';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `comments`) VALUES ('200821', '16', '9', '1', 'Раздвоенный лунный огонь'); 
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `effectMask`, `resizeType`, `count`, `comments`) VALUES ('200821', '16', '25', '-164812', '1', '2', '1', 'Раздвоенный лунный огонь'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '248163';
UPDATE `spell_proc_event` SET `Cooldown` = '30' WHERE `entry` = '248163';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '228260' AND `spell_effect` = '8092';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `actiontype`, `param`, `comment`) VALUES ('228260', '8092', '8', '14', '3000', 'Взрыв разума');

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197922' AND `spellDummyId` = '-156621' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '64'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197922' AND `spellDummyId` = '-156618' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '64'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197922' AND `spellDummyId` = '-141210' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '64'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197922' AND `spellDummyId` = '-140876' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '64'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197922' AND `spellDummyId` = '-23335' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '64'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197922' AND `spellDummyId` = '-23333' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '64'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197923' AND `spellDummyId` = '-156621' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '512'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197923' AND `spellDummyId` = '-156618' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '512'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197923' AND `spellDummyId` = '-141210' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '512'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197923' AND `spellDummyId` = '-140876' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '512'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197923' AND `spellDummyId` = '-23335' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '512'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197923' AND `spellDummyId` = '-23333' AND `option` = '4' AND `effectDummy` = '0' AND `effectmask` = '512';

DELETE FROM `spell_trigger` WHERE `spell_id` = '79134' AND `spell_trigger` = '51637' AND `option` = '0' AND `bp0` = '0' AND `effectmask` = '2' AND `aura` = '198097' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0';

DELETE FROM `spell_target_filter` WHERE `spellId` = '32375'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '32592'; 
DELETE FROM `spell_target_filter` WHERE `spellId` = '39897'; 
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `resizeType`, `count`, `comments`) VALUES 
('32375', '31', '4', '1', '1', '5', 'Массовое рассеивание'), 
('32592', '16', '4', '1', '1', '5', 'Массовое рассеивание'), 
('39897', '16', '4', '1', '1', '5', 'Массовое рассеивание');

UPDATE `spell_trigger` SET `bp0` = '85', `chance` = '101' WHERE `spell_id` = '251758' AND `spell_trigger` = '252143' AND `option` = '3' AND `bp0` = '95' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
UPDATE `spell_trigger` SET `bp0` = '85', `chance` = '101' WHERE `spell_id` = '251758' AND `spell_trigger` = '256561' AND `option` = '3' AND `bp0` = '95' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 

DELETE FROM `spell_aura_dummy` WHERE `spellDummyId` = '252141'; 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `removeAura`, `effectDummy`, `effectmask`, `comment`) VALUES 
('210714', '252141', '1', '9', '2', '252141', '1', '1', 'Item - Shaman T21 Elemental 2P Bonus'), 
('77478', '252141', '1', '9', '2', '0', '1', '1', 'Item - Shaman T21 Elemental 2P Bonus');
DELETE FROM `areatrigger_actions` WHERE `entry` = '3691' AND `customEntry` = '8382' AND `id` = '3'; 
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `comment`) VALUES ('3691', '8382', '3', '552', '1', '260', '252141', 'Item - Shaman T21 Elemental 2P Bonus');

UPDATE `spell_target_filter` SET `option` = '8' , `resizeType` = '0' , `count` = '0' , `addcaster` = '0' WHERE `spellId` = '252159' AND `targetId` = '31' AND `option` = '0' AND `param1` = '0' AND `param2` = '0' AND `param3` = '0'; 
UPDATE `spell_trigger` SET `option` = '3' , `caster` = '0' , `CreatureType` = '0' WHERE `spell_id` = '251765' AND `spell_trigger` = '252159' AND `option` = '20' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '73400'; 
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '128', `SpellFamilyMask2` = '65536' WHERE `entry` = '251765'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '251765';
INSERT INTO `spell_proc_check` (`entry`, `hastalent`, `effectmask`, `comment`) VALUES ('251765', '73920', '1', 'Item - Shaman T21 Restoration 4P Bonus');

UPDATE `spell_proc_event` SET `procFlags` = 0x11000 WHERE `entry` = '251849';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '117014' AND `spell_effect` = '118522' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '118522 173183 173184' AND `comment` = 'Удар духов стихии'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '120588' AND `spell_effect` = '118522' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '2' AND `param` = '0' AND `randList` = '118522 173183 173184' AND `comment` = 'Удар духов стихии'; 
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_sha_elem_blast'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('117014', 'spell_sha_elem_blast'); 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('120588', 'spell_sha_elem_blast');

UPDATE `spell_proc_event` SET `procFlags` = 0x50154, `Cooldown` = '0.5' WHERE `entry` = '195222'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '195222' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '-195256' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0';

UPDATE `spell_proc_event` SET `SpellFamilyMask3` = 16384+2 WHERE `entry` = '251825'; 

UPDATE `spell_proc_check` SET `checkspell` = '115151' WHERE `entry` = '117907' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '119611' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0';


DELETE FROM `spell_proc_check` WHERE `entry` = '182234'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '182234'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '182234'; 
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `aura`, `comment`) VALUES ('182234', '182497', '20', '1', '-182497', 'Непреклонная воля'); 
INSERT INTO `spell_proc_check` (`entry`, `hastalent`, `effectmask`, `mechanicMask`, `comment`) VALUES ('182234', '-182496', '1', '25588774', 'Непреклонная воля');

DELETE FROM `spell_target_filter` WHERE `spellId` = '199486'; 
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `comments`) VALUES ('199486', '16', '9', '1', 'Душевная связь (Талант чести)');

DELETE FROM `spell_script_names` WHERE `spell_id` = '228445' AND `ScriptName` = 'spell_item_march_of_the_legion'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('228445', 'spell_item_march_of_the_legion'); 

DELETE FROM `spell_visual` WHERE `spellId` = '214581' AND `SpellVisualID` = '56931';
UPDATE `spell_linked_spell` SET `type` = '9' WHERE `spell_trigger` = '214581' AND `spell_effect` = '185365' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '193526' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Меткий выстрел'; 
UPDATE `spell_linked_spell` SET `type` = '9' WHERE `spell_trigger` = '185358' AND `spell_effect` = '185365' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '193526' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Меткий выстрел'; 
UPDATE `spell_linked_spell` SET `type` = '9' WHERE `spell_trigger` = '2643' AND `spell_effect` = '185365' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '193526' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Меткий выстрел';

UPDATE `creature_template` SET `spell1` = '206685' WHERE `entry` = '104493';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '203413' AND `spellDummyId` = '190931';
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `type`, `option`, `caster`, `effectmask`, `comment`) VALUES ('203413', '190931', '1', '9', '2', '1', 'Ярость Орла');

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '32768' WHERE `entry` = '238115'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '238115'; 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `chance`, `effectmask`, `comment`) VALUES ('238115', '49020', '0', '1', 'Крушитель трона'); 
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `chance`, `effectmask`, `comment`) VALUES ('238115', '207230', '50', '1', 'Крушитель трона');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '77535' AND `spell_effect` = '216019';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-77535' AND `spell_effect` = '-216019';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `comment`) VALUES ('-77535', '-216019', 'Вечная жажда');

DELETE FROM `spell_script_names` WHERE `spell_id` = '205629' AND `ScriptName` = 'spell_dh_demonic_trample'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('205629', 'spell_dh_demonic_trample');



DELETE FROM `spell_target_filter` WHERE `spellId` = '209069';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `resizeType`, `count`, `comments`) VALUES ('209069', '31', '4', '1', '1', '6', 'Тотем приливов'); 

DELETE FROM `spell_target_filter` WHERE `spellId` = '199894';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `resizeType`, `count`, `comments`) VALUES ('199894', '31', '4', '1', '1', '6', 'Туманы Шей-луна'); 

UPDATE `areatrigger_data` SET `maxActiveTargets` = '1' WHERE `entry` = '7329' AND `spellId` = '215058' AND `customEntry` = '11781'; 
UPDATE `areatrigger_data` SET `maxActiveTargets` = '1' WHERE `entry` = '7331' AND `spellId` = '215058' AND `customEntry` = '11781'; 
UPDATE `areatrigger_data` SET `maxActiveTargets` = '1' WHERE `entry` = '7332' AND `spellId` = '215058' AND `customEntry` = '11781'; 
UPDATE `areatrigger_data` SET `maxActiveTargets` = '1' WHERE `entry` = '7335' AND `spellId` = '215058' AND `customEntry` = '11781'; 
UPDATE `areatrigger_template` SET `Radius` = '2' , `RadiusTarget` = '2' WHERE `entry` = '7329' AND `spellId` = '215058' AND `customEntry` = '11781'; 
UPDATE `areatrigger_template` SET `Radius` = '2' , `RadiusTarget` = '2' WHERE `entry` = '7331' AND `spellId` = '215058' AND `customEntry` = '11781'; 
UPDATE `areatrigger_template` SET `Radius` = '2' , `RadiusTarget` = '2' WHERE `entry` = '7332' AND `spellId` = '215058' AND `customEntry` = '11781'; 
UPDATE `areatrigger_template` SET `Radius` = '2' , `RadiusTarget` = '2' WHERE `entry` = '7335' AND `spellId` = '215058' AND `customEntry` = '11781'; 
