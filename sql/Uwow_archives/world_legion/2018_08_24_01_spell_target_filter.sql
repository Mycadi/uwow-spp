ALTER TABLE `spell_target_filter`   
  ADD COLUMN `index` TINYINT(3) DEFAULT 0 NOT NULL AFTER `spellId`;