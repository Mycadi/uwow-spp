DELETE FROM `spell_proc_event` WHERE `entry` = '214449'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('214449', 0xA0000, '1'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '232698' AND `spell_effect` = '185908' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик тьмы'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-232698' AND `spell_effect` = '-185908' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Облик тьмы'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '232698' AND `ScriptName` = 'spell_pri_shadowform'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('232698', 'spell_pri_shadowform'); 

UPDATE `spell_linked_spell` SET `effectMask` = '2' WHERE `spell_trigger` = '29722' AND `spell_effect` = '157736' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '212282' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Кремация (Талант чести)'; 

UPDATE `spell_linked_spell` SET `effectMask` = '1' WHERE `spell_trigger` = '6343' AND `spell_effect` = '199042' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '199045' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Громовой раскат (Талант чести)'; 

DELETE FROM `spell_script_names` WHERE `spell_id` = '242459' AND `ScriptName` = 'spell_item_ocean_embrace'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242459', 'spell_item_ocean_embrace'); 
DELETE FROM `spell_trigger` WHERE `spell_trigger` = '242467'; 
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `effectmask`, `comment`) VALUES 
('242460', '242467', '1', 'Объятия океана'), 
('242461', '242467', '1', 'Объятия океана'), 
('242462', '242467', '1', 'Объятия океана'), 
('242463', '242467', '1', 'Объятия океана'), 
('242464', '242467', '1', 'Объятия океана'), 
('242465', '242467', '1', 'Объятия океана'); 
DELETE FROM `spell_target_filter` WHERE `spellId` = '242474';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `effectMask`, `resizeType`, `count` , `addcaster`, `comments`) VALUES 
('242474', '31', '1', '1', '1', '2', 'Объятия океана'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '242460' OR `entry` = '242461' OR `entry` = '242462' OR `entry` = '242463' OR `entry` = '242464' OR `entry` = '242465'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask1`, `procFlags`, `CustomChance`, `cooldown`, `effectmask`) VALUES ('242460', '7', '67108864', '17408', '25', '10', '1'); 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask3`, `procFlags`, `CustomChance`, `cooldown`, `effectmask`) VALUES ('242461', '53', '2048', '17408', '25', '10', '1'); 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `CustomChance`, `cooldown`, `effectmask`) VALUES ('242462', '6', '512', '17408', '25', '10', '1'); 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `CustomChance`, `cooldown`, `effectmask`) VALUES ('242463', '6', '4194304', '17408', '25', '10', '1'); 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask2`, `procFlags`, `CustomChance`, `cooldown`, `effectmask`) VALUES ('242464', '10', '262144', '17408', '25', '10', '1'); 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `procFlags`, `CustomChance`, `cooldown`, `effectmask`) VALUES ('242465', '11', '256', '17408', '25', '10', '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '209389' AND `spell_trigger` = '209388';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '45470' AND `spellDummyId` = '189154' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 

DELETE FROM `areatrigger_data` WHERE `entry` = '1613' OR `entry` = '4424' OR `entry` = '4435' OR `entry` = '9810'; 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `maxCount`) VALUES ('1613', '13813', '6094', '1'); 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `maxCount`) VALUES ('4424', '187651', '9170', '1'); 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `maxCount`) VALUES ('4435', '187699', '9181', '1'); 
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `maxCount`) VALUES ('9810', '236775', '14725', '1'); 

UPDATE `spell_linked_spell` SET `type` = '0' WHERE `spell_trigger` = '185358' AND `spell_effect` = '187675';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '212552' AND `spellDummyId` = '-219011';  

DELETE FROM `spell_target_filter` WHERE `spellId` = '200025';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `resizeType`, `count`, `comments`) VALUES 
('200025', '31', '18', '0', '0', '1', '4', 'Частица добродетели'),
('200025', '31', '3', '0', '16', '0', '0', 'Частица добродетели'), 
('200025', '31', '0', '0', '0', '0', '0', 'Частица добродетели'); 


DELETE FROM `spell_script_names` WHERE `spell_id` = '18562' AND `ScriptName` = 'spell_dru_swiftmend'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('18562', 'spell_dru_swiftmend'); 

DELETE FROM `spell_proc_check` WHERE `entry` = '207692'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '207692' AND `spell_trigger` = '207694'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 1+512 , `procFlags` = 0 WHERE `entry` = '242293'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '210702' AND `spell_trigger` = '210705' AND `option` = '45' AND `bp0` = '0' AND `effectmask` = '1' AND `aura` = '0' AND `check_spell_id` = '0' AND `addptype` = '-1' AND `CreatureType` = '0'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '210702' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '0' AND `hastalent` = '1079' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '186370' AND `spell_trigger` = '224392' AND `option` = '0' AND `hastalent` = '0' AND `hastalent2` = '0';

UPDATE `spell_linked_spell` SET `caster` = '0' , `actiontype` = '4' , `param` = '1' WHERE `spell_trigger` = '66196' AND `spell_effect` = '-51714' AND `type` = '8' AND `caster` = '5' AND `target` = '0' AND `hastype` = '14' AND `hastalent` = '51714' AND `hasparam` = '5' AND `hastype2` = '0' AND `hastalent2` = '207057' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Разбивающие удары'; 

UPDATE `spell_linked_spell` SET `type` = '1' , `caster` = '0' , `actiontype` = '4' , `param` = '1' WHERE `spell_trigger` = '80313' AND `spell_effect` = '-158790' AND `type` = '1' AND `caster` = '5' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Растерзать'; 
UPDATE `spell_linked_spell` SET `type` = '1' WHERE `spell_trigger` = '80313' AND `spell_effect` = '-192090' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '7' AND `group` = '0' AND `param` = '2' AND `randList` = '' AND `comment` = 'Раздавить'; 

UPDATE `spell_linked_spell` SET `caster` = '0' , `target` = '0' , `actiontype` = '4' , `param` = '1' WHERE `spell_trigger` = '215884' AND `spell_effect` = '-215859' AND `type` = '1' AND `caster` = '5' AND `target` = '5' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильная магия'; 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '191731';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastype`, `hastalent`, `randList`, `comment`) VALUES 
('199373', '191727', '1', '3', '191731', '191727 191728 191729 191730', 'Армии проклятых'); 

