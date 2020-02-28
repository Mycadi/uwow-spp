ALTER TABLE `item_sparse`
CHANGE COLUMN `UnkLegion` `ArtifactID`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `CurrencySubstitutionCount`;
