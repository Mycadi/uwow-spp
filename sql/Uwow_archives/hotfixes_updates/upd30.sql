ALTER TABLE `chr_specialization`
CHANGE COLUMN `Unknown2` `RaidBuffs`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `PrimaryStatOrder2`,
CHANGE COLUMN `Unknown3` `Flags`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `RaidBuffs`;
