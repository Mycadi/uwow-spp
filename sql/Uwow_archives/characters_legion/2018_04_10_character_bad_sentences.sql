ALTER TABLE `bad_sentences`
ADD COLUMN `sourceMask`  int(20) UNSIGNED NOT NULL DEFAULT 1 AFTER `penalty`;

