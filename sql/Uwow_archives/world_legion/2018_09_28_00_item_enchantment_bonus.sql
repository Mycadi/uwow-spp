DELETE FROM item_enchantment_bonus WHERE BonusID > 1721 OR BonusID < 1676;

ALTER IGNORE TABLE `item_enchantment_bonus` DROP COLUMN `ItemID`, DROP PRIMARY KEY, ADD PRIMARY KEY (`BonusID`);

UPDATE item_enchantment_bonus ieb INNER JOIN (SELECT COUNT(*) idcount FROM item_enchantment_bonus) AS iebb SET ieb.chance = 100.0 / iebb.idcount;
