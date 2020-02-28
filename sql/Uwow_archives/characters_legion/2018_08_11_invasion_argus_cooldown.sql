CREATE TABLE `invasion_argus_cooldown` (
`zoneid`  int(20) NOT NULL ,
`guid`  bigint(20) NOT NULL ,
PRIMARY KEY (`zoneid`, `guid`)
)
;


ALTER TABLE `invasion_argus_cooldown`
ADD COLUMN `time`  bigint(40) NOT NULL AFTER `guid`;

