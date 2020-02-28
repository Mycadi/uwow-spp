DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='-200108') AND (`spell_effect`='206755') AND (`type`='0') AND (`caster`='10') AND (`target`='5') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');

INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('11305', 'spell_pal_at_devotion_aura');
UPDATE `areatrigger_actions` SET `actionType`='15' WHERE (`entry`='6770') AND (`customEntry`='11305') AND (`id`='0');
UPDATE `areatrigger_actions` SET `spellId`='183425' WHERE (`entry`='6770') AND (`customEntry`='11305') AND (`id`='0');
DELETE FROM `areatrigger_actions` WHERE (`entry`='6770') AND (`customEntry`='11305') AND (`id`='1');
DELETE FROM `areatrigger_actions` WHERE (`entry`='6770') AND (`customEntry`='11305') AND (`id`='2');
DELETE FROM `areatrigger_actions` WHERE (`entry`='6770') AND (`customEntry`='11305') AND (`id`='3');
UPDATE `areatrigger_actions` SET `targetFlags`='4194304' WHERE (`entry`='6770') AND (`customEntry`='11305') AND (`id`='0');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('31821', 'spell_pal_aura_mastery');
DELETE FROM `spell_script_names` WHERE (`spell_id`='183425') AND (`ScriptName`='spell_pal_devotion_aura');
