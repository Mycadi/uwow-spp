ALTER TABLE `bad_word`   
  ADD COLUMN `convert` VARCHAR(100) DEFAULT '' NOT NULL AFTER `bad_word`;
