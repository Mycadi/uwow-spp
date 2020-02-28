DROP TABLE IF EXISTS `cheat_sanctions`;

CREATE TABLE `cheat_sanctions` (
  `cheatType` int(11) NOT NULL,
  `tickCount` int(11) NOT NULL DEFAULT '0',
  `tickAction` int(11) NOT NULL DEFAULT '0',
  `totalCount` int(11) NOT NULL DEFAULT '0',
  `totalAction` int(11) NOT NULL DEFAULT '0',
  `comment` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `cheat_sanctions` */

insert  into `cheat_sanctions`(`cheatType`,`tickCount`,`tickAction`,`totalCount`,`totalAction`,`comment`) values (0,3,3,0,0,'CHEAT_TYPE_WALL_CLIMB - not implemented'),(1,2,7,0,0,'CHEAT_TYPE_WATER_WALK'),(2,1,1,0,0,'Forbidden'),(3,1,3,0,0,'BgNotStarted'),(4,2,7,0,0,'MultiJump'),(5,4,3,0,0,'FallUp'),(6,4,1,0,0,'PveFlyhack'),(6,40,3,0,0,'PveFlyhack'),(7,2,3,0,0,'TimeBack'),(8,1,1,0,0,'CHEAT_TYPE_OVERSPEED_JUMP'),(9,1,1,0,0,'CHEAT_TYPE_JUMP_SPEED_CHANGE'),(10,1,3,0,0,'FlyHackSwim'),(11,1,1,0,0,'CHEAT_TYPE_UNROOT'),(11,2,7,0,0,'ClientTimeNull'),(12,1,1,0,0,'CHEAT_TYPE_ROOT_MOVE'),(13,1,1,0,0,'CHEAT_TYPE_ROOT_IGNORED'),(14,30,7,0,0,'OverspeedDist'),(15,10000,1,0,0,'CHEAT_TYPE_DESYNC'),(17,2,3,100,3,'Explore'),(18,2,3,50,3,'ExploreHighLevel'),(19,3,1,0,0,'SpeedhackZ'),(20,2,1,0,0,'SkipHB'),(21,5,15,0,0,'NumDesync'),(22,1,7,0,0,'FakeTransport'),(23,1,7,0,0,'TeleToTransport'),(24,1,3,0,0,'SlowFallHack'),(25,1,3,0,0,'HoverHack'),(26,1,7,0,0,'SpeedHack'),(27,1,7,0,0,'NO_FALLTIME'),(28,1,7,0,0,'FlyHack');
