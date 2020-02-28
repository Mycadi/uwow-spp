ALTER TABLE `item_instance_artifact`
ADD COLUMN `itemEntry`  int(10) NOT NULL AFTER `artifactAppearanceId`,
ADD COLUMN `char_guid`  bigint(20) NOT NULL AFTER `itemEntry`;

ALTER TABLE `item_instance_artifact_powers`
ADD COLUMN `itemEntry`  int(10) NOT NULL AFTER `purchasedRank`,
ADD COLUMN `char_guid`  bigint(20) NOT NULL AFTER `itemEntry`;

update item_instance_artifact iia INNER JOIN item_instance ii on ii.guid = iia.itemGuid set iia.itemEntry = ii.itemEntry, iia.char_guid = ii.owner_guid;
update item_instance_artifact_powers iia INNER JOIN item_instance ii on ii.guid = iia.itemGuid set iia.itemEntry = ii.itemEntry, iia.char_guid = ii.owner_guid;

ALTER TABLE `item_instance_artifact`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`itemEntry`, `char_guid`);

ALTER TABLE `item_instance_artifact_powers`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`itemEntry`, `char_guid`, `artifactPowerId`);




