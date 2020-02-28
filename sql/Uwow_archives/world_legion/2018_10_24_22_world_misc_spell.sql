INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('222478', 'spell_gen_shadowy_reflection');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('222479', 'spell_gen_shadowy_reflection_absorb');
UPDATE `creature_template` SET `ScriptName`='npc_shadowy_reflection' WHERE (`entry`='111748');

UPDATE `trinity_string` SET `content_default`='Player selected NPC\nDB GUID: %u, current GUID: %s.\nFaction: %u.\nEntry: %u.\nDisplayID: %u (Native: %u).' WHERE (`entry`='539');
DELETE FROM `trinity_string` WHERE (`entry`='545');
DELETE FROM `trinity_string` WHERE (`entry`='546');
UPDATE `trinity_string` SET `content_default`='Faction Template: %u.' WHERE (`entry`='542');