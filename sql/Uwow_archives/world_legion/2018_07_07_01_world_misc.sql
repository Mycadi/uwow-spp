update creature_template set lootid = 0 where entry in (119072,118462);
update creature_template set lootid = 118460 where entry = 118460;
delete from creature_loot_template where entry in (119072,118462);

delete from personal_loot_template where entry in (119072,118460,118462);
INSERT INTO `personal_loot_template` (`entry`, `type`, `chance`, `lootspellId`, `bonusspellId`, `cooldownid`, `cooldowntype`, `goEntry`, `respawn`, `comment`) VALUES
(118460, 1, 15, 0, 240660, 0, 0, 0, 1, 'Boss 06 Engine of Souls');