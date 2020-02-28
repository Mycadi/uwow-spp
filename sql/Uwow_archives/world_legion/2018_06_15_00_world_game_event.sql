ALTER TABLE `game_event`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) UNSIGNED NOT NULL COMMENT 'Entry of the game event';
ALTER TABLE `game_event_arena_seasons`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) UNSIGNED NOT NULL COMMENT 'Entry of the game event';
ALTER TABLE `game_event_condition`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) UNSIGNED NOT NULL COMMENT 'Entry of the game event';
ALTER TABLE `game_event_creature_quest`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_gameobject_quest`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) UNSIGNED NOT NULL COMMENT 'Entry of the game event';
ALTER TABLE `game_event_model_equip`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_npc_vendor`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) NOT NULL COMMENT 'Entry of the game event.';
ALTER TABLE `game_event_npcflag`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) UNSIGNED NOT NULL COMMENT 'Entry of the game event';
ALTER TABLE `game_event_pool`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.';
ALTER TABLE `game_event_prerequisite`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) UNSIGNED NOT NULL COMMENT 'Entry of the game event';
ALTER TABLE `game_event_quest_condition`   
  CHANGE `eventEntry` `eventEntry` MEDIUMINT(6) UNSIGNED NOT NULL COMMENT 'Entry of the game event.';
