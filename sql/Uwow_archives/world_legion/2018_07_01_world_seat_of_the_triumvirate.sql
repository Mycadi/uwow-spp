-- UPDATES
update creature set movementType=0 where id=122313; 
update creature_template set flags_extra=2 where entry in (125872,122058); 
update creature_template set InhabitType=1,AIname='SmartAI',flags_extra=3,mechanic_immune_mask=579551227,unit_flags=0 where entry=122313;
update creature_template set mechanic_immune_mask=579551227 where entry=122716;
update creature_template set mechanic_immune_mask=613105375,flags_extra=3 where entry=122319;
update creature_template set mechanic_immune_mask=613105375,flags_extra=3 where entry=125340;
update creature_template set mechanic_immune_mask=646660095,flags_extra=3 where entry=122316;
update creature_template set mechanic_immune_mask=613105663,flags_extra=3 where entry=122056;
update creature_template set mechanic_immune_mask=613105663,flags_extra=3 where entry=124729;
update creature_template set InhabitType=1,AIname='SmartAI' where entry=124171;
update creature_template_wdb set classification=3,`TypeFlags`='4' where entry in (122313,122316,122056,124729);
update creature_template set faction=14 where entry=124427;
update creature_template_wdb SET TypeFlags2='1611661328' WHERE (`Entry`='124427');
update gameobject_template set flags=5 where entry in (273789,272062,273661);
update creature_template set unit_flags=131076,flags_extra=130 where entry=123008;
update creature_template set InhabitType=5,unit_flags=131078,flags_extra=2 where entry=125104;
update creature_template set InhabitType=5,unit_flags=131078,flags_extra=130 where entry=122826;
update creature_template set InhabitType=5,unit_flags=131078,flags_extra=2 where entry=122832;
update creature_template set unit_flags=33685510 where entry=125104;
update creature_template set gossip_menu_id=21383,npcflag=1 where entry=123743;
update creature_template set inhabitType=7 where entry=124266;
update creature_template set lootid=122313 where entry=122313;
update creature_template set lootid=122316 where entry=122316;
update creature_template set lootid=122056 where entry=122056;
update creature_template set lootid=124729 where entry=124729;
update creature_template set mechanic_immune_mask=613105663 where entry in (122827,124947,122423,124964,124967,122404,122478,125860,122405,122421,122408,122171,122403,
122413,122322,122398);
update creature_template set mechanic_immune_mask=646660095 where entry in (124745);

UPDATE `creature_template` SET `ScriptName`='boss_saprish' WHERE (`entry`='122316');
UPDATE `creature_template` SET `ScriptName`='npc_zuraal_walker' WHERE (`entry`='123744');
UPDATE `creature_template` SET `ScriptName`='npc_zuraal_alleria' WHERE (`entry`='123743');
UPDATE `creature_template` SET `ScriptName`='npc_saprish_rift_warden' WHERE (`entry`='122571');
UPDATE `creature_template` SET `ScriptName`='npc_saprish_conv_control' WHERE (`entry`='124276');
UPDATE `creature_template` SET `ScriptName`='npc_saprish_portal_event' WHERE (`entry`='123767');
UPDATE `creature_template` SET `ScriptName`='boss_zuraal_the_ascended' WHERE (`entry`='122313');
UPDATE `creature_template` SET `ScriptName`='npc_zuraal_coalesced_void' WHERE (`entry`='122716');
UPDATE `creature_template` SET `ScriptName`='npc_saprish_void_trap' WHERE (`entry`='124427');
UPDATE `creature_template` SET `ScriptName`='npc_sott_shadowguard_subjugator' WHERE (`entry`='124171');
UPDATE `creature_template` SET `ScriptName`='npc_saprish_darkfang' WHERE (`entry`='122319');
UPDATE `creature_template` SET `ScriptName`='npc_saprish_shadewing' WHERE (`entry`='125340');
UPDATE `creature_template` SET `ScriptName`='npc_saprish_staff' WHERE (`entry`='125131');
UPDATE `creature_template` SET `ScriptName`='npc_saprish_locus_walker_after_boss' WHERE (`entry`='125840');
UPDATE `creature_template` SET `ScriptName`='boss_viceroy_nezhar' WHERE (`entry`='122056');
UPDATE `creature_template` SET `ScriptName`='npc_nezhar_center_point',`unit_flags`='33685894' WHERE (`entry`='122832');
UPDATE `creature_template` SET `ScriptName`='npc_nezhar_tentacle' WHERE (`entry`='122827');
UPDATE `creature_template` SET `ScriptName`='npc_nezhar_void_flayer' WHERE (`entry`='124947');
UPDATE `creature_template` SET `ScriptName`='npc_nezhar_unstable_dark_matter' WHERE (`entry`='124964');
UPDATE `creature_template` SET `ScriptName`='npc_nezhar_grand_shadow_weaver' WHERE (`entry`='122423');
UPDATE `creature_template` SET `ScriptName`='npc_nezhar_shadow_weaver_essence' WHERE (`entry`='124967');
UPDATE `creature_template` SET `ScriptName`='npc_nezhar_shadowguard_voidtender' WHERE (`entry`='125615');
UPDATE `creature_template` SET `ScriptName`='npc_nezhar_shadowguard_voidbender' WHERE (`entry`='122404');
UPDATE `creature_template` SET `ScriptName`='npc_sott_void_discharge' WHERE (`entry`='122478');
UPDATE `creature_template` SET `ScriptName`='npc_sott_void_portal' WHERE (`entry`='125102');
UPDATE `creature_template` SET `ScriptName`='npc_sott_walker_after_nezhar' WHERE (`entry`='125099');
UPDATE `creature_template` SET `ScriptName`='npc_sott_lura_door' WHERE (`entry`='125104');
UPDATE `creature_template` SET `ScriptName`='boss_lura' WHERE (`entry`='124729');
UPDATE `creature_template` SET `ScriptName`='npc_lura_alleria' WHERE (`entry`='123187');
UPDATE `creature_template` SET `ScriptName`='npc_lura_intro_rift_warden' WHERE (`entry`='125860');
UPDATE `creature_template` SET `ScriptName`='npc_lura_great_warden' WHERE (`entry`='124745');
UPDATE `creature_template` SET `ScriptName`='npc_lura_void_portal' WHERE (`entry`='124734');
UPDATE `creature_template` SET `ScriptName`='npc_lura_spells_target' WHERE (`entry`='123008');
UPDATE `creature_template` SET `ScriptName`='npc_lura_waning_void' WHERE (`entry`='123050');
UPDATE `creature_template` SET `ScriptName`='npc_lura_alleria_outro' WHERE (`entry`='125871');
UPDATE `creature_template` SET `ScriptName`='npc_lura_remnant_of_anguish', faction=35, flags_extra=130 WHERE (`entry`='123054');
UPDATE `creature_model_info` SET `CombatReach`='4' WHERE (`DisplayID`='78182');
replace INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('1064300', 'at_zuraal_decimate');
replace INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('1079800', 'at_saprish_void_trap');
replace INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('245801', 'spell_ravaging_darkness_teleport');
replace INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('245802', 'spell_ravaging_darkness_pereodic');
replace INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('244916', 'spell_nezhar_void_lashing');
replace INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('245177', 'spell_lura_fragment_of_despire');
replace INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('249058', 'spell_lura_remnant_of_anguish');
replace INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('250318', 'spell_lura_dark_torrent');

-- INSTANCE
replace INTO `eventobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
-- ('10036', '1536', '1669', '8701', '8841', '1', '1', '', '5415.95', '10820.3', '20.15', '0'),
('10037', '1537', '1753', '8910', '8907', '8388868', '1', '', '5410.24', '10820.1', '20.44', '0'),
('12003', '1602', '1753', '8910', '8905', '8388868', '1', '', '5693.7', '10756.1', '23.3943', '5.97686'),
('12004', '1604', '1753', '8910', '8909', '8388868', '1', '', '6056.7', '10299.2', '21.24', '0'),
('10041', '1700', '1753', '8910', '8905', '8388868', '1', '', '5762.47', '10691.42', '5.26', '2.83305');

replace INTO `eventobject_template` (`entry`, `name`, `radius`, `SpellID`, `WorldSafeLocID`, `ScriptName`) VALUES 
-- ('1536', 'Argus Dungeon: Enter', '5', '0', '6048', ''),
('1537', 'Argus Dungeon: Exit', '5', '0', '6116', ''),
('1602', 'Argus Dungeon: Alleria start assault conversation', '4', '0', '0', 'eventobject_sott_alleria_conversation'),
('1604', 'Argus Dungeon: DataAdds', '7', '0', '0', 'SmartEventObject'),
('1700', 'SotT Saprish portal event', '46', '0', '0', 'eventobject_sott_saprish_portal_event');

insert ignore INTO `instance_template` (`map`, `bonusChance`, `script`) VALUES (1753, 0, 'instance_seat_of_the_triumvirate');

replace INTO `instance_encounters` (`entry`, `difficulty`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES 
('2066', '-1', '0', '122316', '0', 'Saprish');

insert ignore INTO `world_visible_distance` (`type`, `id`, `distance`, `comment`) VALUES 
(0, 1753, 320, 'The Seat Of The Triumvirate');

delete from game_tele where map=1753 and name='SeatOfTheTriumvirate';
SELECT @ID := `id`+1 FROM `game_tele` ORDER BY `game_tele`.`id` DESC limit 1;
insert ignore INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES
(@ID+0, 5430.36, 10816.56, 20.25, 6.01, 1753, 'SeatOfTheTriumvirate');

-- AT
UPDATE `areatrigger_template` SET `customEntry`='1064300' WHERE (`entry`='10643') AND (`spellId`='244579') AND (`customEntry`='15477');

replace INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES 
('10643', '1064300', '0', '1', '0', '4096', '244588', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Яд бездны'),
('10643', '1064300', '1', '42', '1', '4096', '244588', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Яд бездны'),
('10643', '1064300', '2', '5', '0', '4', '244300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Яд бездны'),
('10643', '1064300', '3', '8', '1', '8', '244588', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Яд бездны'),
('10798', '0', '0', '1', '0', '8', '246027', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Void Trap Enter'),
('11694', '0', '0', '1', '0', '8', '254021', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Темный покров'),
('10733', '0', '0', '5', '0', '8', '245242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Отголосок страдания'),
('10733', '0', '1', '2', '1', '8', '245242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Отголосок страдания'),
('10733', '0', '2', '8', '1', '8', '245242', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Отголосок страдания');

replace INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES 
('10643', '244579', '1064300', '0', '0', '0', '0', '100', '0', '0', '0', '0', '0', '0', '0', '0'),
('10798', '245903', '0', '0', '0', '0', '2500', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('10733', '245241', '0', '0', '0', '0', '1500', '1000', '0', '0', '0', '0', '0', '0', '0', '0');

delete from areatrigger_template where entry in (10798,10845);
insert INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES 
('10798', '245903', '1079800', '245903', '0', '3', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Void Trap'),
('10845', '0', '0', '0', '0', '100', '100', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-7', '1', '0', 'Энтропическая сила');

-- SPELLS
delete from spell_linked_spell where spell_trigger in (245774,248128);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `effectMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `param`, `randList`, `comment`) VALUES 
('245774', '245775', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '', 'Dark Break');

