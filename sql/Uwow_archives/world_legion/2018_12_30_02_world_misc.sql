REPLACE INTO `areatrigger_data` (`entry`, `spellId`, `customEntry`, `moveType`, `waitTime`, `speed`, `activationDelay`, `updateDelay`, `maxCount`, `hitType`, `AngleToCaster`, `AnglePointA`, `AnglePointB`, `maxActiveTargets`, `Param`, `RandomRadiusOfSpawn`, `MoveEndDespawn`, `WithObjectSize`, `AliveOnly`, `AllowBoxCheck`) VALUES
(8688, 226489, 0, 0, 0, 0, 1500, 200, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0);

REPLACE INTO `areatrigger_actions` (`entry`, `customEntry`, `id`, `moment`, `actionType`, `targetFlags`, `spellId`, `maxCharges`, `hasAura`, `hasAura2`, `hasAura3`, `hasspell`, `chargeRecoveryTime`, `scaleStep`, `scaleMin`, `scaleMax`, `scaleVisualUpdate`, `hitMaxCount`, `amount`, `onDespawn`, `auraCaster`, `minDistance`, `comment`) VALUES
(8688, 0, 0, 1, 0, 65, 226510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Sanguine Ichor - Apply Heal'),
(8688, 0, 1, 42, 3, 65, 226510, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Sanguine Ichor - Remove Heal'),
(8688, 0, 2, 1, 0, 4096, 226512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Sanguine Ichor - Apply Dot'),
(8688, 0, 3, 42, 3, 4096, 226512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 'Sanguine Ichor - Remove Dot'),
(8688, 0, 4, 4, 4, 32, 226512, 0, 0, 0, 0, 0, 0, 0.2, 0, 3, 0, 0, 0, 0, 0, 0, 'Sanguine Ichor - Change Scale');