UPDATE `spell_linked_spell` SET `caster` = '0' , `target` = '0' , `actiontype` = '4' , `param` = '1' WHERE `spell_trigger` = '-17' AND `spell_effect` = '-197548';

-- not exist spell
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '205235' AND `spell_trigger` = '225119' AND `option` = '0' AND `aura` = '0'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '212746' AND `spell_effect` = '-55078' AND `type` = '1' AND `caster` = '5' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пожирание душ'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '8092' AND `spell_effect` = '-217673' AND `type` = '1' AND `caster` = '5' AND `target` = '5' AND `hastype` = '1' AND `hastalent` = '217673' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пронзание разума'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '73510' AND `spell_effect` = '-87160' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '7' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пронзание разума'; 


DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-253593' AND `spelllink` = '-253594'; 
INSERT INTO `spell_talent_linked_spell` (`spellid`, `spelllink`, `comment`) VALUES ('-253593', '-253594', 'Непрерывный натиск'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '81751' AND `ScriptName` = 'spell_pri_atonement_heal'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('81751', 'spell_pri_atonement_heal'); 

UPDATE `creature_template_addon` SET `auras` = '226015 65220 131073 115043 134735' WHERE `entry` = '100820'; 
UPDATE `spell_proc_event` SET `procFlags` = '4' , `Cooldown` = '0' , `effectmask` = '3' WHERE `entry` = '131073'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '228477' AND `spell_effect` = '207693' AND `type` = '6' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '207697' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пиршество душ'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '207693' AND `ScriptName` = 'spell_dh_feast_of_souls'; 

INSERT IGNORE INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('231895', 0x00055410);

DELETE FROM `spell_bonus_data` WHERE `entry` = '83381'; 
DELETE FROM `spell_bonus_data` WHERE `entry` = '16827'; 
DELETE FROM `spell_bonus_data` WHERE `entry` = '17253'; 
DELETE FROM `spell_bonus_data` WHERE `entry` = '49966'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '242064';
DELETE FROM `spell_proc_event` WHERE `entry` = '242064'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '242064';
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '242064';
DELETE FROM `spell_linked_spell` WHERE `hastalent2` = '242064';
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_dk_army_of_the_dead'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('42651', 'spell_dk_army_of_the_dead'), ('205491', 'spell_dk_army_of_the_dead'); 

INSERT IGNORE INTO `areatrigger_template` (`entry`, `spellId`, `Radius`, `RadiusTarget`, `comment`) VALUES ('6804', '199424', '20', '20', 'Чистое сердце (Талант чести)');

UPDATE `spell_linked_spell` SET `hastype2` = '6' WHERE `spell_trigger` = '194384' AND `spell_effect` = '198076' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '198074' AND `comment` = 'Грехи многих'; 


DELETE FROM `spell_proc_event` WHERE `entry` = '59057';
DELETE FROM `spell_proc_check` WHERE `entry` = '59057';
INSERT INTO `spell_proc_check` (`entry`, `checkspell`, `comment`) VALUES 
('59057', '49020', 'Иней'), 
('59057', '207230', 'Иней');

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '51271' AND `spellDummyId` = '247240'; 
INSERT INTO `spell_aura_dummy` (`spellId`, `spellDummyId`, `option`, `caster`, `removeAura`, `effectmask`, `comment`) VALUES 
('51271', '247240', '2', '2', '247240', '1', 'Льдистая кромка');

UPDATE `spell_linked_spell` SET `hastype` = '6' WHERE `spell_trigger` = '1079' AND `spell_effect` = '203080' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '1' AND `hastalent` = '-1079' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '203052' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Король джунглей (Талант чести)'; 

UPDATE `spell_linked_spell` SET `hastype` = '6' WHERE `spell_trigger` = '108853' AND `spell_effect` = '108853' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '1' AND `hastalent` = '-12654' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '203282' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '15' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Поджигай! (Талант чести)'; 

UPDATE `spell_linked_spell` SET `hastype` = '6' WHERE `spell_trigger` = '115181' AND `spell_effect` = '123725' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '1' AND `hastalent` = '121253' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пламенное дыхание'; 
UPDATE `spell_linked_spell` SET `hastype` = '6' WHERE `spell_trigger` = '115181' AND `spell_effect` = '123725' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '1' AND `hastalent` = '196733' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пламенное дыхание'; 

UPDATE `spell_linked_spell` SET `hastype` = '6' WHERE `spell_trigger` = '51505' AND `spell_effect` = '210621' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '1' AND `hastalent` = '188389' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '201909' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Путь пламени'; 

UPDATE `spell_linked_spell` SET `hastype2` = '6' WHERE `spell_trigger` = '194384' AND `spell_effect` = '212100' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '81749' AND `hasparam` = '0' AND `hastype2` = '1' AND `hastalent2` = '-194384' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Мольба'; 

UPDATE `spell_linked_spell` SET `hastype2` = '6' WHERE `spell_trigger` = '1064' AND `spell_effect` = '200075' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '200076' AND `hasparam` = '0' AND `hastype2` = '1' AND `hastalent2` = '61295' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Наводнение'; 

UPDATE `spell_aura_dummy` SET `hastype` = '6' WHERE `spellId` = '1822' AND `spellDummyId` = '203224' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '1';
 
UPDATE `spell_aura_dummy` SET `hastype` = '6' WHERE `spellId` = '2050' AND `spellDummyId` = '211640' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '7'; 

UPDATE `spell_aura_dummy` SET `hastype` = '6' WHERE `spellId` = '8936' AND `spellDummyId` = '209730' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '1';
 
UPDATE `spell_aura_dummy` SET `hastype` = '6' , `hastype2` = '6' WHERE `spellId` = '78674' AND `spellDummyId` = '211104' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1';
 
UPDATE `spell_aura_dummy` SET `hastype` = '6' WHERE `spellId` = '155722' AND `spellDummyId` = '203224' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '1'; 

UPDATE `spell_aura_dummy` SET `hastype` = '6' WHERE `spellId` = '164812' AND `spellDummyId` = '200567' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 


UPDATE `areatrigger_actions` SET `actionType` = '0' WHERE `entry` = '7326' AND `customEntry` = '0' AND `id` = '0'; 

DELETE FROM `spell_script_names` WHERE `spell_id` = '152173' AND `ScriptName` = 'spell_monk_serenity'; 

DELETE FROM `spell_check_cast` WHERE `spellId` = '223829' AND `type` = '0';
 
UPDATE `areatrigger_actions` SET `moment` = '5' WHERE `entry` = '1193' AND `customEntry` = '5070' AND `id` = '0';

DELETE FROM `spell_script_names` WHERE `spell_id` = '195845' AND `ScriptName` = 'spell_gen_adaptation_dummy'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('195845', 'spell_gen_adaptation_dummy'); 


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-233490' AND `spell_effect` = '31117' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231791' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '32' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-233496' AND `spell_effect` = '31117' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231791' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '32' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-233497' AND `spell_effect` = '31117' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231791' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '32' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-233498' AND `spell_effect` = '31117' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231791' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '32' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-233499' AND `spell_effect` = '31117' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231791' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '32' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '1' AND `param` = '0' AND `randList` = '' AND `comment` = 'Нестабильное колдовство'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198304' AND `spell_effect` = '147833' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '10' AND `hastalent` = '10' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Вмешательство'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198304' AND `spell_effect` = '105771' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '11' AND `hastalent` = '11' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Перехват'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198304' AND `spell_effect` = '198337' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '11' AND `hastalent` = '11' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Рывок'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198304' AND `spell_effect` = '223658' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '10' AND `hastalent` = '10' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '223657' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Охрана'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198304' AND `spell_effect` = '199038' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '10' AND `hastalent` = '10' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '199037' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пленных не брать (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '198304' AND `spell_effect` = '7922' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '103828' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Вестник войны'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '17057';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '24858' AND `spell_effect` = '190024';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '197625' AND `spell_effect` = '190024';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '52610' AND `spell_effect` = '62071';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `comment`) VALUES 
('5487', '17057', '8', 'Облик медведя - ярость'), 
('24858', '190024', '8', 'Облик лунного совуха - звук'),
('197625', '190024', '8', 'Облик лунного совуха - звук');

