ALTER TABLE `character_chat_logos`
CHANGE COLUMN `buyed_morphs` `buyed_logo`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL AFTER `guid`;

