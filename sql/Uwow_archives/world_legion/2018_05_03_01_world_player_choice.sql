
SET NAMES 'utf8';

DROP TABLE IF EXISTS `playerchoice`;
CREATE TABLE `playerchoice` (
  `ChoiceId` int(11) NOT NULL,
  `UiTextureKitId` int(11) NOT NULL DEFAULT '0',
  `Question` varchar(255) DEFAULT NULL,
  `HideWarboardHeader` tinyint(1) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `playerchoice_locale`;
CREATE TABLE `playerchoice_locale` (
  `ChoiceId` int(11) NOT NULL,
  `locale` varchar(4) NOT NULL,
  `Question` varchar(255) DEFAULT NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `playerchoice_response`;
CREATE TABLE `playerchoice_response` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `ChoiceArtFileId` int(11) NOT NULL DEFAULT '0',
  `Header` varchar(511) NOT NULL,
  `Answer` varchar(511) NOT NULL,
  `Description` varchar(2047) NOT NULL,
  `Confirmation` varchar(127) NOT NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `playerchoice_response_locale`;
CREATE TABLE `playerchoice_response_locale` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `locale` varchar(4) NOT NULL,
  `Header` varchar(511) NOT NULL DEFAULT '',
  `Answer` varchar(511) NOT NULL DEFAULT '',
  `Description` varchar(2047) NOT NULL DEFAULT '',
  `Confirmation` varchar(127) NOT NULL DEFAULT '',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`,`ResponseId`,`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `playerchoice_response_reward`;
CREATE TABLE `playerchoice_response_reward` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `TitleId` int(11) NOT NULL DEFAULT '0',
  `PackageId` int(11) NOT NULL DEFAULT '0',
  `SkillLineId` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillPointCount` int(10) unsigned NOT NULL DEFAULT '0',
  `ArenaPointCount` int(10) unsigned NOT NULL DEFAULT '0',
  `HonorPointCount` int(10) unsigned NOT NULL DEFAULT '0',
  `Money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Xp` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `playerchoice_response_reward_currency`;
CREATE TABLE `playerchoice_response_reward_currency` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `CurrencyId` int(10) unsigned NOT NULL DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `playerchoice_response_reward_faction`;
CREATE TABLE `playerchoice_response_reward_faction` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `FactionId` int(10) unsigned NOT NULL DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `playerchoice_response_reward_item`;
CREATE TABLE `playerchoice_response_reward_item` (
  `ChoiceId` int(11) NOT NULL,
  `ResponseId` int(11) NOT NULL,
  `Index` int(10) unsigned NOT NULL,
  `ItemId` int(10) unsigned NOT NULL DEFAULT '0',
  `BonusListIDs` text,
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ChoiceId`,`ResponseId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `playerchoice` VALUES ('262', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('255', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('265', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('231', '0', 'Which demon hunter specialization do you want to learn?', '0', '0');
INSERT INTO `playerchoice` VALUES ('234', '0', 'Which follower will you choose?', '0', '0');
INSERT INTO `playerchoice` VALUES ('245', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('247', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('236', '0', 'Which weapon will you claim first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('235', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('240', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('266', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('56', '0', 'Какую постройку мы возведем на аванпосте?', '0', '0');
INSERT INTO `playerchoice` VALUES ('52', '0', 'Какую постройку мы возведем на аванпосте?', '0', '0');
INSERT INTO `playerchoice` VALUES ('55', '0', 'What outpost structure should we construct?', '0', '0');
INSERT INTO `playerchoice` VALUES ('51', '0', 'What outpost structure should we construct?', '0', '0');
INSERT INTO `playerchoice` VALUES ('58', '0', 'What outpost structure should we construct?', '0', '0');
INSERT INTO `playerchoice` VALUES ('65', '0', 'Strategic Assault Choice', '0', '0');
INSERT INTO `playerchoice` VALUES ('53', '0', 'Какую постройку мы возведем на аванпосте?', '0', '0');
INSERT INTO `playerchoice` VALUES ('116', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('120', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('109', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('95', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('72', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('99', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('57', '0', 'Какую постройку мы возведем на аванпосте?', '0', '0');
INSERT INTO `playerchoice` VALUES ('54', '0', 'Какую постройку мы возведем на аванпосте?', '0', '0');
INSERT INTO `playerchoice` VALUES ('165', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('154', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('147', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('166', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('140', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('141', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('63', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('91', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('158', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('152', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('135', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('172', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('150', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('161', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('160', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('174', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('169', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('86', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('151', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('128', '0', 'Выбор военной операции', '0', '0');
INSERT INTO `playerchoice` VALUES ('202', '0', 'План битвы в Танаане', '0', '0');
INSERT INTO `playerchoice` VALUES ('192', '0', 'План битвы в Танаане', '0', '0');
INSERT INTO `playerchoice` VALUES ('204', '0', 'План битвы в Танаане', '0', '0');
INSERT INTO `playerchoice` VALUES ('253', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('242', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('248', '0', 'Which weapon should we pursue first?', '0', '0');
INSERT INTO `playerchoice` VALUES ('280', '0', 'Вы хотите начать поиски второго артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('270', '0', 'Вы хотите начать поиски второго артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('164', '0', 'Strategic Assault Choice', '0', '0');
INSERT INTO `playerchoice` VALUES ('284', '0', 'Вы хотите начать поиски другого артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('287', '0', 'Вы хотите начать поиски другого артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('274', '0', 'Какое оружие нам следует искать следующим?', '0', '0');
INSERT INTO `playerchoice` VALUES ('292', '0', 'Вы хотите начать поиски артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('273', '0', 'Вы хотите начать поиски второго артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('279', '0', 'Вы хотите начать поиски второго артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('282', '0', 'Вы хотите начать поиски второго артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('275', '0', 'Вы хотите начать поиски второго артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('277', '0', 'Вы хотите начать поиски второго артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('288', '0', 'Вы хотите начать поиски другого артефактного оружия?', '0', '0');
INSERT INTO `playerchoice` VALUES ('237', '0', 'Я покажу, как можно огранить один из этих камней. Какой эскиз ты хочешь изучить?', '0', '0');
INSERT INTO `playerchoice` VALUES ('238', '0', 'Какое кольцо вы хотите изготовить? От этого зависит тип самоцвета, который понадобится для работы.', '0', '0');
INSERT INTO `playerchoice` VALUES ('246', '0', 'Какой эскиз Джабрул должен показать?', '0', '0');

INSERT INTO `playerchoice_response` VALUES ('262', '568', '0', '1389395', 'Assassination', 'Select', '', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('262', '569', '2', '1389396', 'Outlaw', 'Select', 'The Dread Admiral Eliza is known as the scourge of the South Seas. Many have learned to fear her cursed blades.\n\nWe\'ve tracked her anchored off the coast of Azsuna in the Broken Isles. Her blades can be yours if you hurry.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('262', '570', '3', '1389397', 'Subtlety', 'Select', 'The Legion now boast one Akaari Shadowgore - an eredar assassin unlike any we\'ve seen. Her daggers twist the very air around their wielder to conceal them in shadow.\n\nWe have intelligence pointing to her current location. Now is the time to strike.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('255', '546', '0', '1274663', 'Havoc', 'Select', 'These glaives belong to the former demon hunter Varedis Felsoul, who was slain defending the Black Temple many years ago.\n\nThe Burning Legion\'s master, Kil\'Jaeden the Deceiver, raised Varedis in the Twisting Nether and imbued his glaives with a piece of the demon lord\'s chaotic power.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('255', '547', '1', '1274663', 'Vengeance', 'Select', 'The mighty Aldrachi were one of the few to stand against the Burning Legion. It took Sargeras to fell their greatest champion, seizing his warblades in the process.\n\nNow the traitorous Illidari Caria, servant of Kil\'Jaeden, wields the infamous warblades. The more souls she claims, the more powerful she becomes...', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('265', '584', '0', '1274663', 'Arcane', 'Select', 'Aluneth was most notably wielded for a time by Aegwynn, the only female Guardian of Tirisfal, although stories indicate that it is far older than she.\n\nToward the end of Aegwynn\'s life, she entrusted the staff to the Blue Dragonflight. Deeming the staff too dangerous to use, they locked it away in a secret vault, where it remains still.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('265', '585', '1', '1274663', 'Fire', 'Select', '\"Flamestrike\" in its native tongue, Felo\'melorn was borne into battle by members of the Sunstrider family as they proved their valor in the War of the Ancients, during the Troll Wars, and against the death knight Arthas Menethil.\n\nUltimately, the sword was lost in the frigid wastes of Northrend.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('265', '586', '2', '1274662', 'Frost', 'Select', 'This greatstaff was wielded by Alodi, the first Guardian of Tirisfal. He bore the staff into many battles against Legion forces for the century in which he served as Guardian.\n\nShortly after Alodi stepped down as Guardian, he disappeared with the staff. No one knows where Alodi or the staff ended up, except perhaps Alodi himself.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('231', '478', '0', '1274664', 'Havoc', 'Истребление', 'Continue your mastery of Havoc.\n\nHavoc specialized demon hunters can use Metamorphosis to turn into winged demons. They focus on Melee DPS.\n\nChoosing Havoc grants |cFFFF0000|Hspell:162264|h[Metamorphosis]|h|r as well as |cFFFF0000|Hspell:185164|h[Mastery: Demonic Presence]|h|r.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('231', '479', '1', '1274665', 'Vengeance', 'Месть', 'Change to mastery of Vengeance.\n\nVengeance specialized demon hunters can use Metamorphosis to turn into spiked demons. They focus on Tanking.\n\nChoosing Vengeance grants |cFFFF0000|Hspell:187827|h[Metamorphosis]|h|r as well as |cFFFF0000|Hspell:203747|h[Mastery: Fel Blood]|h|r.\n\nYour |cFFFF0000|Hspell:193921|h[Eye Beam]|h|r will change into |cFFFF0000|Hspell:203720|h[Demon Spikes]|h|r.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('234', '486', '0', '1274666', '', 'Kayn Sunfury', 'Kayn Sunfury is a loyal soldier and one of Lord Illidan Stormrage\'s most trusted lieutenants.\n\nHe believes that cooperation and personal sacrifice are necessary to defeat the Legion.\n\nHonorable and demanding, he follows Illidan\'s ideals to get the job done no matter the cost.\n\n|cFF7a0000 This story choice will not affect your character\'s power.|r', '', '0');
INSERT INTO `playerchoice_response` VALUES ('234', '487', '1', '1274661', '', 'Altruis the Sufferer', 'Altruis the Sufferer is a renegade who takes matters into his own hands.\n\nAlthough he and Illidan share the same goals, he often disagrees with Illidan\'s methods.\n\nBelieving Illidan no longer controls his demonic powers, Altruis wants new leadership for the Illidari.\n\n|cFF7a0000 This story choice will not affect your character\'s power.|r', '', '0');
INSERT INTO `playerchoice_response` VALUES ('245', '525', '0', '1389403', 'Destruction', 'Select', 'Crafted by hundreds of eredar warlocks and the Dark Titan himself, it was used for terrible acts of destruction. Capable of tearing gaps in reality to other worlds, it was the key to the invasion of Azeroth.\n\nLater used by Nerzhul, he thoughtlessly unleashed its power on Draenor, causing its near destruction. Thought to be long lost, it has returned to the hands of the Legion.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('245', '524', '1', '1389402', 'Demonology', 'Select', 'The sorcerer Thal\'kiel was one of the first Eredar who learned the techniques of summoning and controlling demons.\nAfter his defeat, his skull was put on display as an example of the dangers of the dark arts.\nThe lesson went unheeded.\n\nAfter the Eredar\'s fall, the skull was taken by the generals of the Burning Legion to enhance their control of their armies.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('247', '531', '0', '1390104', 'Guardian', 'Select', 'The mighty bear god, Ursoc, died during the War of the Ancients defending Azeroth from the Burning Legion.\n\nThe last remnants of his physical form, his claws, were placed within the Emerald Dream for safekeeping. There, his spirit still guards over them.\n\nIf you can obtain the claws they would be a valuable asset in our battles against the Legion.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('247', '530', '1', '1390103', 'Feral', 'Select', 'Ashamane, an ancient and powerful nightsaber, fought in the War of the Ancients and fell ages ago deep in the forests of Val\'Sharah.\n\nA group of druids called the Ashen honor her memory and are the guardians of the shrine that houses her fangs. \n\nWe will need to persuade them to allow their precious artifact to be used in combat, but the fangs would be a powerful weapon against the Legion.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('247', '529', '2', '1390102', 'Balance', 'Select', 'Held for safe keeping by Tyrande, the High Priestess of Elune, the Scythe of Elune carries a long and unsettling history for druids.\n\nTied to the origin of the worgen on Azeroth, the scythe is said to possess untold lunar power for the druid with balance enough to keep control.\n\nWe need only to convince Tyrande\'s people that you are worthy to keep it safe in the battles to come.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('236', '491', '0', '1274663', 'Arms', 'Select', 'The first king of the humans, Thoradin, was a mighty ruler and a mighty warrior. He carried with him a greatsword forged by vrykul, empowered by elves, and bloodied on the fields of countless battles.\n\nStrom\'kar, ender of wars, was lost with Thoradin. One strong enough to recover the sword would bring to bear a blade unlike any seen ages since.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('236', '492', '1', '1274663', 'Protection', 'Select', 'An ancient vrykul king crafted a stolen scale of Neltharion, the Earth-Warder into a bulwark of immense power. This great shield now lies by his side, deep in a nearly forgotten tomb.\n\nReclaim this shield and you will reap not only an impenetrable guard, but also a glimpse of the mighty fiery powers of the dragon aspect himself.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('236', '493', '2', '1274663', 'Fury', 'Select', 'The warswords of my very own Valarjar, my greatest champion, stolen from me by the curr, Helya. She and her fool servant make a mockery of their prowess by stealing the souls of great heroes before they can ascend to the Halls of Valor.\n\nMighty weapons that would turn you into a living storm of steel and fire. They would make a worthy choice.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('235', '488', '0', '1271766', 'Holy', 'Select', 'A secret order of paladins has been watching over the resting place of the great titan watcher Tyr for hundreds of years. Histories tell that his powerful warhammer as buried there with him.\n\nRecent events have threatened the safety of their secret charge, and they have appealed for help from paladins across Azeroth.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('235', '489', '1', '1271767', 'Protection', 'Select', 'An ancient vrykul saga speaks of a shield crafted by Tyr himself. During the Winterskorn War it was used to expose Loken\'s lies to the vrykul and convert many to Tyr\'s cause.\n\nThe shield final resting place of the shield was lost to time, but rumors point to one who might know the final chapters of its story.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('235', '490', '2', '1271768', 'Retribution', 'Select', 'During our failed assault on the Broken Shore, Highlord Tirion Fordring was lost, and with him our greatest weapon against the Legion... the Ashbringer.\n\nWe need to return to the Broken Shore and recover Tirion and the Ashbringer at all costs.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('240', '505', '0', '1390108', 'Survival', 'Select', 'The Highmountain tribe lost their greatest weapon, the ancient spear of Huln Highmountain, long ago to a magically corrupted monstrosity.\n\nThey ask you to travel to Stormheim, kill their nemesis, and reclaim the spear for the fight against the Legion.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('240', '506', '1', '1390107', 'Marksmanship', 'Select', 'Many years ago, the ranger Alleria Windrunner wielded her family bow, Thas\'dorah, to batle the Legion. Her current whereabouts are unknown.\n\nIf Alleria could be located, her weapon would become a valuable asset in the war against the demons.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('266', '587', '0', '1389399', 'Enhancement', 'Select', 'The Doomhammer has fallen into the Maelstrom. It would be wise to keep it from falling into the wrong hands.\n\nTravel with Thrall into Deepholm to pursue the missing artifact. Beware - the demon Geth\'xun also plummeted into the Maelstrom and may still be alive.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('266', '588', '1', '1389398', 'Elemental', 'Select', 'The gladiator Rehgar knows of a powerful weapon that may aid us against the Legion.\n\nAfter the Pandaren Campaign, the weapons of the storm god Ra-Den were discovered beneath the Throne of Thunder. They were placed in the care of the White Tiger, who will give them only to one who is worthy. Rehgar will help you prove your worth!', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('266', '589', '2', '1389400', 'Restoration', 'Select', 'It is said that Queen Azshara wielded a scepter that had command over the sea and the waters of life.\n\nErunak has long sought the location of this artifact, and one of his shaman was close to finding it when she disappeared. Has she found it? Could the legends be true? What could such an artifact do in the hands of a talented shaman?', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('56', '129', '0', '1041263', '', 'Низинная лесопилка', 'Низинная лесопилка ежедневно предоставляет ресурсы и снижает затраты на другие постройки и специализации гарнизона.\n\nКак только лесопилка будет достроена, вам откроется способность|cFFFF0000|Hspell:164050|h[Призыв механического крошшера-5000]|h|r в пределах Горгронда.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('56', '130', '1', '1041769', '', 'Бойцовский клуб дикарей', 'Бойцовский клуб дикарей предоставит тренировочные задания для улучшения соратников.\n\nКак только бойцовский клуб будет достроен, вам откроется способность|cFFFF0000|Hspell:164012|h[Честь героя]|h|r в пределах Горгронда.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('52', '121', '0', '986495', '', 'Оружейная Вол\'джина', 'Оружейная Вол\'джина предоставляет оружие и доспехи высокого качества для ваших солдат.\n\nКак только оружейная будет достроена, вам откроется способность |cFFFF0000|Hspell:162075|h[Артиллерийский удар]|h|r в пределах Таладора.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('52', '122', '1', '986497', '', 'Волшебное святилище', 'Волшебное святилище превратит часть ваших войск в могущественных заклинателей.\n\nКак только святилище будет достроено, вам откроется способность|cFFFF0000|Hspell:161767|h[Охранная сфера]|h|r в пределах Таладора.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('55', '127', '0', '1041262', '', 'Highpass Logging Camp', 'The Highpass Logging Camp will allow for operations in the jungle overgrowth of southern Gorgrond.\n\nOnce fully operational, the Highpass Logging Camp grants the use of |cFFFF0000|Hspell:164050|h[Summon Mechashredder 5000]|h|r within Gorgrond.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('55', '128', '1', '1041768', '', 'Highpass Sparring Ring', 'The Highpass Sparring Ring will allow for operations in the brutal wastelands of northern Gorgrond.\n\nOnce fully operational, the  Highpass Sparring Ring grants the use of |cFFFF0000|Hspell:164012|h[Champion\'s Honor]|h|r within Gorgrond.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('51', '119', '0', '986494', '', 'Wrynn Artillery Tower', 'The Wrynn Artillery Tower will provide higher quality weapons and armor for your troops.\n\nOnce fully operational, the Wrynn Artillery Tower grants the use of |cFFFF0000|Hspell:162075|h[Artillery Strike]|h|r within Talador.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('51', '120', '1', '986496', '', 'Arcane Sanctum', 'The Arcane Sanctum will transform some of your forces into powerful spellcasters.\n\nOnce fully operational, it grants the use of |cFFFF0000|Hspell:161767|h[Guardian Orb]|h|r within Talador.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('58', '133', '0', '1041764', '', 'Stoktron Brewery', 'The Stoktron Brewery will provide housing for additional troops and boosts the morale of your forces.\n\nOnce fully operational, the Stoktron Brewery grants the use of |cFFFF0000|Hspell:168487|h[Home Away from Home]|h|r within Spires of Arak.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('58', '134', '1', '1041766', '', 'Smuggler\'s Den', 'The Smuggler\'s Den will open up trade routes with other forces, granting access to rare supplies and materials.\n\nOnce fully operational, the Smuggler\'s Den grants the use of |cFFFF0000|Hspell:170108|h[Smuggling Run!]|h|r within Spires of Arak.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('65', '147', '0', '1042055', '', 'Magnarok', 'Colossal magnaron, gronn, and other stone monstrosities have been threatening our outposts in the west. Most seem to originate from Magnarok in Frostfire Ridge.\n\nIf we strike at them at their home, we should be able to force them back. It\'s risky, but it may be our best move. While you\'re there, see if you can recover any of our supplies.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('65', '148', '1', '1042005', '', 'The Pit (Group)', 'The Blackrock forces based out of the Pit in Gorgrond make up the bulk of the Iron Horde army. If we crush them on their home soil, the rest of the Iron Horde will have little hope of standing against us.\n\nIf you choose the battle, bring friends. The Blackrock won\'t be defeated easily.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('53', '123', '0', '1011903', '', 'Стойла рангари', 'Стойла рангари предоставят улучшенных ездовых талбуков для ваших солдат.\n\nКак только стойла будут достроены, вам откроется способность|cFFFF0000|Hspell:165803|h[Телаарский талбук]|h|r в пределах Награнда.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('53', '124', '1', '1011905', '', 'Танковая мастерская Телаара', 'Танковая мастерская Телаара предоставит осадные машины для ваших солдат.\n\nКак только мастерская будет достроена, вам откроется способность|cFFFF0000|Hspell:160240|h[Телаарский танк]|h|r в пределах Награнда.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('116', '249', '0', '1041782', '', 'Анклав Призрачной Луны', 'Остатки клана Призрачной Луны продолжают свою подрывную деятельность в горах на восточной границе Пиков Арака.\n\nБоудрик Грей обеспокоен тем, что враг слишком близко подошел к гарнизону, и поручил разобраться с этой проблемой как можно скорее.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('116', '250', '1', '1042076', '', 'Ашран (PvP)', 'Пока мы сражаемся на Дреноре, подлая Орда пытается отбить у нас земли Ашрана.\n\nБоевой дух наших войск поднимется, если ты примешь участие в битве и вселишь ужас в сердца врагов.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('120', '257', '0', '1042055', '', 'Магнарок', 'Огромные магнароны, гронны и прочие каменные чудовища – все они угрожают нашим западным границам. Похоже, большинство из них – выходцы из Магнарока, что на Хребте Ледяного Огня.\n\nУдарив по ним в их же логове, мы вынудим их отступить от наших земель. Это рискованно, но лучшего плана у нас нет. И пока будешь там, поищи наши припасы.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('120', '258', '1', '1042076', '', 'Ашран (PvP)', 'Пока мы сражаемся на Дреноре, подлая Орда пытается отбить у нас земли Ашрана.\n\nБоевой дух наших войск поднимется, если ты примешь участие в битве и вселишь ужас в сердца врагов.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('109', '235', '0', '1042055', '', 'Магнарок', 'Огромные магнароны, гронны и прочие каменные чудовища – все они угрожают нашим западным границам. Похоже, большинство из них – выходцы из Магнарока, что на Хребте Ледяного Огня.\n\nУдарив по ним в их же логове, мы вынудим их отступить от наших земель. Это рискованно, но лучшего плана у нас нет. И пока будешь там, поищи наши припасы.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('109', '236', '1', '1042054', '', 'Лагерь Железной Орды', 'Боевые машины Железной Орды поступают на поле боя десятками, и нам крайне тяжело им противостоять. Судя по всему, эти боевые машины везут из осадного лагеря Железной Орды, который расположен в восточной части Хребта Ледяного Огня.\n\nЕсли выбить Железную Орду из осадного лагеря и прекратить поставки боевых машин, мы переломим ход войны.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('95', '207', '0', '1042006', '', 'Заросли Вечного Цветения', 'Ботани и сотворенные ими растения-монстры потихоньку подбираются к нашим заставам на севере. На месте каждой убитой твари тут же возникает несколько новых.\n\nБоудрик Грей считает, что мы должны нанести контрудар в самое сердце их владений и атаковать Заросли Вечного Цветения. Он надеется, что так мы сможем отбросить их назад в глушь Горгронда, и тогда у нас появится пространство для маневра.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('95', '208', '1', '1041981', '', 'Шаттрат', 'Шаттрат находится под контролем саргерайских войск под предводительством экзарха-предателя Сокретара.\n\nЗащитники Ша\'тар просят помощи в борьбе с силами Совета Теней в восточной части города.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('72', '161', '0', '1041783', '', 'Верхний Скеттис', 'Мы регулярно получаем тревожные донесения с юга – люди-птицы устраивают засады на караваны на главных торговых маршрутах и сжигают их.\n\nСтражники на наших заставах просят принять меры и контратаковать основные силы приверженцев Рухмар в Скеттисе на Пиках Арака.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('72', '162', '1', '1042005', '', 'Яма (группа)', 'Силы клана Черной горы, базирующиеся в районе Ямы в Горгронде, составляют костяк армии Железной Орды. Если мы разобьем их на родной земле, остатки Железной Орды уже не смогут выстоять против нас.\n\nЕсли ты решишься на это сражение, возьми с собой надежных товарищей. На легкую победу над кланом Черной горы рассчитывать точно не стоит.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('99', '215', '0', '1042067', '', 'Плато Сокретара', 'Последние донесения свидетельствуют о повышении активности саргерайских войск на Плато Сокретара в долине Призрачной Луны.\n\nПрислужники Сокретара представляют опасность как для дренеев, так и для нашего гарнизона. Необходимо разобраться с ними как можно скорее.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('99', '216', '1', '1041981', '', 'Шаттрат', 'Шаттрат находится под контролем саргерайских войск под предводительством экзарха-предателя Сокретара.\n\nЗащитники Ша\'тар просят помощи в борьбе с силами Совета Теней в восточной части города.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('57', '131', '0', '1041765', '', 'Таверна \"Домашний очаг\"', 'Таверна \"Домашний очаг\" позволит разместить больше солдат и поднимет боевой дух ваших войск.\n\nКак только таверна будет достроена, вам откроется способность |cFFFF0000|Hspell:168499|h[Дом вдали от дома]|h|r в пределах Пиков Арака.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('57', '132', '1', '1041767', '', 'Логово контрабандистов', 'Логово контрабандистов позволит наладить пути сообщения с другими войсками и получить доступ к редким ресурсам и припасам.\n\nКак только логово будет достроено, вам откроется способность|cFFFF0000|Hspell:170097|h[Контрабандный путь!]|h|r в пределах Пиков Арака.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('54', '125', '0', '1011904', '', 'Вор\'варские стойла', 'Вор\'варские стойла предоставят улучшенных ездовых северных волков для ваших солдат.\n\nКак только стойла будут достроены, вам откроется способность|cFFFF0000|Hspell:164222|h[Северный боевой волк]|h|r в пределах Награнда.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('54', '126', '1', '1011906', '', 'Танковая мастерская Вор\'вара', 'Танковая мастерская Вор\'вара предоставит разрушителей для ваших солдат.\n\nКак только мастерская будут достроена, вам откроется способность|cFFFF0000|Hspell:160241|h[Вор\'варский разрушитель]|h|r в пределах Награнда.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('165', '347', '0', '1041776', '', 'Разбитый берег', 'На наши позиции нападают толпы огронов. Скольких бы мы ни перебили, все время появляются новые.\n\nКажется, что большинство из них приходит с Разбитого берега, что на западе Награнда. Если мы хотим сохранить шансы на успех в грядущих битвах, необходимо прекратить нападения этих огронов.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('165', '348', '1', '1041980', '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('154', '325', '0', '1042053', '', 'Магнарок', 'Огромные магнароны, гронны и прочие каменные чудовища – все они угрожают нашим западным границам. Похоже, большинство из них – выходцы из Магнарока, что на Хребте Ледяного Огня.\n\nУдарив по ним в их же логове, мы вынудим их отступить от наших земель. Это рискованно, но лучшего плана у нас нет. И пока будешь там, поищи наши припасы.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('154', '326', '1', '1041981', '', 'Ашран (PvP)', 'Пока мы сражаемся на Дреноре, подлый Альянс пытается отбить у нас земли Ашрана.\n\nБоевой дух наших войск поднимется, если ты примешь участие в битве и вселишь ужас в сердца врагов.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('147', '311', '0', '1042066', '', 'Гнездовье Темного Прилива', 'Во время наших сражений с Железной Ордой на поле боя начинает появляться все больше рилаков. Если не разобраться с ними, то мы потеряем контроль над всеми дорогами и будем вынуждены отступить к аванпостам.\n\nСкорее всего, этих рилаков отправляют из Гнездовья Темного Прилива в долине Призрачной Луны. Если мы будем действовать быстро, то сможем решить эту проблему.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('147', '312', '1', '1041980', '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('166', '349', '0', '1042053', '', 'Земли Каменного Неистовства', 'Огры клана Кровавого Молота с Хребта Ледяного Огня устраивают засады на торговых путях всего континента и заставляют пленных солдат работать в своих шлаковых шахтах.\n\nТемный охотник Рокхан просит освободить попавших в плен союзников, которых держат в главном лагере Кровавого Молота в Землях Каменного Неистовства.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('166', '350', '1', '1041980', '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('140', '297', '0', '1042053', '', 'Земли Каменного Неистовства', 'Огры клана Кровавого Молота с Хребта Ледяного Огня устраивают засады на торговых путях всего континента и заставляют пленных солдат работать в своих шлаковых шахтах.\n\nТемный охотник Рокхан просит освободить попавших в плен союзников, которых держат в главном лагере Кровавого Молота в Землях Каменного Неистовства.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('140', '298', '1', '1042005', '', 'Яма (группа)', 'Силы клана Черной горы, базирующиеся в районе Ямы в Горгронде, составляют костяк армии Железной Орды. Если мы разобьем их на родной земле, остатки Железной Орды уже не смогут выстоять против нас.\n\nЕсли ты решишься на это сражение, возьми с собой надежных товарищей. На легкую победу над кланом Черной горы рассчитывать точно не стоит.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('141', '299', '0', '1041782', '', 'Анклав Призрачной Луны', 'Остатки клана Призрачной Луны продолжают свою подрывную деятельность в горах на восточной границе Пиков Арака.\n\nРокхан обеспокоен тем, что они находятся слишком близко к ключевым перевалам, ведущим в долину Призрачной Луны, и просит срочно ослабить противника.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('141', '300', '1', '1041980', '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('63', '143', '0', '1042053', '', 'Земли Каменного Неистовства', 'Огры клана Кровавого Молота с Хребта Ледяного Огня устраивают засады на торговых путях всего континента и заставляют пленных солдат работать в своих шлаковых шахтах.\n\nТемный охотник Рокхан просит освободить попавших в плен союзников, которых держат в главном лагере Кровавого Молота в Землях Каменного Неистовства.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('63', '144', '1', '1041981', '', 'Шаттрат', 'Шаттрат находится под контролем саргерайских войск под предводительством экзарха-предателя Сокретара.\n\nБлагодаря помощи демонов Пустоты, силы Совета Теней укрепляют свои позиции в восточной части города. С ними необходимо разобраться до того, как они начнут представлять для нас угрозу.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('91', '199', '0', '1042066', '', 'Гнездовье Темного Прилива', 'Во время наших сражений с Железной Ордой на поле боя начинает появляться все больше рилаков. Если не разобраться с ними, то мы потеряем контроль над всеми дорогами и будем вынуждены отступить к аванпостам.\n\nСкорее всего, этих рилаков отправляют из Гнездовья Темного Прилива в долине Призрачной Луны. Если мы будем действовать быстро, то сможем решить эту проблему.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('91', '200', '1', '1041980', '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('158', '333', '0', '1041783', '', 'Верхний Скеттис', 'Мы регулярно получаем тревожные донесения с юга – люди-птицы устраивают засады на караваны на главных торговых маршрутах и сжигают их.\n\nСтражники на наших заставах просят принять меры и контратаковать основные силы приверженцев Рухмар в Скеттисе на Пиках Арака.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('158', '334', '1', '1041981', '', 'Шаттрат', 'Город Шаттрат находится под контролем саргерайских войск, которыми командует бывший экзарх, предатель Сокретар.\n\nСилы Совета Теней в восточной части города укрепляют свои позиции благодаря поддержке демонов из Пустоты, и мы должны нанести им сокрушительный удар, пока они не поставили под угрозу срыва всю нашу операцию.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('152', '321', '0', '1042006', '', 'Заросли Вечного Цветения', 'Ботани и сотворенные ими растения-монстры потихоньку подбираются к нашим заставам на севере. На месте каждой убитой твари тут же возникает несколько новых.\n\nРокхан считает, что мы должны нанести контрудар в самое сердце их владений и атаковать Заросли Вечного Цветения. Он надеется, что так мы сможем отбросить их назад в глушь Горгронда, и тогда у нас появится пространство для маневра.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('152', '322', '1', '1042077', '', 'Ашран (PvP)', 'Пока мы сражаемся на Дреноре, подлый Альянс пытается отбить у нас земли Ашрана.\n\nБоевой дух наших войск поднимется, если ты примешь участие в битве и вселишь ужас в сердца врагов.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('135', '287', '0', '1041783', '', 'Верхний Скеттис', 'Мы регулярно получаем тревожные донесения с юга – люди-птицы устраивают засады на караваны на главных торговых маршрутах и сжигают их.\n\nСтражники на наших заставах просят принять меры и контратаковать основные силы приверженцев Рухмар в Скеттисе на Пиках Арака.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('135', '288', '1', '1041980', '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('172', '361', '0', '1042067', '', 'Плато Сокретара', 'Последние донесения свидетельствуют о повышении активности саргерайских войск на Плато Сокретара, что на юге долины Призрачной Луны.\n\nПрислужники Сокретара представляют опасность для всего Дренора. Нельзя допустить, чтобы они укрепились так далеко от наших позиций.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('172', '362', '1', '1042005', '', 'Яма (группа)', 'Силы клана Черной горы, базирующиеся в районе Ямы в Горгронде, составляют костяк армии Железной Орды. Если мы разобьем их на родной земле, остатки Железной Орды уже не смогут выстоять против нас.\n\nЕсли ты решишься на это сражение, возьми с собой надежных товарищей. На легкую победу над кланом Черной горы рассчитывать точно не стоит.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('150', '317', '0', '1041782', '', 'Анклав Призрачной Луны', 'Остатки клана Призрачной Луны продолжают свою подрывную деятельность в горах на восточной границе Пиков Арака.\n\nРокхан обеспокоен тем, что они находятся слишком близко к ключевым перевалам, ведущим в долину Призрачной Луны, и просит срочно ослабить противника.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('150', '318', '1', '1042077', '', 'Ашран (PvP)', 'Пока мы сражаемся на Дреноре, подлый Альянс пытается отбить у нас земли Ашрана.\n\nБоевой дух наших войск поднимется, если ты примешь участие в битве и вселишь ужас в сердца врагов.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('161', '339', '0', '1042006', '', 'Заросли Вечного Цветения', 'Ботани и сотворенные ими растения-монстры потихоньку подбираются к нашим заставам на севере. На месте каждой убитой твари тут же возникает несколько новых.\n\nРокхан считает, что мы должны нанести контрудар в самое сердце их владений и атаковать Заросли Вечного Цветения. Он надеется, что так мы сможем отбросить их назад в глушь Горгронда, и тогда у нас появится пространство для маневра.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('161', '340', '1', '1042005', '', 'Яма (группа)', 'Силы клана Черной горы, базирующиеся в районе Ямы в Горгронде, составляют костяк армии Железной Орды. Если мы разобьем их на родной земле, остатки Железной Орды уже не смогут выстоять против нас.\n\nЕсли ты решишься на это сражение, возьми с собой надежных товарищей. На легкую победу над кланом Черной горы рассчитывать точно не стоит.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('160', '337', '0', '1041778', '', 'Сторожевой пост Мок\'гол', 'Налетчики из клана Песни Войны со сторожевого поста Мок\'гол не дают покоя всей округе. Мы предупреждаем путников о том, что путешествовать в одиночку очень опасно, но не все нас слушают.\n\nЕсли мы нападем на сторожевой пост Мок\'гол, то клан Песни Войны уйдет в глухую оборону, а их налетчики не будут нас беспокоить.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('160', '338', '1', '1041981', '', 'Шаттрат', 'Город Шаттрат находится под контролем саргерайских войск, которыми командует бывший экзарх, предатель Сокретар.\n\nСилы Совета Теней в восточной части города укрепляют свои позиции благодаря поддержке демонов из Пустоты, и мы должны нанести им сокрушительный удар, пока они не поставили под угрозу срыва всю нашу операцию.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('174', '365', '0', '1041778', '', 'Сторожевой пост Мок\'гол', 'Налетчики из клана Песни Войны со сторожевого поста Мок\'гол не дают покоя всей округе. Мы предупреждаем путников о том, что путешествовать в одиночку очень опасно, но не все нас слушают.\n\nЕсли мы нападем на сторожевой пост Мок\'гол, то клан Песни Войны уйдет в глухую оборону, а их налетчики не будут нас беспокоить.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('174', '366', '1', '1041980', '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('169', '355', '0', '1042066', '', 'Гнездовье Темного Прилива', 'Во время наших сражений с Железной Ордой на поле боя начинает появляться все больше рилаков. Если не разобраться с ними, то мы потеряем контроль над всеми дорогами и будем вынуждены отступить к аванпостам.\n\nСкорее всего, этих рилаков отправляют из Гнездовья Темного Прилива в долине Призрачной Луны. Если мы будем действовать быстро, то сможем решить эту проблему.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('169', '356', '1', '1042005', '', 'Яма (группа)', 'Силы клана Черной горы, базирующиеся в районе Ямы в Горгронде, составляют костяк армии Железной Орды. Если мы разобьем их на родной земле, остатки Железной Орды уже не смогут выстоять против нас.\n\nЕсли ты решишься на это сражение, возьми с собой надежных товарищей. На легкую победу над кланом Черной горы рассчитывать точно не стоит.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('86', '189', '0', '1041782', '', 'Анклав Призрачной Луны', 'Остатки клана Призрачной Луны продолжают свою подрывную деятельность в горах на восточной границе Пиков Арака.\n\nБоудрик Грей обеспокоен тем, что враг слишком близко подошел к гарнизону, и поручил разобраться с этой проблемой как можно скорее.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('86', '190', '1', '1041980', '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('151', '319', '0', '1042067', '', 'Плато Сокретара', 'Последние донесения свидетельствуют о повышении активности саргерайских войск на Плато Сокретара, что на юге долины Призрачной Луны.\n\nПрислужники Сокретара представляют опасность для всего Дренора. Нельзя допустить, чтобы они укрепились так далеко от наших позиций.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('151', '320', '1', '1042077', '', 'Ашран (PvP)', 'Пока мы сражаемся на Дреноре, подлый Альянс пытается отбить у нас земли Ашрана.\n\nБоевой дух наших войск поднимется, если ты примешь участие в битве и вселишь ужас в сердца врагов.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('128', '273', '0', '1041778', '', 'Сторожевой пост Мок\'гол', 'Налетчики из клана Песни Войны со сторожевого поста Мок\'гол не дают покоя всей округе. Мы предупреждаем путников о том, что путешествовать в одиночку очень опасно, но не все нас слушают.\n\nЕсли мы нападем на сторожевой пост Мок\'гол, то клан Песни Войны уйдет в глухую оборону, а их налетчики не будут нас беспокоить.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('128', '274', '1', '1042005', '', 'Яма (группа)', 'Силы клана Черной горы, базирующиеся в районе Ямы в Горгронде, составляют костяк армии Железной Орды. Если мы разобьем их на родной земле, остатки Железной Орды уже не смогут выстоять против нас.\n\nЕсли ты решишься на это сражение, возьми с собой надежных товарищей. На легкую победу над кланом Черной горы рассчитывать точно не стоит.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('202', '421', '0', '1126586', '', 'Храм Ша\'наар', 'В холмах Танаанских джунглей находится древний храм. Когда-то это было святое место, теперь же саргераи превратили его в свой вертеп – призывают там демонов.\n\nМы должны нанести им удар до того, как они закончат свои ритуалы. Чем дольше мы будем тянуть с этим, тем сильнее будет враг.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('202', '422', '1', '1125250', '', 'Трон Кил\'джедена', 'Совет Теней призывает своих повелителей-демонов на горе, которую они называют Троном Кил\'джедена. Вне всякого сомнения – это самый опасный регион во всем Танаане.\n\nТак что собирайте отряд крепких бойцов и атакуйте Трон Кил\'джедена, пока Легион еще не успел как следует там закрепиться!\n\n|cFF7a0000         [Задание для группы]|r', '', '0');
INSERT INTO `playerchoice_response` VALUES ('192', '401', '0', '1125250', '', 'Гавань Железной крепости', 'Железная Орда продолжает собирать остатки своих сил со всего Дренора. Если позволить им и дальше беспрепятственно получать подкрепление и припасы, наши позиции в Танаане очень быстро ослабнут. \n\nНанеся стратегический удар по их путям снабжения в гавани Железной Крепости, мы заставим врага перейти к обороне и сохраним за собой инициативу.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('192', '402', '1', '1125246', '', 'Кузня Скверны', 'Прислужники Гул\'дана усиливают боевые машины Железной Орды при помощи магии Скверны. Разведчики докладывают даже о постройке Сквернобота!\n\nСразись в Кузне Скверны и уничтожь эти адские машины, пока их не стало слишком много.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('204', '425', '0', '1125251', '', 'Зет\'Гол', 'Клан Кровавой Глазницы продолжает представлять серьезную угрозу. В Зет\'Голе они постоянно гоняют наших разведчиков, мешают проведению операций и собирают ресурсы для темной магии Гул\'дана.\n\nНам нужно организовать рейд на Зет\'Гол, чтобы они стянули свои силы, рассредоточенные по долине, в одну точку. Это развяжет нам руки хоть на какое-то время.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('204', '426', '1', '1125246', '', 'Кузня Скверны', 'Прислужники Гул\'дана усиливают боевые машины Железной Орды при помощи магии Скверны. Разведчики докладывают даже о постройке Сквернобота!\n\nСразись в Кузне Скверны и уничтожь эти адские машины, пока их не стало слишком много.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('253', '541', '0', '1390097', 'Blood', 'Select', 'Gorelix the Fleshripper is a monstrous demon warrior. With his massive axe, the Maw of the Damned, he has devastated entire worlds on his own.\n\nThe Maw of the Damned allow it\'s bearer to sacrifice their own blood to fuel its dark magic, bolstering the wielder\'s defenses.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('253', '542', '1', '1390098', 'Frost', 'Select', 'The legendary Frostmourne, even four years after its destruction within Icecrown Citadel, remains one of the most infamous weapons in all of Azeroth.\n\nWith a bit of necromantic power, the broken shards could be reforged into a set of runeblades that have the potential to be as powerful as their predecessor.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('253', '543', '2', '1390099', 'Unholy', 'Select', 'An ancient blade crafted by the Nathrezim which spreads plague, death and violence in its wake, Apocalypse is a powerful tool of destruction.\n\nThe blade was wielded by the Tirisgarde before it fell in the hands of the Dark Riders. Now the only way to find it is to hunt down the riders to their secret lair.\nApocalypse enhances its owner with powerful shadow magic attacks and fearsome minions.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('242', '511', '0', '1390109', 'Brewmaster', 'Select', 'Chen Stormstout went off to the Broken Shore and we\'ve not heard back from him.\n\nHis staff is a powerful weapon that was once possessed by the Monkey King, if he fell we can\'t allow the legion to obtain it!', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('242', '512', '1', '1390110', 'Mistweaver', 'Select', 'Long ago the last pandaren emperor used his staff \"Sheilun\" to shroud all of Pandaria in mists. \n\nThe staff has remained at the Terrace of Eternal Spring for generations. When the Legion attacked Pandaria, Shado-Pan defenders rushed to secure the area. They haven\'t reported back, and we fear the worst - the staff cannot fall into the wrong hands!', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('242', '513', '2', '1390111', 'Windwalker', 'Select', 'Travelers returning to the isle from abroad have spread an interesting tale. They describe an ancient pair of hand blades that were fabled to grant their bearer the power of the storm.\n\nLittle is known about this mysterious weapon, but if its powers are true then we should consider searching for it.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('248', '532', '0', '1389393', 'Holy', 'Select', 'The Draenei had to flee from many worlds as the Legion chased after them across the heavens. It is upon one of these worlds where a valiant few remained with the radiant jewel of healing, T\'uure, to face the Legion and allow their friends to escape.\n\nA rumor is spreading that a soldier in Dalaran has seen the lost crystal in possession of the Legion. If this is true it must be retrieved!', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('248', '533', '1', '1389394', 'Shadow', 'Select', 'An ancient dagger of the Old Gods has resurfaced in a bid to restore the Twilight\'s Hammer to power. They are performing an unholy ritual nearby that must be stopped.\n\nThe Blade of the Black Empire is a powerful void attuned sacrificial dagger that has been used in horrific rites to the Old Gods since time immemorial. It enhances its owners with powerful shadow energy and mental attacks.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('248', '534', '2', '1389392', 'Discipline', 'Select', 'Obsessed with cleansing undead from Azeroth, the fanatical Scarlet Crusade tried to create a second Ashbringer in the form of a staff. However, due to treachery from within, the ritual failed in a great firey explosion. The damaged staff\'s power proved nearly uncontrollable.\n\nFearing its destructive power, the elite magi of the Kirin Tor hid it away from the hands of men.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('280', '621', '0', '1389396', 'Вне закона', 'Выбрать', 'Жуткий адмирал Элиза – гроза Южных морей. Ее проклятые клинки нагоняют ужас на многих.\n\nМы узнали, что ее корабль бросил якорь у берега Азсуны на Расколотых островах. Если поспешить, то можно получить ее клинки.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('280', '622', '1', '1389397', 'Скрытность', 'Выбрать', 'Акаари Кровавая Тьма – непревзойденная эредарская убийца, предмет особой гордости Легиона. Ее кинжалы способны искажать пространство, скрывая своего владельца в тени.\n\nУ нас есть данные разведки, указывающие, где она находится в настоящее время. Пора нанести удар.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('270', '594', '0', '1389389', 'Тайная магия', 'Выбрать', 'Наиболее известный владелец Алунета – Эгвин, единственная женщина среди Хранителей Тирисфаля, хотя, судя по всему, артефакт намного старше ее.\n\nКогда жизнь ее близилась к концу, Эгвин передала посох синим драконам. Они сочли артефакт слишком опасным и заперли в тайном хранилище, где он находится и по сей день.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('270', '595', '1', '1389390', 'Огонь', 'Выбрать', 'Фело\'мелорн, в переводе \"Удар огня\", когда-то сверкал в руках воинов из рода Солнечных Скитальцев, которые доблестно сражались на Войне древних и Тролльских Войнах и противостояли рыцарю смерти Артасу Менетилу.\n\nВ конце концов меч был утерян в ледяных пустошах Нордскола.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('164', '345', '0', '1041776', '', 'Broken Precipice', 'Massive ogron have been battering our frontlines, and no matter how many we down, there seem to be more to replace them.\n\nMost of these ogron appear to be coming from the Broken Precipice, deep in western Nagrand. If we\'re to stand a chance in the coming battles, we need to find a way to remove these ogron from the battlefield.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('164', '346', '1', '1042005', '', 'The Pit (Group)', 'The Blackrock forces based out of the Pit in Gorgrond make up the bulk of the Iron Horde army. If we crush them on their home soil, the rest of the Iron Horde will have little hope of standing against us.\n\nIf you choose the battle, bring friends. The Blackrock won\'t be defeated easily.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('284', '633', '0', '1389389', 'Тайная магия', 'Выбрать', 'Наиболее известный владелец Алунета – Эгвин, единственная женщина среди Хранителей Тирисфаля, хотя, судя по всему, артефакт намного старше ее.\n\nКогда жизнь ее близилась к концу, Эгвин передала посох синим драконам. Они сочли артефакт слишком опасным и заперли в тайном хранилище, где он находится и по сей день.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('284', '635', '1', '1389391', 'Лед', 'Выбрать', 'Этот посох принадлежал Алоди, первому Хранителю Тирисфаля. Посох прошел через множество битв против Легиона вместе с владельцем за тот век, когда он носил свой почетный титул.\n\nОтойдя от дел, Алоди исчез и унес посох с собой. Что случилось с ними потом, никто не знает – кроме, разве что, самого Алоди.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('287', '644', '0', '1389397', 'Скрытность', 'Выбрать', 'Акаари Кровавая Тьма – непревзойденная эредарская убийца, предмет особой гордости Легиона. Ее кинжалы способны искажать пространство, скрывая своего владельца в тени.\n\nУ нас есть данные разведки, указывающие, где она находится в настоящее время. Пора нанести удар.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('274', '601', '0', '1389399', 'Совершенствование', 'Выбрать', 'Молот Рока канул в Водоворот. Нужно позаботиться, чтобы он не попал не в те руки.\n\nМой муж Го\'эл, которого вы зовете Траллом, уже отправился в Подземье, чтобы его разыскать. Осторожно: демона Гет\'зуна тоже затянуло в Водоворот, и, возможно, он все еще жив.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('274', '602', '1', '1389398', 'Стихии', 'Выбрать', 'Гладиатору Регару известно о могущественном оружии, которое может помочь нам противостоять Легиону.\n\nПосле пандаренской кампании под Престолом Гроз было обнаружено оружие грозового бога Ра-дена. Его оставили под охраной последователей Белого Тигра с наказом отдать лишь наидостойнейшему. Регар поможет тебе доказать свое право на него.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('292', '658', '0', '1389394', 'Тьма', 'Выбрать', 'Культ Сумеречного Молота хочет вернуть себе былую мощь: он проводит ритуал, в котором всплыл некогда утерянный кинжал Древних богов. Этот нечестивый ритуал нужно остановить.\n\nКлинок Темной Империи – это кинжал для жертвоприношений, зачарованный энергией Бездны. Его использовали в ужасающих ритуалах, посвященных Древним богам, еще в незапамятные времена. Кинжал насыщает своего обладателя мощной энергией тьмы.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('273', '599', '0', '1389394', 'Тьма', 'Выбрать', 'Культ Сумеречного Молота хочет вернуть себе былую мощь: он проводит ритуал, в котором всплыл некогда утерянный кинжал Древних богов. Этот нечестивый ритуал нужно остановить.\n\nКлинок Темной Империи – это кинжал для жертвоприношений, зачарованный энергией Бездны. Его использовали в ужасающих ритуалах, посвященных Древним богам, еще в незапамятные времена. Кинжал насыщает своего обладателя мощной энергией тьмы.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('273', '598', '1', '1389393', 'Свет', 'Выбрать', 'Дренеям пришлось бежать из многих миров, спасаясь от преследования Легиона. В одном из этих миров несколько самых отважных остались, чтобы задержать демонов и дать остальным время уйти, и был у них сияющий камень исцеления – Т\'ууре.\n\nХодят слухи, что в Даларане некий воин видел пропавший кристалл в руках демонов. Если это правда, его нужно добыть.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('273', '600', '2', '1389392', 'Послушание', 'Выбрать', 'Алый орден, помешанный на идее очищения Азерота от нежити, пытался создать посох – подобие Испепелителя. Однако лазутчик из Легиона, проникший в орден, вмешался в ритуал создания – и все закончилось мощным огненным взрывом. Силу поврежденного посоха было практически невозможно контролировать.\n\nОпасаясь разрушений и хаоса, высшие маги Кирин-Тора спрятали посох там, где никто не смог бы его найти.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('279', '617', '0', '1389401', 'Колдовство', 'Выбрать', 'Жнец Мертвого Ветра когда-то принадлежал первой из некролитов, Сатаэль, и в свое время уничтожил все живое на перевале Мертвого Ветра. На многие века он был потерян из виду, но недавно выяснилось, что Ултхалеш в руках у Темных всадников. Нужно выследить их, чтобы узнать, где они спрятали артефакт.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('279', '618', '1', '1389402', 'Демонология', 'Выбрать', 'Чародей Тал\'киэль был одним из первых эредаров, освоивших технику призыва и контроля демонов.\nКогда он был побежден, его череп выставили на всеобщее обозрение как напоминание о том, насколько опасно темное искусство.\nНо этот урок так и не был усвоен.\n\nПосле падения эредаров череп забрали военачальники Пылающего Легиона, чтобы усилить контроль над своими войсками.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('282', '626', '0', '1390102', 'Баланс', 'Выбрать', 'Коса Элуны, хранящаяся у Тиранды, верховной жрицы Элуны, известна среди друидов своей долгой и неоднозначной историей.\n\nАртефакт связан с происхождением воргенов и, как говорят, обладает невообразимой лунной силой, которую способны обуздать только искуснейшие из друидов.\n\nНам нужно убедить Тиранду и ее народ, что Косу можно доверить тебе.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('282', '628', '1', '1390104', 'Страж', 'Выбрать', 'Могучий бог-медведь Урсок погиб во время Войны древних, защищая Азерот от Пылающего Легиона.\n\nЕго когти, некогда вселявшие ужас в врагов, теперь хранятся в Изумрудном Сне, и дух Урсока оберегает их.\n\nЕсли сможешь добыть Когти, они очень помогут нам в борьбе против Легиона.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('282', '629', '2', '1390105', 'Исцеление', 'Выбрать', 'Много тысяч лет тому назад Авиана подарила первым друидам ветвь Г\'ханира, Изначального Древа.\n\nВетвь стала посохом, который, как говорят, помогает своему владельцу достичь идеальной гармонии с природой и изучить очень мощные исцеляющие заклинания.\n\nАртефакт хранится в святилище под корнями Шаладрассила, но не так давно связь с тамошними друидами была потеряна.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('275', '605', '0', '1389406', 'Защита', 'Выбрать', 'Однажды древнему королю врайкулов удалось добыть чешуйку Хранителя Земли Нелтариона и сделать из нее щит невиданной мощи. Этот щит теперь покоится рядом со своим создателем в забытой гробнице.\n\nДобудьте этот щит – и получите не только непробиваемую защиту, но и частицу пламенной мощи одного из Аспектов.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('275', '606', '1', '1389405', 'Неистовство', 'Выбрать', 'Боевые мечи валарьяров, величайших из моих защитников, украла эта проклятая Хелия. Она и ее глупец-прислужник насмехаются над героями, похищая их души прежде, чем они успеют взойти в Чертоги Доблести.\n\nС этим могущественным оружием в бою ты уподобишься буре из стали и огня. Лучшего и желать нельзя.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('277', '610', '0', '1390109', 'Хмелевар', 'Выбрать', 'Легенды повествуют о посохе, который был сделан из первого дерева, выросшего на земле Пандарии.\n\nТого, кто владеет этим посохом, будто бы не может поразить ни одно оружие.\n\nПоследним из известных владельцев был Король обезьян. С него нам и следует начать поиски.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('277', '611', '1', '1390110', 'Ткач туманов', 'Выбрать', 'Давным-давно последний пандаренский император с помощью Шей-луна, своего посоха, укрыл туманами всю страну. \n\nМного поколений посох хранился на Террасе Вечной Весны. Когда на Пандарию напал Легион, защитники Шадо-Пан поспешили туда. С тех пор от них нет вестей, и мы опасаемся худшего. Посох не должен достаться врагу!', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('288', '645', '0', '1390100', 'Истребление', 'Выбрать', 'Эти парные клинки принадлежат бывшему охотнику на демонов Варедису Оскверненной Душе, который много лет назад погиб, обороняя Черный храм.\n\nПовелитель Пылающего Легиона Кил\'джеден Искуситель вернул Варедиса из Круговерти Пустоты и наполнил его глефы своей хаотической силой.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('274', '603', '2', '1389400', 'Исцеление', 'Выбрать', 'Говорят, у королевы Азшары был скипетр, позволяющий повелевать морями и водами жизни.\n\nЭрунак давно пытался выяснить его местонахождение, и одной из его шаманок это почти удалось, однако она пропала. Увенчались ли ее поиски успехом? Могут ли легенды оказаться правдой? И на что может быть способен этот артефакт в руках талантливого шамана?', '', '0');
INSERT INTO `playerchoice_response` VALUES ('245', '523', '2', '1389401', 'Affliction', 'Select', 'Wielded by Sataiel, the first necrolyte, the Deadwind Harvester earned its name by stripping the life from the lands known as Deadwind pass.\n\nAfter centuries locked away, Ulthalesh has been discovered in the posession of the Dark Riders. You must hunt them down if you wish to find where they have it hidden.', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('237', '495', '0', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться огранять |cFF1EFF00|Hitem:130216:0:0:0:0:0:0:0:90:0|h[азсунит стремительности]|h|r, повышающий ваш показатель скорости.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('237', '494', '1', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться огранять |cFF1EFF00|Hitem:130215:0:0:0:0:0:0:0:90:0|h[смертоносный темный янтарь]|h|r, повышающий ваш урон при критическом ударе.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('237', '496', '2', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться огранять |cFF1EFF00|Hitem:130218:0:0:0:0:0:0:0:90:0|h[смертоносный темный янтарь]|h|r, повышающий ваш показатель искусности.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('238', '498', '0', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться создавать |cFF0070DD|Hitem:130223:0:0:0:0:0:0:0:90:0|h[кольцо из темного янтаря]|h|r, повышающее ваш показатель критического удара.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('238', '499', '1', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться создавать |cFF0070DD|Hitem:130225:0:0:0:0:0:0:0:90:0|h[кольцо из азсунита]|h|r, повышающее ваш показатель скорости.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('238', '497', '2', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться создавать |cFF0070DD|Hitem:130224:0:0:0:0:0:0:0:90:0|h[кольцо с небесным камнем]|h|r, повышающее ваш показатель универсальности.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('246', '527', '0', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться создавать |cFF0070DD|Hitem:130220:0:0:0:0:0:0:0:90:0|h[светозар стремительности]|h|r, повышающий ваш показатель скорости.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('246', '526', '1', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться создавать |cFF0070DD|Hitem:130219:0:0:0:0:0:0:0:90:0|h[смертоносный глаз Пророчества]|h|r, повышающий ваш урон при критическом ударе.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('246', '528', '2', '841057', '', 'Вот мой выбор.', 'Выберите этот вариант, если хотите научиться создавать |cFF0070DD|Hitem:130220:0:0:0:0:0:0:0:90:0|h[темный рубин искусности]|h|r, повышающий ваш показатель искусности.', '', '0');
INSERT INTO `playerchoice_response` VALUES ('247', '545', '3', '1390105', 'Restoration', 'Select', 'Thousands of years ago, Aviana gifted the first druids a branch from the Mother Tree, G\'Hanir.\n\nIt is said that the staff aids its wielder in achieving perfect harmony with nature, allowing them to tap into deeply powerful restorative spells.\n\nThe branch is kept at a shrine beneath the roots of Shaladrassil, but contact has recently been lost with the druids there...', 'CONFIRM_ARTIFACT_CHOICE', '0');
INSERT INTO `playerchoice_response` VALUES ('240', '504', '2', '1390106', 'Beast Mastery', 'Select', 'In ancient times, a vrykul warlord stole a rifle infused with the power of storms. He used the artifact\'s might to conquer his rivals on the Broken Isles.\n\nDelve into the warlord\'s tomb and recover this mighty weapon!', 'CONFIRM_ARTIFACT_CHOICE', '0');

INSERT INTO `playerchoice_response_reward` VALUES ('262', '568', '0', '0', '0', '0', '0', '0', '0', '0', '201345', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('262', '569', '0', '0', '0', '0', '0', '0', '0', '0', '201346', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('262', '570', '0', '0', '0', '0', '0', '0', '0', '0', '201347', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('255', '546', '0', '0', '0', '0', '0', '0', '0', '0', '201093', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('255', '547', '0', '0', '0', '0', '0', '0', '0', '0', '201094', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('265', '584', '0', '0', '0', '0', '0', '0', '0', '0', '203642', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('265', '585', '0', '0', '0', '0', '0', '0', '0', '0', '203648', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('265', '586', '0', '0', '0', '0', '0', '0', '0', '0', '203653', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('231', '478', '0', '0', '0', '0', '0', '0', '0', '0', '194939', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('231', '479', '0', '0', '0', '0', '0', '0', '0', '0', '194940', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('234', '486', '0', '0', '0', '0', '0', '0', '0', '0', '196661', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('234', '487', '0', '0', '0', '0', '0', '0', '0', '0', '196662', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('245', '525', '0', '0', '0', '0', '0', '0', '0', '0', '199409', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('245', '524', '0', '0', '0', '0', '0', '0', '0', '0', '199406', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('247', '531', '0', '0', '0', '0', '0', '0', '0', '0', '199650', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('247', '530', '0', '0', '0', '0', '0', '0', '0', '0', '199649', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('247', '529', '0', '0', '0', '0', '0', '0', '0', '0', '200576', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('236', '491', '0', '0', '0', '0', '0', '0', '0', '0', '198008', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('236', '492', '0', '0', '0', '0', '0', '0', '0', '0', '198011', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('236', '493', '0', '0', '0', '0', '0', '0', '0', '0', '198010', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('235', '488', '0', '0', '0', '0', '0', '0', '0', '0', '197128', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('235', '489', '0', '0', '0', '0', '0', '0', '0', '0', '197129', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('235', '490', '0', '0', '0', '0', '0', '0', '0', '0', '197127', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('240', '505', '0', '0', '0', '0', '0', '0', '0', '0', '198435', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('240', '506', '0', '0', '0', '0', '0', '0', '0', '0', '198436', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('266', '587', '0', '0', '0', '0', '0', '0', '0', '0', '205786', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('266', '588', '0', '0', '0', '0', '0', '0', '0', '0', '205787', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('266', '589', '0', '0', '0', '0', '0', '0', '0', '0', '205783', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('56', '129', '0', '0', '0', '0', '0', '0', '0', '0', '164026', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('56', '130', '0', '0', '0', '0', '0', '0', '0', '0', '164027', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('52', '121', '0', '0', '0', '0', '0', '0', '0', '0', '160027', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('52', '122', '0', '0', '0', '0', '0', '0', '0', '0', '160025', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('55', '127', '0', '0', '0', '0', '0', '0', '0', '0', '163736', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('55', '128', '0', '0', '0', '0', '0', '0', '0', '0', '163735', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('51', '119', '0', '0', '0', '0', '0', '0', '0', '0', '160027', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('51', '120', '0', '0', '0', '0', '0', '0', '0', '0', '159987', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('58', '133', '0', '0', '0', '0', '0', '0', '0', '0', '165002', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('58', '134', '0', '0', '0', '0', '0', '0', '0', '0', '165004', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('65', '147', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('65', '148', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('53', '123', '0', '0', '0', '0', '0', '0', '0', '0', '160919', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('53', '124', '0', '0', '0', '0', '0', '0', '0', '0', '160920', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('116', '249', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('116', '250', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('120', '257', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('120', '258', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('109', '235', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('109', '236', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('95', '207', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('95', '208', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('72', '161', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('72', '162', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('99', '215', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('99', '216', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('57', '131', '0', '0', '0', '0', '0', '0', '0', '0', '164980', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('57', '132', '0', '0', '0', '0', '0', '0', '0', '0', '164982', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('54', '125', '0', '0', '0', '0', '0', '0', '0', '0', '161681', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('54', '126', '0', '0', '0', '0', '0', '0', '0', '0', '161682', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('165', '347', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('165', '348', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('154', '325', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('154', '326', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('147', '311', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('147', '312', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('166', '349', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('166', '350', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('140', '297', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('140', '298', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('141', '299', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('141', '300', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('63', '143', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('63', '144', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('91', '199', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('91', '200', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('158', '333', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('158', '334', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('152', '321', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('152', '322', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('135', '287', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('135', '288', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('172', '361', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('172', '362', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('150', '317', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('150', '318', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('161', '339', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('161', '340', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('160', '337', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('160', '338', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('174', '365', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('174', '366', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('169', '355', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('169', '356', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('86', '189', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('86', '190', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('151', '319', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('151', '320', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('128', '273', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('128', '274', '0', '0', '0', '0', '0', '0', '616000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('202', '421', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('202', '422', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('192', '401', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('192', '402', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('204', '425', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('204', '426', '0', '0', '0', '0', '0', '0', '462000', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('253', '541', '0', '0', '0', '0', '0', '0', '0', '0', '200079', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('253', '542', '0', '0', '0', '0', '0', '0', '0', '0', '200078', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('253', '543', '0', '0', '0', '0', '0', '0', '0', '0', '200080', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('242', '511', '0', '0', '0', '0', '0', '0', '0', '0', '198921', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('242', '512', '0', '0', '0', '0', '0', '0', '0', '0', '198920', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('242', '513', '0', '0', '0', '0', '0', '0', '0', '0', '198905', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('248', '532', '0', '0', '0', '0', '0', '0', '0', '0', '199701', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('248', '533', '0', '0', '0', '0', '0', '0', '0', '0', '199703', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('248', '534', '0', '0', '0', '0', '0', '0', '0', '0', '199704', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('280', '621', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('280', '622', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('270', '594', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('270', '595', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('164', '345', '0', '0', '0', '0', '0', '0', '462000', '3750', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('164', '346', '0', '0', '0', '0', '0', '0', '616000', '3750', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('284', '633', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('284', '635', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('287', '644', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('274', '601', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('274', '602', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('292', '658', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('273', '599', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('273', '598', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('273', '600', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('279', '617', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('279', '618', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('282', '626', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('282', '628', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('282', '629', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('275', '605', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('275', '606', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('277', '610', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('277', '611', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('288', '645', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('274', '603', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('245', '523', '0', '0', '0', '0', '0', '0', '0', '0', '199405', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('237', '495', '0', '0', '0', '0', '0', '0', '0', '0', '198083', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('237', '494', '0', '0', '0', '0', '0', '0', '0', '0', '198082', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('237', '496', '0', '0', '0', '0', '0', '0', '0', '0', '198084', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('238', '498', '0', '0', '0', '0', '0', '0', '0', '0', '198219', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('238', '499', '0', '0', '0', '0', '0', '0', '0', '0', '198220', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('238', '497', '0', '0', '0', '0', '0', '0', '0', '0', '198218', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('246', '527', '0', '0', '0', '0', '0', '0', '0', '0', '199430', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('246', '526', '0', '0', '0', '0', '0', '0', '0', '0', '199429', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('246', '528', '0', '0', '0', '0', '0', '0', '0', '0', '199431', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('247', '545', '0', '0', '0', '0', '0', '0', '0', '0', '199651', '0');
INSERT INTO `playerchoice_response_reward` VALUES ('240', '504', '0', '0', '0', '0', '0', '0', '0', '0', '198433', '0');

INSERT INTO `playerchoice_response_reward_currency` VALUES ('65', '147', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('65', '148', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('116', '249', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('116', '250', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('120', '257', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('120', '258', '0', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('109', '235', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('109', '236', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('95', '207', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('95', '208', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('72', '161', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('72', '162', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('99', '215', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('99', '216', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('165', '347', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('165', '348', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('154', '325', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('154', '326', '0', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('147', '311', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('147', '312', '0', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('166', '349', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('166', '350', '0', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('140', '297', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('140', '298', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('141', '299', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('141', '300', '0', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('63', '143', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('63', '144', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('91', '199', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('91', '200', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('158', '333', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('158', '334', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('152', '321', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('152', '322', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('135', '287', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('135', '288', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('172', '361', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('172', '362', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('150', '317', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('150', '318', '0', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('161', '339', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('161', '340', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('160', '337', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('160', '338', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('174', '365', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('174', '366', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('169', '355', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('169', '356', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('86', '189', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('86', '190', '1', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('151', '319', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('151', '320', '0', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('128', '273', '1', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('128', '274', '0', '823', '1000', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('202', '421', '1', '1101', '600', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('202', '422', '0', '1101', '750', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('192', '401', '1', '1101', '600', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('192', '402', '0', '1101', '600', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('204', '425', '0', '1101', '600', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('204', '426', '1', '1101', '600', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('164', '345', '0', '823', '800', '0');
INSERT INTO `playerchoice_response_reward_currency` VALUES ('164', '346', '1', '823', '1000', '0');

INSERT INTO `playerchoice_response_reward_item` VALUES ('262', '568', '0', '128870', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('262', '569', '1', '128872', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('262', '570', '2', '128476', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('255', '546', '0', '127829', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('255', '547', '1', '128832', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('265', '584', '0', '127857', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('265', '585', '1', '128820', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('265', '586', '2', '128862', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('245', '525', '0', '128941', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('245', '524', '1', '128943', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('245', '523', '2', '128942', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('247', '529', '0', '128858', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('247', '530', '1', '128860', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('247', '531', '2', '128821', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('247', '545', '0', '128306', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('236', '491', '0', '128910', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('236', '492', '1', '128289', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('236', '493', '2', '128908', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('235', '488', '0', '128823', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('235', '489', '1', '128866', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('235', '490', '2', '120978', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('240', '504', '0', '128861', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('240', '505', '1', '128808', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('240', '506', '2', '128826', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('266', '587', '0', '128819', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('266', '588', '1', '128935', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('266', '589', '2', '128911', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('253', '541', '0', '128402', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('253', '542', '1', '128292', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('253', '543', '2', '128403', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('242', '511', '0', '128938', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('242', '512', '1', '128937', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('242', '513', '2', '128940', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('248', '532', '0', '128825', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('248', '533', '1', '128827', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('248', '534', '2', '128868', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('280', '621', '0', '128872', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('280', '622', '1', '128476', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('270', '595', '0', '128820', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('270', '594', '1', '127857', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('284', '633', '0', '127857', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('284', '635', '1', '128862', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('287', '644', '0', '128476', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('274', '601', '0', '128819', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('274', '602', '1', '128935', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('292', '658', '0', '128827', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('273', '599', '0', '128827', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('273', '598', '1', '128825', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('279', '617', '0', '128942', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('279', '618', '1', '128943', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('282', '626', '0', '128858', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('282', '628', '1', '128821', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('282', '629', '2', '128306', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('275', '605', '0', '128289', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('275', '606', '1', '128908', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('277', '610', '0', '128938', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('277', '611', '1', '128937', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('273', '600', '2', '128868', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('288', '645', '0', '127829', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('274', '603', '2', '128911', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('237', '494', '0', '132262', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('237', '495', '1', '132268', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('237', '496', '2', '132269', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('238', '497', '0', '132331', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('238', '498', '1', '132332', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('238', '499', '2', '132333', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('246', '526', '0', '130219', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('246', '527', '1', '130220', null, '1', '0');
INSERT INTO `playerchoice_response_reward_item` VALUES ('246', '528', '2', '130222', null, '1', '0');

-- new data from sniff in Alliance garrison
INSERT IGNORE INTO `playerchoice` (`ChoiceId`, `UiTextureKitId`, `Question`, `HideWarboardHeader`, `VerifiedBuild`) VALUES
(87, 0, 'Выбор военной операции', 0, 26365),
(352, 261, 'Король призывает тебя! Вылетай.', 0, 26365);

INSERT IGNORE INTO `playerchoice_response` (`ChoiceId`, `ResponseId`, `ChoiceArtFileId`, `Header`, `Answer`, `Description`, `Confirmation`, `VerifiedBuild`) VALUES
(87, 192, 1041980, '', 'Шаттрат (группа)', 'С каждым днем саргерайские войска в Шаттрате становятся все сильнее и наглее. Они представляют серьезную угрозу, и их больше нельзя игнорировать.\n\nСобери союзников, если хочешь начать наступление на укрывшихся в городе саргераев.', '', 26365),
(87, 191, 1042067, '', 'Плато Сокретара', 'Последние донесения свидетельствуют о повышении активности саргерайских войск на Плато Сокретара в долине Призрачной Луны.\n\nПрислужники Сокретара представляют опасность как для дренеев, так и для нашего гарнизона. Необходимо разобраться с ними как можно скорее.', '', 26365),
(352, 997, 1851141, 'Горгронд', 'Отправиться в Горгронд', 'Орки Черной горы – большие мастера по части работы с рудой Черной горы, из которой они выплавляют пушки для артиллерии и флота Железной Орды.\n\nОрганизуй базу в Горгронде и останови механический батальон Железной Орды, наводящий ужас на Дренор.', '', 26365);

INSERT IGNORE INTO `playerchoice_response_reward` (`ChoiceId`, `ResponseId`, `Money`, `TitleId`, `PackageId`, `SkillLineId`, `SkillPointCount`, `ArenaPointCount`, `HonorPointCount`, `Xp`, `VerifiedBuild`) VALUES
(87, 192, 616000, 0, 0, 0, 0, 0, 0, 0, 26365),
(87, 191, 462000, 0, 0, 0, 0, 0, 0, 0, 26365);

INSERT IGNORE INTO `playerchoice_response_reward_currency` (`ChoiceId`, `ResponseId`, `Index`, `CurrencyId`, `Quantity`, `VerifiedBuild`) VALUES
(87, 192, 1, 823, 1000, 26365),
(87, 191, 0, 823, 800, 26365);
