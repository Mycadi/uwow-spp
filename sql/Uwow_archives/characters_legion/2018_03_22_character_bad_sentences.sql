ALTER TABLE `bad_sentences`
ADD COLUMN `penalty`  int(20)  NOT NULL DEFAULT 10 AFTER `hash`;

