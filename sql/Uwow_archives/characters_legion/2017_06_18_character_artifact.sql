ALTER TABLE `item_instance_artifact`
ADD COLUMN `totalrank`  int(10) NOT NULL DEFAULT 0 AFTER `char_guid`;

