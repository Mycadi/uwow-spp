DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='214581') AND (`spell_effect`='185365') AND (`type`='9') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='223138') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='214581') AND (`spell_effect`='185365') AND (`type`='1') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='193526') AND (`effectMask`='0') AND (`actiontype`='0');
DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='214581') AND (`spell_effect`='185365') AND (`type`='9') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='193526') AND (`effectMask`='0') AND (`actiontype`='0');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='204147') AND (`spell_effect`='204475') AND (`type`='1') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('10713', 'areatrigger_hun_windburst');
DELETE FROM `areatrigger_actions` WHERE (`entry`='8284') AND (`customEntry`='0') AND (`id`='1');
DELETE FROM `areatrigger_actions` WHERE (`entry`='8284') AND (`customEntry`='0') AND (`id`='0');
DELETE FROM `areatrigger_actions` WHERE (`entry`='6026') AND (`customEntry`='10713') AND (`id`='1');
UPDATE `areatrigger_actions` SET `actionType`='15', `targetFlags`='4194304' WHERE (`entry`='6026') AND (`customEntry`='10713') AND (`id`='0');

UPDATE `areatrigger_polygon` SET `y`='-2' WHERE (`entry`='10713') AND (`spellId`='204475') AND (`type`='1') AND (`id`='0');
UPDATE `areatrigger_polygon` SET `x`='-0.1', `y`='-2' WHERE (`entry`='10713') AND (`spellId`='204475') AND (`type`='1') AND (`id`='1');
UPDATE `areatrigger_polygon` SET `x`='-0.1' WHERE (`entry`='10713') AND (`spellId`='204475') AND (`type`='1') AND (`id`='2');
UPDATE `areatrigger_polygon` SET `y`='2' WHERE (`entry`='10713') AND (`spellId`='204475') AND (`type`='1') AND (`id`='3');

DELETE FROM `spell_aura_dummy` WHERE (`spellId`='210705') AND (`spellDummyId`='210702') AND (`option`='1') AND (`effectDummy`='0') AND (`effectmask`='1');

