delete from areatrigger_actions where entry = 10383;
INSERT INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(10383, 0, 0, 4, 0, 8, 236555, 0, -241721, -236555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil RHit - Apply'),
(10383, 0, 1, 4, 1, 8, 236555, 0, 241721, 236555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil RHit - Remove'),
(10383, 0, 2, 42, 1, 8, 236555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil RHit - Remove'),
(10383, 0, 3, 4, 0, 8, 242696, 0, 241721, -242696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil - Apply'),
(10383, 0, 4, 4, 1, 8, 242696, 0, -241721, 242696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil - Remove'),
(10383, 0, 5, 42, 1, 8, 242696, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Deceiver\'s Veil - Remove');

delete from creature_template where entry in (121227);
INSERT INTO `creature_template` (`entry`, `gossip_menu_id`, `minlevel`, `maxlevel`, `SandboxScalingID`, `ScaleLevelMin`, `ScaleLevelMax`, `ScaleLevelDelta`, `ScaleLevelDuration`, `exp`, `faction`, `npcflag`, `npcflag2`, `speed_walk`, `speed_run`, `speed_fly`, `scale`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Mana_mod_extra`, `Armor_mod`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ControllerID`, `WorldEffects`, `PassiveSpells`, `StateWorldEffectID`, `SpellStateVisualID`, `SpellStateAnimID`, `SpellStateAnimKitID`, `IgnoreLos`, `AffixState`, `ScriptName`) VALUES
(121227, 0, 113, 113, 0, 0, 0, 0, 100, 0, 2580, 0, 0, 1, 1, 1.14286, 1, 0, 0, 0, 0, 1, 2000, 2000, 1, 0, 2099200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 1, 1, 0, 0, -1, '', '', 0, 0, 0, 0, 0, 0, 'npc_tos_stage4_illidan_stormrage');

delete from creature_equip_template where CreatureID in (121227);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `ItemID4`, `ItemID5`, `ItemID6`) VALUES
(121227, 1, 150732, 0, 150732, 0, 0, 0);

delete from spell_target_position where id = 244719;
INSERT INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
(244719, 1676, -229.764, 5927.58, 166.1, 2.40855);

delete from creature where id in (121728,120265);
delete from gameobject where id = 271099;

update creature_template set lootid = 0 where entry = 117269;

delete from creature_loot_template where entry = 117269;

update gameobject set state = 1 where id in (271126,271127);

delete from gameobject_loot_template where entry = 271099;
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `shared`) VALUES
(271099, 146988, 0, 23, 0, 1, 1, 0),
(271099, 147007, 0, 23, 0, 1, 1, 0),
(271099, 147019, 0, 23, 0, 1, 1, 0),
(271099, 147026, 0, 23, 0, 1, 1, 0),
(271099, 147034, 0, 23, 0, 1, 1, 0),
(271099, 147046, 0, 23, 0, 1, 1, 0),
(271099, 147048, 0, 23, 0, 1, 1, 0),
(271099, 147066, 0, 23, 0, 1, 1, 0),
(271099, 147072, 0, 23, 0, 1, 1, 0),
(271099, 147079, 0, 23, 0, 1, 1, 0),
(271099, 147082, 0, 23, 0, 1, 1, 0),
(271099, 147087, 0, 23, 0, 1, 1, 0),
(271099, 147095, 0, 23, 0, 1, 1, 0),
(271099, 147099, 0, 23, 0, 1, 1, 0),
(271099, 147111, 0, 23, 0, 1, 1, 0),
(271099, 147195, 0, 23, 0, 1, 1, 0),
(271099, 147347, 0, 23, 0, 1, 1, 0),
(271099, 151190, 0, 23, 0, 1, 1, 0);
