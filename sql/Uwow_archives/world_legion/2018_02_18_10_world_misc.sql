DELETE FROM `spell_concatenate_aura` WHERE (`spellid`='-211144') AND (`effectSpell`='0') AND (`auraId`='108370') AND (`effectAura`='0') AND (`option`='4');
DELETE FROM `spell_concatenate_aura` WHERE (`spellid`='108370') AND (`effectSpell`='0') AND (`auraId`='211144') AND (`effectAura`='0') AND (`option`='4');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='108370') AND (`spellDummyId`='211144') AND (`option`='2') AND (`effectDummy`='1') AND (`effectmask`='1');


DELETE FROM `spell_trigger` WHERE (`spell_id`='212580') AND (`spell_trigger`='212529') AND (`option`='38') AND (`bp0`='5') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_proc_event` WHERE `entry` IN (212580);
INSERT INTO `spell_proc_event` VALUES (212580, 0, 0, 0, 0, 0, 0, 4096+65536, 0, 0, 0, 0, 7);

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('204350', 'spell_sha_forked_lightning_pvp');


DELETE FROM `spell_script_names` WHERE (`ScriptName`='spell_sha_stormstrike');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('17364', 'spell_sha_stormflurry');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('115356', 'spell_sha_stormflurry');

DELETE FROM `spell_proc_check` WHERE `entry` IN (201846);
DELETE FROM `spell_proc_event` WHERE `entry` IN (201846);
INSERT INTO `spell_proc_event` VALUES (201846, 0, 11, 0, 16, 0, 65536, 4096, 0, 0, 0, 0, 7);