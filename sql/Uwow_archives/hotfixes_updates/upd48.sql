ALTER TABLE `itemsparse`
CHANGE COLUMN `UnkLegion2` `RequiredExpansion`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ArtifactID`;
