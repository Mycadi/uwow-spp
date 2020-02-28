INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES ('11453', 'areatrigger_rog_control_is_king');
DELETE FROM `areatrigger_actions` WHERE (`entry`='6952') AND (`customEntry`='0') AND (`id`='1');
UPDATE `areatrigger_actions` SET `customEntry`='11453', `actionType`='15', `targetFlags`='32' WHERE (`entry`='6952') AND (`customEntry`='0') AND (`id`='0');
DELETE FROM `spell_trigger` WHERE (`spell_id`='212219') AND (`spell_trigger`='13750') AND (`option`='22') AND (`bp0`='3000') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='0');
DELETE FROM `spell_proc_check` WHERE (`entry`='212219') AND (`entry2`='0') AND (`entry3`='0') AND (`checkspell`='0') AND (`hastalent`='0') AND (`powertype`='-1') AND (`dmgclass`='-1') AND (`specId`='0');
UPDATE `areatrigger_actions` SET `targetFlags`='2' WHERE (`entry`='6952') AND (`customEntry`='11453') AND (`id`='0');