DELETE FROM `spell_proc_event` WHERE `entry` = '210802'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '210802'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '210802';

UPDATE `spell_trigger` SET `option` = '25', `effectmask` = '1' WHERE `spell_id` = '213017' AND `spell_trigger` = '187827';

DELETE FROM `spell_proc_event` WHERE `entry` = '216855'; 
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `SpellFamilyMask0`, `effectmask`) VALUES ('216855', '10', 0x40000000, '1'); 

UPDATE `spell_linked_spell` SET `spell_trigger` = '225774' , `duration` = '11900' WHERE `spell_trigger` = '-225774' AND `spell_effect` = '225776' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Бесчестный пакт'; 


DELETE FROM `spell_check_cast` WHERE `spellId` = '185438'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '185438' AND `spell_effect` = '138916' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '231718' AND `hasparam` = '0' AND `hastype2` = '12' AND `hastalent2` = '1' AND `hasparam2` = '2' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Удар тьмы'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '185438' AND `ScriptName` = 'spell_rog_shadow_strike'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('185438', 'spell_rog_shadow_strike');

DELETE FROM `spell_proc_check` WHERE `entry` = '200153';
UPDATE `spell_proc_event` SET `SpellFamilyMask0` = 1024+2048+4096 , `SpellFamilyMask1` = '4' , `SpellFamilyMask3` = '8' WHERE `entry` = '200153';


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '155793' AND `spell_effect` = '139' AND `type` = '6' AND `caster` = '10' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '193157' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '40' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Благодарение'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '33110' AND `spell_effect` = '139' AND `type` = '6' AND `caster` = '10' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '193157' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '40' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Благодарение'; 