delete from spell_target_filter where spellId in (246922,249952,250654,246860,246026,247206,247245,249967,245038,248460,245164,245235,249009,244653);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES 
('246922', '7', '14', '122313', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Argus Dungeon Boss Visual'),
('250654', '7', '14', '126211', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Argus Dungeon Trash Visual'),
('246860', '7', '14', '124266', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Argus Dungeon Rift Missile'),
('249952', '7', '14', '127008', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Argus Dungeon Destroy the Wall, Start the Assault'),
('246026', '8', '3', '0', '16', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Void Trap'),
('247206', '7', '14', '124427', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Detonate Void Traps'),
('247245', '16', '24', '-1', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Призрачный удар Not Tank'),
('249967', '7', '14', '125131', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Исчезновение посоха'),
('245038', '7', '14', '122826', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Призыв щупалец'),
('245164', '7', '14', '123008', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Fragment of despair'),
('245235', '7', '14', '123008', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'From the void'),
('249009', '7', '14', '123054', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Grand shift'),
('244653', '15', '1', '-244061', '0', '0', '0', '0', '7', '0', '0', '0', '0', '0', 'Сосредоточение внимания'),
('248460', '7', '14', '125104', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', 'Open Door Barrier');

delete from spell_dummy_trigger where spell_id in (246860,248128,245800,245038,245164,245235);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES 
('248128', '248129', '11', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', 'Darkened Remnant'),
('245800', '245801', '11', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', 'Ravaging Darkness'),
('246860', '246861', '11', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', 'Wave Rift Missile'),
('245164', '245165', '11', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', 'Fragment of despair'),
('245235', '247911', '11', '0', '0', '0', '0', '0', '0', '7', '8', '0', '0', 'From the void'),
('245038', '244770', '11', '0', '0', '0', '0', '0', '0', '1', '8', '0', '0', 'Nezhar Summon Tentacles');

-- TRASH ETC.
update creature_template set ainame='SmartAI' where entry in (124171,122322,122716,122482,122421,122398,122571,125981,127008,125857);
update creature_template set speed_walk=0.5,speed_run=0.5 where entry=122716;

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (124171,122322,122482,122316,122421,122398,122571,125981,127008,127008*100,125857);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1604) and source_type=10;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(1604, 10, 0, 0, 75, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 11, 125857, 61, 0, 0, 0, 0, 0, "SmartAI"),

(125857, 0, 0, 0, 1, 0, 100, 0, 5000, 5000, 12000, 12000, 49, 0, 0, 0, 0, 0, 0, 18, 30, 0, 0, 0, 0, 0, 0, "SmartAI"),
(125857, 0, 1, 0, 38, 0, 100, 1, 1, 1, 90000, 90000, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 6030.31, 10272.46, 17.89, 0.8, "SmartAI"),

(122398, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 11, 248055, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(122398, 0, 1, 0, 0, 0, 100, 0, 20000, 22000, 35000, 35000, 11, 245778, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(122398, 0, 2, 0, 0, 0, 100, 0, 10000, 15000, 25000, 30000, 11, 245774, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),

(127008, 0, 0, 0, 8, 0, 100, 0, 249952, 0, 0, 0, 80, 127008*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(127008*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 53, 1, 127008, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(127008*100, 9, 1, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 9, 0, 0, 0, 0, 0, 0, 15, 273789, 30, 0, 0, 0, 0, 0, "SmartAI"),
(127008*100, 9, 2, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 45, 2, 2, 0, 0, 0, 0, 11, 123743, 30, 0, 0, 0, 0, 0, "SmartAI"),

(125981, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 11, 250193, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(125981, 0, 1, 0, 0, 0, 100, 0, 10000, 12000, 20000, 25000, 11, 254727, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(125981, 0, 2, 0, 1, 0, 100, 0, 2000, 2000, 10000, 10000, 49, 0, 0, 0, 0, 0, 0, 18, 40, 0, 0, 0, 0, 0, 0, "SmartAI"),

(122571, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 25000, 30000, 11, 248128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(122571, 0, 1, 0, 0, 0, 100, 0, 12000, 15000, 20000, 25000, 11, 248133, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),

(122421, 0, 0, 0, 1, 0, 100, 0, 2000, 2000, 30000, 30000, 11, 250654, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(122421, 0, 1, 0, 0, 0, 100, 0, 15000, 15000, 20000, 25000, 11, 248055, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(122421, 0, 2, 0, 0, 0, 100, 0, 10000, 15000, 20000, 25000, 11, 248067, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),

(122482, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 11, 244618, 7, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),

(122322, 0, 0, 0, 0, 0, 100, 0, 7000, 10000, 15000, 25000, 11, 245735, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "SmartAI"),
(122322, 0, 1, 0, 0, 0, 100, 0, 12000, 15000, 18000, 25000, 11, 245727, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, "SmartAI");

-- WP
replace INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES 
(127008, 1, 5701.31, 10760.50, 24.26, ''),
(127008, 2, 5700.26, 10763.14, 31.65, ''),
(127008, 3, 5700.51, 10760.23, 37.0, ''),
(127008, 4, 5699.0, 10753.0, 37, '');

-- HP
-- UPDATE `creature_template_wdb` SET `HpMulti`=31 WHERE entry=125860;
-- UPDATE `creature_template_wdb` SET `HpMulti`=23 WHERE entry=122423;
-- UPDATE `creature_template_wdb` SET `HpMulti`=12.3 WHERE entry=122404;
-- UPDATE `creature_template_wdb` SET `HpMulti`=2.8 WHERE entry=124947;
-- UPDATE `creature_template_wdb` SET `HpMulti`=4.2 WHERE entry=122478;
-- UPDATE `creature_template_wdb` SET `HpMulti`=24.8 WHERE entry=125860;
-- UPDATE `creature_template_wdb` SET `HpMulti`=15.2 WHERE entry=124745;
-- UPDATE `creature_template_wdb` SET `HpMulti`=164.7 WHERE entry=124729;
-- UPDATE `creature_template_wdb` SET `HpMulti`=162.1 WHERE entry=122313;
-- UPDATE `creature_template_wdb` SET `HpMulti`=162 WHERE entry=122316;
-- UPDATE `creature_template_wdb` SET `HpMulti`=162 WHERE entry=122319;
-- UPDATE `creature_template_wdb` SET `HpMulti`=162 WHERE entry=125340;
-- UPDATE `creature_template_wdb` SET `HpMulti`=95.8 WHERE entry=122056;

replace INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES 
('125860', '2', '1', '22.8'),
('125860', '23', '1', '31'),
('122423', '2', '1', '12'),
('122423', '23', '1', '23'),
('122404', '2', '1', '8.2'),
('122404', '23', '1', '12.3'),
('124947', '2', '1', '1.8'),
('124947', '23', '1', '2.8'),
('122478', '2', '1', '3.5'),
('122478', '23', '1', '4.2'),
('125860', '2', '1', '20'),
('125860', '23', '1', '24.8'),
('124745', '2', '1', '13.1'),
('124745', '23', '1', '15.2'),

('124729', '2', '1', '115.6'), -- NPC_LURA
('124729', '23', '1', '164.7'), -- NPC_LURA
('122313', '2', '1', '126'), -- NPC_ZURAAL
('122313', '23', '1', '162'), -- NPC_ZURAAL
('122316', '2', '1', '105'), -- NPC_SAPRISH
('122316', '23', '1', '162'), -- NPC_SAPRISH
('122319', '2', '1', '105'), -- NPC_SAPRISH_DARKFANG
('122319', '23', '1', '162'), -- NPC_SAPRISH_DARKFANG
('125340', '2', '1', '105'), -- NPC_SAPRISH_SHADEWING
('125340', '23', '1', '162'), -- NPC_SAPRISH_SHADEWING
('122056', '2', '1', '73.3'), -- NPC_NEZHAR
('122056', '23', '1', '95.8'); -- NPC_NEZHAR

-- PHASES
delete from phase_definitions where zoneID=8910;
INSERT INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `PreloadMapID`, `VisibleMapID`, `flags`, `comment`) VALUES 
('8910', '1', '1', '1000', '0', '0', '24', 'ARGUS DUNGEON: BASE PHASE'),
('8910', '2', '1', '8682', '0', '0', '16', 'ARGUS DUNGEON: FIRST BOSS ADDS PHASE'),
('8910', '3', '1', '8683', '0', '0', '16', 'ARGUS DUNGEON: ALLERIA_1 PHASE');

delete from conditions where SourceTypeOrReferenceId=23 and SourceGroup=8910 and SourceEntry in (3,2);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
('23', '8910', '2', '0', '0', '1', '0', '244061', '0', '0', '0', '0', '', NULL),
('23', '8910', '3', '0', '0', '13', '0', '0', '3', '2', '0', '0', '', NULL);

-- TEXTS
set @GROUP_ID=0;
replace INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(122056, @GROUP_ID+0, 0, 'Я погружу вас в сумрак!', 14, 0, 100, 0, 0, 87091, 134199, 'Наместник Незжар to Player'), -- aggro
(122056, @GROUP_ID+0, 1, 'Бездна зовет меня!', 14, 0, 100, 0, 0, 87090, 134198, 'Наместник Незжар to Player'), -- aggro
(122056, @GROUP_ID+1, 0, 'Нет! Тьма... должна быть моей...', 14, 0, 100, 0, 0, 87092, 134200, 'Наместник Незжар to Player'), -- death
(122056, @GROUP_ID+1, 1, 'Моя смерть... ничего не значит. Бездна... поглотит все.', 14, 0, 100, 0, 0, 87093, 134201, 'Наместник Незжар to Player'), -- death
(122056, @GROUP_ID+2, 0, 'Прощайтесь с жизнью!', 14, 0, 100, 0, 0, 87094, 134202, 'Наместник Незжар to Player'),  -- long cast
(122056, @GROUP_ID+2, 1, 'Вглядитесь в бездну и падите духом!', 14, 0, 100, 0, 0, 87095, 134203, 'Наместник Незжар to Player'), -- long cast
(122056, @GROUP_ID+3, 0, 'Тьма забрала тебя.', 14, 0, 100, 0, 0, 87097, 134205, 'Наместник Незжар to Player'), -- kill
(122056, @GROUP_ID+3, 1, 'Твой свет померк.', 14, 0, 100, 0, 0, 87096, 134204, 'Наместник Незжар to Player'), -- kill


(122313, @GROUP_ID+0, 0, 'Тьма, дай мне силу!', 14, 0, 100, 53, 0, 87135, 0, 'Зураал Перерожденный to Player'),
(122313, @GROUP_ID+1, 0, 'Я погружу тебя во тьму!', 14, 0, 100, 0, 0, 87138, 0, 'Зураал Перерожденный to Player'),
(122313, @GROUP_ID+2, 0, 'Я... был неправ. Бездна... слаба.', 14, 0, 100, 0, 0, 0, 0, 'Зураал Перерожденный to Player'),
(122313, @GROUP_ID+3, 0, 'Ничтожество!', 14, 0, 100, 0, 0, 87132, 0, 'Зураал Перерожденный to Player'),

(122316, @GROUP_ID+0, 0, 'Мои питомцы голодны.', 14, 0, 100, 0, 0, 87075, 134207, 'Сарпиш to Player'), -- aggro
(122316, @GROUP_ID+1, 0, 'Я этого... не предвидел.', 14, 0, 100, 0, 0, 87077, 134212, 'Сарпиш to Player'), -- death
(122316, @GROUP_ID+1, 1, 'Банальная... тактическая ошибка...', 14, 0, 100, 0, 0, 87076, 134210, 'Сарпиш to Player'), -- death
(122316, @GROUP_ID+2, 0, 'Ты мне не ровня.', 14, 0, 100, 0, 0, 87081, 134216, 'Сарпиш to Player'), -- kill
(122316, @GROUP_ID+3, 1, 'Я всегда на шаг впереди!', 14, 0, 100, 0, 0, 87078, 134214, 'Сарпиш'),  -- charges
(122316, @GROUP_ID+3, 0, 'Я слишком быстр для вас!', 14, 0, 100, 0, 0, 87079, 134213, 'Сарпиш to Player'), -- charges
(122316, @GROUP_ID+4, 0, '|TInterface\Icons\ABILITY_ROGUE_SHADOWSTEP:20|tСарпиш собирается поразить вас |cFFFF0000|Hspell:247246|h[Призрачным ударом]|h|r!', 42, 0, 100, 0, 0, 87079, 133238, 'Сарпиш to Player'), -- charges announce

(123187, @GROUP_ID+0, 0, 'Берегись!', 14, 0, 100, 0, 0, 87492, 135517, 'Аллерия Ветрокрылая to Л''ура'),

(124745, @GROUP_ID+0, 0, '|TInterface\\ICONS\\SPELL_SHADOW_PAINSPIKE:20|tСтраж огромного портала Бездны начинает произносить заклинание |cFFFF0000|Hspell:245164|h["Обрывок отчаяния"]|h|r!', 42, 0, 100, 0, 0, 87135, 135144, 'Страж огромного портала Бездны to Player'),

(123743, @GROUP_ID+0, 0, 'Сюда, герои!', 14, 0, 100, 0, 0, 87562, 0, 'Аллерия Ветрокрылая to Player'),
(123743, @GROUP_ID+1, 0, 'За мной!', 14, 0, 100, 0, 0, 87563, 0, 'Аллерия Ветрокрылая to Player'),
(123743, @GROUP_ID+2, 0, 'Выясните, что они задумали... И остановите их.', 14, 0, 100, 1, 0, 87561, 0, 'Аллерия Ветрокрылая to Player'),

(124276, @GROUP_ID+0, 0, '|TInterface\\ICONS\\SPELL_WARLOCK_DEMONICPORTAL_PURPLE:20|tУ нижних врат Пустоты появляется прорыв Бездны!', 41, 0, 100, 0, 0, 0, 133029, 'Контроллер обращения to Player'),
(124276, @GROUP_ID+1, 0, '|TInterface\\ICONS\\SPELL_WARLOCK_DEMONICPORTAL_PURPLE:20|tУ нижней бреши Бездны появляется прорыв Бездны!', 41, 0, 100, 0, 0, 0, 133031, 'Контроллер обращения to Player'),
(124276, @GROUP_ID+2, 0, '|TInterface\\ICONS\\SPELL_WARLOCK_DEMONICPORTAL_PURPLE:20|tНа осыпающихся руинах появляется прорыв Бездны!', 41, 0, 100, 0, 0, 0, 133028, 'Контроллер обращения to Player'),

(125099, @GROUP_ID+0, 0, 'Аллерия, используй силу порталов! Сделай ее своим оружием!', 14, 0, 100, 0, 0, 88269, 132304, 'Странник to Аллерия Ветрокрылая'),

(125840, @GROUP_ID+0, 0, 'Наконец-то посох станет моим. Спасибо вам, герои.', 12, 0, 100, 0, 0, 87825, 135169, 'Странник to Посох Сарпиша');


-- SPAWNS
delete from creature where map=1753;
delete from gameobject where map=1753;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`) VALUES 
('12931188', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6008.9', '10264.1', '15.9656', '0.842141', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12931190', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6006.32', '10265', '17.1417', '0.869631', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12931192', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6020.15', '10253', '15.597', '0.846069', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12931194', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6021.34', '10250.7', '15.557', '0.861777', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12931196', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6022.08', '10249.7', '15.5129', '0.732186', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913361', '122056', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6140.17', '10391.4', '19.8644', '3.05452', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913363', '122316', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5914.43', '10696.1', '13.7471', '3.98588', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12930378', '122423', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6102.94', '10356.9', '19.7883', '2.01217', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913362', '122313', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5510.34', '10800.2', '21.6154', '1.30955', '7200', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913365', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5468.86', '10813.4', '17.2517', '4.09365', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913366', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5466.92', '10808.6', '17.2535', '1.00623', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913367', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5568.46', '10902.6', '11.8287', '0.276491', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913368', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5540.39', '10886.2', '20.1158', '4.98512', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913369', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5526.17', '10884.6', '20.1682', '3.44539', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913370', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5448.35', '10758.8', '20.1964', '4.52456', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913371', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5495.57', '10725.2', '20.7148', '3.76646', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913372', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5520.62', '10788', '17.2778', '0.812773', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913373', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5590.29', '10787.1', '20.1615', '3.05852', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913374', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5577.17', '10904', '10.6832', '1.01299', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913375', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5472.91', '10893', '16.5767', '4.68309', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913376', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5449.86', '10751.2', '20.1964', '2.8493', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913377', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5477.17', '10793.2', '17.2924', '3.58902', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913378', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5517.17', '10785.6', '17.2778', '0.758383', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913379', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5572.64', '10897.5', '13.4817', '2.29892', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913380', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5471.27', '10901', '14.3324', '4.12424', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913381', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5464.29', '10736.7', '20.1964', '5.02733', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913382', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5471.6', '10826.5', '17.2924', '3.11577', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913383', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5547.09', '10853.7', '20.3176', '0.42965', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913384', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5480.3', '10826.4', '17.2924', '3.10854', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913385', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5496.18', '10913.9', '13.676', '5.06474', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913386', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5503.89', '10872.9', '20.1949', '1.86561', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913387', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5467.47', '10899', '13.8346', '4.03695', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913388', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5473.94', '10732.9', '20.2252', '3.30777', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913389', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5582.27', '10750.8', '20.2218', '1.248', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913390', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5544.77', '10864.9', '20.7352', '5.6613', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913391', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5502.29', '10913.2', '13.4243', '4.58403', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913392', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5493.07', '10875.9', '20.7452', '0.37212', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913393', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5538.47', '10735.2', '20.2308', '0.55099', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913408', '122398', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5498.3', '10910.2', '13.9223', '0.131274', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913412', '122401', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5960.92', '10600.8', '14.7957', '4.88021', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913414', '122401', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6136.32', '10426', '19.7571', '5.54696', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913413', '122401', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5944.53', '10516.1', '14.7836', '2.47606', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913415', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5603.16', '10694', '5.86632', '3.72009', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913421', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5796.42', '10614.6', '4.5499', '1.53932', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913424', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5916.09', '10570.6', '15.1154', '2.26075', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913425', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5952.71', '10620.9', '13.9207', '4.29224', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913436', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6100.47', '10476.3', '24.7222', '2.18016', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913437', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6065.03', '10440.5', '25.1671', '2.07503', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913439', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6102.75', '10395.5', '19.7456', '1.13155', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913438', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6104.14', '10479.9', '24.1649', '2.18016', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913394', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5491.04', '10865.1', '20.1674', '0.310249', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913441', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6150.18', '10424.5', '19.7208', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913442', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6111.25', '10396.9', '19.7456', '1.09346', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913444', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6121.98', '10345.7', '19.8936', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913446', '122405', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5984.51', '10706.3', '12.6747', '4.3185', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913447', '122405', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5971.28', '10477.9', '21.3634', '2.22605', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913448', '122405', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6085.33', '10496.7', '23.9855', '3.53058', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913450', '122405', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6098.96', '10481.7', '23.97', '5.13203', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913451', '122407', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5661.74', '10619.7', '6.98469', '1.70451', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913977', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5930.42', '10717.1', '15.5805', '0.436353', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913452', '122407', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5733', '10653.5', '5.62867', '1.53932', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913626', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6132.62', '10384.7', '19.8974', '6.22983', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913454', '122407', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5880.41', '10727.8', '13.747', '5.24518', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913460', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5782.83', '10769.5', '7.24464', '1.57107', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913461', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5819.86', '10722.8', '8.61906', '1.31883', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913462', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5821.77', '10640.8', '7.0239', '3.10179', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913484', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5624.4', '10656.2', '4.90734', '4.01697', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913485', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5681.01', '10693.3', '5.35921', '2.12021', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913488', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5737.19', '10653', '5.62867', '1.53932', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913489', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5775.76', '10769', '6.20734', '3.50752', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913510', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5465.96', '10849.6', '20.2697', '1.8834', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913511', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5583.51', '10752.4', '20.2165', '4.29101', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913512', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5431.5', '10868', '21.7513', '0.454876', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913513', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5542.12', '10769.4', '17.3143', '4.94722', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913515', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5439.5', '10873.7', '20.7551', '4.39511', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913516', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5493.13', '10723.8', '21.2581', '2.0504', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913517', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5463.15', '10858.1', '20.1597', '4.38102', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913522', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5609.02', '10693.9', '5.87944', '5.69967', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913459', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5793.48', '10777.3', '5.95053', '6.06213', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913458', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5553.92', '10604.2', '7.18419', '1.86273', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913457', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5632.77', '10646.7', '5.02292', '4.90465', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913456', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5594.88', '10657.6', '5.7676', '4.8498', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913455', '122407', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5864.16', '10689.6', '13.7471', '5.60758', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913453', '122407', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5816.31', '10677', '8.72378', '3.13839', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913543', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5843.95', '10697.3', '12.988', '0.870209', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913544', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5841.33', '10685.3', '12.4023', '4.74482', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913550', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '6045.05', '10573', '23.4013', '1.83992', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913551', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5873.1', '10459.6', '8.74779', '1.66589', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913552', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5871.46', '10451.3', '8.30101', '0.871018', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913553', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5878.42', '10452.9', '8.94853', '2.36792', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913554', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5984.79', '10497.3', '19.0246', '6.25556', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913555', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5972.36', '10492.8', '19.8422', '2.87373', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913556', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5985.34', '10487.7', '20.3927', '1.23048', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913557', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6057.31', '10506.9', '19.9802', '4.87437', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913558', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6025.61', '10490.5', '21.3155', '2.59763', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913560', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6014.19', '10496.7', '19.8833', '3.83828', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913559', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6050.5', '10497.3', '20.2091', '0.517081', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0'),
('12913563', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6074.3', '10469.4', '23.3597', '0.602588', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0'),
('12913562', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6023.62', '10447.6', '19.294', '5.20372', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913561', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6007.28', '10454', '20.2473', '3.98796', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913564', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6087.62', '10475.4', '23.7665', '5.9982', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913565', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6084.49', '10462.5', '24.6258', '2.88835', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0'),
('12913566', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6084.96', '10397.3', '20.3078', '4.02395', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913567', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6095.03', '10403', '20.0607', '3.93199', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782470', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5517.79', '10837.8', '20.1518', '0.533659', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782458', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5474.73', '10815.9', '17.1672', '0.376588', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913627', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6125.15', '10370.5', '19.9131', '6.22983', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913624', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6145.65', '10379.5', '19.9125', '5.03882', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913623', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6118.73', '10367.4', '19.8956', '1.17656', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913621', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6152.31', '10395.6', '19.8556', '3.8089', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913620', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6117.62', '10393.3', '19.7905', '0.721143', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913619', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6125.71', '10391.6', '19.8781', '5.03882', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913618', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6145', '10402', '19.8483', '3.8089', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913617', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6106.16', '10388.8', '19.8359', '0.721143', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913616', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6140.9', '10413.9', '19.8172', '5.03882', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913615', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6152.99', '10408.9', '19.816', '4.26432', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913614', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6118.79', '10381.2', '19.9118', '1.17656', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913613', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6109.02', '10381.5', '19.9762', '0.721143', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913612', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6136.43', '10406.6', '19.8441', '3.8089', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913611', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6134.67', '10393.2', '19.8764', '4.26432', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913602', '122560', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5532.75', '10719.2', '20.4932', '1.08538', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
('12913601', '122560', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5535.78', '10721.3', '20.784', '1.08538', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0'),
('12782460', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5485.86', '10811.7', '17.1672', '1.2955', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782434', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5542.32', '10782.2', '17.1466', '4.16221', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782436', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5547.64', '10768.9', '17.2268', '5.05363', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782440', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5522.31', '10766.2', '17.1832', '3.24722', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782442', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5522.21', '10777.6', '17.1666', '1.75496', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782444', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5509.46', '10767', '17.1795', '3.83234', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782446', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5500.34', '10771', '17.1688', '2.70137', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782448', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5496.01', '10782.1', '17.1688', '3.05087', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782450', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5482.88', '10777.6', '17.1688', '3.47106', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782454', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5471.28', '10799', '17.1667', '2.52072', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782456', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5465.64', '10788.1', '18.1076', '3.89125', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913980', '126249', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6087.57', '10498.1', '24.583', '0', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913979', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5933.76', '10724.7', '21.5641', '0.436353', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913978', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5930.79', '10725.9', '23.8824', '0.60399', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913610', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6128.86', '10400.3', '19.8579', '3.8089', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913608', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6129.95', '10414.8', '19.8242', '5.03882', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913609', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6115.79', '10405.6', '20.0174', '6.22983', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12914819', '123744', '1753', '8910', '8905', '8388868', '1', '8683', '0', '0', '5688.64', '10748.6', '23.3046', '2.34083', '300', '0', '0', '1714790', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782462', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5488.67', '10822.1', '17.1672', '1.66857', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782468', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5509.72', '10833.1', '18.0795', '0.0349307', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782466', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5496.84', '10832.8', '17.3112', '6.05894', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913628', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6160.22', '10400.7', '19.7812', '4.26432', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913629', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6132.56', '10377', '19.9044', '5.03882', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913635', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6161.1', '10362.4', '19.908', '3.0344', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913636', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6134.5', '10364.8', '19.9026', '1.17656', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913637', '122826', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '6168.68', '10382.5', '19.7849', '3.0344', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913638', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6140.54', '10367.2', '19.9258', '1.95106', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913639', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6149.71', '10354.9', '19.7621', '1.95106', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913640', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6138.73', '10355.2', '19.7465', '1.95106', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913641', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6164.97', '10391.1', '19.8051', '3.0344', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913643', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6010.44', '10248', '14.8427', '0.147276', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913644', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6003.98', '10254.2', '15.1656', '0.446966', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913645', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6007.93', '10243.7', '14.3903', '0.286445', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913646', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5989.92', '10261.2', '16.0747', '0.121904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913647', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5997.75', '10251.1', '15.2435', '0.365993', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913648', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6018.87', '10231.3', '15.215', '0.121904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913649', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6004.68', '10247.8', '14.5476', '1.07903', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913650', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5983.82', '10255.1', '14.1074', '5.67377', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913651', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5988.17', '10259.4', '15.6838', '0.121904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913652', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6004.13', '10241.8', '14.0582', '0.286445', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913653', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5985.23', '10248.8', '13.6963', '5.59279', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913654', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6009.05', '10226.1', '13.1403', '6.1054', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913655', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5990.17', '10248.1', '13.9031', '0.121904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913656', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6000.98', '10238.2', '13.6266', '0.132079', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913657', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6002.29', '10232.6', '13.3156', '0.132079', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913658', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6005.24', '10232.5', '13.4597', '5.20442', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913659', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5993.93', '10251.8', '15.0205', '0.365993', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913660', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6009.65', '10232', '13.9731', '5.28539', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913661', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5992.35', '10240.5', '13.3776', '0.924668', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913662', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5992.96', '10247.2', '13.97', '0.446966', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913663', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6014.54', '10230.7', '14.5486', '5.28539', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913664', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5995.63', '10235.9', '13.3458', '0.132079', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913665', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5981.97', '10254.3', '13.4801', '5.34871', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913666', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6006.46', '10235', '13.8261', '4.96033', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913667', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6010.59', '10236.7', '14.7966', '4.96033', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913668', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5997.62', '10242.5', '13.795', '0.924668', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913669', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6012.24', '10226.7', '13.3454', '0.121904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913670', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6000.65', '10245.8', '14.193', '1.07903', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913671', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6018.95', '10229', '15.0221', '5.20442', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913672', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6013.57', '10223.9', '13.1999', '5.28539', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913673', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5991.33', '10244', '13.6461', '0.924668', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913674', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6010.51', '10223', '12.9767', '0.121904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913675', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5980.11', '10251.3', '13.6358', '4.5287', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913676', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5995.48', '10235.9', '13.3409', '0.132079', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913677', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5997.43', '10230.7', '13.8259', '0.132079', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913678', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6011.4', '10220.1', '12.8985', '0.0663026', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913679', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5981.91', '10247.8', '13.461', '0.121904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913680', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5987.57', '10243.1', '13.5777', '0.924668', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913681', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5979.34', '10250.1', '13.4801', '5.59279', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913682', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6006.32', '10224.5', '12.8853', '0.147276', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913683', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5992.23', '10211.6', '13.7475', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913684', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5982.82', '10233.7', '14.9591', '0.792589', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913686', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5991.87', '10228.2', '13.4801', '0.924668', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913416', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5590.92', '10651.9', '6.18403', '1.17472', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913975', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5927.86', '10717.8', '24.1166', '0.60399', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913694', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5988.66', '10233.9', '13.4801', '0.924668', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913695', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5990.19', '10222.9', '14.5433', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913696', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5984.24', '10237.6', '13.4801', '5.34871', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913697', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5966.15', '10236.5', '13.8953', '0.792589', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913698', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6002.62', '10223.7', '12.7755', '0.0663026', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913992', '127466', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6098.23', '10435.5', '29.3932', '0', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913994', '128171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5816.05', '10563.7', '2.36783', '0.710013', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913395', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5565.9', '10724.7', '21.3804', '1.45407', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913411', '122401', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5661.52', '10685.8', '5.65455', '0.591766', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913410', '122398', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5447.37', '10754.1', '20.1964', '0.131274', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913409', '122398', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5551.43', '10859.8', '20.2349', '3.1209', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913440', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6138.77', '10423.5', '19.7558', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913742', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5758.85', '10694.5', '36.5564', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913743', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5570.95', '10595.4', '34.5424', '5.79068', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913744', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5761.18', '10694.9', '24.3737', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913745', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5761.69', '10698.5', '28.1891', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913625', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6114.4', '10372.2', '19.9032', '0.721143', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913751', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5647.75', '10683.7', '33.2046', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913753', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5573.73', '10584.8', '43.1723', '5.79068', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913752', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5651.07', '10682.8', '36.8766', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913754', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5573.78', '10592.8', '46.3836', '5.79068', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913757', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5650.45', '10674.4', '34.4435', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913755', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5644.61', '10675.8', '39.2903', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913759', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5565.12', '10588.6', '40.2847', '5.79068', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913758', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5645.48', '10675', '29.213', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913771', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5875.05', '10467.5', '37.8112', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913772', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5867.35', '10460.4', '35.7169', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913773', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5870.91', '10459.8', '49.8774', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913774', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5978.28', '10635.4', '53.9837', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913775', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5874.29', '10463.6', '52.1862', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913776', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5981.38', '10637.6', '34.7285', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913777', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5982.85', '10641.6', '46.6913', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913778', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5876.08', '10457.2', '40.3192', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913779', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5982.01', '10633.2', '49.8547', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913780', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5984.29', '10633.6', '42.2461', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913781', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5985.5', '10636.5', '56.7654', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913782', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5985.86', '10641.2', '41.5154', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913783', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6023.38', '10580.3', '65.4423', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913784', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6018.45', '10573.7', '59.1541', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913785', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6024.86', '10571.7', '48.6163', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913786', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6015.89', '10581', '48.7225', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913787', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6029.86', '10582', '56.034', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913788', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6023.95', '10578.2', '53.7614', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913789', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6018.15', '10588.8', '40.6223', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913790', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6031.91', '10577.1', '53.0079', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913791', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6029.82', '10569.7', '39.6655', '4.33654', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913792', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5916.36', '10709.6', '50.0721', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913793', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5919.46', '10705.8', '39.5068', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913794', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5921.52', '10711.8', '33.0417', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913795', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5923.59', '10709.7', '46.2664', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913796', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5919.45', '10701.9', '42.2968', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913797', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5915.89', '10702.5', '38.3468', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913798', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5924.62', '10699.4', '43.2245', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913799', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5922.83', '10705.7', '38.7571', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913800', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5915.15', '10705.9', '45.8422', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913802', '124729', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5979.28', '10220.4', '14.2861', '0.793852', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913805', '124947', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6048.72', '10477.7', '20.6786', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913806', '124947', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6058.08', '10463.1', '21.2929', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913807', '124947', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6139', '10428.2', '19.7406', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913808', '124947', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6145.49', '10425', '19.7309', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913809', '124947', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6151.19', '10419.3', '19.7534', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913810', '124947', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6128.55', '10351.4', '19.9122', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913811', '124947', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6118.87', '10350.6', '19.8558', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913817', '125104', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6076.19', '10319.4', '34.1121', '0.865414', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913818', '125493', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5489.76', '10427.9', '-98.0868', '4.15065', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913819', '125493', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5693.04', '10805.4', '18.4525', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913820', '125493', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5640.47', '10695.4', '-18.2059', '4.14874', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913821', '125493', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5646.45', '10691.6', '-18.2059', '4.14888', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913823', '125493', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5681.02', '10677.3', '7.6121', '1.90929', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913824', '125493', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5732.64', '10770.7', '6.47086', '4.60935', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913825', '125493', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5749.74', '10818.7', '9.15095', '4.41077', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913826', '125493', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5818.25', '10807.9', '-65.9523', '5.62034', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913827', '125493', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5841.46', '10862.2', '-55.4879', '2.79715', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913828', '125493', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5839.03', '10839.1', '-54.4879', '2.84155', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913829', '125495', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5525.85', '10907.3', '14.8373', '1.0402', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913830', '125495', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5577.94', '10889.1', '16.3889', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913831', '125495', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5477.41', '10891.2', '17.6205', '3.60032', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913832', '125495', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5462', '10906.9', '11.5709', '0.288257', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913833', '125495', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5603.66', '10885.6', '13.5417', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913834', '125495', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5505.04', '10917.9', '12.3219', '5.34528', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913835', '125495', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5570.01', '10904.8', '10.8473', '0.275215', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913836', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5691.06', '10775.2', '42.0085', '2.66679', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913837', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5694.79', '10724', '19.1395', '4.73522', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913838', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5710.5', '10781.4', '19.0959', '5.74434', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913839', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5710.95', '10825.4', '9.21939', '6.25123', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913840', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5694.93', '10671.5', '7.3256', '4.94554', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913841', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5737.5', '10678.6', '5.38954', '1.13267', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913842', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5763.61', '10795.3', '5.63554', '4.39509', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913843', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5728.77', '10661.1', '6.9109', '1.40231', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913844', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5688.54', '10637.5', '7.7307', '3.90742', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913845', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5763.92', '10696.7', '5.38954', '0.644052', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913846', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5789.83', '10748.7', '21.3523', '3.34077', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913847', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5789.02', '10794', '6.18222', '0.252763', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913848', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5777.23', '10707.9', '5.40807', '0.283201', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913849', '125495', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5802.05', '10811', '-369.996', '3.14159', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913850', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5789.18', '10775.2', '6.74582', '3.21297', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913851', '125495', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5786.97', '10812.2', '-369.996', '3.14159', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913852', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5824.99', '10777', '3.13765', '0.0638224', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913853', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5829.24', '10789.1', '1.06062', '2.81726', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913854', '125495', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5799.75', '10860.1', '-369.996', '3.14159', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913855', '125495', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5831.7', '10841.5', '-369.996', '3.14159', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913856', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5866.12', '10740.3', '14.8738', '1.46848', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913857', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5853.24', '10800', '-369.996', '3.14159', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913858', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5886.73', '10742.6', '13.7993', '3.94037', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913859', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5901.48', '10755.7', '14.3673', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913860', '125495', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5938.45', '10776.5', '0.725694', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913861', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5945.02', '10757.5', '4.37311', '0.218844', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913862', '125495', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5940.79', '10783.7', '2.64236', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913863', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5939.33', '10715.8', '13.7464', '5.53553', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913864', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5960.44', '10705.5', '13.7464', '0.398462', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913865', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5965.06', '10700.2', '14.068', '0.973165', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913866', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5960.94', '10754.7', '4.12311', '0.970255', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913867', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5964.29', '10749.5', '4.12311', '2.01932', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913868', '125495', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5959.72', '10778.7', '4.0434', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913869', '125495', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6018.82', '10746.2', '4.3656', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913870', '125495', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5853.3', '10610.7', '13.3788', '4.16472', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913871', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5719.96', '10611.8', '-13.3556', '3.7479', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913872', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5735.82', '10609.9', '-13.2936', '0.144767', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913873', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5755.63', '10617.4', '-1.97639', '2.89866', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913874', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5819.17', '10630.4', '7.80014', '4.78268', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913875', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5766.65', '10607', '-10.3378', '1.30722', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913876', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5805.21', '10629', '6.53757', '1.09751', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913877', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5817.54', '10630', '7.64316', '3.41918', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913878', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5778.04', '10606.8', '-5.01696', '2.62871', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913879', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5800.41', '10613.8', '5.77953', '5.12931', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913880', '125504', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5772.86', '10577.7', '-14.933', '4.61045', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913881', '125504', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5768.07', '10569', '-14.933', '4.17186', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913882', '125504', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5756.01', '10518', '-14.9524', '0.918046', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913883', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5832.88', '10542.5', '1.05035', '4.12356', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913884', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5841.67', '10534.4', '13.3248', '5.13856', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913885', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5838.11', '10489', '5.68746', '1.82532', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913886', '125504', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5743.38', '10479', '-14.9883', '3.7662', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913887', '125504', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5849.27', '10461.6', '6.54317', '4.67973', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913888', '125504', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5997.62', '10696.4', '28.8758', '4.15588', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913889', '125504', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6019.42', '10646.3', '28.8758', '4.37507', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913890', '125505', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5586.67', '10738.7', '21.52', '4.52919', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913891', '125505', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5482.81', '10728.7', '21.0908', '3.60142', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913892', '125505', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5609.47', '10822.7', '20.187', '5.22187', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913893', '125505', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5547.82', '10718.7', '22.3969', '6.1524', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913894', '125505', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5476.62', '10871.2', '20.5261', '5.6414', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913895', '125505', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5744.33', '10578.2', '-14.4782', '4.6651', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913896', '125505', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5734.35', '10582.1', '-15.9329', '4.20352', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913897', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5849.06', '10715', '9.89439', '2.09999', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913898', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5857.4', '10688.7', '13.7763', '2.23501', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913899', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5854.03', '10685.5', '14.9626', '5.08529', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913900', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5821.13', '10677.2', '7.88691', '0.769215', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913901', '125505', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5737.03', '10573.3', '-14.2626', '0.188839', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913902', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5900.89', '10735.9', '13.7167', '4.86282', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913903', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5893.9', '10726.9', '13.7886', '0.942349', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913904', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5915.68', '10726', '13.7887', '3.1255', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913906', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5943.73', '10684.2', '13.7374', '0.0997796', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913907', '125505', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5714.47', '10538.1', '-15.9746', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913908', '125505', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5954.62', '10722.9', '13.7464', '5.28641', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913909', '125505', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5967.03', '10711.8', '14.9777', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913910', '125505', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5781.77', '10485.8', '-16.109', '6.27763', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913911', '125505', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5688.02', '10503.7', '-16.7448', '4.80066', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913912', '125505', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5972.88', '10721.5', '10.4825', '2.92042', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913913', '125505', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5986.76', '10745.9', '4.60269', '1.15455', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913914', '125505', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5791.03', '10451', '-24.2691', '3.29491', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913915', '125505', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5967.41', '10768.9', '2.6958', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913916', '125505', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5857.04', '10412.8', '27.4449', '5.19691', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913917', '125505', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5835.4', '10421.2', '3.36743', '4.14137', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913918', '125505', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5878.25', '10391.2', '2.5316', '0.339407', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913919', '125505', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5814.86', '10442.5', '2.70937', '0.597005', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913920', '125505', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5880.85', '10386.8', '2.49956', '0.480201', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913921', '125505', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5913.3', '10363.4', '1.74677', '4.69012', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913922', '125505', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5891.17', '10360.1', '0.0230021', '0.738996', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913923', '125505', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5784.82', '10427.3', '-4.21631', '2.67911', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913924', '125505', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5816.4', '10394.6', '3.33114', '6.25204', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913925', '125780', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '5728.1', '10852.9', '15.5386', '0', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913423', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '6019.03', '10591.8', '21.5268', '3.51282', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913422', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5898.23', '10619.1', '12.901', '3.48588', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913443', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6125.62', '10354.2', '19.8886', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913449', '122405', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6056.6', '10446.7', '23.4523', '5.49583', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '4', '0', '0', '0', '0', '0', '0'),
('12913928', '125855', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5562.48', '10747.9', '36.4421', '5.3637', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913514', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5542.74', '10760.2', '18.2675', '4.21977', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913521', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5643.34', '10844.2', '15.7601', '5.01662', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913685', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5993.13', '10221.2', '13.4801', '0.132079', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913714', '124171', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5586.31', '10852.1', '20.488', '3.16072', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913929', '125855', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5500.18', '10872.2', '40.2769', '2.27469', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913930', '125855', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5446.41', '10852.3', '34.1764', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913931', '125855', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5493.38', '10920.3', '27.0691', '1.65453', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913932', '125855', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5471.85', '10902.3', '27.7484', '1.1051', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913933', '125855', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5591.97', '10888.9', '32.868', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913934', '125855', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5558.76', '10895.4', '27.6628', '4.03388', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913935', '125855', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '6195.93', '10418', '29.2905', '1.77405', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913936', '125855', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '6207.7', '10433.8', '52.3915', '4.16802', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913937', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6151.58', '10224.1', '-91.6413', '4.31649', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913938', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6076.69', '10195.5', '1.19635', '4.90061', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913939', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6153.69', '10222.3', '-91.7671', '2.98751', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913940', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6156.43', '10223.7', '-91.7671', '0.682039', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913941', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5955.93', '10165.8', '-8.98234', '5.06156', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913942', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5949.73', '10167.9', '-9.18277', '5.66719', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913943', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5938.71', '10155.1', '-10.7067', '3.03924', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913944', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5875', '10207.5', '-10.7652', '4.89807', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913945', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5901.87', '10163.8', '-16.3436', '0.774033', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913946', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5898.77', '10159.1', '-16.5958', '3.75017', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913947', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5890.67', '10189.7', '-11.2431', '2.55771', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913948', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5819.17', '10280.3', '-8.98568', '5.52001', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913949', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5815.47', '10267.7', '-10.1648', '3.60129', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913950', '125855', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5815.32', '10287.3', '-8.82272', '4.75144', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913951', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6018.67', '10233.6', '15.5065', '3.32719', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913952', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6017.67', '10236.8', '15.4178', '3.32719', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913953', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6017.85', '10240.5', '15.6848', '3.32719', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913954', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5998.62', '10260.5', '16.2644', '4.74875', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913955', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5991.37', '10259.4', '16.1056', '4.74875', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913956', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5994.66', '10260.5', '16.2473', '4.74875', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913957', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5994.66', '10260.5', '16.2473', '4.74875', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913958', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6018.67', '10233.6', '15.5065', '3.32719', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913960', '125857', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6017.67', '10236.8', '15.4178', '3.32719', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913969', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5648.28', '10688.3', '6.75865', '0.476204', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913970', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5698.4', '10819.7', '10.5881', '0', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913971', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5761.75', '10801.5', '13.7101', '0', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913972', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5769.04', '10795.6', '6.94527', '0', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913973', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5766.71', '10797.3', '16.3241', '0.167637', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913974', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5787.04', '10756.1', '10.5245', '1.08447', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913407', '122398', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5566.51', '10731.8', '20.3878', '5.71932', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913406', '122398', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5500.84', '10879.1', '20.1949', '3.93728', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913405', '122398', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5469.6', '10734.2', '20.1964', '1.45127', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913404', '122398', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5593.96', '10780.6', '21.3207', '3.09386', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913403', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5643', '10853', '14.3427', '5.01662', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913402', '122322', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5575.29', '10727.7', '20.5997', '2.38925', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913401', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5589.3', '10773.6', '19.9023', '3.15669', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913400', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5524.42', '10801.1', '17.2584', '0.788582', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913399', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5491.27', '10722.8', '21.5364', '0.0667111', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913398', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5529.68', '10895.7', '16.619', '5.96925', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913397', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5489.22', '10866.2', '20.4077', '0.202355', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913396', '122322', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5585.58', '10755.2', '20.1985', '4.29101', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913483', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5591.94', '10657.8', '5.96701', '4.36311', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913482', '122410', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5736.41', '10555.7', '79.0585', '2.73387', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913481', '122410', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5736.41', '10555.7', '79.0585', '2.75768', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913480', '122410', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5917.8', '10712.9', '55.9471', '1.45794', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913479', '122410', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5662.78', '10557.9', '18.0289', '3.71295', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913478', '122410', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5731.13', '10332.6', '17.0289', '3.53225', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913477', '122410', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5560.68', '10999.7', '83.7159', '2.92228', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913476', '122410', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5575.23', '10999.3', '83.2107', '2.87701', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913475', '122410', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5816.28', '10436', '82.9351', '3.70448', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913474', '122410', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5565.55', '10656.7', '30.8964', '1.65993', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913473', '122410', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5558.63', '10644.9', '23.2185', '1.75662', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913472', '122410', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5888.81', '10535', '62.4942', '2.49116', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913471', '122410', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5779.96', '10729.7', '6.84103', '4.51039', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913470', '122410', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5566.18', '10616.8', '40.8681', '2.19283', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913469', '122410', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5600.29', '10578.2', '39.8483', '2.21199', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913468', '122408', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5813.43', '10418.2', '-38.7462', '3.35085', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913467', '122408', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5814.6', '10415', '-38.7902', '3.04169', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913466', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5952.11', '10617.1', '13.9207', '4.27825', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913465', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5914.67', '10560.6', '14.6659', '2.26075', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913464', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5901.06', '10614.4', '13.0144', '3.48588', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913463', '122408', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5794', '10617.3', '4.47502', '6.20278', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913487', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5666.02', '10620.8', '6.23536', '1.70451', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913520', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5636.02', '10846.8', '16.9735', '5.01662', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913519', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5480.88', '10830.2', '17.2924', '3.30494', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913518', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5464.1', '10780', '19.6413', '2.48625', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913523', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5613.98', '10685.6', '5.45147', '3.82369', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913525', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5631.35', '10640.8', '5.04073', '0.989435', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913524', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5609.95', '10636.2', '5.41573', '4.38954', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913527', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5713.08', '10665.4', '6.40405', '0.128534', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913526', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5617.71', '10624', '5.38745', '2.29495', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913529', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5745.47', '10705.4', '5.38955', '4.90426', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913528', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5702.37', '10664', '6.74589', '1.74907', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913542', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5815.79', '10667.9', '8.16687', '1.49835', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913541', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5818.14', '10676.9', '7.95972', '3.62476', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913540', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5760.17', '10679.5', '5.38954', '0.115557', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913539', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5787.18', '10772.8', '6.98556', '1.38974', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913538', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5772.92', '10689.8', '5.38954', '5.49333', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913537', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5783.94', '10763', '7.56362', '3.94148', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913536', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5772.43', '10704.6', '5.50307', '5.0997', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913535', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5712.17', '10659.6', '6.27992', '3.39339', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913534', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5698.31', '10644.2', '7.49254', '2.3689', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913533', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5763.8', '10708.3', '5.38955', '4.80986', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913532', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5689.5', '10639.9', '7.4807', '1.90184', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913531', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5768.21', '10772', '5.75985', '2.95875', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913530', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5685.1', '10630.6', '7.77363', '2.24457', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913549', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6020.55', '10582.5', '20.7886', '0.422274', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913548', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5963.98', '10622.6', '13.6707', '5.68501', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913547', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5871.88', '10724', '13.7886', '1.84899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913546', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5890.26', '10726.6', '13.7886', '1.24936', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913545', '122478', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5829.96', '10663.1', '9.91367', '1.66387', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782472', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5524.78', '10828.4', '17.9046', '5.46203', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782474', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5522.36', '10815', '17.1659', '4.17007', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782464', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5484.18', '10837.2', '17.1949', '1.75889', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782338', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5548.12', '10792', '17.1077', '4.60988', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782336', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5538.05', '10802.3', '17.1707', '4.97508', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913577', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6180.31', '10301.9', '25.2084', '4.37068', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782332', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5536.56', '10818.7', '17.1668', '3.76165', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913574', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6136.39', '10296.2', '21.9552', '3.19705', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913575', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6170.19', '10306.9', '22.1382', '4.92542', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913576', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6140.6', '10290.9', '22.562', '2.99996', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913573', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6138.21', '10304.1', '20.5632', '4.8238', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913572', '122478', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '6172.55', '10454.5', '24.8043', '5.52347', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913571', '122478', '1753', '8910', '8910', '8388868', '1', '', '0', '0', '6186.66', '10460.5', '29.6642', '4.9117', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913570', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6163.37', '10434.6', '20.4502', '1.34187', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913569', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6159.82', '10439.6', '20.0376', '5.75286', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913568', '122478', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6094.37', '10393.9', '19.9328', '0.569142', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913622', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6144.29', '10391.5', '19.8788', '4.26432', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913981', '126249', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6062.49', '10445.4', '24.5773', '0', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913982', '126312', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5908.09', '10739.9', '13.7471', '4.72057', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913983', '126312', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5866.23', '10698.9', '13.7471', '5.93009', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913984', '126312', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5951.81', '10640', '13.5953', '2.16016', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913985', '126312', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5973.77', '10641.2', '12.5637', '2.62747', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913986', '127008', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5702.23', '10761.9', '23.65', '4.43911', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913989', '127451', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6098.9', '10437.9', '28.9212', '5.37462', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913634', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6126.39', '10359.5', '19.8716', '1.17656', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913632', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6166.47', '10371.9', '19.7413', '3.0344', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913633', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6156.64', '10382.3', '19.8823', '3.0344', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913630', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6153.98', '10359.1', '20.1302', '3.0344', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913631', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6153.07', '10369.8', '19.9792', '1.95106', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913693', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6008.39', '10220.7', '12.9974', '0.121904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913692', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5990.06', '10232.1', '14.7619', '0.792589', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913691', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5981.26', '10239.3', '13.4801', '0.924668', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913690', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5978.08', '10237.1', '14.5302', '0', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913689', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5970.91', '10233.7', '14.3807', '0.792589', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913713', '124171', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5470.62', '10809.5', '17.2645', '2.83799', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913993', '127911', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5940.54', '10504.3', '14.8841', '0.954904', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913995', '128171', '1753', '8910', '8908', '8388868', '1', '', '0', '0', '5743.73', '10500.9', '-14.892', '1.66664', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913741', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5568.85', '10596.7', '44.4282', '5.79068', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913740', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5764.57', '10695.4', '25.3289', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913739', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5647.66', '10678.4', '30.6388', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913738', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5569.65', '10586.3', '32.1363', '5.79068', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913509', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5477.57', '10822.8', '17.2924', '6.06839', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913508', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5463.93', '10780', '19.6638', '3.21796', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913507', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5455.89', '10856.1', '20.1597', '4.63379', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913506', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5437.27', '10772', '20.1821', '2.61631', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913505', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5443', '10777.2', '20.1821', '5.78756', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913501', '122421', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6031.75', '10522.3', '17.5438', '1.37345', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913504', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5439.95', '10865.1', '21.3199', '2.82195', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913503', '122478', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5432.47', '10778.2', '20.2365', '3.97666', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913502', '122423', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6133.33', '10428.6', '19.7822', '0.77171', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913500', '122421', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5883.81', '10531.8', '14.415', '3.23486', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913499', '122421', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5916.08', '10566.9', '15.1287', '2.26075', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913498', '122421', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5802.79', '10762.3', '5.81757', '5.27814', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913496', '122413', '1753', '8910', '8906', '8388868', '1', '', '0', '0', '5760.8', '10446.3', '-29.0327', '4.93592', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913497', '122421', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5619.75', '10673.7', '5.11033', '4.49142', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913495', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5928.76', '10602.6', '14.0918', '2.28941', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913494', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5915.03', '10563.1', '14.9803', '2.26075', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913493', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5895.3', '10612.9', '12.8215', '0.945768', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913492', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5829.12', '10637.5', '7.79184', '2.83691', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913491', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5791.66', '10621.2', '4.5081', '0.707067', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913490', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5794.08', '10779.2', '5.83981', '5.92762', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913927', '125855', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5459.8', '10747.9', '40.2398', '0.823821', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12914817', '123743', '1753', '8910', '8905', '8388868', '1', '8683', '0', '1', '5693.68', '10762', '23.3071', '3.49929', '300', '0', '0', '25721860', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913976', '126211', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5922.4', '10719.9', '21.6887', '0.436353', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913736', '124171', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6028.13', '10520.8', '17.5271', '1.37345', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913735', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5952.77', '10626.6', '13.7957', '4.63339', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913734', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5899.86', '10558.8', '15.2699', '0.816821', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913733', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5893.13', '10620.4', '12.7217', '0.0454495', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913732', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5883.63', '10719.2', '13.747', '1.77527', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913731', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5867.6', '10691.8', '13.7471', '3.04737', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913730', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5865.39', '10684.8', '13.7471', '2.13767', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913729', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5888.98', '10723.8', '13.7471', '2.68496', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913728', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5824.28', '10724.1', '8.48429', '1.31883', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913727', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5814.95', '10673.2', '8.13049', '0.578173', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913726', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5812.31', '10680.1', '8.02096', '5.95167', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913725', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5783.88', '10726.6', '6.96228', '1.53597', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913724', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5777.11', '10726.4', '6.80382', '0.626281', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913723', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5730.43', '10670.5', '5.28924', '1.79898', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913722', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5769.94', '10676', '5.41156', '1.82648', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913721', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5600.3', '10622.2', '5.51245', '0.784938', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913720', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5557.16', '10607.3', '7.18419', '3.8001', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913719', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5631.64', '10654.7', '4.93336', '1.52347', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913718', '124171', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5600.64', '10692.9', '5.77605', '5.99211', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913717', '124171', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5510.95', '10870.8', '20.1682', '0.257746', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913716', '124171', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5581.58', '10853.3', '20.3104', '5.99991', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913715', '124171', '1753', '8910', '8907', '8388868', '1', '', '0', '0', '5547.13', '10739.8', '20.2308', '0.501658', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913761', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5763.52', '10696.6', '38.0761', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913760', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5651.84', '10678.1', '31.7468', '5.21061', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913762', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5574.31', '10588.4', '37.8318', '5.79068', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913763', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5643.04', '10679.5', '35.6467', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913764', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5763.73', '10692.9', '34.836', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913765', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5867.82', '10467.5', '43.3456', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913766', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5866.61', '10463.8', '48.1712', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913767', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5978.57', '10642', '36.9688', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913768', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5870.92', '10463.7', '34.1926', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913769', '124266', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5975.69', '10640.5', '44.1097', '5.18805', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913770', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5872.98', '10469.7', '45.7307', '5.13899', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12782334', '122482', '1753', '8910', '8907', '8388868', '1', '8682', '0', '0', '5542.96', '10807.4', '17.0931', '4.16221', '4330', '0', '0', '280601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913435', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6069.51', '10450.6', '24.6291', '3.54308', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913434', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6091.82', '10496.1', '25.2757', '2.33567', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913433', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6085.16', '10502.6', '24.193', '4.74328', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913432', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6053.98', '10468', '20.8727', '2.68736', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913431', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6048.24', '10471.9', '21.125', '6.21833', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913430', '122404', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5967.25', '10482', '20.9395', '5.93087', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913429', '122404', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6008.24', '10575.9', '17.6701', '3.41855', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913428', '122404', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5880.63', '10527.9', '14.6416', '3.23844', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913427', '122403', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6034.62', '10524.7', '17.1817', '1.37345', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913426', '122403', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5975.56', '10681.5', '14.6473', '2.72914', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913445', '122405', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5882.94', '10535.2', '14.2105', '3.23698', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913486', '122413', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5613.49', '10636.8', '5.41573', '0.784976', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913607', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6122.84', '10411.5', '19.8246', '5.03882', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913606', '122826', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '6107.25', '10399.2', '19.7184', '6.22983', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913688', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5997.27', '10223.3', '14.528', '6.1054', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913687', '123008', '1753', '8910', '8909', '8388868', '1', '', '0', '0', '5975.17', '10239', '13.4801', '5.34871', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12344532', '124276', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5759.53', '10695.6', '27.7907', '2.49079', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913750', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5573.79', '10590.6', '29.4813', '5.79068', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913749', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5759.51', '10697.4', '33.5301', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12915982', '123767', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5919.46', '10705.8', '13.7472', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913418', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5737.25', '10655.7', '5.67282', '4.22554', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913419', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5791.59', '10777.6', '6.27768', '5.76332', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913420', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5804.8', '10643.9', '5.73813', '2.96337', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913756', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5762.13', '10692.1', '30.1854', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913746', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5644.48', '10682.7', '42.1764', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913747', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5759.54', '10691.2', '31.6478', '5.13899', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913748', '124266', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5565.28', '10593.1', '36.6891', '5.79068', '7200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('12913417', '122403', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5678.48', '10696', '5.34788', '5.09903', '7200', '10', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('14516814', '122319', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5911.03', '10698.2', '13.6634', '3.97189', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('14516816', '125340', '1753', '8910', '8905', '8388868', '1', '', '0', '0', '5917.96', '10693.4', '13.6634', '3.98367', '300', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `AiID`, `state`, `isActive`, `personal_size`) VALUES 
('25329457', '212387', '1753', '8910', '8907', '8388868', '1', '', '5420.02', '10819.5', '20.3293', '6.04936', '0', '0', '0', '1', '-86400', '0', '0', '1', '0', '0'),
('25327004', '246779', '1753', '8910', '8907', '8388864', '1', '', '5433.62', '10816.6', '20.3181', '6.11499', '-0', '-0', '-0.0839975', '0.996466', '7200', '255', '0', '1', '0', '0'),
('25294281', '277384', '1753', '8910', '8909', '8388868', '1', '', '5973.33', '10660.6', '13.2362', '3.34196', '0', '0', '0', '1', '7200', '255', '0', '1', '0', '0'),
('25294280', '273789', '1753', '8910', '8905', '8388868', '1', '', '5701', '10754.2', '18.95', '2.88851', '0', '0', '0.992005', '0.126199', '7200', '255', '0', '1', '0', '0'),
('25294279', '273661', '1753', '8910', '8909', '8388868', '1', '', '6020.54', '10262.5', '16.7582', '0.794748', '0.0254809', '-0.0373797', '0.386972', '0.920981', '7200', '255', '0', '0', '0', '0'),
('25294278', '272954', '1753', '8910', '8910', '8388868', '1', '', '5728.26', '10852.9', '14.7409', '4.81595', '0', '0', '0', '1', '7200', '255', '0', '1', '0', '0'),
('25294277', '272950', '1753', '8910', '8910', '8388868', '1', '', '5727.3', '10852.8', '10.8448', '4.84225', '0', '0', '0', '1', '7200', '255', '0', '1', '0', '0'),
('25294276', '272918', '1753', '8910', '8910', '8388868', '1', '', '5718.31', '10924.5', '-6.57266', '4.74277', '0', '0', '0', '1', '7200', '255', '0', '1', '0', '0'),
('25294275', '272062', '1753', '8910', '8909', '8388868', '1', '', '6074.82', '10318', '23.6783', '0.794748', '0.0254809', '-0.0373797', '0.386972', '0.920981', '7200', '255', '0', '1', '0', '0'),
('25327038', '272689', '1753', '8910', '8909', '8388868', '1', '', '5976.62', '10217.7', '13.6371', '0.758843', '-0', '-0', '-0.370383', '-0.928879', '-86400', '0', '0', '1', '0', '0'),
('25294274', '252145', '1753', '8910', '8907', '8388868', '1', '', '5413.99', '10818.3', '20.2127', '2.88563', '0', '0', '0', '1', '7200', '255', '0', '1', '0', '0');


update creature set spawntimesecs=86400 where map=1753;

-- CREATURE ADDON
replace INTO `creature_template_addon` (`entry`, `auras`) VALUES
(124734, '247840'),
(125104, '248453'),
(122319, '246943'),
(125340, '246943');

UPDATE `creature_template_addon` SET `auras`='' WHERE entry in (122056,123054);
delete from creature_template_addon where entry=122832;


-- CONVERSATIONS
DELETE FROM `conversation_data` WHERE (`entry`=5304 AND `id`=11850) OR (`entry`=5639 AND `id`=12607) OR (`entry`=5306 AND `id`=11852) OR (`entry`=5307 AND `id`=11853) OR (`entry`=5430 AND `id`=12190) OR (`entry`=5639 AND `id`=12609) OR (`entry`=5639 AND `id`=12608) OR (`entry`=5430 AND `id`=12174) OR (`entry`=5430 AND `id`=12172) OR (`entry`=5430 AND `id`=12173) OR (`entry`=5305 AND `id`=11851) OR (`entry`=5632 AND `id`=12596) OR (`entry`=5632 AND `id`=12597) OR (`entry`=5632 AND `id`=12598) OR (`entry`=5647 AND `id`=12626) OR (`entry`=5647 AND `id`=12625) OR (`entry`=5647 AND `id`=12624);
REPLACE INTO `conversation_data` (`entry`, `id`, `idx`, `textId`, `unk1`, `unk2`) VALUES
(5304, 11850, 0, 0, 1054, 0),
(5639, 12607, 0, 0, 0, 0),
(5306, 11852, 0, 0, 1054, 0),
(5307, 11853, 0, 0, 1054, 0),
(5430, 12190, 3, 33634, 0, 0),
(5639, 12609, 2, 21355, 0, 0),
(5639, 12608, 1, 12611, 0, 540016640),
(5430, 12174, 2, 21413, 0, 0),
(5430, 12172, 0, 0, 0, 0),
(5430, 12173, 1, 9250, 0, 1),
(5305, 11851, 0, 0, 1054, 0),
(5632, 12596, 0, 0, 3640250768, 0),
(5632, 12597, 1, 4724, 3640250768, 1),
(5632, 12598, 2, 18270, 3640250768, 0),
(5647, 12626, 2, 24813, 0, 1),
(5647, 12625, 1, 7434, 0, 1),
(5647, 12624, 0, 0, 0, 0);

DELETE FROM `conversation_creature` WHERE (`entry`=5647 AND `id`=1) OR (`entry`=5647 AND `id`=0) OR (`entry`=5430 AND `id`=0) OR (`entry`=5430 AND `id`=1) OR (`entry`=5632 AND `id`=0) OR (`entry`=5632 AND `id`=1) OR (`entry`=5639 AND `id`=0);
REPLACE INTO `conversation_creature` (`entry`, `id`, `creatureId`, `creatureGuid`, `duration`, `unk1`, `unk2`) VALUES
(5647, 1, 125099, 6069421, 29975, 0, 0),
(5647, 0, 123187, 6069421, 29975, 0, 0),
(5430, 0, 123743, 6069350, 36986, 0, 0),
(5430, 1, 125099, 6069350, 36986, 0, 0),
(5632, 0, 123743, 6068842, 25078, 0, 0),
(5632, 1, 123744, 6068842, 25078, 0, 0),
(5639, 0, 125840, 6069215, 28149, 0, 0);

DELETE FROM `conversation_actor` WHERE (`entry`=5304 AND `id`=0) OR (`entry`=5305 AND `id`=0) OR (`entry`=5306 AND `id`=0) OR (`entry`=5307 AND `id`=0);
REPLACE INTO `conversation_actor` (`entry`, `id`, `actorId`, `creatureId`, `displayId`, `unk1`, `unk2`, `unk3`, `duration`) VALUES
(5304, 0, 59235, 122316, 76771, 0, 1, 0, 8800),
(5305, 0, 59235, 122316, 76771, 0, 1, 0, 11388),
(5306, 0, 59235, 122316, 76771, 0, 1, 0, 9564),
(5307, 0, 59235, 122316, 76771, 0, 1, 0, 9179);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (122401, 122403, 122404, 122405, 125099, 122316, 125871, 125872, 123187, 125836, 125840, 123743);
INSERT INTO `creature_equip_template` (`CreatureID`, `ItemID1`, `ItemID2`, `ItemID3`, `ItemID4`, `ItemID5`, `ItemID6`) VALUES
(122401, 132465, 0, 92498, 0, 0, 0), -- 122401
(122403, 61346, 0, 0, 0, 0, 0), -- 122403
(122404, 124732, 0, 0, 0, 0, 0), -- 122404
(122405, 42348, 0, 116709, 0, 0, 0), -- 122405
(125099, 124381, 0, 0, 0, 0, 0), -- 125099
(122316, 124381, 0, 0, 0, 0, 0), -- 122316
(125871, 0, 0, 0, 0, 151781, 0), -- 125871
(125872, 124381, 0, 0, 0, 0, 0), -- 125872
(123187, 0, 0, 0, 0, 151781, 0), -- 123187
(125836, 0, 0, 0, 0, 151781, 0), -- 125836
(125840, 124381, 0, 0, 0, 0, 0), -- 125840
(123743, 0, 0, 0, 0, 151781, 0); -- 123743

replace creature_template_addon (entry,bytes2) values
(125871,2),
(123187,2),
(125836,2),
(123743,2);

-- VEHICLE ACCESSORY
DELETE FROM `vehicle_template_accessory` WHERE `EntryOrAura` IN (122056, 98035);
REPLACE INTO `vehicle_template_accessory` (`EntryOrAura`, `accessory_entry`, `seat_id`, `minion`, `description`, `summontype`, `summontimer`, `offsetX`, `offsetY`, `offsetZ`, `offsetO`) VALUES
(122056, 122058, 0, 1, '122056 - 122058', 8, 0, -0.9330277, 0.7008306, 6.616698, 0), -- 122056 - 122058
(122056, 122058, 1, 1, '122056 - 122058', 8, 0, -0.9330277, 0.252317, 6.349215, 0), -- 122056 - 122058
(122056, 122058, 2, 1, '122056 - 122058', 8, 0, -0.9330277, -0.2836974, 6.349215, 0), -- 122056 - 122058
(122056, 122058, 3, 1, '122056 - 122058', 8, 0, -0.9330279, -0.7193725, 6.616698, 0), -- 122056 - 122058
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 0.2617993), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 0.00006151199), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 0.000003814697), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 6.248049), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 6.258207), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 0.2617994), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 0.2617995), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 6.283184), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 6.283164), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 0.000002861023), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 1.709241), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 2.025377), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 6.283153), -- 98035 - 99737
(98035, 99737, 0, 1, '98035 - 99737', 8, 0, -0.174725, 0, 1.555679, 6.283179); -- 98035 - 99737

-- SPELLCLICKS
DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (122056, 98035);
REPLACE INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(122056, 46598, 1, 0),
(98035, 46598, 1, 0);

