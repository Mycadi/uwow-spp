DELETE FROM `spell_aura_trigger` WHERE (`spell_id`='225141') AND (`spell_trigger`='225777') AND (`option`='13') AND (`hastalent`='0') AND (`hastalent2`='0');

DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '214980' AND `spell_trigger` = '214985' AND `option` = '13' AND `hastalent` = '0' AND `hastalent2` = '0'; 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '222166' AND `spell_trigger` = '222168' AND `option` = '13' AND `hastalent` = '0' AND `hastalent2` = '0'; 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '224154' AND `spell_trigger` = '224155' AND `option` = '13' AND `hastalent` = '0' AND `hastalent2` = '0'; 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '230015' AND `spell_trigger` = '230017' AND `option` = '13' AND `hastalent` = '0' AND `hastalent2` = '0'; 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '230222' AND `spell_trigger` = '230224' AND `option` = '13' AND `hastalent` = '0' AND `hastalent2` = '0'; 
DELETE FROM `spell_aura_trigger` WHERE `spell_id` = '242624' AND `spell_trigger` = '242626' AND `option` = '13' AND `hastalent` = '0' AND `hastalent2` = '0'; 


DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '34914' AND `spell_effect` = '589' AND `type` = '8' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '238558' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '5' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Страдания'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '47788' AND `spell_effect` = '47788' AND `type` = '6' AND `caster` = '3' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '196437' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '5' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Стражи Света'; 
DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '47788' AND `spell_effect` = '196463' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '196437' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '1500' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '17' AND `group` = '0' AND `param` = '1' AND `randList` = '' AND `comment` = 'Стражи Света'; 

DELETE FROM `spell_linked_spell` WHERE `spell_trigger` = '36554' AND `spell_effect` = '5277' AND `type` = '0' AND `caster` = '0' AND `target` = '3' AND `hastype` = '0' AND `hastalent` = '192422' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '-5277' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '1' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '5' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Стремительность тени'; 
DELETE FROM `spell_aura_dummy` WHERE `spellId` = '5277' AND `spellDummyId` = '-192422' AND `option` = '12' AND `effectDummy` = '0' AND `effectmask` = '7'; 
DELETE FROM `spell_linked_spell` WHERE `hastalent` = '192422';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `duration`, `actiontype`, `comment`) VALUES 
('36554', '5277', '192422', '2000', '21', 'Стремительность тени'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent` = '197000';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `hastalent`, `duration`, `actiontype`, `comment`) VALUES 
('2983', '197003', '197000', '0', '0', 'Маневренность (Талант чести)'); 

DELETE FROM `spell_linked_spell` WHERE `hastalent2` = '225155';
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `hastype`, `hastalent`, `hastalent2`, `comment`) VALUES 
('187708', '185855', '1', '6', '-185855', '225155', 'Пальцевая ловушка Фриззо'),
('212436', '185855', '1', '6', '-185855', '225155', 'Пальцевая ловушка Фриззо'); 

UPDATE `spell_linked_spell` SET `actiontype` = '0' WHERE `spell_trigger` = '210808' AND `spell_effect` = '12042' AND `type` = '0' AND `caster` = '0' AND `target` = '0' AND `hastype` = '0' AND `hastalent` = '0' AND `hasparam` = '0' AND `hastype2` = '0' AND `hastalent2` = '0' AND `hasparam2` = '0' AND `chance` = '0' AND `cooldown` = '0' AND `duration` = '0' AND `hitmask` = '0' AND `removeMask` = '0' AND `effectMask` = '0' AND `targetCountType` = '0' AND `targetCount` = '-1' AND `actiontype` = '5' AND `group` = '0' AND `param` = '0' AND `randList` = '' AND `comment` = 'Аномалия времени (Талант чести)'; 

INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('214423', 'spell_item_living_carapace'); 

UPDATE `spell_linked_spell` SET `type` = '5', `duration` = '400' WHERE `spell_trigger` = '194466' AND `spell_effect` = '224637';

DELETE FROM `spell_linked_spell` WHERE `spell_effect` = '208822' OR `spell_effect` = '-208822';

UPDATE `spell_proc_event` SET `Cooldown` = '0' WHERE `entry` = '210689'; 

