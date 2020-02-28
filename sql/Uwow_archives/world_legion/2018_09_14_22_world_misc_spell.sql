UPDATE `spell_proc_event` SET `effectmask`='1' WHERE (`entry`='117907') AND (`effectmask`='7');
DELETE FROM `spell_trigger` WHERE (`spell_id`='117907') AND (`spell_trigger`='191894') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='191840') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='117907') AND (`spell_trigger`='191894') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('117907', 'spell_monk_gust_of_mists');
UPDATE `spell_proc_check` SET `checkspell`='119611' WHERE (`entry`='117907') AND (`entry2`='0') AND (`entry3`='0') AND (`checkspell`='115151') AND (`hastalent`='0') AND (`powertype`='-1') AND (`dmgclass`='-1') AND (`specId`='0');
UPDATE `spell_proc_event` SET `Cooldown`='0' WHERE (`entry`='117907') AND (`effectmask`='1');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('116849', 'spell_monk_life_cocoon');
DELETE FROM `spell_trigger` WHERE (`spell_id`='199563') AND (`spell_trigger`='124682') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='-209520') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='199563') AND (`spell_trigger`='119611') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='199563') AND (`spell_trigger`='227345') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='1') AND (`aura`='209520') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_proc_event` WHERE (`entry`='199563') AND (`effectmask`='1');