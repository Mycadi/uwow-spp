INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('152173', 'spell_monk_serenity');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='152173') AND (`spell_effect`='107428') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='14');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='152173') AND (`spell_effect`='116847') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='13');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='152173') AND (`spell_effect`='113656') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='13');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='152173') AND (`spell_effect`='205320') AND (`type`='6') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='13');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-152173') AND (`spell_effect`='107428') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='14');

UPDATE `creature_template` SET `ScriptName`='npc_grimoire_imp' WHERE (`entry`='416');

UPDATE `creature_template` SET `ScriptName`='npc_grimoire_succubus' WHERE (`entry`='1863');

UPDATE `creature_template` SET `ScriptName`='npc_grimoire_felhunter' WHERE (`entry`='417');

UPDATE `creature_template` SET `ScriptName`='npc_grimoire_voidwalker' WHERE (`entry`='1860');
UPDATE `creature_template` SET `unit_flags`='0' WHERE (`entry`='1860');