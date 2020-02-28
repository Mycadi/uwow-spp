DELETE FROM `spell_trigger` WHERE (`spell_id`='199921') AND (`spell_trigger`='-231390') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('118455', 'spell_hun_beast_cleave_tgr');

DELETE FROM `spell_trigger` WHERE (`spell_id`='204081') AND (`spell_trigger`='204081') AND (`option`='5') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
INSERT INTO `spell_proc_event` (`entry`, `SpellFamilyName`, `effectmask`) VALUES ('204081', '9', '2');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('204081', 'spell_hun_eagles_bite');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('139', 'spell_pri_renew');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='139') AND (`spellDummyId`='235189') AND (`option`='4') AND (`effectDummy`='0') AND (`effectmask`='4');

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('33110', 'spell_pri_prayer_of_mending_heal');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('41635', 'spell_pri_prayer_of_mending_proc_aura');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('155793', 'spell_pri_prayer_of_mending_target_spell');
DELETE FROM `spell_trigger` WHERE (`spell_id`='41635') AND (`spell_trigger`='-155793') AND (`option`='41') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='41635') AND (`spell_trigger`='33110') AND (`option`='20') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');




