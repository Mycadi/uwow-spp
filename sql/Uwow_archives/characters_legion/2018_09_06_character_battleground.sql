ALTER TABLE `character_battleground_random`
ADD COLUMN `brawl`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `arena3v3`;

ALTER TABLE `character_battleground_random`
ADD COLUMN `brawlArena`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `brawl`;
