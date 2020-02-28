delete from spell where id = 233020;
INSERT INTO `spell` (`ID`, `Name`, `NameSubtext`, `Description`, `AuraDescription`, `VerifiedBuild`) VALUES
(233020, 'Infernal Spike - LOS Blocker', NULL, NULL, NULL, 0);

delete from spell_effect where SpellID = 233020;
INSERT INTO `spell_effect` (`ID`, `Effect`, `EffectBasePoints`, `EffectIndex`, `EffectAura`, `DifficultyID`, `EffectAmplitude`, `EffectAuraPeriod`, `EffectBonusCoefficient`, `EffectChainAmplitude`, `EffectChainTargets`, `EffectDieSides`, `EffectItemType`, `EffectMechanic`, `EffectPointsPerResource`, `EffectRealPointsPerLevel`, `EffectTriggerSpell`, `EffectPosFacing`, `EffectAttributes`, `BonusCoefficientFromAP`, `PvpMultiplier`, `Coefficient`, `Variance`, `ResourceCoefficient`, `GroupSizeBasePointsCoefficient`, `EffectSpellClassMask1`, `EffectSpellClassMask2`, `EffectSpellClassMask3`, `EffectSpellClassMask4`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `ImplicitTarget1`, `ImplicitTarget2`, `SpellID`, `VerifiedBuild`) VALUES
(680000, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 266938, 0, 0, 0, 18, 0, 233020, 0);

delete from spell_misc where SpellID = 233020;
INSERT INTO `spell_misc` (`ID`, `CastingTimeIndex`, `DurationIndex`, `RangeIndex`, `SchoolMask`, `SpellIconFileDataID`, `Speed`, `ActiveIconFileDataID`, `LaunchDelay`, `DifficultyID`, `Attributes1`, `Attributes2`, `Attributes3`, `Attributes4`, `Attributes5`, `Attributes6`, `Attributes7`, `Attributes8`, `Attributes9`, `Attributes10`, `Attributes11`, `Attributes12`, `Attributes13`, `Attributes14`, `SpellID`, `VerifiedBuild`) VALUES
(680000, 1, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 233020, 0);