delete from instance_encounters where entry = 2075;
INSERT INTO `instance_encounters` (`entry`, `difficulty`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES
(2075, -1, 0, 124445, 0, 'Antorus: The Paraxis');

delete from world_visible_distance where `type` = 2 and id in (9333,8681);
INSERT INTO `world_visible_distance` (`type`, `id`, `distance`, `comment`) VALUES
(2, 9333, 300, 'Antorus: Eonar the Life-Binder'),
(2, 8681, 300, 'Antorus');

delete from spell_area where spell in (249014,249015,249016,249017,245764,254506);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `classmask`, `active_event`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(249014, 8681, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(249014, 9333, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(249015, 8681, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(249015, 9333, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(249016, 8681, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(249016, 9333, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(249017, 8681, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(249017, 9333, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(245764, 8681, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(245764, 9333, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(254506, 8681, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(254506, 9333, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11);

update gameobject set spawntimesecs = -1, `state` = 1 where id = 276503;
update gameobject_template set maxvisible = 1 where entry in (272683,273016,273017,272759);
update gameobject_template set flags = 48 where entry in (273016,273017,272759);

delete from gameobject where id in (273016,273017,272759);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `AiID`, `state`, `isActive`, `personal_size`) VALUES
(272759, 1712, 8638, 8681, 245760, 1, '', -4210.63, -10729.2, 709.725, 4.60767, 0, 0, -0.743144, 0.669132, 300, 255, 0, 1, 0, 0),
(273016, 1712, 8637, 8681, 245760, 1, '', -4124.68, -10709.6, 734.528, 3.05433, 0, 0, 0.999048, 0.0436193, 300, 255, 0, 1, 0, 0),
(273017, 1712, 8637, 8681, 245760, 1, '', -4281.57, -10691.4, 734.528, 6.19592, 0, 0, -0.0436192, 0.999048, 300, 255, 0, 1, 0, 0);

update creature set spawndist = 0, movementtype = 0 where id in (124962,124963);

delete from creature where id in
(122500,124445,125364,124298,130000,124288,100463,131561,123760,124207,123452,123451,123191,123726,124227,124424,125319,125930,128088,124962,124963) and `map` = 1712;
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`, `personal_size`) VALUES
(122500, 1712, 8638, 9333, 245760, 1, '', 0, 0, -3987.516, -10737.82, 700.1136, 0, 604800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(125930, 1712, 8638, 8681, 245760, 1, '', 0, 0, -4207.34, -10700.3, 841.704, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

update creature_template set gossip_menu_id = 0, npcflag = 0, unit_flags = 0, mechanic_immune_mask = 617299967, ScriptName = 'boss_eonar', flags_extra = 1 where entry = 122500;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_eonar_the_paraxis', flags_extra = 1 where entry = 124445;
update creature_template set mechanic_immune_mask = 617299967, inhabittype = 7, flags_extra = 2 where entry in (124424,130000);
update creature_template set mechanic_immune_mask = 617299967, inhabittype = 7, flags_extra = 130 where entry in (124962,124963,125930,125364);
update creature_template set mechanic_immune_mask = 617299967, inhabittype = 7, flags_extra = 130, maxvisible = 1 where entry = 125364;
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_eonar_paraxis_inquisitor' where entry = 125429;
update creature_template set ScriptName = 'npc_eonar_trash_generic' where entry in (123452,123451,123191,124227,123760,124207,123726);
update creature_template set mechanic_immune_mask = 617299967, ScriptName = 'npc_eonar_spear_of_doom', flags_extra = 130 where entry = 125319;
update creature_template set ScriptName = 'npc_eonar_focusing_crystal' where entry in (125917,125918,125919,125920);

update creature_template_wdb set Classification = 3 where entry in (122500,124445);

delete from creature_template_addon where entry in (124424);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(124424, 0, 0, 0, 0, 0, '247189');

delete from npc_spellclick_spells where npc_entry in (125917,125918,125919,125920);

delete from gossip_menu where entry in (32173,33006);
INSERT INTO `gossip_menu` (`Entry`, `TextID`, `FriendshipFactionID`) VALUES
(32173, 32173, 0),
(33006, 33006, 0);

delete from gossip_menu_option where MenuID in (21203);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionIndex`, `OptionNPC`, `OptionText`, `OptionType`, `OptionNpcflag`, `OptionNpcflag2`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxCurrency`, `BoxText`, `OptionBroadcastTextID`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(21203, 0, 0, 'Мы защитим тебя, Хранительница Жизни!', 1, 1, 0, 0, 0, 0, 0, 0, NULL, 132546, 0, 0),
(21203, 1, 0, 'Отправь меня обратно в Анторус.', 1, 1, 0, 0, 0, 0, 0, 0, '', 137650, 0, 0);

delete from areatrigger_template where entry in (11080,12256);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(11080, 248365, 10202, 248365, 213, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Wake'),
(12256, 248365, 15892, 248365, 0, 4, 4, 4, 4, 1.5, 1.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Fel Wake');

delete from areatrigger_data where entry in (11110);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`) VALUES
(11110, 249094, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1);

delete from areatrigger_actions where entry in (10888,11232,11080,12256,11110,11034);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10888, 0, 0, 1, 0, 131073, 246748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cloak - Apply'),
(10888, 0, 1, 42, 1, 131073, 246748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cloak - Remove'),
(11232, 0, 0, 1, 0, 131073, 250074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Purification - Apply'),
(11232, 0, 1, 42, 1, 131073, 250074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Purification - Remove'),
(11232, 0, 2, 1, 0, 131073, 255137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Purification - Cast'),
(11080, 0, 0, 1, 0, 8, 248795, 0, -248795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spear of Doom - Apply'),
(11080, 0, 1, 42, 1, 8, 248795, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spear of Doom - Remove'),
(12256, 0, 0, 1, 0, 131073, 248796, 0, -248796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spear of Doom - Apply Speed buff'),
(12256, 0, 1, 42, 1, 131073, 248796, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Spear of Doom - Remove Speed buff'),
(11110, 0, 0, 1, 0, 8, 249103, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Teleport on Paraxis'),
(11034, 0, 0, 1, 0, 72, 248225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jump Pad');

delete from conditions where SourceTypeOrReferenceId = 13 and SourceEntry in (246310,246301,245851,250467,250030,248789,249121,259468,259469,259470,259472);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 246310, 0, 0, 31, 0, 3, 122500, 0, 0, 0, '', NULL),
(13, 1, 246301, 0, 0, 31, 0, 3, 123760, 0, 0, 0, '', NULL),
(13, 1, 245851, 0, 0, 31, 0, 3, 122500, 0, 0, 0, '', NULL),
(13, 7, 250467, 0, 0, 31, 0, 3, 123452, 0, 0, 0, '', NULL),
(13, 7, 250467, 0, 1, 31, 0, 3, 123451, 0, 0, 0, '', NULL),
(13, 7, 250467, 0, 2, 31, 0, 3, 124227, 0, 0, 0, '', NULL),
(13, 7, 250467, 0, 3, 31, 0, 3, 123191, 0, 0, 0, '', NULL),
(13, 7, 250467, 0, 4, 31, 0, 3, 123760, 0, 0, 0, '', NULL),
(13, 7, 250467, 0, 5, 31, 0, 3, 124207, 0, 0, 0, '', NULL),
(13, 7, 250467, 0, 6, 31, 0, 3, 123726, 0, 0, 0, '', NULL),
(13, 1, 250030, 0, 0, 31, 0, 3, 124445, 0, 0, 0, '', NULL),
(13, 1, 248789, 0, 0, 31, 0, 3, 125319, 0, 0, 0, '', NULL),
(13, 1, 249121, 0, 0, 31, 0, 3, 124445, 0, 0, 0, '', NULL),
(13, 1, 259468, 0, 0, 31, 0, 3, 125930, 0, 0, 0, '', NULL),
(13, 1, 259469, 0, 0, 31, 0, 3, 125930, 0, 0, 0, '', NULL),
(13, 1, 259470, 0, 0, 31, 0, 3, 125930, 0, 0, 0, '', NULL),
(13, 1, 259472, 0, 0, 31, 0, 3, 125930, 0, 0, 0, '', NULL);

delete from spell_target_position where id in (246305,254245);
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(246305, 1712, -3987.52, -10737.8, 700.11, 0),
(254245, 1712, -3110.22, 10156.5, -87.5, 3.344);

delete from spell_aura_trigger where spell_id in (249014,249015,249017);
INSERT INTO `spell_aura_trigger` (`spell_id`, `spell_trigger`, `option`, `option2`, `target`, `caster`, `bp0`, `bp1`, `bp2`, `effectmask`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `slot`, `comment`) VALUES
(249014, 250139, 18, 0, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Foul Steps'),
(249014, 250140, 18, 0, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Foul Steps'),
(249015, 250128, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Burning Embers'),
(249017, 250171, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Arcane Burst');

delete from spell_script_names where spell_id in (246301,246313,249103,250081,249934,248861,245781,248225,248326);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(246301, 'spell_eonar_artillery_mode'),
(246313, 'spell_eonar_paraxis_artillery'),
(249103, 'spell_eonar_paraxis_teleport'),
(250081, 'spell_eonar_shatter'),
(249934, 'spell_eonar_paraxis_purge_filter'),
(248861, 'spell_eonar_spear_of_doom_filter'),
(245781, 'spell_eonar_surge_of_life'),
(248225, 'spell_eonar_jump_pad'),
(248326, 'spell_eonar_rain_of_fel_filter');

delete from spell_linked_spell where spell_trigger in (254497);
INSERT INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `effectMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `param`, `randList`, `comment`) VALUES
(254497, 245764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, '', 'Surge of Life');

delete from creature_summon_groups where summonerId = 122500;
INSERT INTO `creature_summon_groups` (`summonerId`, `id`, `summonerType`, `groupId`, `entry`, `position_x`, `position_y`, `position_z`, `orientation`, `count`, `actionType`, `distance`, `summonType`, `summonTime`) VALUES
(122500, 0, 0, 0, 124962, -3949.94, -10726.6, 698.53, 0.30, 0, 0, 0, 8, 0),
(122500, 1, 0, 0, 124962, -3902.17, -10763.4, 740.50, 4.78, 0, 0, 0, 8, 0),
(122500, 2, 0, 0, 124962, -3893.94, -10782.5, 708.43, 1.63, 0, 0, 0, 8, 0),
(122500, 3, 0, 0, 124962, -3985.33, -10778.0, 698.52, 4.76, 0, 0, 0, 8, 0),
(122500, 4, 0, 0, 124962, -3930.96, -10824.8, 708.43, 3.20, 0, 0, 0, 8, 0),
(122500, 5, 0, 0, 124962, -3974.74, -10810.3, 686.57, 1.62, 0, 0, 0, 8, 0),
(122500, 6, 0, 0, 124962, -3896.99, -10861.5, 708.43, 4.56, 0, 0, 0, 8, 0),
(122500, 7, 0, 0, 124962, -3898.79, -10886.8, 687.78, 1.45, 0, 0, 0, 8, 0),
(122500, 8, 0, 0, 124963, -3864.28, -10700.9, 725.91, 0, 0, 0, 0, 8, 0),
(122500, 9, 0, 0, 124963,  -3891.1, -10753.8, 745.75, 0, 0, 0, 0, 8, 0),
(122500, 10, 0, 0, 124963, -3978.94, -10769.4, 700.83, 1.62, 0, 0, 0, 8, 0),
(122500, 11, 0, 0, 124963, -3899.03, -10798.6, 706.64, 0, 0, 0, 0, 8, 0),
(122500, 12, 0, 0, 124963, -3885.33, -10853.1, 710.86, 1.33, 0, 0, 0, 8, 0),
(122500, 13, 0, 0, 124963, -3956.93, -10829.2, 684.83, 0, 0, 0, 0, 8, 0),
(122500, 14, 0, 0, 124963, -3980.48, -10820.6, 684.83, 0, 0, 0, 0, 8, 0),
(122500, 15, 0, 0, 124963, -3907.98, -10891.9, 686.33, 4.68, 0, 0, 0, 8, 0);

update creature_template set AIName = 'SmartAI' where entry = 124962;
delete from smart_scripts where entryorguid = 124962;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(124962, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Passive'),
(124962, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 11, 248222, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Jump Pad');

delete from waypoint_data_script where id in (12444500,12444501,12444502,12444503);
INSERT INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES 
(12444500, 1, -3976.34, -10919.7, 721.603, 0),
(12444500, 2, -3967.83, -10910.2, 721.926, 0),
(12444500, 3, -3955.69, -10895.7, 712.528, 0),
(12444500, 4, -3946.0, -10884.8, 706.56, 0),
(12444500, 5, -3933.46, -10870.5, 706.563, 0),
(12444500, 6, -3916.38, -10851.3, 706.563, 0),
(12444500, 7, -3909.82, -10843, 706.563, 0),
(12444500, 8, -3917.03, -10829.8, 706.563, 0),
(12444500, 9, -3917.16, -10816.4, 706.563, 0),
(12444500, 10, -3911.59, -10804.1, 706.563, 0),
(12444500, 11, -3922.52, -10794.7, 706.564, 0),
(12444500, 12, -3939.76, -10779.2, 701.68, 0),
(12444500, 13, -3966.16, -10756.8, 696.664, 0),
(12444501, 1, -3948.4, -10692.9, 751.362, 0),
(12444501, 2, -3949.88, -10717.9, 751.362, 0),
(12444501, 3, -3932.74, -10734.2, 745.104, 0),
(12444501, 4, -3915.7, -10748.1, 738.596, 0),
(12444501, 5, -3893.51, -10748.3, 738.595, 0),
(12444501, 6, -3877.45, -10731.2, 732.626, 0),
(12444501, 7, -3861.99, -10712.6, 725.831, 0),
(12444501, 8, -3860.43, -10697.5, 725.831, 0),
(12444501, 9, -3867.29, -10686.5, 726.005, 0),
(12444501, 10, -3877.11, -10677.6, 721.095, 0),
(12444501, 11, -3893.91, -10663.3, 713.101, 0),
(12444501, 12, -3911.43, -10658.2, 713.064, 0),
(12444501, 13, -3929.73, -10670.9, 713.064, 0),
(12444501, 14, -3937.64, -10680.1, 713.064, 0),
(12444501, 15, -3948.2, -10692.2, 706.09, 0),
(12444501, 16, -3962.05, -10708, 696.664, 0),
(12444501, 17, -3970.79, -10717.7, 696.664, 0),
(12444502, 1, -3890.64, -10919.1, 685.968, 0),
(12444502, 2, -3901.8, -10909.7, 686.26, 0),
(12444502, 3, -3918.98, -10915.6, 686.189, 0),
(12444502, 4, -3936.66, -10909.9, 684.75, 0),
(12444502, 5, -3948.66, -10899.2, 686.256, 0),
(12444502, 6, -3963.21, -10886.2, 686.259, 0),
(12444502, 7, -3949.42, -10867.9, 684.84, 0),
(12444502, 8, -3943.31, -10847.4, 684.748, 0),
(12444502, 9, -3958.13, -10828.7, 684.748, 0),
(12444502, 10, -3974.28, -10823.1, 684.748, 0),
(12444502, 11, -3989.12, -10830.2, 684.748, 0),
(12444502, 12, -3997.27, -10839.3, 685.958, 0),
(12444502, 13, -4010.79, -10837.1, 685.958, 0),
(12444502, 14, -4029.49, -10828, 684.749, 0),
(12444502, 15, -4040.69, -10814.2, 684.749, 0),
(12444502, 16, -4039.73, -10801, 684.749, 0),
(12444502, 17, -4026.4, -10782.3, 690.882, 0),
(12444502, 18, -4011.83, -10766.2, 696.664, 0),
(12444502, 19, -4005.58, -10758.9, 696.663, 0),
(12444503, 0, -4003.05, -10650.1, 760.085, 0),
(12444503, 1, -4010.63, -10679.4, 753.042, 0),
(12444503, 2, -4018.21, -10708.7, 746, 0),
(12444503, 3, -4042.19, -10778.1, 742, 0),
(12444503, 4, -4024.56, -10849.7, 734, 0),
(12444503, 5, -3962.12, -10880.2, 724, 0),
(12444503, 6, -3907.36, -10873.2, 718, 0),
(12444503, 7, -3871.7, -10843.8, 711, 0),
(12444503, 8, -3866.97, -10815.5, 710, 0),
(12444503, 9, -3887.35, -10796.2, 708, 0),
(12444503, 10, -3959.23, -10797.8, 710, 0),
(12444503, 11, -4011.49, -10754, 707, 0),
(12444503, 12, -4006.82, -10720.5, 704, 0),
(12444503, 13, -3980.06, -10711.6, 702, 0),
(12444503, 14, -3961, -10725.7, 700, 0),
(12444503, 15, -3959.04, -10741.7, 698, 0),
(12444503, 16, -3959.04, -10741.7, 698, 0);

update waypoint_data_script set move_flag = 1 where id in (12444500, 12444501, 12444502, 12444503);

delete from creature_difficulty_stat where entry in (122500,123191,123451,123452,123726,123760,124207,124227,124445,125429);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(122500, 14, 1, 1500),
(122500, 15, 1, 1500),
(122500, 16, 1, 1500),
(122500, 17, 1, 1500),
(123191, 14, 1, 6.77159),
(123191, 15, 1, 9.09149),
(123191, 16, 1, 23.0592),
(123191, 17, 1, 6.09443),
(123451, 14, 1, 21.736),
(123451, 15, 1, 28.215),
(123451, 16, 1, 76.8639),
(123451, 17, 1, 19.5624),
(123452, 14, 1, 48.488),
(123452, 15, 1, 81.5099),
(123452, 16, 1, 168.209),
(123452, 17, 1, 43.6392),
(123726, 15, 1, 75.8669),
(123726, 16, 1, 200.96),
(123760, 14, 1, 59.317),
(123760, 15, 1, 88.4052),
(123760, 16, 1, 209.76),
(123760, 17, 1, 53.3853),
(124207, 14, 1, 55.176),
(124207, 15, 1, 89.6609),
(124207, 16, 1, 185.03),
(124207, 17, 1, 49.6584),
(124227, 14, 1, 19.437),
(124227, 15, 1, 27.4312),
(124227, 16, 1, 84.8009),
(124227, 17, 1, 17.4933),
(124445, 14, 1, 200),
(124445, 15, 1, 200),
(124445, 16, 1, 200),
(124445, 17, 1, 200),
(125429, 16, 1, 99.9999);

delete from creature_text where entry in (122500,124445);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(122500, 0, 0, 'Champions! The forces of the Legion seek to capture my essence for their infernal master!', 14, 0, 100, 0, 0, 88212, 132814, 'PULL'),
(122500, 1, 0, 'The invaders are charging their weapons. Quickly! Use these portals to board their vessel. Stop their attack!', 14, 0, 100, 0, 0, 88217, 135714, 'SPELL_FINAL_DOOM'),
(122500, 2, 0, 'Begone, intruders! Back to your master!', 14, 0, 100, 0, 0, 88222, 135939, 'LIFE_FORCE_1'),
(122500, 3, 0, 'Feel the potency of life! Fear its power!', 14, 0, 100, 0, 0, 88223, 135945, 'LIFE_FORCE_2'),
(122500, 4, 0, 'Minions of darkness! You will know the might of a titan!', 14, 0, 100, 0, 0, 88224, 135946, 'LIFE_FORCE_3'),
(122500, 5, 0, 'Victory is nigh, champions! Dispatch their remaining forces. I will see to their vessel myself.', 14, 0, 100, 0, 0, 88225, 135951, 'LIFE_FORCE_4'),
(122500, 6, 0, 'It ends. My life... forever bound... to Sargeras...', 14, 0, 100, 0, 0, 88216, 132818, 'WIPE'),

(124445, 0, 0, 'WARN: SPEAR_OF_DOOM', 41, 0, 100, 0, 0, 0, 135906, 'WARN_SPEAR_OF_DOOM'),
(124445, 1, 0, 'WARN: WARN_FINAL_DOOM', 41, 0, 100, 0, 0, 0, 134704, 'WARN_FINAL_DOOM'),
(124445, 2, 0, 'WARN: PURGE', 41, 0, 100, 0, 0, 0, 135186, 'WARN_PURGE'),
(124445, 3, 0, 'WARN: RAIN_OF_FEL', 41, 0, 100, 0, 0, 0, 135908, 'WARN_RAIN_OF_FEL');

