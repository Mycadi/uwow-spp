INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('170377', 'spell_sha_earthen_rage');
DELETE FROM `spell_aura_trigger` WHERE (`spell_id`='170377') AND (`spell_trigger`='170379') AND (`option`='0') AND (`hastalent`='0') AND (`hastalent2`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='170374') AND (`spell_trigger`='170377') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