UPDATE `spell_trigger` SET `bp1` = '15' , `effectmask` = '1' WHERE `spell_id` = '242298' AND `spell_trigger` = '152277' AND `option` = '23';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '27285' AND `spellDummyId` = '234876' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '205246' AND `spellDummyId` = '234876' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '2'; 

UPDATE `spell_proc_event` SET `procFlags` = '4096' WHERE `entry` = '242301';


DELETE FROM `spell_target_filter` WHERE `spellId` = '234696';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `effectMask`, `comments`) VALUES ('234696', '16', '9', '2', 'Пытка разума'); 

DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-231718' AND `spelllink` = '-245623'; 
DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '231718' AND `spelllink` = '245623';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-108299' AND `spell_effect` = '-108300';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-768' AND `spell_effect` = '-108300';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-5487' AND `spell_effect` = '-108300';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '768' AND `spell_effect` = '108300';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '108300';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '247675' AND `spell_effect` = '-247677' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Молот возмездия (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '247677' AND `spell_effect` = '247676' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Молот возмездия (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '247675' AND `spell_effect` = '231895' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '2' AND `hastalent` = '231895' AND `hasparam` = '0' AND `hastype2` = '13' AND `hastalent2` = '247677' AND `hasparam2` = '50' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '12000' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '21' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Молот возмездия'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '247675' AND `spell_effect` = '31884' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '2' AND `hastalent` = '31884' AND `hasparam` = '0' AND `hastype2` = '13' AND `hastalent2` = '247677' AND `hasparam2` = '50' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '6000' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '21' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Молот возмездия'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '247675' AND `ScriptName` = 'spell_pal_hammer_of_reckoning'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('247675', 'spell_pal_hammer_of_reckoning');

