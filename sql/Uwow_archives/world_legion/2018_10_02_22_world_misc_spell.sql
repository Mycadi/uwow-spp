INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('230090', 'spell_gen_intangible_presence');

DELETE FROM `spell_linked_spell` WHERE (`spell_trigger`='203080') AND (`spell_effect`='203059') AND (`type`='0') AND (`caster`='0') AND (`target`='0') AND (`hastalent`='0') AND (`effectMask`='0') AND (`actiontype`='0');