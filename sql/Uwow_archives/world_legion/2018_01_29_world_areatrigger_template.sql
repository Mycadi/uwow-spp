ALTER TABLE `areatrigger_template`
  DROP COLUMN `RandomRadiusOfSpawn`;

ALTER TABLE `areatrigger_data`
ADD COLUMN `RandomRadiusOfSpawn`  float UNSIGNED NOT NULL DEFAULT 0 AFTER `Param`;