UPDATE `spell_linked_spell` SET `spell_trigger` = '-113656' , `type` = '0' WHERE `spell_trigger` = '113656' AND `spell_effect` = '247255' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '242259' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Item - Monk T20 Windwalker 2P Bonus'; 


INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('257233', 'spell_item_mark_of_the_panteon'); 

UPDATE `spell_proc_check` SET `entry` = '257471' WHERE `entry` = '257470' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '116670' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 
UPDATE `spell_proc_check` SET `entry` = '257472' WHERE `entry` = '257470' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '19750' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 
UPDATE `spell_proc_check` SET `entry` = '257473' WHERE `entry` = '257470' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '200829' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 
UPDATE `spell_proc_check` SET `entry` = '257474' WHERE `entry` = '257470' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '2061' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 
UPDATE `spell_proc_check` SET `entry` = '257475' WHERE `entry` = '257470' AND `entry2` = '0' AND `entry3` = '0' AND `checkspell` = '77472' AND `hastalent` = '0' AND `powertype` = '-1' AND `dmgclass` = '-1' AND `specId` = '0'; 
UPDATE `areatrigger_actions` SET `scaleMax` = '0' WHERE `entry` = '12015' AND `customEntry` = '16725' AND `id` = '0'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '256817'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('256817', 0x254154); 

DELETE FROM `spell_proc_event` WHERE `entry` = '256822'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('256822', 0x204000); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '256836' AND `spell_trigger` = '257241';
INSERT INTO `spell_trigger` (`spell_id`, `spell_trigger`, `option`, `effectmask`, `randList`, `comment`) VALUES 
('256836', '257241', '0', '1', '257241 257242 257243 257533 257534 257535', 'Приказ Норганнона'); 

