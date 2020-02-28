DELETE FROM `spell_bonus_data` WHERE (`entry`='210027');
DELETE FROM `spell_script_names` WHERE (`spell_id`='210027') AND (`ScriptName`='spell_pri_power_word_shield');

DELETE FROM `spell_proc_event` WHERE `entry` IN (195606);
INSERT INTO `spell_proc_event` VALUES (195606, 0, 6, 0, 0, 0, 0, 32768, 0, 0, 0, 0, 1);

DELETE FROM `spell_pet_auras` WHERE (`petEntry`='19668') AND (`spellId`='28305') AND (`option`='0') AND (`target`='0') AND (`bp0`='0') AND (`aura`='0') AND (`createdspell`='0');