ALTER TABLE `gossip_menu`
CHANGE COLUMN `entry` `Entry`  int(11) UNSIGNED NOT NULL DEFAULT 0 FIRST ,
CHANGE COLUMN `text_id` `TextID`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `Entry`;

ALTER TABLE `gossip_menu_option`
CHANGE COLUMN `menu_id` `MenuID`  int(5) UNSIGNED NOT NULL DEFAULT 0 FIRST ,
CHANGE COLUMN `id` `OptionIndex`  smallint(5) UNSIGNED NOT NULL DEFAULT 0 AFTER `MenuID`,
CHANGE COLUMN `optionNPC` `OptionNPC`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `OptionIndex`,
CHANGE COLUMN `option_text` `OptionText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `OptionNPC`,
CHANGE COLUMN `handler_type` `OptionType`  tinyint(3) UNSIGNED NOT NULL DEFAULT 1 AFTER `OptionText`,
CHANGE COLUMN `npcflag_req` `OptionNpcflag`  int(10) UNSIGNED NOT NULL DEFAULT 1 AFTER `OptionType`,
CHANGE COLUMN `npcflag_req2` `OptionNpcflag2`  int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `OptionNpcflag`,
CHANGE COLUMN `action_menu_id` `ActionMenuID`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `OptionNpcflag2`,
CHANGE COLUMN `action_poi_id` `ActionPoiID`  mediumint(8) UNSIGNED NOT NULL DEFAULT 0 AFTER `ActionMenuID`,
CHANGE COLUMN `box_coded` `BoxCoded`  tinyint(3) UNSIGNED NOT NULL DEFAULT 0 AFTER `ActionPoiID`,
CHANGE COLUMN `box_money` `BoxMoney`  int(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `BoxCoded`,
CHANGE COLUMN `box_text` `BoxText`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL AFTER `BoxMoney`;