UPDATE `areatrigger_actions` SET `actionType` = '15' WHERE `entry` = '7326' AND `customEntry` = '0' AND `id` = '0'; -- again freezing client, temp shutdown

DELETE FROM `spell_proc_event` WHERE `entry` = '214120'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`) VALUES ('214120', 0x254154); 

DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '196780' AND `spell_trigger` = '191587' AND `option` = '0' AND `aura` = '0'; 
DELETE FROM `spell_dummy_trigger` WHERE `spell_id` = '196780' AND `spell_trigger` = '208278' AND `option` = '4' AND `aura` = '207316'; 
DELETE FROM `spell_script_names` WHERE `spell_id` = '196780' AND `ScriptName` = 'spell_dk_outbreak_aoe_dummy'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('196780', 'spell_dk_outbreak_aoe_dummy');

UPDATE `spell_proc_event` SET `procFlags` = 16384+262144 , `CustomChance` = '1' WHERE `entry` = '211170';
UPDATE `spell_target_filter` SET `option` = '25' , `param1` = '-155777' , `param2` = '-774' , `addcaster` = '2' WHERE `spellId` = '232469' AND `targetId` = '31';

UPDATE `areatrigger_template` SET `Radius` = '6' , `RadiusTarget` = '6' WHERE `entry` = '5977' AND `spellId` = '204255' AND `customEntry` = '10665'; 
UPDATE `areatrigger_template` SET `Radius` = '6' , `RadiusTarget` = '6' WHERE `entry` = '6710' AND `spellId` = '203795' AND `customEntry` = '11266'; 
UPDATE `areatrigger_template` SET `Radius` = '6' , `RadiusTarget` = '6' WHERE `entry` = '6711' AND `spellId` = '204062' AND `customEntry` = '10693'; 
UPDATE `areatrigger_template` SET `Radius` = '6' , `RadiusTarget` = '6' WHERE `entry` = '6007' AND `spellId` = '204256' AND `customEntry` = '11267'; 
UPDATE `areatrigger_template` SET `Radius` = '6' , `RadiusTarget` = '6' WHERE `entry` = '6659' AND `spellId` = '209788' AND `customEntry` = '11231'; 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '199552' AND `spellDummyId` = '242227' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '3'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '200685' AND `spellDummyId` = '242227' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '3'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '210153' AND `spellDummyId` = '242227' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '3'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '210155' AND `spellDummyId` = '242227' AND `option` = '7' AND `effectDummy` = '0' AND `effectmask` = '3'; 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '205033';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `chance`, `duration`, `comment`) VALUES 
('48107', '48108', '1', '205033', '20', '0', 'Контролируемое горение'); 
DELETE FROM `spell_group_stack_rules` WHERE `group_id` = '48107'; 
DELETE FROM `spell_group` WHERE `id` = '48107' AND `spell_id` = '48108'; 
DELETE FROM `spell_group` WHERE `id` = '48107' AND `spell_id` = '48107'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '2120' AND `spell_effect` = '48108' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '205020' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '48108' AND `hasparam2` = '0' AND `chance` = '8' AND `cooldown` = '0' AND `duration` = '500' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пироманьяк'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '11366' AND `spell_effect` = '48108' AND `type` = '5' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '205020' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '48108' AND `hasparam2` = '0' AND `chance` = '8' AND `cooldown` = '0' AND `duration` = '500' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Пироманьяк'; 
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '205020';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastalent`, `hastalent2`, `chance`, `duration`, `comment`) VALUES 
('11366', '48108', '8', '205020', '48108', '8', '0', 'Пироманьяк'), 
('2120', '48108', '8', '205020', '48108', '8', '0', 'Пироманьяк');

UPDATE `spell_linked_spell` SET `chance` = '0' WHERE `spell_trigger` = '216721' AND `spell_effect` = '244840' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '33' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Души проклятых - сбежавшая душа'; 

