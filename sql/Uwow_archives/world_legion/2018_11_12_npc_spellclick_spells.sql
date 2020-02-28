ALTER TABLE `npc_spellclick_spells`
ADD COLUMN `add_npc_flag` TINYINT(1) NOT NULL DEFAULT 1 AFTER `user_type`;

