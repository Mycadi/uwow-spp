ALTER TABLE `gameobject`ADD COLUMN `personal_size` FLOAT NOT NULL DEFAULT '0';
ALTER TABLE `creature` ADD COLUMN `personal_size` FLOAT NOT NULL DEFAULT '0';

replace INTO `command` (`name`, `security`, `help`) VALUES ('gobject set size', 3, 'Syntax: .gobject set size #guid #size\r\n\r\nGameobject with DB guid #guid size changed to #size. Gameobject size saved to DB and persistent. Does not affect other gameobjects of same entry. Using 0 size uses the default size from template.'),
('npc set size', 3, 'Syntax: .npc set size #guid #size\r\n\r\Creature with DB guid #guid size changed to #size. Creature size saved to DB and persistent. Does not affect other creature of same entry. Using 0 size uses the default size from template.');