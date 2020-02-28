delete from gameobject where id in (251687,253924,253923,251686);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `AiID`, `state`, `isActive`, `personal_size`) VALUES
(544730, 251687, 1530, 8025, 8025, 245760, 1, '', 293.266, 3389.96, 173.603, 5.49779, 0, 0, 0.92388, -0.382683, 7200, 255, 0, 0, 0, 0),
(544731, 253924, 1530, 8025, 8025, 245760, 1, '', 283.198, 3414.1, 173.627, 3.927, 0, 0, 0.92388, -0.382683, 7200, 255, 0, 0, 0, 0),
(544732, 253923, 1530, 8025, 8025, 245760, 1, '', 226.57, 3357.47, 173.627, 3.927, 0, 0, 0.92388, -0.382683, 7200, 255, 0, 0, 0, 0),
(544733, 251686, 1530, 8025, 8025, 245760, 1, '', 250.635, 3347.35, 173.603, 5.49779, 0, 0, 0.92388, -0.382683, 7200, 255, 0, 0, 0, 0);

delete from creature where id in (104326,111936,104271,108934,108739,108593,108591) and `map` = 1530;

update creature set spawnmask = 245760, spawntimesecs = 604800 where id = 103685;

update creature_template set lootid = 0, faction = 16, mechanic_immune_mask = 617299967, ScriptName = 'boss_tichonrius', flags_extra = 1537 where entry = 103685;
update creature_template set ScriptName = 'npc_tichonrius_tainted_blood' where entry = 108934;
update creature_template set ScriptName = 'npc_tichonrius_carrion_nightmare' where entry = 108739;
update creature_template set ScriptName = 'npc_tichonrius_phantasmal_bloodfang' where entry = 104326;
update creature_template set ScriptName = 'npc_tichonrius_felsworn_spellguard' where entry = 108591;
update creature_template set ScriptName = 'npc_tichonrius_sightless_watcher' where entry = 108593;
update creature_template set unit_flags = 33555200, ScriptName = 'npc_tichonrius_fel_spire', flags_extra = 130 where entry = 108625;
update creature_template set unit_flags = 33555200, ScriptName = 'npc_tichonrius_combat_stalker', flags_extra = 130 where entry = 104271;
update creature_template set unit_flags = 33555200, flags_extra = 130 where entry in (108677);

update creature_template_wdb set Classification = 3 where entry = 103685;