UPDATE `spell_proc_event` SET `procFlags` = '65536' WHERE `entry` = '206649'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '16384' , `SpellFamilyMask1` = '0' , `SpellFamilyMask3` = '2147483648' , `Cooldown` = '0' WHERE `entry` = '206478'; 

UPDATE `spell_proc_event` SET `SpellFamilyMask0` = '16384' , `SpellFamilyMask1` = '0' , `SpellFamilyMask3` = '2147483648' , `ppmRate` = '0' WHERE `entry` = '221632';


UPDATE `areatrigger_actions` SET `targetFlags` = '2' WHERE `entry` = '5975' AND `customEntry` = '10663' AND `id` = '0'; 
UPDATE `areatrigger_actions` SET `targetFlags` = '0' WHERE `entry` = '5975' AND `customEntry` = '10663' AND `id` = '1'; 

DELETE FROM `spell_script_names` WHERE `spell_id` = '242629' AND `ScriptName` = 'spell_item_cunning_of_the_deceiver'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242629', 'spell_item_cunning_of_the_deceiver'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '242609' AND `ScriptName` = 'spell_item_walling_souls'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('242609', 'spell_item_walling_souls');


DELETE FROM `spell_script_names` WHERE `spell_id` = '194310' AND `ScriptName` = 'spell_dk_festering_wound_dummy'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('194310', 'spell_dk_festering_wound_dummy');

UPDATE `creature_equip_template` SET `ItemID1` = '0' WHERE `CreatureID` = '97055' AND `ID` = '1';


