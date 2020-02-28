REPLACE INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
 (115844, 0, 0, 'Чужаки! Я принесу ваши головы в дар повелителю!', 14, 0, 100, 0, 0, 81787, 0, 'Горот to Player'),
(115844, 1, 0, 'Ваши страдания – моя награда!', 14, 0, 100, 0, 0, 81789, 0, 'Горот to 0'),
(115844, 2, 0, 'Получайте!', 14, 0, 100, 0, 0, 81801, 0, 'Горот to 0'),
(115844, 3, 0, 'Я разотру тебя в пыль!', 14, 0, 100, 0, 0, 81799, 0, 'Горот to Player'),
 (115844, 4, 0, '|TInterface\\Icons\\SPELL_FIRE_FELIMMOLATION:20|t%s начинает произносить заклинание |cFFFF0000|Hspell:233062|h[Инфернальное пламя]|h|r! Прячьтесь!', 41, 0, 100, 0, 0, 81797, 0, 'Горот to 0'),
(115844, 5, 0, 'Горите! Горите в огне мучений!', 14, 0, 100, 0, 0, 81797, 0, 'Горот to 0'),
(115844, 6, 0, 'Всем стоять!', 14, 0, 100, 0, 0, 81803, 0, 'Горот to 0'),
 (115844, 7, 0, 'Еще один враг сражен!', 14, 0, 100, 0, 0, 81793, 0, 'Горот to Player'),
(115844, 8, 0, 'Стоять!', 14, 0, 100, 0, 0, 81802, 0, 'Горот to 0'),
 (115844, 9, 0, 'Жалкие смертные!', 14, 0, 100, 0, 0, 81792, 0, 'Горот to Player'),
 (115844, 10, 0, 'Вас разорвет в клочья!', 14, 0, 100, 0, 0, 81800, 0, 'Горот to Player'),
(115844, 11, 0, 'Я тебя расплющу!', 14, 0, 100, 0, 0, 81798, 0, 'Горот to Player'),
 (115844, 12, 0, 'Опять... агония...', 14, 0, 100, 0, 0, 81796, 128284, 'Горот to Player');

UPDATE `creature_template` SET `ScriptName`="boss_goroth" WHERE `entry`="115844";
INSERT INTO `instance_template` (`map`,`parent`,`script`,`allowMount`, `bonusChance`) VALUES ("1676","0","instance_tomb_of_sargeras","0", "0");

delete from spell_script_names where spell_id in (237333, 230339, 232249, 231363);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(237333, 'spell_tos_goroth_energy_tracker'),
(232249, 'spell_tos_goroth_crashing_comet_aura'),
(231363, 'spell_tos_goroth_burning_armor_aura'),
(230339, 'spell_tos_goroth_crashing_comet');
