ALTER TABLE `challenge`   
  ADD COLUMN `ChallengeID` MEDIUMINT(6) DEFAULT 0 NOT NULL AFTER `MapID`;

UPDATE challenge SET RecordTime = RecordTime * 1000;

UPDATE challenge SET ChallengeID = 197 WHERE MapID = 1456;
UPDATE challenge SET ChallengeID = 198 WHERE MapID = 1466;
UPDATE challenge SET ChallengeID = 199 WHERE MapID = 1501;
UPDATE challenge SET ChallengeID = 200 WHERE MapID = 1477;
UPDATE challenge SET ChallengeID = 206 WHERE MapID = 1458;
UPDATE challenge SET ChallengeID = 207 WHERE MapID = 1493;
UPDATE challenge SET ChallengeID = 208 WHERE MapID = 1492;
UPDATE challenge SET ChallengeID = 209 WHERE MapID = 1516;
UPDATE challenge SET ChallengeID = 210 WHERE MapID = 1571;
UPDATE challenge SET ChallengeID = 227 WHERE MapID = 1651;
UPDATE challenge SET ChallengeID = 233 WHERE MapID = 1677;