UPDATE `spell_proc_event` SET `procFlags` = '0', `Cooldown` = '1' WHERE `entry` = '242301';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-252921' AND `spell_effect` = '253022';
DELETE FROM `spell_trigger` WHERE `spell_id` = '252922';
DELETE FROM `spell_script_names` WHERE `spell_id` = '252921' AND `ScriptName` = 'spell_item_sorrow_dummy'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('252921', 'spell_item_sorrow_dummy'); 
DELETE FROM `spell_proc_event` WHERE `entry` = '252922'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('252922', 0x50150, '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '252875';
DELETE FROM `spell_proc_event` WHERE `entry` = '252875'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('252875', 0x50150, '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '252207';
DELETE FROM `spell_proc_event` WHERE `entry` = '252207'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('252207', 0x254150, '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '253070';
DELETE FROM `spell_proc_event` WHERE `entry` = '253070'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('253070', 0x254150, '1'); 

DELETE FROM `spell_trigger` WHERE `spell_id` = '252888';
DELETE FROM `spell_proc_event` WHERE `entry` = '252888'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('252888', 0x50150, '1');

DELETE FROM `spell_trigger` WHERE `spell_id` = '252906';
DELETE FROM `spell_proc_event` WHERE `entry` = '252906'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('252906', 0x50150, '1');

DELETE FROM `spell_trigger` WHERE `spell_id` = '253093';
DELETE FROM `spell_proc_event` WHERE `entry` = '253093'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('253093', 0x254150, '1');

DELETE FROM `spell_trigger` WHERE `spell_id` = '253111';
DELETE FROM `spell_proc_event` WHERE `entry` = '253111'; 
INSERT INTO `spell_proc_event` (`entry`, `procFlags`, `effectmask`) VALUES ('253111', 8+128+512+131072+524288, '1');

DELETE FROM `spell_script_names` WHERE `ScriptName` = 'spell_gen_cothl'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
('242584', 'spell_gen_cothl'),
('242583', 'spell_gen_cothl'), 
('242586', 'spell_gen_cothl'), 
('243096', 'spell_gen_cothl'); 


UPDATE `spell_linked_spell` SET `type` = '0' , `hitmask` = '1' WHERE `spell_trigger` = '20271' AND `spell_effect` = '246807' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '246806' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Законник (Талант чести)'; 
UPDATE `spell_linked_spell` SET `type` = '5' WHERE `spell_trigger` = '20271' AND `spell_effect` = '246867' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '246806' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Законник (Талант чести)'; 

DELETE FROM `spell_trigger` WHERE `spell_id` = '238094' AND `spell_trigger` = '214501';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '20594' AND `spell_effect` = '72757';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `actiontype`, `comment`) VALUES ('20594', '72757', '4', 'Will of the Forsaken Cooldown Trigger'); 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '214048' AND `spell_effect` = '214052' AND `type` = '1' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '1' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Метеорит Скверны'; 

DELETE FROM `spell_script_names` WHERE `spell_id` = '214577' AND `ScriptName` = 'spell_item_nightwell_energy'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214577', 'spell_item_nightwell_energy'); 

DELETE FROM `spell_script_names` WHERE `spell_id` = '224437' AND `ScriptName` = 'spell_item_fetid_regurgitation'; 
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('224437', 'spell_item_fetid_regurgitation'); 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-215127' AND `spell_effect` = '-215126';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `caster`, `target`, `comment`) VALUES ('-215127', '-215126', '3', '3', 'Зловонное срыгивание');

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '8326' AND `spell_effect` = '228464';
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-8326' AND `spell_effect` = '-228464';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `comment`) VALUES 
('8326', '228464', '228463', 'Бринсгамен, ожерелье Хельхейма'),
('-8326', '-228464', '0', 'Бринсгамен, ожерелье Хельхейма');


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '339' AND `spell_effect` = '-69369' AND `type` = '8' AND `caster` = '0' AND `target` = '10' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '7' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Стремительность хищника'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '8936' AND `spell_effect` = '-69369' AND `type` = '8' AND `caster` = '0' AND `target` = '10' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '7' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Стремительность хищника'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '235963' AND `spell_effect` = '-69369' AND `type` = '8' AND `caster` = '0' AND `target` = '10' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '7' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Стремительность хищника'; 
DELETE FROM `spell_proc_event` WHERE `entry` = '69369'; 
DELETE FROM `spell_proc_check` WHERE `entry` = '69369';


UPDATE `spell_proc_event` SET `Cooldown` = '0' WHERE `entry` = '242298'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242298' AND `spell_trigger` = '152277'; 
DELETE FROM `spell_trigger` WHERE `spell_id` = '242298' AND `spell_trigger` = '227847'; 

DELETE FROM `spell_proc_event` WHERE `entry` = '152278';

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '195452' AND `spellDummyId` = '197498' AND `option` = '9'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '196819' AND `spellDummyId` = '197496' AND `option` = '9'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197496' AND `spellDummyId` = '193531' AND `option` = '2'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '197498' AND `spellDummyId` = '193531' AND `option` = '2';

UPDATE `spell_trigger` SET `bp1` = '0' , `effectmask` = '1' WHERE `spell_id` = '209567' AND `spell_trigger` = '209569';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '236440' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '236019' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Зубы и когти (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-5487' AND `spell_effect` = '-236440' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Зубы и когти (Талант чести)'; 
DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-236019' AND `spelllink` = '-236440';

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '5487' AND `spell_effect` = '234081' AND `type` = '6' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '233754' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Небесный страж (Талант чести)'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '-5487' AND `spell_effect` = '-234081' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '0' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Небесный страж (Талант чести)'; 
DELETE FROM `spell_talent_linked_spell` WHERE `spellid` = '-5487' AND `spelllink` = '-234081'; 

DELETE FROM `spell_target_filter` WHERE `spellId` = '232210';
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param2`, `effectMask`, `comments`) VALUES ('232210', '15', '3', '8', '251', 'Сокрушающий удар'); 

DELETE FROM `spell_aura_dummy` WHERE `spellId` = '225777' AND `spellDummyId` = '-162702' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '225777' AND `spellDummyId` = '-162701' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '225777' AND `spellDummyId` = '-162700' AND `option` = '9' AND `effectDummy` = '0' AND `effectmask` = '1'; 
