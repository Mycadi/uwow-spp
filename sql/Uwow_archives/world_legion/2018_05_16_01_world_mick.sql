DELETE FROM gossip_menu_option WHERE OptionType = 18;
DELETE FROM gossip_menu_option WHERE OptionType = 20;

UPDATE `gossip_menu_option` SET `OptionType` = '18' WHERE `OptionNPC` = '18';
