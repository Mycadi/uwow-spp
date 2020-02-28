UPDATE `gameobject_loot_template` SET `entry` = '24611' WHERE `gameobject_loot_template`.`entry` = 190584 AND `gameobject_loot_template`.`item` = 38607;


-- UPDATE `gameobject_loot_template` SET entry = (SELECT gameobject_template.data1 FROM gameobject_template WHERE gameobject_template.entry = gameobject_loot_template.entry LIMIT 1) WHERE `entry` not in (select data1 from gameobject_template) AND `entry` in (SELECT gameobject_template.entry FROM gameobject_template);


DROP TABLE IF EXISTS `gameobject_loot_template2`;
CREATE TABLE `gameobject_loot_template2` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` smallint(5) unsigned NOT NULL DEFAULT '1',
  `shared` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';

ALTER TABLE `gameobject_loot_template2`
  ADD PRIMARY KEY (`entry`,`item`);

-- добавляю лут во временную таблицу, который == го энтри.
insert ignore into gameobject_loot_template2 select * from gameobject_loot_template WHERE gameobject_loot_template.entry in (select entry from gameobject_template WHERE `type` in (3, 25));

-- удаляю лут из оригинальной таблицы, где лут == го энтри.
DELETE FROM gameobject_loot_template WHERE gameobject_loot_template.entry in (select entry from gameobject_template WHERE `type` in (3, 25));

-- проверяем лут которого быть не может.
-- select * from `gameobject_loot_template` where entry not in (select gameobject_template.entry from gameobject_template WHERE `type` in (3, 25) and gameobject_loot_template.entry = gameobject_template.data1);

-- обновляю гуиды
UPDATE `gameobject_loot_template` SET entry = (SELECT gameobject_template.entry FROM gameobject_template WHERE `type` in (3, 25) AND gameobject_template.data1 = gameobject_loot_template.entry LIMIT 1) WHERE entry not in (SELECT gameobject_template.entry FROM gameobject_template) AND entry in (SELECT gameobject_template.data1 FROM gameobject_template WHERE `type` in (3, 25) AND gameobject_template.data1 = gameobject_loot_template.entry);
update `gameobject_template` set `Data1` = `entry` WHERE `type` in (3, 25);

insert ignore into gameobject_loot_template select * from gameobject_loot_template2;

DROP TABLE gameobject_loot_template2;