delete from areatrigger_template where entry in (6297,9132,7139);
INSERT INTO `areatrigger_template` (`entry`, `spellId`, `customEntry`, `VisualID`, `DecalPropertiesId`, `Radius`, `RadiusTarget`, `Height`, `HeightTarget`, `Float4`, `Float5`, `isMoving`, `Distance`, `Speed`, `RePatch`, `RePatchSpeed`, `MoveCurveID`, `ElapsedTime`, `MorphCurveID`, `FacingCurveID`, `ScaleCurveID`, `HasFollowsTerrain`, `HasAttached`, `HasAbsoluteOrientation`, `HasDynamicShape`, `HasFaceMovementDir`, `hasAreaTriggerBox`, `RollPitchYaw1X`, `RollPitchYaw1Y`, `RollPitchYaw1Z`, `TargetRollPitchYawX`, `TargetRollPitchYawY`, `TargetRollPitchYawZ`, `windX`, `windY`, `windZ`, `windSpeed`, `windType`, `polygon`, `comment`) VALUES
(6297, 206892, 629700, 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Aura'),
(9132, 206892, 913200, 0, 0, 30, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Aura'),
(7139, 213650, 713900, 213650, 0, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Echoes of the Void');

delete from areatrigger_data where entry in (7139,7432,7479);
INSERT INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`) VALUES
(7139, 213650, 713900, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0),
(7432, 216026, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7479, 216465, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

delete from areatrigger_actions where entry in (6297,9132,7139,6226,7432,7491,7479);
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `aura`, `hasspell`, `chargeRecoveryTime`, `scale`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(6297, 629700, 0, 1, 0, 4325377, 206893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Aura - Apply'),
(6297, 629700, 1, 42, 1, 4325377, 206893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Aura - Remove'),
(9132, 913200, 0, 1, 0, 4325377, 206893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Aura - Apply'),
(9132, 913200, 1, 42, 1, 4325377, 206893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Vampiric Aura - Remove'),
(7139, 713900, 0, 5, 0, 4194312, 215879, 0, -215879, 0, 0, 0, 0, 0, 0, 0, 0, 'Echoes of the Void - Apply'),
(7139, 713900, 1, 42, 1, 8, 215879, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Echoes of the Void - Remove'),
(6226, 0, 0, 1, 0, 8, 206466, 1, -206466, 0, 0, 0, 0, 0, 0, 0, 0, 'Essence of Night'),
(7432, 0, 0, 1, 0, 8, 216027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nether Zone - Apply'),
(7432, 0, 1, 42, 1, 8, 216027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Nether Zone - Remove'),
(7491, 0, 0, 1, 0, 8, 216726, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ring of Shadows - Apply'),
(7491, 0, 1, 42, 1, 8, 216726, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ring of Shadows - Remove'),
(7479, 0, 0, 1, 0, 8, 216685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flames of Argus - Apply'),
(7479, 0, 1, 42, 1, 8, 216685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Flames of Argus - Remove');

delete from areatrigger_scripts where entry in (629700,913200,713900);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(629700, 'at_tichonrius_vampiric_aura'),
(913200, 'at_tichonrius_vampiric_aura'),
(713900, 'at_tichonrius_echoes_void');

delete from spell_script_names where spell_id in (212997,206474,213531,206893,216024,216040,213740,212795,206311,212794);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(212997, 'spell_tichonrius_carrion_plague_filter'),
(206474, 'spell_tichonrius_seeker_swarm'),
(213531, 'spell_tichonrius_echoes_void'),
(206893, 'spell_tichonrius_vampiric'),
(216024, 'spell_tichonrius_nether_zone'),
(216040, 'spell_tichonrius_burning_soul'),
(213740, 'spell_tichonrius_brand_of_argus_filter'),
(213740, 'spell_tichonrius_brand_of_argus_dmg'),
(206311, 'spell_tichonrius_illusionary_night'),
(212794, 'spell_tichonrius_brand_of_argus');

delete from spell_dummy_trigger where spell_id in (212997,213238);
INSERT INTO `spell_dummy_trigger` (`spell_id`, `spell_trigger`, `option`, `target`, `caster`, `targetaura`, `bp0`, `bp1`, `bp2`, `effectmask`, `handlemask`, `aura`, `group`, `comment`) VALUES
(212997, 206480, 11, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 'Carrion Plague');

delete from spell_target_filter where spellId in (216040,212794);
INSERT INTO `spell_target_filter` (`spellId`, `targetId`, `option`, `param1`, `param2`, `param3`, `aura`, `chance`, `effectMask`, `resizeType`, `count`, `maxcount`, `addcount`, `addcaster`, `comments`) VALUES
(216040, 15, 26, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 'Burning Soul - Only Healer'),
(212794, 15, 1, -212794, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 'Brand of Argus - Aura'),
(212794, 15, 22, 1, 2, 0, 0, 0, 3, 0, 0, 0, 0, 0, 'Brand of Argus - Range Target');

delete from spell_area where spell in (212794,215413);
INSERT INTO `spell_area` (`spell`, `area`, `quest_start`, `quest_end`, `aura_spell`, `racemask`, `classmask`, `active_event`, `gender`, `autocast`, `quest_start_status`, `quest_end_status`) VALUES
(212794, 8025, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11),
(215413, 8025, 0, 0, 0, 0, 0, 0, 2, 0, 64, 11);

delete from creature_text where entry in (103685);
INSERT INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES 
(103685, 0, 0, 'Нельзя доверять смертным работу демона!', 14, 0, 100, 0, 0, 60131, 111057, 'AGGRO'),
(103685, 1, 0, 'Утоли мой голод!', 14, 0, 100, 0, 0, 60123, 111049, 'FEAST_OF_BLOOD'),
(103685, 2, 0, 'Вы сгниете!', 14, 0, 100, 0, 0, 60121, 111047, 'CARRION_PLAGUE'),
(103685, 3, 0, '|TInterface\\Icons\\spell_deathknight_necroticplague.blp:20|t Вы поражены |cFFF00000|Hspell:206480|h[\"Трупным заражением\"]|h|r!', 42, 0, 100, 0, 0, 0, 122230, 'CARRION_PLAGUE WARN'),
(103685, 4, 0, 'Гибель близка!', 14, 0, 100, 0, 0, 60124, 111050, 'SAY_ECHOES_OF_THE_VOID'),
(103685, 4, 1, 'Свет оставил вас!', 14, 0, 100, 0, 0, 60125, 29512, 'SAY_ECHOES_OF_THE_VOID'),
(103685, 5, 0, 'Вы навеваете на меня сон – и я отплачу вам тем же!', 14, 0, 100, 0, 0, 60122, 111048, 'CHANGE_PHASE'),
(103685, 6, 0, 'Прислужники! Живо ко мне!', 14, 0, 100, 0, 0, 60126, 111052, 'SUMMON_GUARDS'),
(103685, 6, 1, 'Покажите этим ничтожествам, как сражаться!', 14, 0, 100, 0, 0, 60128, 111053, 'SUMMON_GUARDS'),
(103685, 7, 0, 'Смешно! Можно подумать, у вас был шанс прервать ритуал...', 14, 0, 100, 0, 0, 60133, 111063, 'WIPE'),
(103685, 7, 1, 'Побили пару эльфов, пережравших магии, и решили, что одолеете истинного сына Легиона?!', 14, 0, 100, 0, 0, 60130, 111056, 'WIPE'),
(103685, 7, 2, 'Какой предсказуемый исход.', 14, 0, 100, 0, 0, 60134, 111064, 'WIPE'),
(103685, 8, 0, 'Быстрая смерть! Какое везение!', 14, 0, 100, 0, 0, 69581, 111061, 'SAY_KILL_PLAYER'),
(103685, 8, 1, 'Я сожгу твой труп!', 14, 0, 100, 0, 0, 60132, 111060, 'SAY_KILL_PLAYER'),
(103685, 9, 0, 'Невозможно... Вы... низшие...', 14, 0, 100, 0, 0, 60135, 111065, 'SAY_DEATH');

delete from creature_difficulty_stat where entry in (103685,104326,108934,108591,108593);
INSERT INTO `creature_difficulty_stat` (`entry`, `difficulty`, `dmg_multiplier`, `HealthModifier`) VALUES
(103685, 14, 1, 617.997),
(103685, 15, 1, 858.329),
(103685, 16, 1, 3040.949),
(103685, 17, 1, 556.2),

(104326, 14, 1, 3.105),
(104326, 15, 1, 3.881),
(104326, 16, 1, 10.344),
(104326, 17, 1, 2.79),

(108934, 14, 1, 5.980),
(108934, 15, 1, 7.476),
(108934, 16, 1, 19.923),
(108934, 17, 1, 5.382),

(108591, 14, 1, 7.679),
(108591, 15, 1, 9.599),
(108591, 16, 1, 25.583),
(108591, 17, 1, 6.9111),

(108593, 14, 1, 11.5185),
(108593, 15, 1, 14.3985),
(108593, 16, 1, 38.375),
(108593, 17, 1, 10.359);

delete from creature_loot_template where entry = 103685;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES
(103685, -1275, 3.3498, 7, 0, 1, 1, 0),
(103685, 137687, 0.9324, 1, 0, 1, 1, 0),
(103685, 137758, 0.6129, 19, 0, 1, 1, 0),
(103685, 138781, 1.0946, 19, 0, 1, 1, 0),
(103685, 138782, 0.0677, 2, 0, 1, 1, 0),
(103685, 139646, 1.2902, 17, 0, 1, 1, 0),
(103685, 140199, -100, 0, 0, 1, 1, 0),
(103685, 140200, 3, 0, 0, 1, 1, 0),
(103685, 140220, 0.0353, 16, 0, 1, 1, 0),
(103685, 140221, 0.0753, 16, 0, 1, 1, 0),
(103685, 140222, 0.1605, 1, 0, 1, 1, 0),
(103685, 140226, 0.1714, 16, 0, 1, 1, 0),
(103685, 140227, 0.2818, 3, 0, 1, 1, 0),
(103685, 140587, 26.0473, 16, 0, 1, 1, 0),
(103685, 140797, 0, 23, 0, 1, 1, 0),
(103685, 140798, 0, 23, 0, 1, 1, 0),
(103685, 140819, 0, 23, 0, 1, 1, 0),
(103685, 140824, 0, 23, 0, 1, 1, 0),
(103685, 140844, 0, 23, 0, 1, 1, 0),
(103685, 140855, 0, 23, 0, 1, 1, 0),
(103685, 140859, 0, 23, 0, 1, 1, 0),
(103685, 140892, 0, 23, 0, 1, 1, 0),
(103685, 140906, 0, 23, 0, 1, 1, 0),
(103685, 141854, 0.0657, 16, 0, 1, 1, 0),
(103685, 143566, 20.3771, 7, 0, 1, 1, 0),
(103685, 143570, 23.5597, 7, 0, 1, 1, 0),
(103685, 143576, 21.7209, 7, 0, 1, 1, 0),
(103685, 144330, 0.2241, 3, 0, 1, 1, 0),
(103685, 144345, 0.0702, 2, 0, 1, 1, 0);

