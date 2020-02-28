CREATE TABLE `character_custom_event_reapeter` (
`guid`  bigint(20) NOT NULL ,
`event`  int(10) UNSIGNED NOT NULL ,
`repeat_id`  int(10) UNSIGNED NOT NULL ,
PRIMARY KEY (`guid`, `event`, `repeat_id`),
INDEX `select` (`guid`, `event`, `repeat_id`) 
)
;

