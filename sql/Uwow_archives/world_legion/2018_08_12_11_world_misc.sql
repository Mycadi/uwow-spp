INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('206491', 'spell_dh_nemesis');

DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208612') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='32');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208611') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='16');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208610') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='4');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208609') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='16384');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208608') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='2');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208607') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='32768');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208605') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='128');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208579') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='8');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208613') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='512');
DELETE FROM `spell_trigger` WHERE (`spell_id`='206491') AND (`spell_trigger`='208614') AND (`option`='0') AND (`bp0`='0') AND (`effectmask`='7') AND (`aura`='0') AND (`check_spell_id`='0') AND (`addptype`='-1') AND (`CreatureType`='64');

DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208579');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208605');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208607');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208608');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208609');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208610');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208611');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208612');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208613');
DELETE FROM `spell_aura_dummy` WHERE (`spellId`='208614');


INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('247455', 'spell_dh_spirit_bomb_damage');

DELETE FROM `spell_dummy_trigger` WHERE (`spell_id`='208173') AND (`spell_trigger`='208175') AND (`option`='5') AND (`aura`='0');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('208173', 'spell_dh_illidans_grasp_throw');
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES ('208813', 'spell_dh_illidans_grasp_visual');

















