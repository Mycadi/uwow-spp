ALTER TABLE `bad_sentences`
ADD COLUMN `output`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' AFTER `sourceMask`;

