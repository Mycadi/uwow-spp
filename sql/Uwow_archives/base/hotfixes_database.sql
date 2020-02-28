
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for achievement
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement`  (
  `Title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Reward` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `InstanceID` smallint(6) NOT NULL DEFAULT 0,
  `Supercedes` smallint(6) NOT NULL DEFAULT 0,
  `Category` smallint(6) NOT NULL DEFAULT 0,
  `UiOrder` smallint(6) NOT NULL DEFAULT 0,
  `SharesCriteria` smallint(6) NOT NULL DEFAULT 0,
  `Faction` tinyint(4) NOT NULL DEFAULT 0,
  `Points` tinyint(4) NOT NULL DEFAULT 0,
  `MinimumCriteria` tinyint(4) NOT NULL DEFAULT 0,
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IconFileID` int(11) NOT NULL DEFAULT 0,
  `CriteriaTree` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for achievement__category
-- ----------------------------
DROP TABLE IF EXISTS `achievement__category`;
CREATE TABLE `achievement__category`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Parent` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UiOrder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for achievement__category_locale
-- ----------------------------
DROP TABLE IF EXISTS `achievement__category_locale`;
CREATE TABLE `achievement__category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for achievement_locale
-- ----------------------------
DROP TABLE IF EXISTS `achievement_locale`;
CREATE TABLE `achievement_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Title_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Reward_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for adventure_journal
-- ----------------------------
DROP TABLE IF EXISTS `adventure_journal`;
CREATE TABLE `adventure_journal`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ButtonText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RewardDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ContinueDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TextureFileDataID` int(11) NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `LfgDungeonID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `QuestID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BattleMasterListID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BonusPlayerConditionID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BonusPlayerConditionID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapAreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ButtonActionType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PriorityMin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PriorityMax` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BonusValue1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BonusValue2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyQuantity` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `ItemQuantity` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for adventure_journal_locale
-- ----------------------------
DROP TABLE IF EXISTS `adventure_journal_locale`;
CREATE TABLE `adventure_journal_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ButtonText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RewardDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ContinueDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for adventure_map_p_o_i
-- ----------------------------
DROP TABLE IF EXISTS `adventure_map_p_o_i`;
CREATE TABLE `adventure_map_p_o_i`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `WorldPosition1` float NOT NULL DEFAULT 0,
  `WorldPosition2` float NOT NULL DEFAULT 0,
  `RewardItemID` int(11) NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `QuestID` int(11) NOT NULL DEFAULT 0,
  `LfgDungeonID` int(11) NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int(11) NOT NULL DEFAULT 0,
  `UiTextureKitID` int(11) NOT NULL DEFAULT 0,
  `WorldMapAreaID` int(11) NOT NULL DEFAULT 0,
  `DungeonMapID` int(11) NOT NULL DEFAULT 0,
  `AreaTableID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for adventure_map_p_o_i_locale
-- ----------------------------
DROP TABLE IF EXISTS `adventure_map_p_o_i_locale`;
CREATE TABLE `adventure_map_p_o_i_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Title_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for allied_race
-- ----------------------------
DROP TABLE IF EXISTS `allied_race`;
CREATE TABLE `allied_race`  (
  `BannerColor` int(11) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `RaceID` int(11) NOT NULL DEFAULT 0,
  `CrestTextureID` int(11) NOT NULL DEFAULT 0,
  `ModelBackgroundTextureID` int(11) NOT NULL DEFAULT 0,
  `MaleCreatureDisplayID` int(11) NOT NULL DEFAULT 0,
  `FemaleCreatureDisplayID` int(11) NOT NULL DEFAULT 0,
  `UiUnlockAchievementID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for allied_race_racial_ability
-- ----------------------------
DROP TABLE IF EXISTS `allied_race_racial_ability`;
CREATE TABLE `allied_race_racial_ability`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for allied_race_racial_ability_locale
-- ----------------------------
DROP TABLE IF EXISTS `allied_race_racial_ability_locale`;
CREATE TABLE `allied_race_racial_ability_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anim_kit
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit`;
CREATE TABLE `anim_kit`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `OneShotDuration` int(11) NOT NULL DEFAULT 0,
  `OneShotStopAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LowDefAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for anim_kit_bone_set
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_bone_set`;
CREATE TABLE `anim_kit_bone_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BoneDataID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParentAnimKitBoneSetID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExtraBoneCount` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AltAnimKitBoneSetID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anim_kit_bone_set_alias
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_bone_set_alias`;
CREATE TABLE `anim_kit_bone_set_alias`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BoneDataID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitBoneSetID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for anim_kit_bone_set_locale
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_bone_set_locale`;
CREATE TABLE `anim_kit_bone_set_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for anim_kit_config
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_config`;
CREATE TABLE `anim_kit_config`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ConfigFlags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for anim_kit_config_bone_set
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_config_bone_set`;
CREATE TABLE `anim_kit_config_bone_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AnimKitPriorityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitBoneSetID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for anim_kit_priority
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_priority`;
CREATE TABLE `anim_kit_priority`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for anim_kit_replacement
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_replacement`;
CREATE TABLE `anim_kit_replacement`  (
  `SrcAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DstAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for anim_kit_segment
-- ----------------------------
DROP TABLE IF EXISTS `anim_kit_segment`;
CREATE TABLE `anim_kit_segment`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AnimStartTime` int(11) NOT NULL DEFAULT 0,
  `EndConditionParam` int(11) NOT NULL DEFAULT 0,
  `EndConditionDelay` int(11) NOT NULL DEFAULT 0,
  `Speed` float NOT NULL DEFAULT 0,
  `OverrideConfigFlags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ParentAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitConfigID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SegmentFlags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BlendInTimeMs` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BlendOutTimeMs` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StartCondition` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StartConditionParam` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EndCondition` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ForcedVariation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LoopToSegmentIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StartConditionDelay` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for anim_replacement
-- ----------------------------
DROP TABLE IF EXISTS `anim_replacement`;
CREATE TABLE `anim_replacement`  (
  `SrcAnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DstAnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for anim_replacement_set
-- ----------------------------
DROP TABLE IF EXISTS `anim_replacement_set`;
CREATE TABLE `anim_replacement_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ExecOrder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for animation_data
-- ----------------------------
DROP TABLE IF EXISTS `animation_data`;
CREATE TABLE `animation_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Fallback` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BehaviorID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BehaviorTier` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for area_far_clip_override
-- ----------------------------
DROP TABLE IF EXISTS `area_far_clip_override`;
CREATE TABLE `area_far_clip_override`  (
  `AreaID` int(11) NOT NULL DEFAULT 0,
  `MinFarClip` float NOT NULL DEFAULT 0,
  `MinHorizonStart` float NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for area_group_member
-- ----------------------------
DROP TABLE IF EXISTS `area_group_member`;
CREATE TABLE `area_group_member`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for area_p_o_i
-- ----------------------------
DROP TABLE IF EXISTS `area_p_o_i`;
CREATE TABLE `area_p_o_i`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `PoiDataType` int(11) NOT NULL DEFAULT 0,
  `PoiData` int(11) NOT NULL DEFAULT 0,
  `ContinentID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WorldStateID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Importance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Icon` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `PortLocID` int(11) NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int(11) NOT NULL DEFAULT 0,
  `MapFloor` int(11) NOT NULL DEFAULT 0,
  `WmoGroupID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_p_o_i_locale
-- ----------------------------
DROP TABLE IF EXISTS `area_p_o_i_locale`;
CREATE TABLE `area_p_o_i_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_p_o_i_state
-- ----------------------------
DROP TABLE IF EXISTS `area_p_o_i_state`;
CREATE TABLE `area_p_o_i_state`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `WorldStateValue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `IconEnumValue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_p_o_i_state_locale
-- ----------------------------
DROP TABLE IF EXISTS `area_p_o_i_state_locale`;
CREATE TABLE `area_p_o_i_state_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_table
-- ----------------------------
DROP TABLE IF EXISTS `area_table`;
CREATE TABLE `area_table`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ZoneName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AreaName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `AmbientMultiplier` float NOT NULL DEFAULT 0,
  `ContinentID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParentAreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaBit` smallint(6) NOT NULL DEFAULT 0,
  `AmbienceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ZoneMusic` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `IntroSound` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LiquidTypeID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LiquidTypeID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LiquidTypeID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LiquidTypeID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UwZoneMusic` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UwAmbience` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PvpCombatWorldStateID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPref` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPrefUnderwater` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExplorationLevel` tinyint(4) NOT NULL DEFAULT 0,
  `FactionGroupMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MountFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WildBattlePetLevelMin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WildBattlePetLevelMax` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WindSettingsID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UwIntroSound` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_table_locale
-- ----------------------------
DROP TABLE IF EXISTS `area_table_locale`;
CREATE TABLE `area_table_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ZoneName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AreaName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for area_trigger
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger`;
CREATE TABLE `area_trigger`  (
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `BoxLength` float NOT NULL DEFAULT 0,
  `BoxWidth` float NOT NULL DEFAULT 0,
  `BoxHeight` float NOT NULL DEFAULT 0,
  `BoxYaw` float NOT NULL DEFAULT 0,
  `ContinentID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ShapeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaTriggerActionSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ShapeType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for area_trigger_action_set
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger_action_set`;
CREATE TABLE `area_trigger_action_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for area_trigger_box
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger_box`;
CREATE TABLE `area_trigger_box`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Extents1` float NOT NULL DEFAULT 0,
  `Extents2` float NOT NULL DEFAULT 0,
  `Extents3` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for area_trigger_cylinder
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger_cylinder`;
CREATE TABLE `area_trigger_cylinder`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `Height` float NOT NULL DEFAULT 0,
  `ZOffset` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for area_trigger_sphere
-- ----------------------------
DROP TABLE IF EXISTS `area_trigger_sphere`;
CREATE TABLE `area_trigger_sphere`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaxRadius` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for armor_location
-- ----------------------------
DROP TABLE IF EXISTS `armor_location`;
CREATE TABLE `armor_location`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Clothmodifier` float NOT NULL DEFAULT 0,
  `Leathermodifier` float NOT NULL DEFAULT 0,
  `Chainmodifier` float NOT NULL DEFAULT 0,
  `Platemodifier` float NOT NULL DEFAULT 0,
  `Modifier` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for artifact
-- ----------------------------
DROP TABLE IF EXISTS `artifact`;
CREATE TABLE `artifact`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `UiBarOverlayColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `UiBarBackgroundColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `UiNameColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChrSpecializationID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactCategoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UiModelSceneID` int(11) NOT NULL DEFAULT 0,
  `SpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for artifact_appearance
-- ----------------------------
DROP TABLE IF EXISTS `artifact_appearance`;
CREATE TABLE `artifact_appearance`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `UiSwatchColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `UiModelSaturation` float NOT NULL DEFAULT 0,
  `UiModelOpacity` float NOT NULL DEFAULT 0,
  `OverrideShapeshiftDisplayID` int(11) NOT NULL DEFAULT 0,
  `ArtifactAppearanceSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UiCameraID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemAppearanceModifierID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OverrideShapeshiftFormID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `UnlockPlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `UiItemAppearanceID` int(11) NOT NULL DEFAULT 0,
  `UiAltItemAppearanceID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for artifact_appearance_locale
-- ----------------------------
DROP TABLE IF EXISTS `artifact_appearance_locale`;
CREATE TABLE `artifact_appearance_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for artifact_appearance_set
-- ----------------------------
DROP TABLE IF EXISTS `artifact_appearance_set`;
CREATE TABLE `artifact_appearance_set`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `UiCameraID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AltHandUICameraID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ForgeAttachmentOverride` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `ArtifactID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for artifact_appearance_set_locale
-- ----------------------------
DROP TABLE IF EXISTS `artifact_appearance_set_locale`;
CREATE TABLE `artifact_appearance_set_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for artifact_category
-- ----------------------------
DROP TABLE IF EXISTS `artifact_category`;
CREATE TABLE `artifact_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `XpMultCurrencyID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `XpMultCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for artifact_locale
-- ----------------------------
DROP TABLE IF EXISTS `artifact_locale`;
CREATE TABLE `artifact_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for artifact_power
-- ----------------------------
DROP TABLE IF EXISTS `artifact_power`;
CREATE TABLE `artifact_power`  (
  `DisplayPos1` float NOT NULL DEFAULT 0,
  `DisplayPos2` float NOT NULL DEFAULT 0,
  `ArtifactID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxPurchasableRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Tier` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Label` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for artifact_power_link
-- ----------------------------
DROP TABLE IF EXISTS `artifact_power_link`;
CREATE TABLE `artifact_power_link`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PowerA` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PowerB` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for artifact_power_picker
-- ----------------------------
DROP TABLE IF EXISTS `artifact_power_picker`;
CREATE TABLE `artifact_power_picker`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for artifact_power_rank
-- ----------------------------
DROP TABLE IF EXISTS `artifact_power_rank`;
CREATE TABLE `artifact_power_rank`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `AuraPointsOverride` float NOT NULL DEFAULT 0,
  `ItemBonusListID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RankIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactPowerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for artifact_quest_xp
-- ----------------------------
DROP TABLE IF EXISTS `artifact_quest_xp`;
CREATE TABLE `artifact_quest_xp`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Difficulty1` int(11) NOT NULL DEFAULT 0,
  `Difficulty2` int(11) NOT NULL DEFAULT 0,
  `Difficulty3` int(11) NOT NULL DEFAULT 0,
  `Difficulty4` int(11) NOT NULL DEFAULT 0,
  `Difficulty5` int(11) NOT NULL DEFAULT 0,
  `Difficulty6` int(11) NOT NULL DEFAULT 0,
  `Difficulty7` int(11) NOT NULL DEFAULT 0,
  `Difficulty8` int(11) NOT NULL DEFAULT 0,
  `Difficulty9` int(11) NOT NULL DEFAULT 0,
  `Difficulty10` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for artifact_tier
-- ----------------------------
DROP TABLE IF EXISTS `artifact_tier`;
CREATE TABLE `artifact_tier`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ArtifactTier` int(11) NOT NULL DEFAULT 0,
  `MaxNumTraits` int(11) NOT NULL DEFAULT 0,
  `MaxArtifactKnowledge` int(11) NOT NULL DEFAULT 0,
  `KnowledgePlayerCondition` int(11) NOT NULL DEFAULT 0,
  `MinimumEmpowerKnowledge` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for artifact_unlock
-- ----------------------------
DROP TABLE IF EXISTS `artifact_unlock`;
CREATE TABLE `artifact_unlock`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemBonusListID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PowerRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PowerID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `ArtifactID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for auction_house
-- ----------------------------
DROP TABLE IF EXISTS `auction_house`;
CREATE TABLE `auction_house`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `FactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DepositRate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ConsignmentRate` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auction_house_locale
-- ----------------------------
DROP TABLE IF EXISTS `auction_house_locale`;
CREATE TABLE `auction_house_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bank_bag_slot_prices
-- ----------------------------
DROP TABLE IF EXISTS `bank_bag_slot_prices`;
CREATE TABLE `bank_bag_slot_prices`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Cost` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for banned_addons
-- ----------------------------
DROP TABLE IF EXISTS `banned_addons`;
CREATE TABLE `banned_addons`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Version` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for banned_addons_locale
-- ----------------------------
DROP TABLE IF EXISTS `banned_addons_locale`;
CREATE TABLE `banned_addons_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Version_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for barber_shop_style
-- ----------------------------
DROP TABLE IF EXISTS `barber_shop_style`;
CREATE TABLE `barber_shop_style`  (
  `DisplayName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CostModifier` float NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Race` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Sex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Data` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for barber_shop_style_locale
-- ----------------------------
DROP TABLE IF EXISTS `barber_shop_style_locale`;
CREATE TABLE `barber_shop_style_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_ability
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability`;
CREATE TABLE `battle_pet_ability`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `BattlePetVisualID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PetTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Cooldown` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_ability_effect
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability_effect`;
CREATE TABLE `battle_pet_ability_effect`  (
  `BattlePetAbilityTurnID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetVisualID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AuraBattlePetAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetEffectPropertiesID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Param1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Param2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Param3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Param4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Param5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Param6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for battle_pet_ability_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability_locale`;
CREATE TABLE `battle_pet_ability_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_ability_state
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability_state`;
CREATE TABLE `battle_pet_ability_state`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Value` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetStateID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for battle_pet_ability_turn
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_ability_turn`;
CREATE TABLE `battle_pet_ability_turn`  (
  `BattlePetAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetVisualID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TurnTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EventTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for battle_pet_breed_quality
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_breed_quality`;
CREATE TABLE `battle_pet_breed_quality`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `StateMultiplier` float NOT NULL DEFAULT 0,
  `QualityEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for battle_pet_breed_state
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_breed_state`;
CREATE TABLE `battle_pet_breed_state`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Value` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetStateID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BreedID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for battle_pet_display_override
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_display_override`;
CREATE TABLE `battle_pet_display_override`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BattlePetSpeciesID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `CreatureDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `PriorityCategory` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for battle_pet_effect_properties
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_effect_properties`;
CREATE TABLE `battle_pet_effect_properties`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ParamLabel1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel5` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel6` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BattlePetVisualID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParamTypeEnum6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_effect_properties_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_effect_properties_locale`;
CREATE TABLE `battle_pet_effect_properties_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ParamLabel1_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel2_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel3_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel4_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel5_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParamLabel6_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_n_p_c_team_member
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_n_p_c_team_member`;
CREATE TABLE `battle_pet_n_p_c_team_member`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_n_p_c_team_member_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_n_p_c_team_member_locale`;
CREATE TABLE `battle_pet_n_p_c_team_member_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_species
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_species`;
CREATE TABLE `battle_pet_species`  (
  `SourceText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CreatureID` int(11) NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `SummonSpellID` int(11) NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PetTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SourceTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `CardUIModelSceneID` int(11) NOT NULL DEFAULT 0,
  `LoadoutUIModelSceneID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_species_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_species_locale`;
CREATE TABLE `battle_pet_species_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SourceText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_species_state
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_species_state`;
CREATE TABLE `battle_pet_species_state`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Value` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `BattlePetStateID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpeciesID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for battle_pet_species_x_ability
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_species_x_ability`;
CREATE TABLE `battle_pet_species_x_ability`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BattlePetAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SlotEnum` tinyint(4) NOT NULL DEFAULT 0,
  `BattlePetSpeciesID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for battle_pet_state
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_state`;
CREATE TABLE `battle_pet_state`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LuaName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BattlePetVisualID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_state_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_state_locale`;
CREATE TABLE `battle_pet_state_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LuaName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_visual
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_visual`;
CREATE TABLE `battle_pet_visual`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SceneScriptFunction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SpellVisualID` int(11) NOT NULL DEFAULT 0,
  `CastMilliSeconds` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ImpactMilliSeconds` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SceneScriptPackageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RangeTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battle_pet_visual_locale
-- ----------------------------
DROP TABLE IF EXISTS `battle_pet_visual_locale`;
CREATE TABLE `battle_pet_visual_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SceneScriptFunction_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battlemaster_list
-- ----------------------------
DROP TABLE IF EXISTS `battlemaster_list`;
CREATE TABLE `battlemaster_list`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `GameType` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ShortDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LongDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `MapID1` smallint(6) NOT NULL DEFAULT 0,
  `MapID2` smallint(6) NOT NULL DEFAULT 0,
  `MapID3` smallint(6) NOT NULL DEFAULT 0,
  `MapID4` smallint(6) NOT NULL DEFAULT 0,
  `MapID5` smallint(6) NOT NULL DEFAULT 0,
  `MapID6` smallint(6) NOT NULL DEFAULT 0,
  `MapID7` smallint(6) NOT NULL DEFAULT 0,
  `MapID8` smallint(6) NOT NULL DEFAULT 0,
  `MapID9` smallint(6) NOT NULL DEFAULT 0,
  `MapID10` smallint(6) NOT NULL DEFAULT 0,
  `MapID11` smallint(6) NOT NULL DEFAULT 0,
  `MapID12` smallint(6) NOT NULL DEFAULT 0,
  `MapID13` smallint(6) NOT NULL DEFAULT 0,
  `MapID14` smallint(6) NOT NULL DEFAULT 0,
  `MapID15` smallint(6) NOT NULL DEFAULT 0,
  `MapID16` smallint(6) NOT NULL DEFAULT 0,
  `HolidayWorldState` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredPlayer_Condition_ID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `InstanceType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GroupsAllowed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxGroupSize` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RatedPlayers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinPlayers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for battlemaster_list_locale
-- ----------------------------
DROP TABLE IF EXISTS `battlemaster_list_locale`;
CREATE TABLE `battlemaster_list_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `GameType_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ShortDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LongDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for beam_effect
-- ----------------------------
DROP TABLE IF EXISTS `beam_effect`;
CREATE TABLE `beam_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BeamID` int(11) NOT NULL DEFAULT 0,
  `SourceMinDistance` float NOT NULL DEFAULT 0,
  `FixedLength` float NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `SourceOffset` int(11) NOT NULL DEFAULT 0,
  `DestOffset` int(11) NOT NULL DEFAULT 0,
  `SourceAttachID` int(11) NOT NULL DEFAULT 0,
  `DestAttachID` int(11) NOT NULL DEFAULT 0,
  `SourcePositionerID` int(11) NOT NULL DEFAULT 0,
  `DestPositionerID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for bone_wind_modifier_model
-- ----------------------------
DROP TABLE IF EXISTS `bone_wind_modifier_model`;
CREATE TABLE `bone_wind_modifier_model`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `BoneWindModifierID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for bone_wind_modifiers
-- ----------------------------
DROP TABLE IF EXISTS `bone_wind_modifiers`;
CREATE TABLE `bone_wind_modifiers`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Multiplier1` float NOT NULL DEFAULT 0,
  `Multiplier2` float NOT NULL DEFAULT 0,
  `Multiplier3` float NOT NULL DEFAULT 0,
  `PhaseMultiplier` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for bounty
-- ----------------------------
DROP TABLE IF EXISTS `bounty`;
CREATE TABLE `bounty`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `QuestID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TurninPlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for bounty_set
-- ----------------------------
DROP TABLE IF EXISTS `bounty_set`;
CREATE TABLE `bounty_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LockedQuestID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VisiblePlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for broadcast_text
-- ----------------------------
DROP TABLE IF EXISTS `broadcast_text`;
CREATE TABLE `broadcast_text`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Text1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `EmoteID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EmoteID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EmoteID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EmoteDelay3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EmotesID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LanguageID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ConditionID` int(11) NOT NULL DEFAULT 0,
  `SoundEntriesID1` int(11) NOT NULL DEFAULT 0,
  `SoundEntriesID2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `Text`(`Text`(333)) USING BTREE,
  INDEX `Text1`(`Text1`(333)) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for broadcast_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `broadcast_text_locale`;
CREATE TABLE `broadcast_text_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Text1_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE,
  INDEX `Text_lang`(`Text_lang`(333)) USING BTREE,
  INDEX `Text1_lang`(`Text1_lang`(333)) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for camera_effect
-- ----------------------------
DROP TABLE IF EXISTS `camera_effect`;
CREATE TABLE `camera_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for camera_effect_entry
-- ----------------------------
DROP TABLE IF EXISTS `camera_effect_entry`;
CREATE TABLE `camera_effect_entry`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Delay` float NOT NULL DEFAULT 0,
  `Phase` float NOT NULL DEFAULT 0,
  `Amplitude` float NOT NULL DEFAULT 0,
  `AmplitudeB` float NOT NULL DEFAULT 0,
  `Frequency` float NOT NULL DEFAULT 0,
  `RadiusMin` float NOT NULL DEFAULT 0,
  `RadiusMax` float NOT NULL DEFAULT 0,
  `AmplitudeCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EffectType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DirectionType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MovementType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AttenuationType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for camera_mode
-- ----------------------------
DROP TABLE IF EXISTS `camera_mode`;
CREATE TABLE `camera_mode`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PositionOffset1` float NOT NULL DEFAULT 0,
  `PositionOffset2` float NOT NULL DEFAULT 0,
  `PositionOffset3` float NOT NULL DEFAULT 0,
  `TargetOffset1` float NOT NULL DEFAULT 0,
  `TargetOffset2` float NOT NULL DEFAULT 0,
  `TargetOffset3` float NOT NULL DEFAULT 0,
  `PositionSmoothing` float NOT NULL DEFAULT 0,
  `RotationSmoothing` float NOT NULL DEFAULT 0,
  `FieldOfView` float NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LockedPositionOffsetBase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LockedPositionOffsetDirection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LockedTargetOffsetBase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LockedTargetOffsetDirection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for castable_raid_buffs
-- ----------------------------
DROP TABLE IF EXISTS `castable_raid_buffs`;
CREATE TABLE `castable_raid_buffs`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CastingSpellID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for celestial_body
-- ----------------------------
DROP TABLE IF EXISTS `celestial_body`;
CREATE TABLE `celestial_body`  (
  `BaseFileDataID` int(11) NOT NULL DEFAULT 0,
  `LightMaskFileDataID` int(11) NOT NULL DEFAULT 0,
  `GlowMaskFileDataID1` int(11) NOT NULL DEFAULT 0,
  `GlowMaskFileDataID2` int(11) NOT NULL DEFAULT 0,
  `AtmosphericMaskFileDataID` int(11) NOT NULL DEFAULT 0,
  `AtmosphericModifiedFileDataID` int(11) NOT NULL DEFAULT 0,
  `GlowModifiedFileDataID1` int(11) NOT NULL DEFAULT 0,
  `GlowModifiedFileDataID2` int(11) NOT NULL DEFAULT 0,
  `ScrollURate1` float NOT NULL DEFAULT 0,
  `ScrollURate2` float NOT NULL DEFAULT 0,
  `ScrollVRate1` float NOT NULL DEFAULT 0,
  `ScrollVRate2` float NOT NULL DEFAULT 0,
  `RotateRate` float NOT NULL DEFAULT 0,
  `GlowMaskScale1` float NOT NULL DEFAULT 0,
  `GlowMaskScale2` float NOT NULL DEFAULT 0,
  `AtmosphericMaskScale` float NOT NULL DEFAULT 0,
  `Position1` float NOT NULL DEFAULT 0,
  `Position2` float NOT NULL DEFAULT 0,
  `Position3` float NOT NULL DEFAULT 0,
  `BodyBaseScale` float NOT NULL DEFAULT 0,
  `SkyArrayBand` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for cfg__categories
-- ----------------------------
DROP TABLE IF EXISTS `cfg__categories`;
CREATE TABLE `cfg__categories`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LocaleMask` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CreateCharsetMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExistingCharsetMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cfg__categories_locale
-- ----------------------------
DROP TABLE IF EXISTS `cfg__categories_locale`;
CREATE TABLE `cfg__categories_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cfg__configs
-- ----------------------------
DROP TABLE IF EXISTS `cfg__configs`;
CREATE TABLE `cfg__configs`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaxDamageReductionPctPhysical` float NOT NULL DEFAULT 0,
  `PlayerAttackSpeedBase` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerKillingAllowed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Roleplaying` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for cfg__regions
-- ----------------------------
DROP TABLE IF EXISTS `cfg__regions`;
CREATE TABLE `cfg__regions`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Tag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Raidorigin` int(11) NOT NULL DEFAULT 0,
  `ChallengeOrigin` int(11) NOT NULL DEFAULT 0,
  `RegionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RegionGroup_mask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cfg__regions_locale
-- ----------------------------
DROP TABLE IF EXISTS `cfg__regions_locale`;
CREATE TABLE `cfg__regions_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Tag_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for char_base_info
-- ----------------------------
DROP TABLE IF EXISTS `char_base_info`;
CREATE TABLE `char_base_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char_base_section
-- ----------------------------
DROP TABLE IF EXISTS `char_base_section`;
CREATE TABLE `char_base_section`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VariationEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ResolutionVariationEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LayoutResType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char_component_texture_layouts
-- ----------------------------
DROP TABLE IF EXISTS `char_component_texture_layouts`;
CREATE TABLE `char_component_texture_layouts`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Width` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Height` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char_component_texture_sections
-- ----------------------------
DROP TABLE IF EXISTS `char_component_texture_sections`;
CREATE TABLE `char_component_texture_sections`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `OverlapSectionMask` int(11) NOT NULL DEFAULT 0,
  `X` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Y` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Width` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Height` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CharComponentTextureLayoutID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SectionType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char_hair_geosets
-- ----------------------------
DROP TABLE IF EXISTS `char_hair_geosets`;
CREATE TABLE `char_hair_geosets`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `HdCustomGeoFileDataID` int(11) NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VariationID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VariationType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GeosetID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GeosetType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Showscalp` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ColorIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CustomGeoFileDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char_sections
-- ----------------------------
DROP TABLE IF EXISTS `char_sections`;
CREATE TABLE `char_sections`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaterialResourcesID1` int(11) NOT NULL DEFAULT 0,
  `MaterialResourcesID2` int(11) NOT NULL DEFAULT 0,
  `MaterialResourcesID3` int(11) NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BaseSection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VariationIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ColorIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char_shipment
-- ----------------------------
DROP TABLE IF EXISTS `char_shipment`;
CREATE TABLE `char_shipment`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TreasureID` int(11) NOT NULL DEFAULT 0,
  `Duration` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `DummyItemID` int(11) NOT NULL DEFAULT 0,
  `OnCompleteSpellID` int(11) NOT NULL DEFAULT 0,
  `ContainerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxShipments` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char_shipment_container
-- ----------------------------
DROP TABLE IF EXISTS `char_shipment_container`;
CREATE TABLE `char_shipment_container`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PendingText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `WorkingSpellVisualID` int(11) NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WorkingDisplayInfoID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SmallDisplayInfoID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MediumDisplayInfoID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LargeDisplayInfoID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CrossFactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BaseCapacity` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrBuildingType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MediumThreshold` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LargeThreshold` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Faction` tinyint(4) NOT NULL DEFAULT 0,
  `CompleteSpellVisualID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for char_shipment_container_locale
-- ----------------------------
DROP TABLE IF EXISTS `char_shipment_container_locale`;
CREATE TABLE `char_shipment_container_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PendingText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for char_start_outfit
-- ----------------------------
DROP TABLE IF EXISTS `char_start_outfit`;
CREATE TABLE `char_start_outfit`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID1` int(11) NOT NULL DEFAULT 0,
  `ItemID2` int(11) NOT NULL DEFAULT 0,
  `ItemID3` int(11) NOT NULL DEFAULT 0,
  `ItemID4` int(11) NOT NULL DEFAULT 0,
  `ItemID5` int(11) NOT NULL DEFAULT 0,
  `ItemID6` int(11) NOT NULL DEFAULT 0,
  `ItemID7` int(11) NOT NULL DEFAULT 0,
  `ItemID8` int(11) NOT NULL DEFAULT 0,
  `ItemID9` int(11) NOT NULL DEFAULT 0,
  `ItemID10` int(11) NOT NULL DEFAULT 0,
  `ItemID11` int(11) NOT NULL DEFAULT 0,
  `ItemID12` int(11) NOT NULL DEFAULT 0,
  `ItemID13` int(11) NOT NULL DEFAULT 0,
  `ItemID14` int(11) NOT NULL DEFAULT 0,
  `ItemID15` int(11) NOT NULL DEFAULT 0,
  `ItemID16` int(11) NOT NULL DEFAULT 0,
  `ItemID17` int(11) NOT NULL DEFAULT 0,
  `ItemID18` int(11) NOT NULL DEFAULT 0,
  `ItemID19` int(11) NOT NULL DEFAULT 0,
  `ItemID20` int(11) NOT NULL DEFAULT 0,
  `ItemID21` int(11) NOT NULL DEFAULT 0,
  `ItemID22` int(11) NOT NULL DEFAULT 0,
  `ItemID23` int(11) NOT NULL DEFAULT 0,
  `ItemID24` int(11) NOT NULL DEFAULT 0,
  `PetDisplayID` int(11) NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OutfitID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PetFamilyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for char_titles
-- ----------------------------
DROP TABLE IF EXISTS `char_titles`;
CREATE TABLE `char_titles`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MaskID` smallint(6) NOT NULL DEFAULT 0,
  `Flags` tinyint(4) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for char_titles_locale
-- ----------------------------
DROP TABLE IF EXISTS `char_titles_locale`;
CREATE TABLE `char_titles_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name1_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_face_bone_set
-- ----------------------------
DROP TABLE IF EXISTS `character_face_bone_set`;
CREATE TABLE `character_face_bone_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BoneSetFileDataID` int(11) NOT NULL DEFAULT 0,
  `SexID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FaceVariationIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Resolution` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for character_facial_hair_styles
-- ----------------------------
DROP TABLE IF EXISTS `character_facial_hair_styles`;
CREATE TABLE `character_facial_hair_styles`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Geoset1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Geoset2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Geoset3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Geoset4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Geoset5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VariationID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for character_loadout
-- ----------------------------
DROP TABLE IF EXISTS `character_loadout`;
CREATE TABLE `character_loadout`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RaceMask` bigint(20) NOT NULL DEFAULT 0,
  `ChrClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Purpose` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for character_loadout_item
-- ----------------------------
DROP TABLE IF EXISTS `character_loadout_item`;
CREATE TABLE `character_loadout_item`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `CharacterLoadoutID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for character_service_info
-- ----------------------------
DROP TABLE IF EXISTS `character_service_info`;
CREATE TABLE `character_service_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FlowTitle` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PopupTitle` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PopupDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BoostType` int(11) NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `ProfessionLevel` int(11) NOT NULL DEFAULT 0,
  `BoostLevel` int(11) NOT NULL DEFAULT 0,
  `Expansion` int(11) NOT NULL DEFAULT 0,
  `PopupUITextureKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for character_service_info_locale
-- ----------------------------
DROP TABLE IF EXISTS `character_service_info_locale`;
CREATE TABLE `character_service_info_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FlowTitle_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PopupTitle_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PopupDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chat_channels
-- ----------------------------
DROP TABLE IF EXISTS `chat_channels`;
CREATE TABLE `chat_channels`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Shortcut` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `FactionGroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chat_channels_locale
-- ----------------------------
DROP TABLE IF EXISTS `chat_channels_locale`;
CREATE TABLE `chat_channels_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Shortcut_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chat_profanity
-- ----------------------------
DROP TABLE IF EXISTS `chat_profanity`;
CREATE TABLE `chat_profanity`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Language` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chat_profanity_locale
-- ----------------------------
DROP TABLE IF EXISTS `chat_profanity_locale`;
CREATE TABLE `chat_profanity_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_class_race_sex
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_race_sex`;
CREATE TABLE `chr_class_race_sex`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Sex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `VoiceSoundFilterID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for chr_class_title
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_title`;
CREATE TABLE `chr_class_title`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NameMale` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameFemale` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ChrClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_class_title_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_title_locale`;
CREATE TABLE `chr_class_title_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NameMale_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameFemale_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_class_u_i_display
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_u_i_display`;
CREATE TABLE `chr_class_u_i_display`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ChrClassesID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AdvGuidePlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `SplashPlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for chr_class_villain
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_villain`;
CREATE TABLE `chr_class_villain`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ChrClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_class_villain_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_class_villain_locale`;
CREATE TABLE `chr_class_villain_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_classes
-- ----------------------------
DROP TABLE IF EXISTS `chr_classes`;
CREATE TABLE `chr_classes`  (
  `PetNameToken` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameFemale` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameMale` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Filename` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CreateScreenFileDataID` int(11) NOT NULL DEFAULT 0,
  `SelectScreenFileDataID` int(11) NOT NULL DEFAULT 0,
  `LowResScreenFileDataID` int(11) NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `StartingLevel` int(11) NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CinematicSequenceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DefaultSpec` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayPower` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AttackPowerPerStrength` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AttackPowerPerAgility` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RangedAttackPowerPerAgility` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PrimaryStatPriority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_classes_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_classes_locale`;
CREATE TABLE `chr_classes_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PetNameToken_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameFemale_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameMale_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Filename_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_classes_x_power_types
-- ----------------------------
DROP TABLE IF EXISTS `chr_classes_x_power_types`;
CREATE TABLE `chr_classes_x_power_types`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PowerType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for chr_customization
-- ----------------------------
DROP TABLE IF EXISTS `chr_customization`;
CREATE TABLE `chr_customization`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Sex` int(11) NOT NULL DEFAULT 0,
  `BaseSection` int(11) NOT NULL DEFAULT 0,
  `UiCustomizationType` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `ComponentSection1` int(11) NOT NULL DEFAULT 0,
  `ComponentSection2` int(11) NOT NULL DEFAULT 0,
  `ComponentSection3` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_customization_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_customization_locale`;
CREATE TABLE `chr_customization_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_races
-- ----------------------------
DROP TABLE IF EXISTS `chr_races`;
CREATE TABLE `chr_races`  (
  `ClientPrefix` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ClientFileString` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameFemale` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameLowercase` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameFemale_lowercase` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `MaleDisplayID` int(11) NOT NULL DEFAULT 0,
  `FemaleDisplayID` int(11) NOT NULL DEFAULT 0,
  `CreateScreenFileDataID` int(11) NOT NULL DEFAULT 0,
  `SelectScreenFileDataID` int(11) NOT NULL DEFAULT 0,
  `MaleCustomizeOffset1` float NOT NULL DEFAULT 0,
  `MaleCustomizeOffset2` float NOT NULL DEFAULT 0,
  `MaleCustomizeOffset3` float NOT NULL DEFAULT 0,
  `FemaleCustomizeOffset1` float NOT NULL DEFAULT 0,
  `FemaleCustomizeOffset2` float NOT NULL DEFAULT 0,
  `FemaleCustomizeOffset3` float NOT NULL DEFAULT 0,
  `LowResScreenFileDataID` int(11) NOT NULL DEFAULT 0,
  `StartingLevel` int(11) NOT NULL DEFAULT 0,
  `UiDisplayOrder` int(11) NOT NULL DEFAULT 0,
  `FactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ResSicknessSpellID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SplashSoundID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CinematicSequenceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BaseLanguage` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CreatureType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Alliance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RaceRelated` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UnalteredVisualRaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CharComponentTextureLayoutID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DefaultClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `NeutralRaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayRaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CharComponentTexLayoutHiResID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `HighResMaleDisplayID` int(11) NOT NULL DEFAULT 0,
  `HighResFemaleDisplayID` int(11) NOT NULL DEFAULT 0,
  `HeritageArmorAchievementID` int(11) NOT NULL DEFAULT 0,
  `MaleSkeletonFileDataID` int(11) NOT NULL DEFAULT 0,
  `FemaleSkeletonFileDataID` int(11) NOT NULL DEFAULT 0,
  `AlteredFormStartVisualKitID1` int(11) NOT NULL DEFAULT 0,
  `AlteredFormStartVisualKitID2` int(11) NOT NULL DEFAULT 0,
  `AlteredFormStartVisualKitID3` int(11) NOT NULL DEFAULT 0,
  `AlteredFormFinishVisualKitID1` int(11) NOT NULL DEFAULT 0,
  `AlteredFormFinishVisualKitID2` int(11) NOT NULL DEFAULT 0,
  `AlteredFormFinishVisualKitID3` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_races_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_races_locale`;
CREATE TABLE `chr_races_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ClientPrefix_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ClientFileString_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameFemale_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameLowercase_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameFemale_lowercase_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_specialization
-- ----------------------------
DROP TABLE IF EXISTS `chr_specialization`;
CREATE TABLE `chr_specialization`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `FemaleName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MasterySpellID1` int(11) NOT NULL DEFAULT 0,
  `MasterySpellID2` int(11) NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PetTalentType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Role` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PrimaryStatPriority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellIconFileID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `AnimReplacements` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_specialization_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_specialization_locale`;
CREATE TABLE `chr_specialization_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `FemaleName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_upgrade_bucket
-- ----------------------------
DROP TABLE IF EXISTS `chr_upgrade_bucket`;
CREATE TABLE `chr_upgrade_bucket`  (
  `ChrSpecializationID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for chr_upgrade_bucket_spell
-- ----------------------------
DROP TABLE IF EXISTS `chr_upgrade_bucket_spell`;
CREATE TABLE `chr_upgrade_bucket_spell`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for chr_upgrade_tier
-- ----------------------------
DROP TABLE IF EXISTS `chr_upgrade_tier`;
CREATE TABLE `chr_upgrade_tier`  (
  `DisplayName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `NumTalents` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for chr_upgrade_tier_locale
-- ----------------------------
DROP TABLE IF EXISTS `chr_upgrade_tier_locale`;
CREATE TABLE `chr_upgrade_tier_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cinematic_camera
-- ----------------------------
DROP TABLE IF EXISTS `cinematic_camera`;
CREATE TABLE `cinematic_camera`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `Origin1` float NOT NULL DEFAULT 0,
  `Origin2` float NOT NULL DEFAULT 0,
  `Origin3` float NOT NULL DEFAULT 0,
  `OriginFacing` float NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for cinematic_sequences
-- ----------------------------
DROP TABLE IF EXISTS `cinematic_sequences`;
CREATE TABLE `cinematic_sequences`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `Camera1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Camera2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Camera3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Camera4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Camera5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Camera6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Camera7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Camera8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for cloak_dampening
-- ----------------------------
DROP TABLE IF EXISTS `cloak_dampening`;
CREATE TABLE `cloak_dampening`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Angle1` float NOT NULL DEFAULT 0,
  `Angle2` float NOT NULL DEFAULT 0,
  `Angle3` float NOT NULL DEFAULT 0,
  `Angle4` float NOT NULL DEFAULT 0,
  `Angle5` float NOT NULL DEFAULT 0,
  `Dampening1` float NOT NULL DEFAULT 0,
  `Dampening2` float NOT NULL DEFAULT 0,
  `Dampening3` float NOT NULL DEFAULT 0,
  `Dampening4` float NOT NULL DEFAULT 0,
  `Dampening5` float NOT NULL DEFAULT 0,
  `TailAngle1` float NOT NULL DEFAULT 0,
  `TailAngle2` float NOT NULL DEFAULT 0,
  `TailDampening1` float NOT NULL DEFAULT 0,
  `TailDampening2` float NOT NULL DEFAULT 0,
  `TabardAngle` float NOT NULL DEFAULT 0,
  `TabardDampening` float NOT NULL DEFAULT 0,
  `ExpectedWeaponSize` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for combat_condition
-- ----------------------------
DROP TABLE IF EXISTS `combat_condition`;
CREATE TABLE `combat_condition`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `WorldStateExpressionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SelfConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TargetConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionOp1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionOp2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionCount1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionCount2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FriendConditionLogic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionOp1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionOp2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionCount1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionCount2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnemyConditionLogic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for commentator_start_location
-- ----------------------------
DROP TABLE IF EXISTS `commentator_start_location`;
CREATE TABLE `commentator_start_location`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `MapID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for commentator_tracked_cooldown
-- ----------------------------
DROP TABLE IF EXISTS `commentator_tracked_cooldown`;
CREATE TABLE `commentator_tracked_cooldown`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for component_model_file_data
-- ----------------------------
DROP TABLE IF EXISTS `component_model_file_data`;
CREATE TABLE `component_model_file_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GenderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PositionIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for component_texture_file_data
-- ----------------------------
DROP TABLE IF EXISTS `component_texture_file_data`;
CREATE TABLE `component_texture_file_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GenderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for configuration_warning
-- ----------------------------
DROP TABLE IF EXISTS `configuration_warning`;
CREATE TABLE `configuration_warning`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Warning` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Type` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for configuration_warning_locale
-- ----------------------------
DROP TABLE IF EXISTS `configuration_warning_locale`;
CREATE TABLE `configuration_warning_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Warning_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for contribution
-- ----------------------------
DROP TABLE IF EXISTS `contribution`;
CREATE TABLE `contribution`  (
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `ManagedWorldStateInputID` int(11) NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID1` int(11) NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID2` int(11) NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID3` int(11) NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID4` int(11) NOT NULL DEFAULT 0,
  `OrderIndex` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for contribution_locale
-- ----------------------------
DROP TABLE IF EXISTS `contribution_locale`;
CREATE TABLE `contribution_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for conversation_line
-- ----------------------------
DROP TABLE IF EXISTS `conversation_line`;
CREATE TABLE `conversation_line`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BroadcastTextID` int(11) NOT NULL DEFAULT 0,
  `SpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `AdditionalDuration` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `NextConversationLineID` smallint(6) NOT NULL DEFAULT 0,
  `AnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpeechType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StartAnimation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EndAnimation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature
-- ----------------------------
DROP TABLE IF EXISTS `creature`;
CREATE TABLE `creature`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameAlt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TitleAlt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AlwaysItem1` int(11) NOT NULL DEFAULT 0,
  `AlwaysItem2` int(11) NOT NULL DEFAULT 0,
  `AlwaysItem3` int(11) NOT NULL DEFAULT 0,
  `MountCreatureID` int(11) NOT NULL DEFAULT 0,
  `DisplayID1` int(11) NOT NULL DEFAULT 0,
  `DisplayID2` int(11) NOT NULL DEFAULT 0,
  `DisplayID3` int(11) NOT NULL DEFAULT 0,
  `DisplayID4` int(11) NOT NULL DEFAULT 0,
  `DisplayProbability1` float NOT NULL DEFAULT 0,
  `DisplayProbability2` float NOT NULL DEFAULT 0,
  `DisplayProbability3` float NOT NULL DEFAULT 0,
  `DisplayProbability4` float NOT NULL DEFAULT 0,
  `CreatureType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CreatureFamily` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Classification` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StartAnimState` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for creature_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `creature_difficulty`;
CREATE TABLE `creature_difficulty`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `FactionID` smallint(6) NOT NULL DEFAULT 0,
  `ExpansionID` tinyint(4) NOT NULL DEFAULT 0,
  `MinLevel` tinyint(4) NOT NULL DEFAULT 0,
  `MaxLevel` tinyint(4) NOT NULL DEFAULT 0,
  `CreatureID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_disp_x_ui_camera
-- ----------------------------
DROP TABLE IF EXISTS `creature_disp_x_ui_camera`;
CREATE TABLE `creature_disp_x_ui_camera`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CreatureDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `UiCameraID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_display_info
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info`;
CREATE TABLE `creature_display_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CreatureModelScale` float NOT NULL DEFAULT 0,
  `ModelID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NPCSoundID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SizeClass` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint(4) NOT NULL DEFAULT 0,
  `ExtendedDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `PortraitTextureFileDataID` int(11) NOT NULL DEFAULT 0,
  `CreatureModelAlpha` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerOverrideScale` float NOT NULL DEFAULT 0,
  `PortraitCreatureDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `BloodID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParticleColorID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DissolveEffectID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ObjectEffectPackageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AnimReplacementSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UnarmedWeaponType` tinyint(4) NOT NULL DEFAULT 0,
  `StateSpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `PetInstanceScale` float NOT NULL DEFAULT 0,
  `MountPoofSpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileDataID1` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileDataID2` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileDataID3` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_display_info_cond
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info_cond`;
CREATE TABLE `creature_display_info_cond`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RaceMask` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `CustomOption0Mask1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `CustomOption0Mask2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `CustomOption1Mask1` int(11) NOT NULL DEFAULT 0,
  `CustomOption1Mask2` int(11) NOT NULL DEFAULT 0,
  `CustomOption2Mask1` int(11) NOT NULL DEFAULT 0,
  `CustomOption2Mask2` int(11) NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int(11) NOT NULL DEFAULT 0,
  `SkinColorMask` int(11) NOT NULL DEFAULT 0,
  `HairColorMask` int(11) NOT NULL DEFAULT 0,
  `HairStyleMask` int(11) NOT NULL DEFAULT 0,
  `FaceStyleMask` int(11) NOT NULL DEFAULT 0,
  `FacialHairStyleMask` int(11) NOT NULL DEFAULT 0,
  `CreatureModelDataID` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileDataID1` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileDataID2` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileDataID3` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_display_info_evt
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info_evt`;
CREATE TABLE `creature_display_info_evt`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Fourcc` int(11) NOT NULL DEFAULT 0,
  `SpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_display_info_extra
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info_extra`;
CREATE TABLE `creature_display_info_extra`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BakeMaterialResourcesID` int(11) NOT NULL DEFAULT 0,
  `HDBakeMaterialResourcesID` int(11) NOT NULL DEFAULT 0,
  `DisplayRaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DisplaySexID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SkinID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HairStyleID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HairColorID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FacialHairID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CustomDisplayOption1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CustomDisplayOption2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CustomDisplayOption3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_display_info_trn
-- ----------------------------
DROP TABLE IF EXISTS `creature_display_info_trn`;
CREATE TABLE `creature_display_info_trn`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DstCreatureDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `MaxTime` float NOT NULL DEFAULT 0,
  `DissolveEffectID` int(11) NOT NULL DEFAULT 0,
  `StartVisualKitID` int(11) NOT NULL DEFAULT 0,
  `FinishVisualKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_family
-- ----------------------------
DROP TABLE IF EXISTS `creature_family`;
CREATE TABLE `creature_family`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MinScale` float NOT NULL DEFAULT 0,
  `MaxScale` float NOT NULL DEFAULT 0,
  `IconFileID` int(11) NOT NULL DEFAULT 0,
  `SkillLine1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SkillLine2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PetFoodMask` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinScaleLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxScaleLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PetTalentType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for creature_family_locale
-- ----------------------------
DROP TABLE IF EXISTS `creature_family_locale`;
CREATE TABLE `creature_family_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for creature_immunities
-- ----------------------------
DROP TABLE IF EXISTS `creature_immunities`;
CREATE TABLE `creature_immunities`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Mechanic1` int(11) NOT NULL DEFAULT 0,
  `Mechanic2` int(11) NOT NULL DEFAULT 0,
  `School` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MechanicsAllowed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EffectsAllowed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StatesAllowed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DispelType` int(11) NOT NULL DEFAULT 0,
  `Effect1` int(11) NOT NULL DEFAULT 0,
  `Effect2` int(11) NOT NULL DEFAULT 0,
  `Effect3` int(11) NOT NULL DEFAULT 0,
  `Effect4` int(11) NOT NULL DEFAULT 0,
  `Effect5` int(11) NOT NULL DEFAULT 0,
  `Effect6` int(11) NOT NULL DEFAULT 0,
  `Effect7` int(11) NOT NULL DEFAULT 0,
  `Effect8` int(11) NOT NULL DEFAULT 0,
  `Effect9` int(11) NOT NULL DEFAULT 0,
  `State1` int(11) NOT NULL DEFAULT 0,
  `State2` int(11) NOT NULL DEFAULT 0,
  `State3` int(11) NOT NULL DEFAULT 0,
  `State4` int(11) NOT NULL DEFAULT 0,
  `State5` int(11) NOT NULL DEFAULT 0,
  `State6` int(11) NOT NULL DEFAULT 0,
  `State7` int(11) NOT NULL DEFAULT 0,
  `State8` int(11) NOT NULL DEFAULT 0,
  `State9` int(11) NOT NULL DEFAULT 0,
  `State10` int(11) NOT NULL DEFAULT 0,
  `State11` int(11) NOT NULL DEFAULT 0,
  `State12` int(11) NOT NULL DEFAULT 0,
  `State13` int(11) NOT NULL DEFAULT 0,
  `State14` int(11) NOT NULL DEFAULT 0,
  `State15` int(11) NOT NULL DEFAULT 0,
  `State16` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_locale
-- ----------------------------
DROP TABLE IF EXISTS `creature_locale`;
CREATE TABLE `creature_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameAlt_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Title_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TitleAlt_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for creature_model_data
-- ----------------------------
DROP TABLE IF EXISTS `creature_model_data`;
CREATE TABLE `creature_model_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ModelScale` float NOT NULL DEFAULT 0,
  `FootprintTextureLength` float NOT NULL DEFAULT 0,
  `FootprintTextureWidth` float NOT NULL DEFAULT 0,
  `FootprintParticleScale` float NOT NULL DEFAULT 0,
  `CollisionWidth` float NOT NULL DEFAULT 0,
  `CollisionHeight` float NOT NULL DEFAULT 0,
  `MountHeight` float NOT NULL DEFAULT 0,
  `GeoBox1` float NOT NULL DEFAULT 0,
  `GeoBox2` float NOT NULL DEFAULT 0,
  `GeoBox3` float NOT NULL DEFAULT 0,
  `GeoBox4` float NOT NULL DEFAULT 0,
  `GeoBox5` float NOT NULL DEFAULT 0,
  `GeoBox6` float NOT NULL DEFAULT 0,
  `WorldEffectScale` float NOT NULL DEFAULT 0,
  `AttachedEffectScale` float NOT NULL DEFAULT 0,
  `MissileCollisionRadius` float NOT NULL DEFAULT 0,
  `MissileCollisionPush` float NOT NULL DEFAULT 0,
  `MissileCollisionRaise` float NOT NULL DEFAULT 0,
  `OverrideLootEffectScale` float NOT NULL DEFAULT 0,
  `OverrideNameScale` float NOT NULL DEFAULT 0,
  `OverrideSelectionRadius` float NOT NULL DEFAULT 0,
  `TamedPetBaseScale` float NOT NULL DEFAULT 0,
  `HoverHeight` float NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `SizeClass` int(11) NOT NULL DEFAULT 0,
  `BloodID` int(11) NOT NULL DEFAULT 0,
  `FootprintTextureID` int(11) NOT NULL DEFAULT 0,
  `FoleyMaterialID` int(11) NOT NULL DEFAULT 0,
  `FootstepCameraEffectID` int(11) NOT NULL DEFAULT 0,
  `DeathThudCameraEffectID` int(11) NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `CreatureGeosetDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_movement_info
-- ----------------------------
DROP TABLE IF EXISTS `creature_movement_info`;
CREATE TABLE `creature_movement_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SmoothFacingChaseRate` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_sound_data
-- ----------------------------
DROP TABLE IF EXISTS `creature_sound_data`;
CREATE TABLE `creature_sound_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FidgetDelaySecondsMin` float NOT NULL DEFAULT 0,
  `FidgetDelaySecondsMax` float NOT NULL DEFAULT 0,
  `CreatureImpactType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundExertionID` int(11) NOT NULL DEFAULT 0,
  `SoundExertionCriticalID` int(11) NOT NULL DEFAULT 0,
  `SoundInjuryID` int(11) NOT NULL DEFAULT 0,
  `SoundInjuryCriticalID` int(11) NOT NULL DEFAULT 0,
  `SoundInjuryCrushingBlowID` int(11) NOT NULL DEFAULT 0,
  `SoundDeathID` int(11) NOT NULL DEFAULT 0,
  `SoundStunID` int(11) NOT NULL DEFAULT 0,
  `SoundStandID` int(11) NOT NULL DEFAULT 0,
  `SoundFootstepID` int(11) NOT NULL DEFAULT 0,
  `SoundAggroID` int(11) NOT NULL DEFAULT 0,
  `SoundWingFlapID` int(11) NOT NULL DEFAULT 0,
  `SoundWingGlideID` int(11) NOT NULL DEFAULT 0,
  `SoundAlertID` int(11) NOT NULL DEFAULT 0,
  `NPCSoundID` int(11) NOT NULL DEFAULT 0,
  `LoopSoundID` int(11) NOT NULL DEFAULT 0,
  `SoundJumpStartID` int(11) NOT NULL DEFAULT 0,
  `SoundJumpEndID` int(11) NOT NULL DEFAULT 0,
  `SoundPetAttackID` int(11) NOT NULL DEFAULT 0,
  `SoundPetOrderID` int(11) NOT NULL DEFAULT 0,
  `SoundPetDismissID` int(11) NOT NULL DEFAULT 0,
  `BirthSoundID` int(11) NOT NULL DEFAULT 0,
  `SpellCastDirectedSoundID` int(11) NOT NULL DEFAULT 0,
  `SubmergeSoundID` int(11) NOT NULL DEFAULT 0,
  `SubmergedSoundID` int(11) NOT NULL DEFAULT 0,
  `CreatureSoundDataIDPet` int(11) NOT NULL DEFAULT 0,
  `WindupSoundID` int(11) NOT NULL DEFAULT 0,
  `WindupCriticalSoundID` int(11) NOT NULL DEFAULT 0,
  `ChargeSoundID` int(11) NOT NULL DEFAULT 0,
  `ChargeCriticalSoundID` int(11) NOT NULL DEFAULT 0,
  `BattleShoutSoundID` int(11) NOT NULL DEFAULT 0,
  `BattleShoutCriticalSoundID` int(11) NOT NULL DEFAULT 0,
  `TauntSoundID` int(11) NOT NULL DEFAULT 0,
  `SoundFidget1` int(11) NOT NULL DEFAULT 0,
  `SoundFidget2` int(11) NOT NULL DEFAULT 0,
  `SoundFidget3` int(11) NOT NULL DEFAULT 0,
  `SoundFidget4` int(11) NOT NULL DEFAULT 0,
  `SoundFidget5` int(11) NOT NULL DEFAULT 0,
  `CustomAttack1` int(11) NOT NULL DEFAULT 0,
  `CustomAttack2` int(11) NOT NULL DEFAULT 0,
  `CustomAttack3` int(11) NOT NULL DEFAULT 0,
  `CustomAttack4` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for creature_type
-- ----------------------------
DROP TABLE IF EXISTS `creature_type`;
CREATE TABLE `creature_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for creature_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `creature_type_locale`;
CREATE TABLE `creature_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for creature_x_contribution
-- ----------------------------
DROP TABLE IF EXISTS `creature_x_contribution`;
CREATE TABLE `creature_x_contribution`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ContributionID` int(11) NOT NULL DEFAULT 0,
  `CreatureId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for criteria
-- ----------------------------
DROP TABLE IF EXISTS `criteria`;
CREATE TABLE `criteria`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Asset` int(11) NOT NULL DEFAULT 0,
  `StartAsset` int(11) NOT NULL DEFAULT 0,
  `FailAsset` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ModifierTreeId` int(11) NOT NULL DEFAULT 0,
  `StartTimer` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EligibilityWorldStateId` smallint(6) NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StartEvent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FailEvent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EligibilityWorldStateValue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for criteria_tree
-- ----------------------------
DROP TABLE IF EXISTS `criteria_tree`;
CREATE TABLE `criteria_tree`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Amount` int(11) NOT NULL DEFAULT 0,
  `Flags` smallint(6) NOT NULL DEFAULT 0,
  `Operator` tinyint(4) NOT NULL DEFAULT 0,
  `CriteriaID` int(11) NOT NULL DEFAULT 0,
  `Parent` int(11) NOT NULL DEFAULT 0,
  `OrderIndex` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for criteria_tree_locale
-- ----------------------------
DROP TABLE IF EXISTS `criteria_tree_locale`;
CREATE TABLE `criteria_tree_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for criteria_tree_x_effect
-- ----------------------------
DROP TABLE IF EXISTS `criteria_tree_x_effect`;
CREATE TABLE `criteria_tree_x_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `WorldEffectID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for currency_category
-- ----------------------------
DROP TABLE IF EXISTS `currency_category`;
CREATE TABLE `currency_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for currency_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `currency_category_locale`;
CREATE TABLE `currency_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for currency_types
-- ----------------------------
DROP TABLE IF EXISTS `currency_types`;
CREATE TABLE `currency_types`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MaxQty` int(11) NOT NULL DEFAULT 0,
  `MaxEarnablePerWeek` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `CategoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellCategory` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `InventoryIconFileID` int(11) NOT NULL DEFAULT 0,
  `SpellWeight` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for currency_types_locale
-- ----------------------------
DROP TABLE IF EXISTS `currency_types_locale`;
CREATE TABLE `currency_types_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for curve
-- ----------------------------
DROP TABLE IF EXISTS `curve`;
CREATE TABLE `curve`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for curve_point
-- ----------------------------
DROP TABLE IF EXISTS `curve_point`;
CREATE TABLE `curve_point`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `CurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for death_thud_lookups
-- ----------------------------
DROP TABLE IF EXISTS `death_thud_lookups`;
CREATE TABLE `death_thud_lookups`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SizeClass` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TerrainTypeSoundID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundEntryID` int(11) NOT NULL DEFAULT 0,
  `SoundEntryIDWater` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for decal_properties
-- ----------------------------
DROP TABLE IF EXISTS `decal_properties`;
CREATE TABLE `decal_properties`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `InnerRadius` float NOT NULL DEFAULT 0,
  `OuterRadius` float NOT NULL DEFAULT 0,
  `Rim` float NOT NULL DEFAULT 0,
  `Gain` float NOT NULL DEFAULT 0,
  `ModX` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `FadeIn` float NOT NULL DEFAULT 0,
  `FadeOut` float NOT NULL DEFAULT 0,
  `Priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BlendMode` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TopTextureBlendSetID` int(11) NOT NULL DEFAULT 0,
  `BotTextureBlendSetID` int(11) NOT NULL DEFAULT 0,
  `GameFlags` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `CasterDecalPropertiesID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for declined_word
-- ----------------------------
DROP TABLE IF EXISTS `declined_word`;
CREATE TABLE `declined_word`  (
  `Word` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for declined_word_cases
-- ----------------------------
DROP TABLE IF EXISTS `declined_word_cases`;
CREATE TABLE `declined_word_cases`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DeclinedWord` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CaseIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for declined_word_cases_locale
-- ----------------------------
DROP TABLE IF EXISTS `declined_word_cases_locale`;
CREATE TABLE `declined_word_cases_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DeclinedWord_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for declined_word_locale
-- ----------------------------
DROP TABLE IF EXISTS `declined_word_locale`;
CREATE TABLE `declined_word_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Word_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for destructible_model_data
-- ----------------------------
DROP TABLE IF EXISTS `destructible_model_data`;
CREATE TABLE `destructible_model_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `State0Wmo` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `State1Wmo` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `State2Wmo` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `State3Wmo` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `HealEffectSpeed` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `State0ImpactEffectDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State0AmbientDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State0NameSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State1DestructionDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State1ImpactEffectDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State1AmbientDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State1NameSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State2DestructionDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State2ImpactEffectDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State2AmbientDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State2NameSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State3InitDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State3AmbientDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `State3NameSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EjectDirection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DoNotHighlight` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HealEffect` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for device_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `device_blacklist`;
CREATE TABLE `device_blacklist`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VendorID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DeviceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for device_default_settings
-- ----------------------------
DROP TABLE IF EXISTS `device_default_settings`;
CREATE TABLE `device_default_settings`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VendorID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DeviceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DefaultSetting` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for difficulty
-- ----------------------------
DROP TABLE IF EXISTS `difficulty`;
CREATE TABLE `difficulty`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `GroupSizeHealthCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GroupSizeDmgCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GroupSizeSpellPointsCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FallbackDifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `InstanceType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinPlayers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OldEnumValue` tinyint(4) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ToggleDifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemContext` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for difficulty_locale
-- ----------------------------
DROP TABLE IF EXISTS `difficulty_locale`;
CREATE TABLE `difficulty_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dissolve_effect
-- ----------------------------
DROP TABLE IF EXISTS `dissolve_effect`;
CREATE TABLE `dissolve_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Ramp` float NOT NULL DEFAULT 0,
  `StartValue` float NOT NULL DEFAULT 0,
  `EndValue` float NOT NULL DEFAULT 0,
  `FadeInTime` float NOT NULL DEFAULT 0,
  `FadeOutTime` float NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `FresnelIntensity` float NOT NULL DEFAULT 0,
  `AttachID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ProjectionType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TextureBlendSetID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `CurveID` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for driver_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `driver_blacklist`;
CREATE TABLE `driver_blacklist`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DriverVersionHi` int(11) NOT NULL DEFAULT 0,
  `DriverVersionLow` int(11) NOT NULL DEFAULT 0,
  `VendorID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DeviceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OsVersion` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OsBits` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for dungeon_encounter
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_encounter`;
CREATE TABLE `dungeon_encounter`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CreatureDisplayID` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Bit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `OrderIndex` int(11) NOT NULL DEFAULT 0,
  `SpellIconFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dungeon_encounter_locale
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_encounter_locale`;
CREATE TABLE `dungeon_encounter_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dungeon_map
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_map`;
CREATE TABLE `dungeon_map`  (
  `Min1` float NOT NULL DEFAULT 0,
  `Min2` float NOT NULL DEFAULT 0,
  `Max1` float NOT NULL DEFAULT 0,
  `Max2` float NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParentWorldMapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FloorIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RelativeHeightIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for dungeon_map_chunk
-- ----------------------------
DROP TABLE IF EXISTS `dungeon_map_chunk`;
CREATE TABLE `dungeon_map_chunk`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MinZ` float NOT NULL DEFAULT 0,
  `DoodadPlacementID` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WmoGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DungeonMapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for durability_costs
-- ----------------------------
DROP TABLE IF EXISTS `durability_costs`;
CREATE TABLE `durability_costs`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `WeaponSubClassCost1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost9` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost10` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost11` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost12` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost13` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost14` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost15` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost16` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost17` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost18` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost19` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost20` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSubClassCost21` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArmorSubClassCost8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for durability_quality
-- ----------------------------
DROP TABLE IF EXISTS `durability_quality`;
CREATE TABLE `durability_quality`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Data` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for edge_glow_effect
-- ----------------------------
DROP TABLE IF EXISTS `edge_glow_effect`;
CREATE TABLE `edge_glow_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `FadeIn` float NOT NULL DEFAULT 0,
  `FadeOut` float NOT NULL DEFAULT 0,
  `FresnelCoefficient` float NOT NULL DEFAULT 0,
  `GlowRed` float NOT NULL DEFAULT 0,
  `GlowGreen` float NOT NULL DEFAULT 0,
  `GlowBlue` float NOT NULL DEFAULT 0,
  `GlowAlpha` float NOT NULL DEFAULT 0,
  `GlowMultiplier` float NOT NULL DEFAULT 0,
  `InitialDelay` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CurveID` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for emotes
-- ----------------------------
DROP TABLE IF EXISTS `emotes`;
CREATE TABLE `emotes`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RaceMask` bigint(20) NOT NULL DEFAULT 0,
  `EmoteSlashCommand` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `EmoteFlags` int(11) NOT NULL DEFAULT 0,
  `SpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `AnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EmoteSpecProc` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int(11) NOT NULL DEFAULT 0,
  `EmoteSpecProcParam` int(11) NOT NULL DEFAULT 0,
  `EventSoundID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emotes_locale
-- ----------------------------
DROP TABLE IF EXISTS `emotes_locale`;
CREATE TABLE `emotes_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EmoteSlashCommand_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emotes_text
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text`;
CREATE TABLE `emotes_text`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `EmoteID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emotes_text_data
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text_data`;
CREATE TABLE `emotes_text_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RelationshipFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emotes_text_data_locale
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text_data_locale`;
CREATE TABLE `emotes_text_data_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emotes_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text_locale`;
CREATE TABLE `emotes_text_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for emotes_text_sound
-- ----------------------------
DROP TABLE IF EXISTS `emotes_text_sound`;
CREATE TABLE `emotes_text_sound`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SexID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for environmental_damage
-- ----------------------------
DROP TABLE IF EXISTS `environmental_damage`;
CREATE TABLE `environmental_damage`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VisualKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EnumID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for exhaustion
-- ----------------------------
DROP TABLE IF EXISTS `exhaustion`;
CREATE TABLE `exhaustion`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CombatLogText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Xp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Factor` float NOT NULL DEFAULT 0,
  `OutdoorHours` float NOT NULL DEFAULT 0,
  `InnHours` float NOT NULL DEFAULT 0,
  `Threshold` float NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for exhaustion_locale
-- ----------------------------
DROP TABLE IF EXISTS `exhaustion_locale`;
CREATE TABLE `exhaustion_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CombatLogText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for faction
-- ----------------------------
DROP TABLE IF EXISTS `faction`;
CREATE TABLE `faction`  (
  `ReputationRaceMask1` bigint(20) NOT NULL DEFAULT 0,
  `ReputationRaceMask2` bigint(20) NOT NULL DEFAULT 0,
  `ReputationRaceMask3` bigint(20) NOT NULL DEFAULT 0,
  `ReputationRaceMask4` bigint(20) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `ReputationBase1` int(11) NOT NULL DEFAULT 0,
  `ReputationBase2` int(11) NOT NULL DEFAULT 0,
  `ReputationBase3` int(11) NOT NULL DEFAULT 0,
  `ReputationBase4` int(11) NOT NULL DEFAULT 0,
  `ParentFactionMod1` float NOT NULL DEFAULT 0,
  `ParentFactionMod2` float NOT NULL DEFAULT 0,
  `ReputationMax1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationMax2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationMax3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationMax4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationIndex` smallint(6) NOT NULL DEFAULT 0,
  `ReputationClassMask1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationClassMask2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationClassMask3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationClassMask4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationFlags1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationFlags2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationFlags3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationFlags4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParentFactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParagonFactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParentFactionCap1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParentFactionCap2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Expansion` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FriendshipRepID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for faction_group
-- ----------------------------
DROP TABLE IF EXISTS `faction_group`;
CREATE TABLE `faction_group`  (
  `InternalName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaskID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HonorCurrencyTextureFileID` int(11) NOT NULL DEFAULT 0,
  `ConquestCurrencyTextureFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for faction_group_locale
-- ----------------------------
DROP TABLE IF EXISTS `faction_group_locale`;
CREATE TABLE `faction_group_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `InternalName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for faction_locale
-- ----------------------------
DROP TABLE IF EXISTS `faction_locale`;
CREATE TABLE `faction_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for faction_template
-- ----------------------------
DROP TABLE IF EXISTS `faction_template`;
CREATE TABLE `faction_template`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Faction` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enemies1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enemies2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enemies3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enemies4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Friend1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Friend2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Friend3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Friend4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FactionGroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FriendGroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnemyGroup` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for footprint_textures
-- ----------------------------
DROP TABLE IF EXISTS `footprint_textures`;
CREATE TABLE `footprint_textures`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TextureBlendsetID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for footstep_terrain_lookup
-- ----------------------------
DROP TABLE IF EXISTS `footstep_terrain_lookup`;
CREATE TABLE `footstep_terrain_lookup`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CreatureFootstepID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TerrainSoundID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `SoundIDSplash` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for friendship_rep_reaction
-- ----------------------------
DROP TABLE IF EXISTS `friendship_rep_reaction`;
CREATE TABLE `friendship_rep_reaction`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Reaction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ReactionThreshold` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FriendshipRepID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for friendship_rep_reaction_locale
-- ----------------------------
DROP TABLE IF EXISTS `friendship_rep_reaction_locale`;
CREATE TABLE `friendship_rep_reaction_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Reaction_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for friendship_reputation
-- ----------------------------
DROP TABLE IF EXISTS `friendship_reputation`;
CREATE TABLE `friendship_reputation`  (
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TextureFileID` int(11) NOT NULL DEFAULT 0,
  `FactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for friendship_reputation_locale
-- ----------------------------
DROP TABLE IF EXISTS `friendship_reputation_locale`;
CREATE TABLE `friendship_reputation_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for full_screen_effect
-- ----------------------------
DROP TABLE IF EXISTS `full_screen_effect`;
CREATE TABLE `full_screen_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Saturation` float NOT NULL DEFAULT 0,
  `GammaRed` float NOT NULL DEFAULT 0,
  `GammaGreen` float NOT NULL DEFAULT 0,
  `GammaBlue` float NOT NULL DEFAULT 0,
  `MaskOffsetY` float NOT NULL DEFAULT 0,
  `MaskSizeMultiplier` float NOT NULL DEFAULT 0,
  `MaskPower` float NOT NULL DEFAULT 0,
  `ColorMultiplyRed` float NOT NULL DEFAULT 0,
  `ColorMultiplyGreen` float NOT NULL DEFAULT 0,
  `ColorMultiplyBlue` float NOT NULL DEFAULT 0,
  `ColorMultiplyOffsetY` float NOT NULL DEFAULT 0,
  `ColorMultiplyMultiplier` float NOT NULL DEFAULT 0,
  `ColorMultiplyPower` float NOT NULL DEFAULT 0,
  `ColorAdditionRed` float NOT NULL DEFAULT 0,
  `ColorAdditionGreen` float NOT NULL DEFAULT 0,
  `ColorAdditionBlue` float NOT NULL DEFAULT 0,
  `ColorAdditionOffsetY` float NOT NULL DEFAULT 0,
  `ColorAdditionMultiplier` float NOT NULL DEFAULT 0,
  `ColorAdditionPower` float NOT NULL DEFAULT 0,
  `BlurIntensity` float NOT NULL DEFAULT 0,
  `BlurOffsetY` float NOT NULL DEFAULT 0,
  `BlurMultiplier` float NOT NULL DEFAULT 0,
  `BlurPower` float NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `TextureBlendSetID` int(11) NOT NULL DEFAULT 0,
  `EffectFadeInMs` int(11) NOT NULL DEFAULT 0,
  `EffectFadeOutMs` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for g_m_survey_answers
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_answers`;
CREATE TABLE `g_m_survey_answers`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Answer` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SortIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for g_m_survey_answers_locale
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_answers_locale`;
CREATE TABLE `g_m_survey_answers_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Answer_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for g_m_survey_current_survey
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_current_survey`;
CREATE TABLE `g_m_survey_current_survey`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GmsurveyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for g_m_survey_questions
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_questions`;
CREATE TABLE `g_m_survey_questions`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Question` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for g_m_survey_questions_locale
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_questions_locale`;
CREATE TABLE `g_m_survey_questions_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Question_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for g_m_survey_surveys
-- ----------------------------
DROP TABLE IF EXISTS `g_m_survey_surveys`;
CREATE TABLE `g_m_survey_surveys`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Q1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q9` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q10` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q11` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q12` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q13` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q14` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Q15` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for game_tips
-- ----------------------------
DROP TABLE IF EXISTS `game_tips`;
CREATE TABLE `game_tips`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MinLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SortIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for game_tips_locale
-- ----------------------------
DROP TABLE IF EXISTS `game_tips_locale`;
CREATE TABLE `game_tips_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gameobject_art_kit
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_art_kit`;
CREATE TABLE `gameobject_art_kit`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AttachModelFileID` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileID1` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileID2` int(11) NOT NULL DEFAULT 0,
  `TextureVariationFileID3` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gameobject_diff_anim_map
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_diff_anim_map`;
CREATE TABLE `gameobject_diff_anim_map`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AttachmentDisplayID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Animation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gameobject_display_info
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_display_info`;
CREATE TABLE `gameobject_display_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `GeoBoxMinX` float NOT NULL DEFAULT 0,
  `GeoBoxMinY` float NOT NULL DEFAULT 0,
  `GeoBoxMinZ` float NOT NULL DEFAULT 0,
  `GeoBoxMaxX` float NOT NULL DEFAULT 0,
  `GeoBoxMaxY` float NOT NULL DEFAULT 0,
  `GeoBoxMaxZ` float NOT NULL DEFAULT 0,
  `OverrideLootEffectScale` float NOT NULL DEFAULT 0,
  `OverrideNameScale` float NOT NULL DEFAULT 0,
  `ObjectEffectPackageID` smallint(6) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gameobject_display_info_x_sound_kit
-- ----------------------------
DROP TABLE IF EXISTS `gameobject_display_info_x_sound_kit`;
CREATE TABLE `gameobject_display_info_x_sound_kit`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `EventIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gameobjects
-- ----------------------------
DROP TABLE IF EXISTS `gameobjects`;
CREATE TABLE `gameobjects`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PositionX` float NOT NULL DEFAULT 0,
  `PositionY` float NOT NULL DEFAULT 0,
  `PositionZ` float NOT NULL DEFAULT 0,
  `RotationX` float NOT NULL DEFAULT 0,
  `RotationY` float NOT NULL DEFAULT 0,
  `RotationZ` float NOT NULL DEFAULT 0,
  `RotationO` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `PropValue1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PropValue2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PropValue3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PropValue4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PropValue5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PropValue6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PropValue7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PropValue8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `OwnerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gameobjects_locale
-- ----------------------------
DROP TABLE IF EXISTS `gameobjects_locale`;
CREATE TABLE `gameobjects_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_ability
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability`;
CREATE TABLE `garr_ability`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FactionChangeGarrAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrAbilityCategoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_ability_category
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability_category`;
CREATE TABLE `garr_ability_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_ability_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability_category_locale`;
CREATE TABLE `garr_ability_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_ability_effect
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability_effect`;
CREATE TABLE `garr_ability_effect`  (
  `CombatWeightBase` float NOT NULL DEFAULT 0,
  `CombatWeightMax` float NOT NULL DEFAULT 0,
  `ActionValueFlat` float NOT NULL DEFAULT 0,
  `ActionRecordID` int(11) NOT NULL DEFAULT 0,
  `GarrAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AbilityAction` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AbilityTargetType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrMechanicTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ActionRace` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ActionHours` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_ability_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_ability_locale`;
CREATE TABLE `garr_ability_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_building
-- ----------------------------
DROP TABLE IF EXISTS `garr_building`;
CREATE TABLE `garr_building`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AllianceName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `HordeName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Tooltip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `HordeGameObjectID` int(11) NOT NULL DEFAULT 0,
  `AllianceGameObjectID` int(11) NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `CurrencyTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `HordeUiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceUiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceSceneScriptPackageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `HordeSceneScriptPackageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BonusGarrAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GoldCost` smallint(6) NOT NULL DEFAULT 0,
  `GarrSiteID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BuildingType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ShipmentCapacity` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BuildSeconds` int(11) NOT NULL DEFAULT 0,
  `CurrencyQty` int(11) NOT NULL DEFAULT 0,
  `MaxAssignments` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_building_doodad_set
-- ----------------------------
DROP TABLE IF EXISTS `garr_building_doodad_set`;
CREATE TABLE `garr_building_doodad_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrBuildingID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HordeDoodadSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpecializationID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_building_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_building_locale`;
CREATE TABLE `garr_building_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AllianceName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `HordeName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Tooltip_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_building_plot_inst
-- ----------------------------
DROP TABLE IF EXISTS `garr_building_plot_inst`;
CREATE TABLE `garr_building_plot_inst`  (
  `MapOffsetX` float NOT NULL DEFAULT 0,
  `MapOffsetY` float NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrSiteLevelPlotInstID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrBuildingID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_class_spec
-- ----------------------------
DROP TABLE IF EXISTS `garr_class_spec`;
CREATE TABLE `garr_class_spec`  (
  `ClassSpec` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ClassSpecMale` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ClassSpecFemale` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `UiTextureAtlasMemberID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollItemSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FollowerClassLimit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_class_spec_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_class_spec_locale`;
CREATE TABLE `garr_class_spec_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ClassSpec_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ClassSpecMale_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ClassSpecFemale_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_class_spec_player_cond
-- ----------------------------
DROP TABLE IF EXISTS `garr_class_spec_player_cond`;
CREATE TABLE `garr_class_spec_player_cond`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrClassSpecID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `FlavorGarrStringID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_class_spec_player_cond_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_class_spec_player_cond_locale`;
CREATE TABLE `garr_class_spec_player_cond_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_encounter
-- ----------------------------
DROP TABLE IF EXISTS `garr_encounter`;
CREATE TABLE `garr_encounter`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CreatureID` int(11) NOT NULL DEFAULT 0,
  `UiAnimScale` float NOT NULL DEFAULT 0,
  `UiAnimHeight` float NOT NULL DEFAULT 0,
  `PortraitFileDataID` int(11) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `UiTextureKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_encounter_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_encounter_locale`;
CREATE TABLE `garr_encounter_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_encounter_set_x_encounter
-- ----------------------------
DROP TABLE IF EXISTS `garr_encounter_set_x_encounter`;
CREATE TABLE `garr_encounter_set_x_encounter`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `xEncounter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Encounter` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_encounter_x_mechanic
-- ----------------------------
DROP TABLE IF EXISTS `garr_encounter_x_mechanic`;
CREATE TABLE `garr_encounter_x_mechanic`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrMechanicID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrMechanicSetID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrEncounterID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_foll_item_set_member
-- ----------------------------
DROP TABLE IF EXISTS `garr_foll_item_set_member`;
CREATE TABLE `garr_foll_item_set_member`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `MinItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemSlot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollItemSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_foll_support_spell
-- ----------------------------
DROP TABLE IF EXISTS `garr_foll_support_spell`;
CREATE TABLE `garr_foll_support_spell`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AllianceSpellID` int(11) NOT NULL DEFAULT 0,
  `HordeSpellID` int(11) NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_follower
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower`;
CREATE TABLE `garr_follower`  (
  `HordeSourceText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AllianceSourceText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TitleName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `HordeCreatureID` int(11) NOT NULL DEFAULT 0,
  `AllianceCreatureID` int(11) NOT NULL DEFAULT 0,
  `HordeIconFileDataID` int(11) NOT NULL DEFAULT 0,
  `AllianceIconFileDataID` int(11) NOT NULL DEFAULT 0,
  `HordeSlottingBroadcastTextID` int(11) NOT NULL DEFAULT 0,
  `AllySlottingBroadcastTextID` int(11) NOT NULL DEFAULT 0,
  `HordeGarrFollItemSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceGarrFollItemSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelWeapon` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelArmor` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `HordeUITextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceUITextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HordeGarrFollRaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceGarrFollRaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HordeGarrClassSpecID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceGarrClassSpecID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FollowerLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HordeSourceTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceSourceTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Vitality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ChrClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HordeFlavorGarrStringID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AllianceFlavorGarrStringID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_follower_level_x_p
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_level_x_p`;
CREATE TABLE `garr_follower_level_x_p`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `XpToNextLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ShipmentXP` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FollowerLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_follower_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_locale`;
CREATE TABLE `garr_follower_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `HordeSourceText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AllianceSourceText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TitleName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_follower_quality
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_quality`;
CREATE TABLE `garr_follower_quality`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `XpToNextQuality` int(11) NOT NULL DEFAULT 0,
  `ShipmentXP` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AbilityCount` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TraitCount` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassSpecID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_follower_set_x_follower
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_set_x_follower`;
CREATE TABLE `garr_follower_set_x_follower`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrFollowerID` int(11) NOT NULL DEFAULT 0,
  `GarrFollowerSetID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_follower_type
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_type`;
CREATE TABLE `garr_follower_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaxItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxFollowers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxFollowerBuildingType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LevelRangeBias` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelRangeBias` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_follower_u_i_creature
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_u_i_creature`;
CREATE TABLE `garr_follower_u_i_creature`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CreatureID` int(11) NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `FactionIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_follower_x_ability
-- ----------------------------
DROP TABLE IF EXISTS `garr_follower_x_ability`;
CREATE TABLE `garr_follower_x_ability`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FactionIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_item_level_upgrade_data
-- ----------------------------
DROP TABLE IF EXISTS `garr_item_level_upgrade_data`;
CREATE TABLE `garr_item_level_upgrade_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Operation` int(11) NOT NULL DEFAULT 0,
  `MinItemLevel` int(11) NOT NULL DEFAULT 0,
  `MaxItemLevel` int(11) NOT NULL DEFAULT 0,
  `FollowerTypeID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_mechanic
-- ----------------------------
DROP TABLE IF EXISTS `garr_mechanic`;
CREATE TABLE `garr_mechanic`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Factor` float NOT NULL DEFAULT 0,
  `GarrMechanicTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrAbilityID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_mechanic_set_x_mechanic
-- ----------------------------
DROP TABLE IF EXISTS `garr_mechanic_set_x_mechanic`;
CREATE TABLE `garr_mechanic_set_x_mechanic`  (
  `GarrMechanicID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrMechanicSetId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_mechanic_type
-- ----------------------------
DROP TABLE IF EXISTS `garr_mechanic_type`;
CREATE TABLE `garr_mechanic_type`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `Category` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_mechanic_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_mechanic_type_locale`;
CREATE TABLE `garr_mechanic_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_mission
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission`;
CREATE TABLE `garr_mission`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Location` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MissionDuration` int(11) NOT NULL DEFAULT 0,
  `OfferDuration` int(11) NOT NULL DEFAULT 0,
  `MapPos_1` float NOT NULL DEFAULT 0,
  `MapPos_2` float NOT NULL DEFAULT 0,
  `WorldPos1` float NOT NULL DEFAULT 0,
  `WorldPos2` float NOT NULL DEFAULT 0,
  `TargetItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MissionCostCurrencyTypesID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnvGarrMechanicTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxFollowers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OfferedGarrMissionTextureID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrMissionTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BaseCompletionChance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FollowerDeathChance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `TravelDuration` int(11) NOT NULL DEFAULT 0,
  `CriteriaID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `MissionCost` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `BaseFollowerXP` int(11) NOT NULL DEFAULT 0,
  `AreaID` int(11) NOT NULL DEFAULT 0,
  `OvermaxRewardPackID` int(11) NOT NULL DEFAULT 0,
  `EnvGarrMechanicID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_mission_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_locale`;
CREATE TABLE `garr_mission_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Location_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_mission_texture
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_texture`;
CREATE TABLE `garr_mission_texture`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_mission_type
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_type`;
CREATE TABLE `garr_mission_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `UiTextureAtlasMemberID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_mission_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_type_locale`;
CREATE TABLE `garr_mission_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_mission_x_encounter
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_x_encounter`;
CREATE TABLE `garr_mission_x_encounter`  (
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrMissionID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `GarrEncounterID` int(11) NOT NULL DEFAULT 0,
  `GarrEncounterSetID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_mission_x_follower
-- ----------------------------
DROP TABLE IF EXISTS `garr_mission_x_follower`;
CREATE TABLE `garr_mission_x_follower`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrFollowerID` int(11) NOT NULL DEFAULT 0,
  `GarrFollowerSetID` int(11) NOT NULL DEFAULT 0,
  `GarrMissionID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_mssn_bonus_ability
-- ----------------------------
DROP TABLE IF EXISTS `garr_mssn_bonus_ability`;
CREATE TABLE `garr_mssn_bonus_ability`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `DurationSecs` int(11) NOT NULL DEFAULT 0,
  `GarrAbilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrFollowerTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrMissionTextureID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_plot
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot`;
CREATE TABLE `garr_plot`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AllianceConstructObjID` int(11) NOT NULL DEFAULT 0,
  `HordeConstructObjID` int(11) NOT NULL DEFAULT 0,
  `UiCategoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PlotType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeRequirement1` int(11) NOT NULL DEFAULT 0,
  `UpgradeRequirement2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_plot_building
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_building`;
CREATE TABLE `garr_plot_building`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrPlotID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrBuildingID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_plot_instance
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_instance`;
CREATE TABLE `garr_plot_instance`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `GarrPlotID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_plot_instance_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_instance_locale`;
CREATE TABLE `garr_plot_instance_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_plot_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_locale`;
CREATE TABLE `garr_plot_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_plot_u_i_category
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_u_i_category`;
CREATE TABLE `garr_plot_u_i_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CategoryName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PlotType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_plot_u_i_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_plot_u_i_category_locale`;
CREATE TABLE `garr_plot_u_i_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CategoryName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_site_level
-- ----------------------------
DROP TABLE IF EXISTS `garr_site_level`;
CREATE TABLE `garr_site_level`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TownHallUiPos1` float NOT NULL DEFAULT 0,
  `TownHallUiPos2` float NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeMovieID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeCost` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeGoldCost` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GarrSiteID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxBuildingLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_site_level_plot_inst
-- ----------------------------
DROP TABLE IF EXISTS `garr_site_level_plot_inst`;
CREATE TABLE `garr_site_level_plot_inst`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `UiMarkerPos1` float NOT NULL DEFAULT 0,
  `UiMarkerPos2` float NOT NULL DEFAULT 0,
  `GarrSiteLevelID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GarrPlotInstanceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UiMarkerSize` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_specialization
-- ----------------------------
DROP TABLE IF EXISTS `garr_specialization`;
CREATE TABLE `garr_specialization`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Tooltip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `Param1` float NOT NULL DEFAULT 0,
  `Param2` float NOT NULL DEFAULT 0,
  `BuildingType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpecType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredUpgradeLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_specialization_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_specialization_locale`;
CREATE TABLE `garr_specialization_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Tooltip_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_string
-- ----------------------------
DROP TABLE IF EXISTS `garr_string`;
CREATE TABLE `garr_string`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_string_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_string_locale`;
CREATE TABLE `garr_string_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_talent
-- ----------------------------
DROP TABLE IF EXISTS `garr_talent`;
CREATE TABLE `garr_talent`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `ResearchDurationSecs` int(11) NOT NULL DEFAULT 0,
  `Tier` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UiOrder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `GarrTalentTreeID` int(11) NOT NULL DEFAULT 0,
  `GarrAbilityID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `ResearchCost` int(11) NOT NULL DEFAULT 0,
  `ResearchCostCurrencyTypesID` int(11) NOT NULL DEFAULT 0,
  `ResearchGoldCost` int(11) NOT NULL DEFAULT 0,
  `PerkSpellID` int(11) NOT NULL DEFAULT 0,
  `PerkPlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `RespecCost` int(11) NOT NULL DEFAULT 0,
  `RespecCostCurrencyTypesID` int(11) NOT NULL DEFAULT 0,
  `RespecDurationSecs` int(11) NOT NULL DEFAULT 0,
  `RespecGoldCost` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_talent_locale
-- ----------------------------
DROP TABLE IF EXISTS `garr_talent_locale`;
CREATE TABLE `garr_talent_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for garr_talent_tree
-- ----------------------------
DROP TABLE IF EXISTS `garr_talent_tree`;
CREATE TABLE `garr_talent_tree`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `UiTextureKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxTiers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UiOrder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` int(11) NOT NULL DEFAULT 0,
  `GarrTypeID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_type
-- ----------------------------
DROP TABLE IF EXISTS `garr_type`;
CREATE TABLE `garr_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `PrimaryCurrencyTypeID` int(11) NOT NULL DEFAULT 0,
  `SecondaryCurrencyTypeID` int(11) NOT NULL DEFAULT 0,
  `ExpansionID` int(11) NOT NULL DEFAULT 0,
  `MapIDs1` int(11) NOT NULL DEFAULT 0,
  `MapIDs2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_ui_anim_class_info
-- ----------------------------
DROP TABLE IF EXISTS `garr_ui_anim_class_info`;
CREATE TABLE `garr_ui_anim_class_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ImpactDelaySecs` float NOT NULL DEFAULT 0,
  `GarrClassSpecID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MovementType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CastKit` int(11) NOT NULL DEFAULT 0,
  `ImpactKit` int(11) NOT NULL DEFAULT 0,
  `TargetImpactKit` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for garr_ui_anim_race_info
-- ----------------------------
DROP TABLE IF EXISTS `garr_ui_anim_race_info`;
CREATE TABLE `garr_ui_anim_race_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaleScale` float NOT NULL DEFAULT 0,
  `MaleHeight` float NOT NULL DEFAULT 0,
  `MaleSingleModelScale` float NOT NULL DEFAULT 0,
  `MaleSingleModelHeight` float NOT NULL DEFAULT 0,
  `MaleFollowerPageScale` float NOT NULL DEFAULT 0,
  `MaleFollowerPageHeight` float NOT NULL DEFAULT 0,
  `FemaleScale` float NOT NULL DEFAULT 0,
  `FemaleHeight` float NOT NULL DEFAULT 0,
  `FemaleSingleModelScale` float NOT NULL DEFAULT 0,
  `FemaleSingleModelHeight` float NOT NULL DEFAULT 0,
  `FemaleFollowerPageScale` float NOT NULL DEFAULT 0,
  `FemaleFollowerPageHeight` float NOT NULL DEFAULT 0,
  `GarrFollRaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for gem_properties
-- ----------------------------
DROP TABLE IF EXISTS `gem_properties`;
CREATE TABLE `gem_properties`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `EnchantID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for global_strings
-- ----------------------------
DROP TABLE IF EXISTS `global_strings`;
CREATE TABLE `global_strings`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BaseTag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TagText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for global_strings_locale
-- ----------------------------
DROP TABLE IF EXISTS `global_strings_locale`;
CREATE TABLE `global_strings_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BaseTag_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TagText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for glyph_bindable_spell
-- ----------------------------
DROP TABLE IF EXISTS `glyph_bindable_spell`;
CREATE TABLE `glyph_bindable_spell`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `GlyphPropertiesID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for glyph_exclusive_category
-- ----------------------------
DROP TABLE IF EXISTS `glyph_exclusive_category`;
CREATE TABLE `glyph_exclusive_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for glyph_exclusive_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `glyph_exclusive_category_locale`;
CREATE TABLE `glyph_exclusive_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for glyph_properties
-- ----------------------------
DROP TABLE IF EXISTS `glyph_properties`;
CREATE TABLE `glyph_properties`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `SpellIconID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GlyphType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GlyphExclusiveCategoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for glyph_required_spec
-- ----------------------------
DROP TABLE IF EXISTS `glyph_required_spec`;
CREATE TABLE `glyph_required_spec`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ChrSpecializationID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GlyphPropertiesID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ground_effect_doodad
-- ----------------------------
DROP TABLE IF EXISTS `ground_effect_doodad`;
CREATE TABLE `ground_effect_doodad`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Animscale` float NOT NULL DEFAULT 0,
  `PushScale` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ModelFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ground_effect_texture
-- ----------------------------
DROP TABLE IF EXISTS `ground_effect_texture`;
CREATE TABLE `ground_effect_texture`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DoodadID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DoodadID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DoodadID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DoodadID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DoodadWeight1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DoodadWeight2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DoodadWeight3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DoodadWeight4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Sound` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Density` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for group_finder_activity
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_activity`;
CREATE TABLE `group_finder_activity`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FullName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ShortName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MinGearLevelSuggestion` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GroupFinderCategoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GroupFinderActivityGrpID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevelSuggestion` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_finder_activity_grp
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_activity_grp`;
CREATE TABLE `group_finder_activity_grp`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_finder_activity_grp_locale
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_activity_grp_locale`;
CREATE TABLE `group_finder_activity_grp_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_finder_activity_locale
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_activity_locale`;
CREATE TABLE `group_finder_activity_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FullName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ShortName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_finder_category
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_category`;
CREATE TABLE `group_finder_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for group_finder_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `group_finder_category_locale`;
CREATE TABLE `group_finder_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for guild_color_background
-- ----------------------------
DROP TABLE IF EXISTS `guild_color_background`;
CREATE TABLE `guild_color_background`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Red` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_color_border
-- ----------------------------
DROP TABLE IF EXISTS `guild_color_border`;
CREATE TABLE `guild_color_border`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Red` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_color_emblem
-- ----------------------------
DROP TABLE IF EXISTS `guild_color_emblem`;
CREATE TABLE `guild_color_emblem`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Red` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for guild_perk_spells
-- ----------------------------
DROP TABLE IF EXISTS `guild_perk_spells`;
CREATE TABLE `guild_perk_spells`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for heirloom
-- ----------------------------
DROP TABLE IF EXISTS `heirloom`;
CREATE TABLE `heirloom`  (
  `SourceText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `LegacyItemID` int(11) NOT NULL DEFAULT 0,
  `LegacyUpgradedItemID` int(11) NOT NULL DEFAULT 0,
  `StaticUpgradedItemID` int(11) NOT NULL DEFAULT 0,
  `UpgradeItemID1` int(11) NOT NULL DEFAULT 0,
  `UpgradeItemID2` int(11) NOT NULL DEFAULT 0,
  `UpgradeItemID3` int(11) NOT NULL DEFAULT 0,
  `UpgradeItemBonusListID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeItemBonusListID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UpgradeItemBonusListID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SourceTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for heirloom_locale
-- ----------------------------
DROP TABLE IF EXISTS `heirloom_locale`;
CREATE TABLE `heirloom_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SourceText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for helmet_anim_scaling
-- ----------------------------
DROP TABLE IF EXISTS `helmet_anim_scaling`;
CREATE TABLE `helmet_anim_scaling`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Amount` float NOT NULL DEFAULT 0,
  `RaceID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for helmet_geoset_vis_data
-- ----------------------------
DROP TABLE IF EXISTS `helmet_geoset_vis_data`;
CREATE TABLE `helmet_geoset_vis_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `HideGeoset1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset7` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset8` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HideGeoset9` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for highlight_color
-- ----------------------------
DROP TABLE IF EXISTS `highlight_color`;
CREATE TABLE `highlight_color`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `StartColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MidColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EndColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for holiday_descriptions
-- ----------------------------
DROP TABLE IF EXISTS `holiday_descriptions`;
CREATE TABLE `holiday_descriptions`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for holiday_descriptions_locale
-- ----------------------------
DROP TABLE IF EXISTS `holiday_descriptions_locale`;
CREATE TABLE `holiday_descriptions_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for holiday_names
-- ----------------------------
DROP TABLE IF EXISTS `holiday_names`;
CREATE TABLE `holiday_names`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for holiday_names_locale
-- ----------------------------
DROP TABLE IF EXISTS `holiday_names_locale`;
CREATE TABLE `holiday_names_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for holidays
-- ----------------------------
DROP TABLE IF EXISTS `holidays`;
CREATE TABLE `holidays`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Date1` int(11) NOT NULL DEFAULT 0,
  `Date2` int(11) NOT NULL DEFAULT 0,
  `Date3` int(11) NOT NULL DEFAULT 0,
  `Date4` int(11) NOT NULL DEFAULT 0,
  `Date5` int(11) NOT NULL DEFAULT 0,
  `Date6` int(11) NOT NULL DEFAULT 0,
  `Date7` int(11) NOT NULL DEFAULT 0,
  `Date8` int(11) NOT NULL DEFAULT 0,
  `Date9` int(11) NOT NULL DEFAULT 0,
  `Date10` int(11) NOT NULL DEFAULT 0,
  `Date11` int(11) NOT NULL DEFAULT 0,
  `Date12` int(11) NOT NULL DEFAULT 0,
  `Date13` int(11) NOT NULL DEFAULT 0,
  `Date14` int(11) NOT NULL DEFAULT 0,
  `Date15` int(11) NOT NULL DEFAULT 0,
  `Date16` int(11) NOT NULL DEFAULT 0,
  `Duration1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration9` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Duration10` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Region` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Looping` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags9` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFlags10` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CalendarFilterType` tinyint(4) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HolidayNameID` int(11) NOT NULL DEFAULT 0,
  `HolidayDescriptionID` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID1` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID2` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID3` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for hotfix
-- ----------------------------
DROP TABLE IF EXISTS `hotfix`;
CREATE TABLE `hotfix`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Tablename` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ObjectID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hotfix_data
-- ----------------------------
DROP TABLE IF EXISTS `hotfix_data`;
CREATE TABLE `hotfix_data`  (
  `Id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TableHash` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `RecordID` int(10) NOT NULL,
  `Timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Deleted` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`Id`, `TableHash`, `RecordID`, `Timestamp`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for hotfix_locale
-- ----------------------------
DROP TABLE IF EXISTS `hotfix_locale`;
CREATE TABLE `hotfix_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Tablename_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for import_price_armor
-- ----------------------------
DROP TABLE IF EXISTS `import_price_armor`;
CREATE TABLE `import_price_armor`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ClothModifier` float NOT NULL DEFAULT 0,
  `LeatherModifier` float NOT NULL DEFAULT 0,
  `ChainModifier` float NOT NULL DEFAULT 0,
  `PlateModifier` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for import_price_quality
-- ----------------------------
DROP TABLE IF EXISTS `import_price_quality`;
CREATE TABLE `import_price_quality`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Data` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for import_price_shield
-- ----------------------------
DROP TABLE IF EXISTS `import_price_shield`;
CREATE TABLE `import_price_shield`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Data` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for import_price_weapon
-- ----------------------------
DROP TABLE IF EXISTS `import_price_weapon`;
CREATE TABLE `import_price_weapon`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Data` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for invasion_client_data
-- ----------------------------
DROP TABLE IF EXISTS `invasion_client_data`;
CREATE TABLE `invasion_client_data`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconLocation1` float NOT NULL DEFAULT 0,
  `IconLocation2` float NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `WorldStateID` int(11) NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int(11) NOT NULL DEFAULT 0,
  `ScenarioID` int(11) NOT NULL DEFAULT 0,
  `WorldQuestID` int(11) NOT NULL DEFAULT 0,
  `WorldStateValue` int(11) NOT NULL DEFAULT 0,
  `InvasionEnabledWorldStateID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for invasion_client_data_locale
-- ----------------------------
DROP TABLE IF EXISTS `invasion_client_data_locale`;
CREATE TABLE `invasion_client_data_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SubclassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundOverrideSubclass` tinyint(4) NOT NULL DEFAULT 0,
  `Material` tinyint(4) NOT NULL DEFAULT 0,
  `InventoryType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SheatheType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemGroupSoundsID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_appearance
-- ----------------------------
DROP TABLE IF EXISTS `item_appearance`;
CREATE TABLE `item_appearance`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `DefaultIconFileDataID` int(11) NOT NULL DEFAULT 0,
  `UiOrder` int(11) NOT NULL DEFAULT 0,
  `DisplayType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_appearance_x_ui_camera
-- ----------------------------
DROP TABLE IF EXISTS `item_appearance_x_ui_camera`;
CREATE TABLE `item_appearance_x_ui_camera`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemAppearanceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UiCameraID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_armor_quality
-- ----------------------------
DROP TABLE IF EXISTS `item_armor_quality`;
CREATE TABLE `item_armor_quality`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Qualitymod1` float NOT NULL DEFAULT 0,
  `Qualitymod2` float NOT NULL DEFAULT 0,
  `Qualitymod3` float NOT NULL DEFAULT 0,
  `Qualitymod4` float NOT NULL DEFAULT 0,
  `Qualitymod5` float NOT NULL DEFAULT 0,
  `Qualitymod6` float NOT NULL DEFAULT 0,
  `Qualitymod7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_armor_shield
-- ----------------------------
DROP TABLE IF EXISTS `item_armor_shield`;
CREATE TABLE `item_armor_shield`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_armor_total
-- ----------------------------
DROP TABLE IF EXISTS `item_armor_total`;
CREATE TABLE `item_armor_total`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Cloth` float NOT NULL DEFAULT 0,
  `Leather` float NOT NULL DEFAULT 0,
  `Mail` float NOT NULL DEFAULT 0,
  `Plate` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_bag_family
-- ----------------------------
DROP TABLE IF EXISTS `item_bag_family`;
CREATE TABLE `item_bag_family`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_bag_family_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_bag_family_locale`;
CREATE TABLE `item_bag_family_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_bonus
-- ----------------------------
DROP TABLE IF EXISTS `item_bonus`;
CREATE TABLE `item_bonus`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Value1` int(11) NOT NULL DEFAULT 0,
  `Value2` int(11) NOT NULL DEFAULT 0,
  `Value3` int(11) NOT NULL DEFAULT 0,
  `ParentItemBonusListID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_bonus_list_level_delta
-- ----------------------------
DROP TABLE IF EXISTS `item_bonus_list_level_delta`;
CREATE TABLE `item_bonus_list_level_delta`  (
  `ItemLevelDelta` smallint(6) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_bonus_tree_node
-- ----------------------------
DROP TABLE IF EXISTS `item_bonus_tree_node`;
CREATE TABLE `item_bonus_tree_node`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ChildItemBonusTreeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChildItemBonusListID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChildItemLevelSelectorID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemContext` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BonusTreeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_child_equipment
-- ----------------------------
DROP TABLE IF EXISTS `item_child_equipment`;
CREATE TABLE `item_child_equipment`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ChildItemID` int(11) NOT NULL DEFAULT 0,
  `ChildItemEquipSlot` tinyint(4) NOT NULL DEFAULT 0,
  `ItemID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_class
-- ----------------------------
DROP TABLE IF EXISTS `item_class`;
CREATE TABLE `item_class`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ClassName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PriceModifier` float NOT NULL DEFAULT 0,
  `OldEnumValue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Class` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_class_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_class_locale`;
CREATE TABLE `item_class_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ClassName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_currency_cost
-- ----------------------------
DROP TABLE IF EXISTS `item_currency_cost`;
CREATE TABLE `item_currency_cost`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_damage_ammo
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_ammo`;
CREATE TABLE `item_damage_ammo`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_damage_one_hand
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_one_hand`;
CREATE TABLE `item_damage_one_hand`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_damage_one_hand_caster
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_one_hand_caster`;
CREATE TABLE `item_damage_one_hand_caster`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_damage_two_hand
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_two_hand`;
CREATE TABLE `item_damage_two_hand`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_damage_two_hand_caster
-- ----------------------------
DROP TABLE IF EXISTS `item_damage_two_hand_caster`;
CREATE TABLE `item_damage_two_hand_caster`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Quality1` float NOT NULL DEFAULT 0,
  `Quality2` float NOT NULL DEFAULT 0,
  `Quality3` float NOT NULL DEFAULT 0,
  `Quality4` float NOT NULL DEFAULT 0,
  `Quality5` float NOT NULL DEFAULT 0,
  `Quality6` float NOT NULL DEFAULT 0,
  `Quality7` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_disenchant_loot
-- ----------------------------
DROP TABLE IF EXISTS `item_disenchant_loot`;
CREATE TABLE `item_disenchant_loot`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MinLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SkillRequired` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Subclass` tinyint(4) NOT NULL DEFAULT 0,
  `Quality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint(4) NOT NULL DEFAULT 0,
  `ItemClass` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_display_info
-- ----------------------------
DROP TABLE IF EXISTS `item_display_info`;
CREATE TABLE `item_display_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `ItemRangedDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `ItemVisual` int(11) NOT NULL DEFAULT 0,
  `ParticleColorID` int(11) NOT NULL DEFAULT 0,
  `OverrideSwooshSoundKitID` int(11) NOT NULL DEFAULT 0,
  `SheatheTransformMatrixID` int(11) NOT NULL DEFAULT 0,
  `ModelType1` int(11) NOT NULL DEFAULT 0,
  `StateSpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `SheathedSpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `UnsheathedSpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `ModelResourcesID1` int(11) NOT NULL DEFAULT 0,
  `ModelResourcesID2` int(11) NOT NULL DEFAULT 0,
  `ModelMaterialResourcesID1` int(11) NOT NULL DEFAULT 0,
  `ModelMaterialResourcesID2` int(11) NOT NULL DEFAULT 0,
  `GeosetGroup1` int(11) NOT NULL DEFAULT 0,
  `GeosetGroup2` int(11) NOT NULL DEFAULT 0,
  `GeosetGroup3` int(11) NOT NULL DEFAULT 0,
  `GeosetGroup4` int(11) NOT NULL DEFAULT 0,
  `AttachmentGeosetGroup1` int(11) NOT NULL DEFAULT 0,
  `AttachmentGeosetGroup2` int(11) NOT NULL DEFAULT 0,
  `AttachmentGeosetGroup3` int(11) NOT NULL DEFAULT 0,
  `AttachmentGeosetGroup4` int(11) NOT NULL DEFAULT 0,
  `HelmetGeosetVis1` int(11) NOT NULL DEFAULT 0,
  `HelmetGeosetVis2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_display_info_material_res
-- ----------------------------
DROP TABLE IF EXISTS `item_display_info_material_res`;
CREATE TABLE `item_display_info_material_res`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaterialResourcesID` int(11) NOT NULL DEFAULT 0,
  `ComponentSection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_display_x_ui_camera
-- ----------------------------
DROP TABLE IF EXISTS `item_display_x_ui_camera`;
CREATE TABLE `item_display_x_ui_camera`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `UiCameraID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_effect
-- ----------------------------
DROP TABLE IF EXISTS `item_effect`;
CREATE TABLE `item_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `CoolDownMSec` int(11) NOT NULL DEFAULT 0,
  `CategoryCoolDownMSec` int(11) NOT NULL DEFAULT 0,
  `Charges` smallint(6) NOT NULL DEFAULT 0,
  `SpellCategoryID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChrSpecializationID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LegacySlotIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TriggerType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_extended_cost
-- ----------------------------
DROP TABLE IF EXISTS `item_extended_cost`;
CREATE TABLE `item_extended_cost`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID1` int(11) NOT NULL DEFAULT 0,
  `ItemID2` int(11) NOT NULL DEFAULT 0,
  `ItemID3` int(11) NOT NULL DEFAULT 0,
  `ItemID4` int(11) NOT NULL DEFAULT 0,
  `ItemID5` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount1` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount2` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount3` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount4` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount5` int(11) NOT NULL DEFAULT 0,
  `ItemCount1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemCount5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredArenaRating` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArenaBracket` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinFactionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredAchievement` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_group_sounds
-- ----------------------------
DROP TABLE IF EXISTS `item_group_sounds`;
CREATE TABLE `item_group_sounds`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Sound1` int(11) NOT NULL DEFAULT 0,
  `Sound2` int(11) NOT NULL DEFAULT 0,
  `Sound3` int(11) NOT NULL DEFAULT 0,
  `Sound4` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_level_selector
-- ----------------------------
DROP TABLE IF EXISTS `item_level_selector`;
CREATE TABLE `item_level_selector`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MinItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelSelectorQualitySetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_level_selector_quality
-- ----------------------------
DROP TABLE IF EXISTS `item_level_selector_quality`;
CREATE TABLE `item_level_selector_quality`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `QualityItemBonusListID` int(11) NOT NULL DEFAULT 0,
  `Quality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelSelectorQualitySetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_level_selector_quality_set
-- ----------------------------
DROP TABLE IF EXISTS `item_level_selector_quality_set`;
CREATE TABLE `item_level_selector_quality_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `IlvlRare` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `IlvlEpic` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_limit_category
-- ----------------------------
DROP TABLE IF EXISTS `item_limit_category`;
CREATE TABLE `item_limit_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Quantity` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_limit_category_condition
-- ----------------------------
DROP TABLE IF EXISTS `item_limit_category_condition`;
CREATE TABLE `item_limit_category_condition`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AddQuantity` tinyint(4) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `ParentItemLimitCategoryID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_limit_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_limit_category_locale`;
CREATE TABLE `item_limit_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_modified_appearance
-- ----------------------------
DROP TABLE IF EXISTS `item_modified_appearance`;
CREATE TABLE `item_modified_appearance`  (
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemAppearanceModifierID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemAppearanceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TransmogSourceTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_modified_appearance_extra
-- ----------------------------
DROP TABLE IF EXISTS `item_modified_appearance_extra`;
CREATE TABLE `item_modified_appearance_extra`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `UnequippedIconFileDataID` int(11) NOT NULL DEFAULT 0,
  `SheatheType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayWeaponSubclassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayInventoryType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_name_description
-- ----------------------------
DROP TABLE IF EXISTS `item_name_description`;
CREATE TABLE `item_name_description`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Color` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_name_description_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_name_description_locale`;
CREATE TABLE `item_name_description_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_pet_food
-- ----------------------------
DROP TABLE IF EXISTS `item_pet_food`;
CREATE TABLE `item_pet_food`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_pet_food_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_pet_food_locale`;
CREATE TABLE `item_pet_food_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_price_base
-- ----------------------------
DROP TABLE IF EXISTS `item_price_base`;
CREATE TABLE `item_price_base`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Armor` float NOT NULL DEFAULT 0,
  `Weapon` float NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_random_properties
-- ----------------------------
DROP TABLE IF EXISTS `item_random_properties`;
CREATE TABLE `item_random_properties`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Enchantment1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_random_properties_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_random_properties_locale`;
CREATE TABLE `item_random_properties_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_random_suffix
-- ----------------------------
DROP TABLE IF EXISTS `item_random_suffix`;
CREATE TABLE `item_random_suffix`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Enchantment1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Enchantment5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AllocationPct5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_random_suffix_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_random_suffix_locale`;
CREATE TABLE `item_random_suffix_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_ranged_display_info
-- ----------------------------
DROP TABLE IF EXISTS `item_ranged_display_info`;
CREATE TABLE `item_ranged_display_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MissileSpellVisualEffectNameID` int(11) NOT NULL DEFAULT 0,
  `QuiverFileDataID` int(11) NOT NULL DEFAULT 0,
  `CastSpellVisualID` int(11) NOT NULL DEFAULT 0,
  `AutoAttackSpellVisualID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_search_name
-- ----------------------------
DROP TABLE IF EXISTS `item_search_name`;
CREATE TABLE `item_search_name`  (
  `AllowableRace` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Display` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OverallQualityID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinFactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AllowableClass` int(11) NOT NULL DEFAULT 0,
  `RequiredSkill` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredAbility` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_search_name_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_search_name_locale`;
CREATE TABLE `item_search_name_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Display_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_set
-- ----------------------------
DROP TABLE IF EXISTS `item_set`;
CREATE TABLE `item_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ItemID1` int(11) NOT NULL DEFAULT 0,
  `ItemID2` int(11) NOT NULL DEFAULT 0,
  `ItemID3` int(11) NOT NULL DEFAULT 0,
  `ItemID4` int(11) NOT NULL DEFAULT 0,
  `ItemID5` int(11) NOT NULL DEFAULT 0,
  `ItemID6` int(11) NOT NULL DEFAULT 0,
  `ItemID7` int(11) NOT NULL DEFAULT 0,
  `ItemID8` int(11) NOT NULL DEFAULT 0,
  `ItemID9` int(11) NOT NULL DEFAULT 0,
  `ItemID10` int(11) NOT NULL DEFAULT 0,
  `ItemID11` int(11) NOT NULL DEFAULT 0,
  `ItemID12` int(11) NOT NULL DEFAULT 0,
  `ItemID13` int(11) NOT NULL DEFAULT 0,
  `ItemID14` int(11) NOT NULL DEFAULT 0,
  `ItemID15` int(11) NOT NULL DEFAULT 0,
  `ItemID16` int(11) NOT NULL DEFAULT 0,
  `ItemID17` int(11) NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkill` int(11) NOT NULL DEFAULT 0,
  `SetFlags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_set_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_set_locale`;
CREATE TABLE `item_set_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_set_spell
-- ----------------------------
DROP TABLE IF EXISTS `item_set_spell`;
CREATE TABLE `item_set_spell`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `ChrSpecID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Threshold` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_sparse
-- ----------------------------
DROP TABLE IF EXISTS `item_sparse`;
CREATE TABLE `item_sparse`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AllowableRace` bigint(20) NOT NULL DEFAULT 0,
  `Display` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Display1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Display2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Display3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PriceRandomValue` float NOT NULL DEFAULT 0,
  `PriceVariance` float NOT NULL DEFAULT 0,
  `VendorStackCount` int(11) NOT NULL DEFAULT 0,
  `BuyPrice` int(11) NOT NULL DEFAULT 0,
  `SellPrice` int(11) NOT NULL DEFAULT 0,
  `RequiredAbility` int(11) NOT NULL DEFAULT 0,
  `MaxCount` int(11) NOT NULL DEFAULT 0,
  `Stackable` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor1` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor2` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor3` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor4` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor5` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor6` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor7` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor8` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor9` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor10` int(11) NOT NULL DEFAULT 0,
  `StatPercentageOfSocket1` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket2` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket3` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket4` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket5` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket6` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket7` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket8` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket9` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket10` float NOT NULL DEFAULT 0,
  `ItemRange` float NOT NULL DEFAULT 0,
  `BagFamily` int(11) NOT NULL DEFAULT 0,
  `QualityModifier` float NOT NULL DEFAULT 0,
  `DurationInInventory` int(11) NOT NULL DEFAULT 0,
  `DmgVariance` float NOT NULL DEFAULT 0,
  `AllowableClass` smallint(5) NOT NULL DEFAULT -1,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkill` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinFactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemStatValue1` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue2` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue3` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue4` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue5` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue6` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue7` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue8` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue9` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue10` smallint(6) NOT NULL DEFAULT 0,
  `ScalingStatDistributionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemDelay` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `StartQuestID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LockID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RandomSelect` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemRandomSuffixGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemSet` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ZoneBound` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `InstanceBound` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TotemCategoryID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SocketMatch_enchantment_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GemProperties` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LimitCategory` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredHoliday` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredTransmogHoliday` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemNameDescriptionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OverallQualityID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint(4) NOT NULL DEFAULT 0,
  `RequiredPVPRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredPVPMedal` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ContainerSlots` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StatModifierBonusStat1` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat2` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat3` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat4` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat5` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat6` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat7` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat8` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat9` tinyint(4) NOT NULL DEFAULT 0,
  `StatModifierBonusStat10` tinyint(4) NOT NULL DEFAULT 0,
  `DamageDamageType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Bonding` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LanguageID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PageMaterialID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Material` tinyint(4) NOT NULL DEFAULT 0,
  `SheatheType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SocketType1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SocketType2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SocketType3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellWeightCategory` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellWeight` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_sparse_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_sparse_locale`;
CREATE TABLE `item_sparse_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Display_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Display1_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Display2_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Display3_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_spec
-- ----------------------------
DROP TABLE IF EXISTS `item_spec`;
CREATE TABLE `item_spec`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpecializationID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PrimaryStat` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SecondaryStat` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_spec_override
-- ----------------------------
DROP TABLE IF EXISTS `item_spec_override`;
CREATE TABLE `item_spec_override`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpecID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_sub_class
-- ----------------------------
DROP TABLE IF EXISTS `item_sub_class`;
CREATE TABLE `item_sub_class`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DisplayName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerboseName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SubClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PrerequisiteProficiency` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PostrequisiteProficiency` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WeaponSwingSize` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AuctionHouseSortOrder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_sub_class_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_sub_class_locale`;
CREATE TABLE `item_sub_class_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerboseName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_sub_class_mask
-- ----------------------------
DROP TABLE IF EXISTS `item_sub_class_mask`;
CREATE TABLE `item_sub_class_mask`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Mask` int(11) NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_sub_class_mask_locale
-- ----------------------------
DROP TABLE IF EXISTS `item_sub_class_mask_locale`;
CREATE TABLE `item_sub_class_mask_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for item_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `item_upgrade`;
CREATE TABLE `item_upgrade`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CurrencyAmount` int(11) NOT NULL DEFAULT 0,
  `PrerequisiteID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemUpgradePathID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevelIncrement` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_visuals
-- ----------------------------
DROP TABLE IF EXISTS `item_visuals`;
CREATE TABLE `item_visuals`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ModelFileID1` int(11) NOT NULL DEFAULT 0,
  `ModelFileID2` int(11) NOT NULL DEFAULT 0,
  `ModelFileID3` int(11) NOT NULL DEFAULT 0,
  `ModelFileID4` int(11) NOT NULL DEFAULT 0,
  `ModelFileID5` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for item_x_bonus_tree
-- ----------------------------
DROP TABLE IF EXISTS `item_x_bonus_tree`;
CREATE TABLE `item_x_bonus_tree`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemBonusTreeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for itemsparse
-- ----------------------------
DROP TABLE IF EXISTS `itemsparse`;
CREATE TABLE `itemsparse`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `AllowableRace` bigint(20) NOT NULL DEFAULT 0,
  `Name1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Name4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `PriceRandomValue` float NOT NULL DEFAULT 0,
  `PriceVariance` float NOT NULL DEFAULT 0,
  `VendorStackCount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `BuyPrice` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SellPrice` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSpell` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MaxCount` int(11) NOT NULL DEFAULT 0,
  `Stackable` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor1` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor2` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor3` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor4` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor5` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor6` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor7` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor8` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor9` int(11) NOT NULL DEFAULT 0,
  `StatPercentEditor10` int(11) NOT NULL DEFAULT 0,
  `StatPercentageOfSocket1` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket2` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket3` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket4` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket5` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket6` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket7` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket8` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket9` float NOT NULL DEFAULT 0,
  `StatPercentageOfSocket10` float NOT NULL DEFAULT 0,
  `ItemRange` float NOT NULL DEFAULT 0,
  `BagFamily` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `QualityModifier` float NOT NULL DEFAULT 0,
  `DurationInInventory` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `DmgVariance` float NOT NULL DEFAULT 0,
  `AllowableClass` smallint(6) NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkill` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredReputationFaction` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemStatValue1` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue2` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue3` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue4` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue5` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue6` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue7` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue8` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue9` smallint(6) NOT NULL DEFAULT 0,
  `ItemStatValue10` smallint(6) NOT NULL DEFAULT 0,
  `ScalingStatDistribution` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Delay` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PageText` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `StartQuest` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LockID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RandomProperty` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RandomSuffix` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemSet` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Area` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Map` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TotemCategory` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SocketBonus` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GemProperties` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLimitCategory` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `HolidayID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredTransmogHolidayID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemNameDescriptionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Quality` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint(4) NOT NULL DEFAULT 0,
  `RequiredHonorRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredCityRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredReputationRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ContainerSlots` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemStatType1` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType2` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType3` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType4` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType5` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType6` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType7` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType8` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType9` tinyint(4) NOT NULL DEFAULT 0,
  `ItemStatType10` tinyint(4) NOT NULL DEFAULT 0,
  `DamageType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Bonding` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LanguageID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PageMaterial` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Material` tinyint(4) NOT NULL DEFAULT 0,
  `Sheath` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SocketColor1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SocketColor2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SocketColor3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencySubstitutionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencySubstitutionCount` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredExpansion` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_encounter
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter`;
CREATE TABLE `journal_encounter`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Map1` float NOT NULL DEFAULT 0,
  `Map2` float NOT NULL DEFAULT 0,
  `DungeonMapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapAreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FirstSectionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `JournalInstanceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` int(11) NOT NULL DEFAULT 0,
  `MapDisplayConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_encounter_creature
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_creature`;
CREATE TABLE `journal_encounter_creature`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CreatureDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `UiModelSceneID` int(11) NOT NULL DEFAULT 0,
  `JournalEncounterID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_encounter_creature_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_creature_locale`;
CREATE TABLE `journal_encounter_creature_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_encounter_item
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_item`;
CREATE TABLE `journal_encounter_item`  (
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `JournalEncounterID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FactionMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for journal_encounter_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_locale`;
CREATE TABLE `journal_encounter_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_encounter_section
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_section`;
CREATE TABLE `journal_encounter_section`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BodyText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IconCreatureDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `IconFileDataID` int(11) NOT NULL DEFAULT 0,
  `JournalEncounterID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NextSiblingSectionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FirstChildSectionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParentSectionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `IconFlags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UiModelSceneID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_encounter_section_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_section_locale`;
CREATE TABLE `journal_encounter_section_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Title_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BodyText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_encounter_x_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_x_difficulty`;
CREATE TABLE `journal_encounter_x_difficulty`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for journal_encounter_x_map_loc
-- ----------------------------
DROP TABLE IF EXISTS `journal_encounter_x_map_loc`;
CREATE TABLE `journal_encounter_x_map_loc`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Map1` float NOT NULL DEFAULT 0,
  `Map2` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `JournalEncounterID` int(11) NOT NULL DEFAULT 0,
  `DungeonMapID` int(11) NOT NULL DEFAULT 0,
  `MapDisplayConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for journal_instance
-- ----------------------------
DROP TABLE IF EXISTS `journal_instance`;
CREATE TABLE `journal_instance`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ButtonFileDataID` int(11) NOT NULL DEFAULT 0,
  `ButtonSmallFileDataID` int(11) NOT NULL DEFAULT 0,
  `BackgroundFileDataID` int(11) NOT NULL DEFAULT 0,
  `LoreFileDataID` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_instance_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_instance_locale`;
CREATE TABLE `journal_instance_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_item_x_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `journal_item_x_difficulty`;
CREATE TABLE `journal_item_x_difficulty`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for journal_section_x_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `journal_section_x_difficulty`;
CREATE TABLE `journal_section_x_difficulty`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for journal_tier
-- ----------------------------
DROP TABLE IF EXISTS `journal_tier`;
CREATE TABLE `journal_tier`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_tier_locale
-- ----------------------------
DROP TABLE IF EXISTS `journal_tier_locale`;
CREATE TABLE `journal_tier_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for journal_tier_x_instance
-- ----------------------------
DROP TABLE IF EXISTS `journal_tier_x_instance`;
CREATE TABLE `journal_tier_x_instance`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `JournalTierID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `JournalInstanceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for keychain
-- ----------------------------
DROP TABLE IF EXISTS `keychain`;
CREATE TABLE `keychain`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Key1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key9` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key10` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key11` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key12` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key13` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key14` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key15` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key16` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key17` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key18` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key19` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key20` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key21` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key22` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key23` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key24` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key25` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key26` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key27` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key28` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key29` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key30` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key31` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key32` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for keystone_affix
-- ----------------------------
DROP TABLE IF EXISTS `keystone_affix`;
CREATE TABLE `keystone_affix`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Filedataid` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for keystone_affix_locale
-- ----------------------------
DROP TABLE IF EXISTS `keystone_affix_locale`;
CREATE TABLE `keystone_affix_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for language_words
-- ----------------------------
DROP TABLE IF EXISTS `language_words`;
CREATE TABLE `language_words`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Word` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LanguageID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for language_words_locale
-- ----------------------------
DROP TABLE IF EXISTS `language_words_locale`;
CREATE TABLE `language_words_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Word_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for languages_locale
-- ----------------------------
DROP TABLE IF EXISTS `languages_locale`;
CREATE TABLE `languages_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lfg_dungeon_expansion
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeon_expansion`;
CREATE TABLE `lfg_dungeon_expansion`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RandomID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HardLevelMin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `HardLevelMax` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevelMin` int(11) NOT NULL DEFAULT 0,
  `TargetLevelMax` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for lfg_dungeon_group
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeon_group`;
CREATE TABLE `lfg_dungeon_group`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `OrderIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParentGroupId` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Typeid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lfg_dungeon_group_locale
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeon_group_locale`;
CREATE TABLE `lfg_dungeon_group_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lfg_dungeons
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeons`;
CREATE TABLE `lfg_dungeons`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MinGear` float NOT NULL DEFAULT 0,
  `MaxLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevelMax` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MapID` smallint(6) NOT NULL DEFAULT 0,
  `RandomID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ScenarioID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FinalEncounterID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BonusReputationAmount` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MentorItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredPlayerConditionId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TargetLevelMin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Faction` tinyint(4) NOT NULL DEFAULT 0,
  `ExpansionLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `GroupID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CountTank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CountHealer` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CountDamage` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinCountTank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinCountHealer` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinCountDamage` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Substruct` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MentorCharLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `IconTextureFileID` int(11) NOT NULL DEFAULT 0,
  `RewardsBgTextureFileID` int(11) NOT NULL DEFAULT 0,
  `PopupBgTextureFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lfg_dungeons_grouping_map
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeons_grouping_map`;
CREATE TABLE `lfg_dungeons_grouping_map`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RandomLfgDungeonsID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GroupID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for lfg_dungeons_locale
-- ----------------------------
DROP TABLE IF EXISTS `lfg_dungeons_locale`;
CREATE TABLE `lfg_dungeons_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lfg_role_requirement
-- ----------------------------
DROP TABLE IF EXISTS `lfg_role_requirement`;
CREATE TABLE `lfg_role_requirement`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RoleType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `LfgDungeonsId` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for light
-- ----------------------------
DROP TABLE IF EXISTS `light`;
CREATE TABLE `light`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GameCoordsX` float NOT NULL DEFAULT 0,
  `GameCoordsY` float NOT NULL DEFAULT 0,
  `GameCoordsZ` float NOT NULL DEFAULT 0,
  `GameFalloffStart` float NOT NULL DEFAULT 0,
  `GameFalloffEnd` float NOT NULL DEFAULT 0,
  `ContinentID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for light_data
-- ----------------------------
DROP TABLE IF EXISTS `light_data`;
CREATE TABLE `light_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DirectColor` int(11) NOT NULL DEFAULT 0,
  `AmbientColor` int(11) NOT NULL DEFAULT 0,
  `SkyTopColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SkyMiddleColor` int(11) NOT NULL DEFAULT 0,
  `SkyBand1Color` int(11) NOT NULL DEFAULT 0,
  `SkyBand2Color` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SkySmogColor` int(11) NOT NULL DEFAULT 0,
  `SkyFogColor` int(11) NOT NULL DEFAULT 0,
  `SunColor` int(11) NOT NULL DEFAULT 0,
  `CloudSunColor` int(11) NOT NULL DEFAULT 0,
  `CloudEmissiveColor` int(11) NOT NULL DEFAULT 0,
  `CloudLayer1AmbientColor` int(11) NOT NULL DEFAULT 0,
  `CloudLayer2AmbientColor` int(11) NOT NULL DEFAULT 0,
  `OceanCloseColor` int(11) NOT NULL DEFAULT 0,
  `OceanFarColor` int(11) NOT NULL DEFAULT 0,
  `RiverCloseColor` int(11) NOT NULL DEFAULT 0,
  `RiverFarColor` int(11) NOT NULL DEFAULT 0,
  `ShadowOpacity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `FogEnd` float NOT NULL DEFAULT 0,
  `FogScaler` float NOT NULL DEFAULT 0,
  `CloudDensity` float NOT NULL DEFAULT 0,
  `FogDensity` float NOT NULL DEFAULT 0,
  `FogHeight` float NOT NULL DEFAULT 0,
  `FogHeightScaler` float NOT NULL DEFAULT 0,
  `FogHeightDensity` float NOT NULL DEFAULT 0,
  `SunFogAngle` float NOT NULL DEFAULT 0,
  `EndFogColorDistance` float NOT NULL DEFAULT 0,
  `SunFogColor` int(11) NOT NULL DEFAULT 0,
  `EndFogColor` int(11) NOT NULL DEFAULT 0,
  `FogHeightColor` int(11) NOT NULL DEFAULT 0,
  `ColorGradingFileDataID` int(11) NOT NULL DEFAULT 0,
  `HorizonAmbientColor` int(11) NOT NULL DEFAULT 0,
  `GroundAmbientColor` int(11) NOT NULL DEFAULT 0,
  `LightParamID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Time` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for light_params
-- ----------------------------
DROP TABLE IF EXISTS `light_params`;
CREATE TABLE `light_params`  (
  `Glow` float NOT NULL DEFAULT 0,
  `WaterShallowAlpha` float NOT NULL DEFAULT 0,
  `WaterDeepAlpha` float NOT NULL DEFAULT 0,
  `OceanShallowAlpha` float NOT NULL DEFAULT 0,
  `OceanDeepAlpha` float NOT NULL DEFAULT 0,
  `OverrideCelestialSphere1` float NOT NULL DEFAULT 0,
  `OverrideCelestialSphere2` float NOT NULL DEFAULT 0,
  `OverrideCelestialSphere3` float NOT NULL DEFAULT 0,
  `LightSkyboxID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `HighlightSky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CloudTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for light_skybox
-- ----------------------------
DROP TABLE IF EXISTS `light_skybox`;
CREATE TABLE `light_skybox`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CelestialSkyboxFileDataID` int(11) NOT NULL DEFAULT 0,
  `SkyboxFileDataID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for light_skybox_locale
-- ----------------------------
DROP TABLE IF EXISTS `light_skybox_locale`;
CREATE TABLE `light_skybox_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for liquid_material
-- ----------------------------
DROP TABLE IF EXISTS `liquid_material`;
CREATE TABLE `liquid_material`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LVF` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for liquid_object
-- ----------------------------
DROP TABLE IF EXISTS `liquid_object`;
CREATE TABLE `liquid_object`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FlowDirection` float NOT NULL DEFAULT 0,
  `FlowSpeed` float NOT NULL DEFAULT 0,
  `LiquidTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Fishable` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Reflection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for liquid_type
-- ----------------------------
DROP TABLE IF EXISTS `liquid_type`;
CREATE TABLE `liquid_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Texture1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Texture2` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Texture3` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Texture4` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Texture5` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Texture6` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MaxDarkenDepth` float NOT NULL DEFAULT 0,
  `FogDarkenIntensity` float NOT NULL DEFAULT 0,
  `AmbDarkenIntensity` float NOT NULL DEFAULT 0,
  `DirDarkenIntensity` float NOT NULL DEFAULT 0,
  `ParticleScale` float NOT NULL DEFAULT 0,
  `Color1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Color2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Float1` float NOT NULL DEFAULT 0,
  `Float2` float NOT NULL DEFAULT 0,
  `Float3` float NOT NULL DEFAULT 0,
  `Float4` float NOT NULL DEFAULT 0,
  `Float5` float NOT NULL DEFAULT 0,
  `Float6` float NOT NULL DEFAULT 0,
  `Float7` float NOT NULL DEFAULT 0,
  `Float8` float NOT NULL DEFAULT 0,
  `Float9` float NOT NULL DEFAULT 0,
  `Float10` float NOT NULL DEFAULT 0,
  `Float11` float NOT NULL DEFAULT 0,
  `Float12` float NOT NULL DEFAULT 0,
  `Float13` float NOT NULL DEFAULT 0,
  `Float14` float NOT NULL DEFAULT 0,
  `Float15` float NOT NULL DEFAULT 0,
  `Float16` float NOT NULL DEFAULT 0,
  `Float17` float NOT NULL DEFAULT 0,
  `Float18` float NOT NULL DEFAULT 0,
  `Int1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Int2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Int3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Int4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundBank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParticleMovement` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParticleTexSlots` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaterialID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FrameCountTexture6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for liquid_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `liquid_type_locale`;
CREATE TABLE `liquid_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for loading_screen_taxi_splines
-- ----------------------------
DROP TABLE IF EXISTS `loading_screen_taxi_splines`;
CREATE TABLE `loading_screen_taxi_splines`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LocX1` float NOT NULL DEFAULT 0,
  `LocX2` float NOT NULL DEFAULT 0,
  `LocX3` float NOT NULL DEFAULT 0,
  `LocX4` float NOT NULL DEFAULT 0,
  `LocX5` float NOT NULL DEFAULT 0,
  `LocX6` float NOT NULL DEFAULT 0,
  `LocX7` float NOT NULL DEFAULT 0,
  `LocX8` float NOT NULL DEFAULT 0,
  `LocX9` float NOT NULL DEFAULT 0,
  `LocX10` float NOT NULL DEFAULT 0,
  `LocY1` float NOT NULL DEFAULT 0,
  `LocY2` float NOT NULL DEFAULT 0,
  `LocY3` float NOT NULL DEFAULT 0,
  `LocY4` float NOT NULL DEFAULT 0,
  `LocY5` float NOT NULL DEFAULT 0,
  `LocY6` float NOT NULL DEFAULT 0,
  `LocY7` float NOT NULL DEFAULT 0,
  `LocY8` float NOT NULL DEFAULT 0,
  `LocY9` float NOT NULL DEFAULT 0,
  `LocY10` float NOT NULL DEFAULT 0,
  `PathID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LoadingScreenID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LegIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for loading_screens
-- ----------------------------
DROP TABLE IF EXISTS `loading_screens`;
CREATE TABLE `loading_screens`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NarrowScreenFileDataID` int(11) NOT NULL DEFAULT 0,
  `WideScreenFileDataID` int(11) NOT NULL DEFAULT 0,
  `WideScreen169FileDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for locale
-- ----------------------------
DROP TABLE IF EXISTS `locale`;
CREATE TABLE `locale`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FontFileDataID` int(11) NOT NULL DEFAULT 0,
  `WowLocale` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Secondary` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClientDisplayExpansion` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `Rot1` float NOT NULL DEFAULT 0,
  `Rot2` float NOT NULL DEFAULT 0,
  `Rot3` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for lock
-- ----------------------------
DROP TABLE IF EXISTS `lock`;
CREATE TABLE `lock`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Index1` int(11) NOT NULL DEFAULT 0,
  `Index2` int(11) NOT NULL DEFAULT 0,
  `Index3` int(11) NOT NULL DEFAULT 0,
  `Index4` int(11) NOT NULL DEFAULT 0,
  `Index5` int(11) NOT NULL DEFAULT 0,
  `Index6` int(11) NOT NULL DEFAULT 0,
  `Index7` int(11) NOT NULL DEFAULT 0,
  `Index8` int(11) NOT NULL DEFAULT 0,
  `Skill1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Skill2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Skill3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Skill4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Skill5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Skill6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Skill7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Skill8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Type1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Action1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Action2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Action3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Action4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Action5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Action6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Action7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Action8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for lock_type
-- ----------------------------
DROP TABLE IF EXISTS `lock_type`;
CREATE TABLE `lock_type`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ResourceName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Verb` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CursorName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lock_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `lock_type_locale`;
CREATE TABLE `lock_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ResourceName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Verb_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CursorName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for look_at_controller
-- ----------------------------
DROP TABLE IF EXISTS `look_at_controller`;
CREATE TABLE `look_at_controller`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ReactionEnableDistance` float NOT NULL DEFAULT 0,
  `ReactionGiveupDistance` float NOT NULL DEFAULT 0,
  `TorsoSpeedFactor` float NOT NULL DEFAULT 0,
  `HeadSpeedFactor` float NOT NULL DEFAULT 0,
  `ReactionEnableFOVDeg` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReactionGiveupTimeMS` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReactionIgnoreTimeMinMS` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReactionIgnoreTimeMaxMS` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxTorsoYaw` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxTorsoYawWhileMoving` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxHeadYaw` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxHeadPitch` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ReactionWarmUpTimeMSMin` int(11) NOT NULL DEFAULT 0,
  `ReactionWarmUpTimeMSMax` int(11) NOT NULL DEFAULT 0,
  `ReactionGiveupFOVDeg` int(11) NOT NULL DEFAULT 0,
  `MaxTorsoPitchUp` int(11) NOT NULL DEFAULT 0,
  `MaxTorsoPitchDown` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for mail_template
-- ----------------------------
DROP TABLE IF EXISTS `mail_template`;
CREATE TABLE `mail_template`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Body` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mail_template_locale
-- ----------------------------
DROP TABLE IF EXISTS `mail_template_locale`;
CREATE TABLE `mail_template_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Body_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for managed_world_state
-- ----------------------------
DROP TABLE IF EXISTS `managed_world_state`;
CREATE TABLE `managed_world_state`  (
  `CurrentStageWorldStateID` int(11) NOT NULL DEFAULT 0,
  `ProgressWorldStateID` int(11) NOT NULL DEFAULT 0,
  `UpTimeSecs` int(11) NOT NULL DEFAULT 0,
  `DownTimeSecs` int(11) NOT NULL DEFAULT 0,
  `OccurrencesWorldStateID` int(11) NOT NULL DEFAULT 0,
  `AccumulationStateTargetValue` int(11) NOT NULL DEFAULT 0,
  `DepletionStateTargetValue` int(11) NOT NULL DEFAULT 0,
  `AccumulationAmountPerMinute` int(11) NOT NULL DEFAULT 0,
  `DepletionAmountPerMinute` int(11) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for managed_world_state_buff
-- ----------------------------
DROP TABLE IF EXISTS `managed_world_state_buff`;
CREATE TABLE `managed_world_state_buff`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `OccurrenceValue` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `BuffSpellID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `ManagedWorldStateID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for managed_world_state_input
-- ----------------------------
DROP TABLE IF EXISTS `managed_world_state_input`;
CREATE TABLE `managed_world_state_input`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ManagedWorldStateID` int(11) NOT NULL DEFAULT 0,
  `QuestID` int(11) NOT NULL DEFAULT 0,
  `ValidInputConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for manifest_interface_action_icon
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_action_icon`;
CREATE TABLE `manifest_interface_action_icon`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for manifest_interface_data
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_data`;
CREATE TABLE `manifest_interface_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FilePath` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `FileName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for manifest_interface_data_locale
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_data_locale`;
CREATE TABLE `manifest_interface_data_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FilePath_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `FileName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for manifest_interface_item_icon
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_item_icon`;
CREATE TABLE `manifest_interface_item_icon`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for manifest_interface_t_o_c_data
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_t_o_c_data`;
CREATE TABLE `manifest_interface_t_o_c_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FilePath` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for manifest_interface_t_o_c_data_locale
-- ----------------------------
DROP TABLE IF EXISTS `manifest_interface_t_o_c_data_locale`;
CREATE TABLE `manifest_interface_t_o_c_data_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FilePath_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for manifest_m_p3
-- ----------------------------
DROP TABLE IF EXISTS `manifest_m_p3`;
CREATE TABLE `manifest_m_p3`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for map
-- ----------------------------
DROP TABLE IF EXISTS `map`;
CREATE TABLE `map`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Directory` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MapName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MapDescription0` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MapDescription1` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PvpShortDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PvpLongDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MinimapIconScale` float NOT NULL DEFAULT 0,
  `CorpsePosX` float NOT NULL DEFAULT 0,
  `CorpsePosY` float NOT NULL DEFAULT 0,
  `AreaTableID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LoadingScreenID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CorpseMapID` smallint(6) NOT NULL DEFAULT 0,
  `TimeOfDayOverride` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParentMapID` smallint(6) NOT NULL DEFAULT 0,
  `CosmeticParentMapID` smallint(6) NOT NULL DEFAULT 0,
  `WindSettingsID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `InstanceType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MapType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TimeOffset` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for map_celestial_body
-- ----------------------------
DROP TABLE IF EXISTS `map_celestial_body`;
CREATE TABLE `map_celestial_body`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CelestialBodyID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for map_challenge_mode
-- ----------------------------
DROP TABLE IF EXISTS `map_challenge_mode`;
CREATE TABLE `map_challenge_mode`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CriteriaCount1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CriteriaCount2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CriteriaCount3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for map_challenge_mode_locale
-- ----------------------------
DROP TABLE IF EXISTS `map_challenge_mode_locale`;
CREATE TABLE `map_challenge_mode_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for map_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `map_difficulty`;
CREATE TABLE `map_difficulty`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ResetInterval` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxPlayers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LockID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemContext` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemContextPickerID` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(6) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for map_difficulty_locale
-- ----------------------------
DROP TABLE IF EXISTS `map_difficulty_locale`;
CREATE TABLE `map_difficulty_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Message_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for map_difficulty_x_condition
-- ----------------------------
DROP TABLE IF EXISTS `map_difficulty_x_condition`;
CREATE TABLE `map_difficulty_x_condition`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FailureDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PlayerConditionID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` int(11) NOT NULL DEFAULT 0,
  `MapDifficultyId` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for map_difficulty_x_condition_locale
-- ----------------------------
DROP TABLE IF EXISTS `map_difficulty_x_condition_locale`;
CREATE TABLE `map_difficulty_x_condition_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FailureDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for map_loading_screen
-- ----------------------------
DROP TABLE IF EXISTS `map_loading_screen`;
CREATE TABLE `map_loading_screen`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Min1` float NOT NULL DEFAULT 0,
  `Min2` float NOT NULL DEFAULT 0,
  `Max1` float NOT NULL DEFAULT 0,
  `Max2` float NOT NULL DEFAULT 0,
  `LoadingScreenID` int(11) NOT NULL DEFAULT 0,
  `OrderIndex` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for map_locale
-- ----------------------------
DROP TABLE IF EXISTS `map_locale`;
CREATE TABLE `map_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Directory_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MapName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MapDescription0_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MapDescription1_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PvpShortDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PvpLongDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for marketing_promotions_x_locale
-- ----------------------------
DROP TABLE IF EXISTS `marketing_promotions_x_locale`;
CREATE TABLE `marketing_promotions_x_locale`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AcceptURL` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AdTexture` int(11) NOT NULL DEFAULT 0,
  `LogoTexture` int(11) NOT NULL DEFAULT 0,
  `AcceptButtonTexture` int(11) NOT NULL DEFAULT 0,
  `DeclineButtonTexture` int(11) NOT NULL DEFAULT 0,
  `PromotionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LocaleID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for marketing_promotions_x_locale_locale
-- ----------------------------
DROP TABLE IF EXISTS `marketing_promotions_x_locale_locale`;
CREATE TABLE `marketing_promotions_x_locale_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AcceptURL_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FoleySoundID` int(11) NOT NULL DEFAULT 0,
  `SheatheSoundID` int(11) NOT NULL DEFAULT 0,
  `UnsheatheSoundID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for missile_targeting
-- ----------------------------
DROP TABLE IF EXISTS `missile_targeting`;
CREATE TABLE `missile_targeting`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TurnLingering` float NOT NULL DEFAULT 0,
  `PitchLingering` float NOT NULL DEFAULT 0,
  `MouseLingering` float NOT NULL DEFAULT 0,
  `EndOpacity` float NOT NULL DEFAULT 0,
  `ArcSpeed` float NOT NULL DEFAULT 0,
  `ArcRepeat` float NOT NULL DEFAULT 0,
  `ArcWidth` float NOT NULL DEFAULT 0,
  `ImpactRadius1` float NOT NULL DEFAULT 0,
  `ImpactRadius2` float NOT NULL DEFAULT 0,
  `ImpactTexRadius` float NOT NULL DEFAULT 0,
  `ArcTextureFileID` int(11) NOT NULL DEFAULT 0,
  `ImpactTextureFileID` int(11) NOT NULL DEFAULT 0,
  `ImpactModelFileID1` int(11) NOT NULL DEFAULT 0,
  `ImpactModelFileID2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for model_anim_cloak_dampening
-- ----------------------------
DROP TABLE IF EXISTS `model_anim_cloak_dampening`;
CREATE TABLE `model_anim_cloak_dampening`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AnimationDataID` int(11) NOT NULL DEFAULT 0,
  `CloakDampeningID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for model_file_data
-- ----------------------------
DROP TABLE IF EXISTS `model_file_data`;
CREATE TABLE `model_file_data`  (
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LodCount` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `ModelResourcesID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for model_ribbon_quality
-- ----------------------------
DROP TABLE IF EXISTS `model_ribbon_quality`;
CREATE TABLE `model_ribbon_quality`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RibbonQualityID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for modifier_tree
-- ----------------------------
DROP TABLE IF EXISTS `modifier_tree`;
CREATE TABLE `modifier_tree`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Asset` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SecondaryAsset` int(11) NOT NULL DEFAULT 0,
  `Parent` int(11) NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TertiaryAsset` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Operator` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Amount` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for mount
-- ----------------------------
DROP TABLE IF EXISTS `mount`;
CREATE TABLE `mount`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SourceText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SourceSpellID` int(11) NOT NULL DEFAULT 0,
  `MountFlyRideHeight` float NOT NULL DEFAULT 0,
  `MountTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SourceTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `UiModelSceneID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mount_capability
-- ----------------------------
DROP TABLE IF EXISTS `mount_capability`;
CREATE TABLE `mount_capability`  (
  `ReqSpellKnownID` int(11) NOT NULL DEFAULT 0,
  `ModSpellAuraID` int(11) NOT NULL DEFAULT 0,
  `ReqRidingSkill` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReqAreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReqMapID` smallint(6) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `ReqSpellAuraID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for mount_locale
-- ----------------------------
DROP TABLE IF EXISTS `mount_locale`;
CREATE TABLE `mount_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SourceText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mount_type_x_capability
-- ----------------------------
DROP TABLE IF EXISTS `mount_type_x_capability`;
CREATE TABLE `mount_type_x_capability`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MountTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MountCapabilityID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for mount_x_display
-- ----------------------------
DROP TABLE IF EXISTS `mount_x_display`;
CREATE TABLE `mount_x_display`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CreatureDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `MountID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AudioFileDataID` int(11) NOT NULL DEFAULT 0,
  `SubtitleFileDataID` int(11) NOT NULL DEFAULT 0,
  `Volume` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `KeyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for movie_file_data
-- ----------------------------
DROP TABLE IF EXISTS `movie_file_data`;
CREATE TABLE `movie_file_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Resolution` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for movie_variation
-- ----------------------------
DROP TABLE IF EXISTS `movie_variation`;
CREATE TABLE `movie_variation`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `OverlayFileDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for n_p_c_model_item_slot_display_info
-- ----------------------------
DROP TABLE IF EXISTS `n_p_c_model_item_slot_display_info`;
CREATE TABLE `n_p_c_model_item_slot_display_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemDisplayInfoID` int(11) NOT NULL DEFAULT 0,
  `ItemSlot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for n_p_c_sounds
-- ----------------------------
DROP TABLE IF EXISTS `n_p_c_sounds`;
CREATE TABLE `n_p_c_sounds`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundID1` int(11) NOT NULL DEFAULT 0,
  `SoundID2` int(11) NOT NULL DEFAULT 0,
  `SoundID3` int(11) NOT NULL DEFAULT 0,
  `SoundID4` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for name_gen
-- ----------------------------
DROP TABLE IF EXISTS `name_gen`;
CREATE TABLE `name_gen`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Sex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for names_profanity
-- ----------------------------
DROP TABLE IF EXISTS `names_profanity`;
CREATE TABLE `names_profanity`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Language` tinyint(4) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for names_reserved
-- ----------------------------
DROP TABLE IF EXISTS `names_reserved`;
CREATE TABLE `names_reserved`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for names_reserved_locale
-- ----------------------------
DROP TABLE IF EXISTS `names_reserved_locale`;
CREATE TABLE `names_reserved_locale`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LocaleMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for object_effect
-- ----------------------------
DROP TABLE IF EXISTS `object_effect`;
CREATE TABLE `object_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Offset1` float NOT NULL DEFAULT 0,
  `Offset2` float NOT NULL DEFAULT 0,
  `Offset3` float NOT NULL DEFAULT 0,
  `ObjectEffectGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TriggerType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EventType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EffectRecType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Attachment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EffectRecID` int(11) NOT NULL DEFAULT 0,
  `ObjectEffectModifierID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for object_effect_modifier
-- ----------------------------
DROP TABLE IF EXISTS `object_effect_modifier`;
CREATE TABLE `object_effect_modifier`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Param1` float NOT NULL DEFAULT 0,
  `Param2` float NOT NULL DEFAULT 0,
  `Param3` float NOT NULL DEFAULT 0,
  `Param4` float NOT NULL DEFAULT 0,
  `InputType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MapType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OutputType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for object_effect_package_elem
-- ----------------------------
DROP TABLE IF EXISTS `object_effect_package_elem`;
CREATE TABLE `object_effect_package_elem`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ObjectEffectPackageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ObjectEffectGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `StateType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for outline_effect
-- ----------------------------
DROP TABLE IF EXISTS `outline_effect`;
CREATE TABLE `outline_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Range` float NOT NULL DEFAULT 0,
  `UnitConditionID` int(11) NOT NULL DEFAULT 0,
  `PassiveHighlightColorID` int(11) NOT NULL DEFAULT 0,
  `HighlightColorID` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for override_spell_data
-- ----------------------------
DROP TABLE IF EXISTS `override_spell_data`;
CREATE TABLE `override_spell_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Spells1` int(11) NOT NULL DEFAULT 0,
  `Spells2` int(11) NOT NULL DEFAULT 0,
  `Spells3` int(11) NOT NULL DEFAULT 0,
  `Spells4` int(11) NOT NULL DEFAULT 0,
  `Spells5` int(11) NOT NULL DEFAULT 0,
  `Spells6` int(11) NOT NULL DEFAULT 0,
  `Spells7` int(11) NOT NULL DEFAULT 0,
  `Spells8` int(11) NOT NULL DEFAULT 0,
  `Spells9` int(11) NOT NULL DEFAULT 0,
  `Spells10` int(11) NOT NULL DEFAULT 0,
  `PlayerActionBarFileDataID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for page_text_material
-- ----------------------------
DROP TABLE IF EXISTS `page_text_material`;
CREATE TABLE `page_text_material`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for page_text_material_locale
-- ----------------------------
DROP TABLE IF EXISTS `page_text_material_locale`;
CREATE TABLE `page_text_material_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for paper_doll_item_frame
-- ----------------------------
DROP TABLE IF EXISTS `paper_doll_item_frame`;
CREATE TABLE `paper_doll_item_frame`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemButtonName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SlotNumber` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SlotIconFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for paper_doll_item_frame_locale
-- ----------------------------
DROP TABLE IF EXISTS `paper_doll_item_frame_locale`;
CREATE TABLE `paper_doll_item_frame_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ItemButtonName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for paragon_reputation
-- ----------------------------
DROP TABLE IF EXISTS `paragon_reputation`;
CREATE TABLE `paragon_reputation`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LevelThreshold` int(11) NOT NULL DEFAULT 0,
  `QuestID` int(11) NOT NULL DEFAULT 0,
  `FactionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for particle_color
-- ----------------------------
DROP TABLE IF EXISTS `particle_color`;
CREATE TABLE `particle_color`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Start1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Start2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Start3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Mid1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Mid2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Mid3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `End1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `End2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `End3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for path
-- ----------------------------
DROP TABLE IF EXISTS `path`;
CREATE TABLE `path`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SplineType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Red` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Alpha` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for path_node
-- ----------------------------
DROP TABLE IF EXISTS `path_node`;
CREATE TABLE `path_node`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LocationID` int(11) NOT NULL DEFAULT 0,
  `PathID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Sequence` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for path_node_property
-- ----------------------------
DROP TABLE IF EXISTS `path_node_property`;
CREATE TABLE `path_node_property`  (
  `PathID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Sequence` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PropertyIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for path_property
-- ----------------------------
DROP TABLE IF EXISTS `path_property`;
CREATE TABLE `path_property`  (
  `Value` int(11) NOT NULL DEFAULT 0,
  `PathID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PropertyIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for phase
-- ----------------------------
DROP TABLE IF EXISTS `phase`;
CREATE TABLE `phase`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for phase_shift_zone_sounds
-- ----------------------------
DROP TABLE IF EXISTS `phase_shift_zone_sounds`;
CREATE TABLE `phase_shift_zone_sounds`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundAmbienceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UwSoundAmbienceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WmoAreaID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPreferencesID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UwSoundProviderPreferencesID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ZoneIntroMusicID` int(11) NOT NULL DEFAULT 0,
  `ZoneMusicID` int(11) NOT NULL DEFAULT 0,
  `UwZoneIntroMusicID` int(11) NOT NULL DEFAULT 0,
  `UwZoneMusicID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for phase_x_phase_group
-- ----------------------------
DROP TABLE IF EXISTS `phase_x_phase_group`;
CREATE TABLE `phase_x_phase_group`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PhaseID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for player_condition
-- ----------------------------
DROP TABLE IF EXISTS `player_condition`;
CREATE TABLE `player_condition`  (
  `RaceMask` bigint(20) NOT NULL DEFAULT 0,
  `FailureDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int(11) NOT NULL DEFAULT 0,
  `Gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `NativeGender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SkillLogic` int(11) NOT NULL DEFAULT 0,
  `LanguageID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinLanguage` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLanguage` int(11) NOT NULL DEFAULT 0,
  `MaxFactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxReputation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ReputationLogic` int(11) NOT NULL DEFAULT 0,
  `CurrentPvpFaction` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinPVPRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxPVPRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PvpMedal` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestLogic` int(11) NOT NULL DEFAULT 0,
  `CurrQuestLogic` int(11) NOT NULL DEFAULT 0,
  `CurrentCompletedQuestLogic` int(11) NOT NULL DEFAULT 0,
  `SpellLogic` int(11) NOT NULL DEFAULT 0,
  `ItemLogic` int(11) NOT NULL DEFAULT 0,
  `ItemFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AuraSpellLogic` int(11) NOT NULL DEFAULT 0,
  `WorldStateExpressionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WeatherID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PartyStatus` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LifetimeMaxPVPRank` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AchievementLogic` int(11) NOT NULL DEFAULT 0,
  `LfgLogic` int(11) NOT NULL DEFAULT 0,
  `AreaLogic` int(11) NOT NULL DEFAULT 0,
  `CurrencyLogic` int(11) NOT NULL DEFAULT 0,
  `QuestKillID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `QuestKillLogic` int(11) NOT NULL DEFAULT 0,
  `MinExpansionLevel` tinyint(4) NOT NULL DEFAULT 0,
  `MaxExpansionLevel` tinyint(4) NOT NULL DEFAULT 0,
  `MinExpansionTier` tinyint(4) NOT NULL DEFAULT 0,
  `MaxExpansionTier` tinyint(4) NOT NULL DEFAULT 0,
  `MinGuildLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxGuildLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` int(11) NOT NULL DEFAULT 0,
  `MinAvgItemLevel` int(11) NOT NULL DEFAULT 0,
  `MaxAvgItemLevel` int(11) NOT NULL DEFAULT 0,
  `MinAvgEquippedItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxAvgEquippedItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChrSpecializationIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ChrSpecializationRole` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PowerType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PowerTypeComp` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PowerTypeValue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ModifierTreeID` int(11) NOT NULL DEFAULT 0,
  `WeaponSubclassMask` int(11) NOT NULL DEFAULT 0,
  `SkillID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SkillID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SkillID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SkillID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinSkill1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinSkill2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinSkill3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinSkill4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxSkill1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxSkill2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxSkill3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxSkill4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinFactionID1` int(11) NOT NULL DEFAULT 0,
  `MinFactionID2` int(11) NOT NULL DEFAULT 0,
  `MinFactionID3` int(11) NOT NULL DEFAULT 0,
  `MinReputation1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PrevQuestID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrQuestID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrQuestID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrQuestID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrQuestID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrentCompletedQuestID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrentCompletedQuestID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrentCompletedQuestID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrentCompletedQuestID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID1` int(11) NOT NULL DEFAULT 0,
  `SpellID2` int(11) NOT NULL DEFAULT 0,
  `SpellID3` int(11) NOT NULL DEFAULT 0,
  `SpellID4` int(11) NOT NULL DEFAULT 0,
  `ItemID1` int(11) NOT NULL DEFAULT 0,
  `ItemID2` int(11) NOT NULL DEFAULT 0,
  `ItemID3` int(11) NOT NULL DEFAULT 0,
  `ItemID4` int(11) NOT NULL DEFAULT 0,
  `ItemCount1` int(11) NOT NULL DEFAULT 0,
  `ItemCount2` int(11) NOT NULL DEFAULT 0,
  `ItemCount3` int(11) NOT NULL DEFAULT 0,
  `ItemCount4` int(11) NOT NULL DEFAULT 0,
  `Explored1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Explored2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Time1` int(11) NOT NULL DEFAULT 0,
  `Time2` int(11) NOT NULL DEFAULT 0,
  `AuraSpellID1` int(11) NOT NULL DEFAULT 0,
  `AuraSpellID2` int(11) NOT NULL DEFAULT 0,
  `AuraSpellID3` int(11) NOT NULL DEFAULT 0,
  `AuraSpellID4` int(11) NOT NULL DEFAULT 0,
  `AuraStacks1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AuraStacks2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AuraStacks3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AuraStacks4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Achievement1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Achievement2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Achievement3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Achievement4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LfgStatus1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LfgStatus2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LfgStatus3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LfgStatus4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LfgCompare1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LfgCompare2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LfgCompare3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LfgCompare4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LfgValue1` int(11) NOT NULL DEFAULT 0,
  `LfgValue2` int(11) NOT NULL DEFAULT 0,
  `LfgValue3` int(11) NOT NULL DEFAULT 0,
  `LfgValue4` int(11) NOT NULL DEFAULT 0,
  `AreaID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyID1` int(11) NOT NULL DEFAULT 0,
  `CurrencyID2` int(11) NOT NULL DEFAULT 0,
  `CurrencyID3` int(11) NOT NULL DEFAULT 0,
  `CurrencyID4` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount1` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount2` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount3` int(11) NOT NULL DEFAULT 0,
  `CurrencyCount4` int(11) NOT NULL DEFAULT 0,
  `QuestKillMonster1` int(11) NOT NULL DEFAULT 0,
  `QuestKillMonster2` int(11) NOT NULL DEFAULT 0,
  `QuestKillMonster3` int(11) NOT NULL DEFAULT 0,
  `QuestKillMonster4` int(11) NOT NULL DEFAULT 0,
  `QuestKillMonster5` int(11) NOT NULL DEFAULT 0,
  `QuestKillMonster6` int(11) NOT NULL DEFAULT 0,
  `MovementFlags1` int(11) NOT NULL DEFAULT 0,
  `MovementFlags2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for player_condition_locale
-- ----------------------------
DROP TABLE IF EXISTS `player_condition_locale`;
CREATE TABLE `player_condition_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FailureDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for positioner
-- ----------------------------
DROP TABLE IF EXISTS `positioner`;
CREATE TABLE `positioner`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `StartLife` float NOT NULL DEFAULT 0,
  `FirstStateID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StartLifePercent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for positioner_state
-- ----------------------------
DROP TABLE IF EXISTS `positioner_state`;
CREATE TABLE `positioner_state`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `EndLife` float NOT NULL DEFAULT 0,
  `EndLifePercent` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `NextStateID` int(11) NOT NULL DEFAULT 0,
  `TransformMatrixID` int(11) NOT NULL DEFAULT 0,
  `PosEntryID` int(11) NOT NULL DEFAULT 0,
  `RotEntryID` int(11) NOT NULL DEFAULT 0,
  `ScaleEntryID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for positioner_state_entry
-- ----------------------------
DROP TABLE IF EXISTS `positioner_state_entry`;
CREATE TABLE `positioner_state_entry`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ParamA` float NOT NULL DEFAULT 0,
  `ParamB` float NOT NULL DEFAULT 0,
  `SrcValType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SrcVal` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DstValType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DstVal` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EntryType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Style` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SrcType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DstType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CurveID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for power_display
-- ----------------------------
DROP TABLE IF EXISTS `power_display`;
CREATE TABLE `power_display`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `GlobalStringBaseTag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ActualType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Red` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for power_display_locale
-- ----------------------------
DROP TABLE IF EXISTS `power_display_locale`;
CREATE TABLE `power_display_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GlobalStringBaseTag_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for power_type
-- ----------------------------
DROP TABLE IF EXISTS `power_type`;
CREATE TABLE `power_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `NameGlobalStringTag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CostGlobalStringTag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RegenPeace` float NOT NULL DEFAULT 0,
  `RegenCombat` float NOT NULL DEFAULT 0,
  `MaxBasePower` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RegenInterruptTimeMS` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PowerTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinPower` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CenterPower` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DefaultPower` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayModifier` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for power_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `power_type_locale`;
CREATE TABLE `power_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NameGlobalStringTag_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `CostGlobalStringTag_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prestige_level_info
-- ----------------------------
DROP TABLE IF EXISTS `prestige_level_info`;
CREATE TABLE `prestige_level_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BadgeTextureFileDataID` int(11) NOT NULL DEFAULT 0,
  `PrestigeLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for prestige_level_info_locale
-- ----------------------------
DROP TABLE IF EXISTS `prestige_level_info_locale`;
CREATE TABLE `prestige_level_info_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pvp_bracket_types
-- ----------------------------
DROP TABLE IF EXISTS `pvp_bracket_types`;
CREATE TABLE `pvp_bracket_types`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BracketID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WeeklyQuestID1` int(11) NOT NULL DEFAULT 0,
  `WeeklyQuestID2` int(11) NOT NULL DEFAULT 0,
  `WeeklyQuestID3` int(11) NOT NULL DEFAULT 0,
  `WeeklyQuestID4` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pvp_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `pvp_difficulty`;
CREATE TABLE `pvp_difficulty`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RangeIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pvp_item
-- ----------------------------
DROP TABLE IF EXISTS `pvp_item`;
CREATE TABLE `pvp_item`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `ItemLevelDelta` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pvp_reward
-- ----------------------------
DROP TABLE IF EXISTS `pvp_reward`;
CREATE TABLE `pvp_reward`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `HonorLevel` int(11) NOT NULL DEFAULT 0,
  `PrestigeLevel` int(11) NOT NULL DEFAULT 0,
  `RewardPackID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pvp_scaling_effect
-- ----------------------------
DROP TABLE IF EXISTS `pvp_scaling_effect`;
CREATE TABLE `pvp_scaling_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Value` float NOT NULL DEFAULT 0,
  `PvpScalingEffectTypeID` int(11) NOT NULL DEFAULT 0,
  `SpecializationID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for pvp_scaling_effect_type
-- ----------------------------
DROP TABLE IF EXISTS `pvp_scaling_effect_type`;
CREATE TABLE `pvp_scaling_effect_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pvp_scaling_effect_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `pvp_scaling_effect_type_locale`;
CREATE TABLE `pvp_scaling_effect_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pvp_talent
-- ----------------------------
DROP TABLE IF EXISTS `pvp_talent`;
CREATE TABLE `pvp_talent`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `OverrideSpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ExtraSpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TierID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ColumnIndex` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SpecID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Role` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pvp_talent_locale
-- ----------------------------
DROP TABLE IF EXISTS `pvp_talent_locale`;
CREATE TABLE `pvp_talent_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for pvp_talent_unlock
-- ----------------------------
DROP TABLE IF EXISTS `pvp_talent_unlock`;
CREATE TABLE `pvp_talent_unlock`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TierID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ColumnIndex` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `HonorLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_faction_reward
-- ----------------------------
DROP TABLE IF EXISTS `quest_faction_reward`;
CREATE TABLE `quest_faction_reward`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Difficulty1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty9` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty10` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_feedback_effect
-- ----------------------------
DROP TABLE IF EXISTS `quest_feedback_effect`;
CREATE TABLE `quest_feedback_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `MinimapAtlasMemberID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AttachPoint` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PassiveHighlightColorType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_info
-- ----------------------------
DROP TABLE IF EXISTS `quest_info`;
CREATE TABLE `quest_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `InfoName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Profession` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Modifiers` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_info_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_info_locale`;
CREATE TABLE `quest_info_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `InfoName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_line
-- ----------------------------
DROP TABLE IF EXISTS `quest_line`;
CREATE TABLE `quest_line`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_line_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_line_locale`;
CREATE TABLE `quest_line_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_line_x_quest
-- ----------------------------
DROP TABLE IF EXISTS `quest_line_x_quest`;
CREATE TABLE `quest_line_x_quest`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `QuestLineID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `QuestID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_money_reward
-- ----------------------------
DROP TABLE IF EXISTS `quest_money_reward`;
CREATE TABLE `quest_money_reward`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Difficulty1` int(11) NOT NULL DEFAULT 0,
  `Difficulty2` int(11) NOT NULL DEFAULT 0,
  `Difficulty3` int(11) NOT NULL DEFAULT 0,
  `Difficulty4` int(11) NOT NULL DEFAULT 0,
  `Difficulty5` int(11) NOT NULL DEFAULT 0,
  `Difficulty6` int(11) NOT NULL DEFAULT 0,
  `Difficulty7` int(11) NOT NULL DEFAULT 0,
  `Difficulty8` int(11) NOT NULL DEFAULT 0,
  `Difficulty9` int(11) NOT NULL DEFAULT 0,
  `Difficulty10` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_objective
-- ----------------------------
DROP TABLE IF EXISTS `quest_objective`;
CREATE TABLE `quest_objective`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Amount` int(11) NOT NULL DEFAULT 0,
  `ObjectID` int(11) NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `StorageIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `QuestID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_objective_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_objective_locale`;
CREATE TABLE `quest_objective_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_p_o_i_blob
-- ----------------------------
DROP TABLE IF EXISTS `quest_p_o_i_blob`;
CREATE TABLE `quest_p_o_i_blob`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapAreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NumPoints` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Floor` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `QuestID` int(11) NOT NULL DEFAULT 0,
  `ObjectiveIndex` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_p_o_i_point
-- ----------------------------
DROP TABLE IF EXISTS `quest_p_o_i_point`;
CREATE TABLE `quest_p_o_i_point`  (
  `QuestPOIBlobID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `X` smallint(6) NOT NULL DEFAULT 0,
  `Y` smallint(6) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_package_item
-- ----------------------------
DROP TABLE IF EXISTS `quest_package_item`;
CREATE TABLE `quest_package_item`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `PackageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemQuantity` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_sort
-- ----------------------------
DROP TABLE IF EXISTS `quest_sort`;
CREATE TABLE `quest_sort`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SortName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `UiOrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_sort_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_sort_locale`;
CREATE TABLE `quest_sort_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SortName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_v2
-- ----------------------------
DROP TABLE IF EXISTS `quest_v2`;
CREATE TABLE `quest_v2`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `UniqueBitFlag` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_v2_cli_task
-- ----------------------------
DROP TABLE IF EXISTS `quest_v2_cli_task`;
CREATE TABLE `quest_v2_cli_task`  (
  `FiltRaces` bigint(20) NOT NULL DEFAULT 0,
  `QuestTitle` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BulletText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `StartItem` int(11) NOT NULL DEFAULT 0,
  `UniqueBitFlag` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FiltClasses` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FiltCompletedQuest1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FiltCompletedQuest2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FiltCompletedQuest3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FiltMinSkillID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WorldStateExpressionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FiltActiveQuest` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FiltCompletedQuestLogic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FiltMaxFactionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FiltMaxFactionValue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FiltMaxLevel` tinyint(4) NOT NULL DEFAULT 0,
  `FiltMinFactionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FiltMinFactionValue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FiltMinLevel` tinyint(4) NOT NULL DEFAULT 0,
  `FiltMinSkillValue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FiltNonActiveQuest` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `BreadCrumbID` int(11) NOT NULL DEFAULT 0,
  `QuestInfoID` int(11) NOT NULL DEFAULT 0,
  `SandboxScalingID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_v2_cli_task_locale
-- ----------------------------
DROP TABLE IF EXISTS `quest_v2_cli_task_locale`;
CREATE TABLE `quest_v2_cli_task_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `QuestTitle_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BulletText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for quest_x_group_activity
-- ----------------------------
DROP TABLE IF EXISTS `quest_x_group_activity`;
CREATE TABLE `quest_x_group_activity`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `QuestID` int(11) NOT NULL DEFAULT 0,
  `GroupFinderActivityID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for quest_xp
-- ----------------------------
DROP TABLE IF EXISTS `quest_xp`;
CREATE TABLE `quest_xp`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Difficulty1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty9` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Difficulty10` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for rand_prop_points
-- ----------------------------
DROP TABLE IF EXISTS `rand_prop_points`;
CREATE TABLE `rand_prop_points`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Epic1` int(11) NOT NULL DEFAULT 0,
  `Epic2` int(11) NOT NULL DEFAULT 0,
  `Epic3` int(11) NOT NULL DEFAULT 0,
  `Epic4` int(11) NOT NULL DEFAULT 0,
  `Epic5` int(11) NOT NULL DEFAULT 0,
  `Superior1` int(11) NOT NULL DEFAULT 0,
  `Superior2` int(11) NOT NULL DEFAULT 0,
  `Superior3` int(11) NOT NULL DEFAULT 0,
  `Superior4` int(11) NOT NULL DEFAULT 0,
  `Superior5` int(11) NOT NULL DEFAULT 0,
  `Good1` int(11) NOT NULL DEFAULT 0,
  `Good2` int(11) NOT NULL DEFAULT 0,
  `Good3` int(11) NOT NULL DEFAULT 0,
  `Good4` int(11) NOT NULL DEFAULT 0,
  `Good5` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for relic_slot_tier_requirement
-- ----------------------------
DROP TABLE IF EXISTS `relic_slot_tier_requirement`;
CREATE TABLE `relic_slot_tier_requirement`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `RelicIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RelicTier` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for relic_talent
-- ----------------------------
DROP TABLE IF EXISTS `relic_talent`;
CREATE TABLE `relic_talent`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ArtifactPowerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactPowerLabel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `PVal` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for research_branch
-- ----------------------------
DROP TABLE IF EXISTS `research_branch`;
CREATE TABLE `research_branch`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `CurrencyID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ResearchFieldID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TextureFileID` int(11) NOT NULL DEFAULT 0,
  `BigTextureFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for research_branch_locale
-- ----------------------------
DROP TABLE IF EXISTS `research_branch_locale`;
CREATE TABLE `research_branch_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for research_field
-- ----------------------------
DROP TABLE IF EXISTS `research_field`;
CREATE TABLE `research_field`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Slot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for research_field_locale
-- ----------------------------
DROP TABLE IF EXISTS `research_field_locale`;
CREATE TABLE `research_field_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for research_project
-- ----------------------------
DROP TABLE IF EXISTS `research_project`;
CREATE TABLE `research_project`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `ResearchBranchID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Rarity` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `NumSockets` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `TextureFileID` int(11) NOT NULL DEFAULT 0,
  `RequiredWeight` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for research_project_locale
-- ----------------------------
DROP TABLE IF EXISTS `research_project_locale`;
CREATE TABLE `research_project_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for research_site
-- ----------------------------
DROP TABLE IF EXISTS `research_site`;
CREATE TABLE `research_site`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `QuestPoiBlobID` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(6) NOT NULL DEFAULT 0,
  `AreaPOIIconEnum` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for research_site_locale
-- ----------------------------
DROP TABLE IF EXISTS `research_site_locale`;
CREATE TABLE `research_site_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for resistances
-- ----------------------------
DROP TABLE IF EXISTS `resistances`;
CREATE TABLE `resistances`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FizzleSoundID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for resistances_locale
-- ----------------------------
DROP TABLE IF EXISTS `resistances_locale`;
CREATE TABLE `resistances_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reward_pack
-- ----------------------------
DROP TABLE IF EXISTS `reward_pack`;
CREATE TABLE `reward_pack`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Money` int(11) NOT NULL DEFAULT 0,
  `ArtifactXPMultiplier` float NOT NULL DEFAULT 0,
  `ArtifactXPDifficulty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ArtifactXPCategoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CharTitleID` int(11) NOT NULL DEFAULT 0,
  `TreasurePickerID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for reward_pack_x_currency_type
-- ----------------------------
DROP TABLE IF EXISTS `reward_pack_x_currency_type`;
CREATE TABLE `reward_pack_x_currency_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CurrencyTypeID` int(11) NOT NULL DEFAULT 0,
  `Quantity` int(11) NOT NULL DEFAULT 0,
  `RewardPackID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for reward_pack_x_item
-- ----------------------------
DROP TABLE IF EXISTS `reward_pack_x_item`;
CREATE TABLE `reward_pack_x_item`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `ItemQuantity` int(11) NOT NULL DEFAULT 0,
  `RewardPackID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ribbon_quality
-- ----------------------------
DROP TABLE IF EXISTS `ribbon_quality`;
CREATE TABLE `ribbon_quality`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaxSampleTimeDelta` float NOT NULL DEFAULT 0,
  `AngleThreshold` float NOT NULL DEFAULT 0,
  `MinDistancePerSlice` float NOT NULL DEFAULT 0,
  `NumStrips` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ruleset_item_upgrade
-- ----------------------------
DROP TABLE IF EXISTS `ruleset_item_upgrade`;
CREATE TABLE `ruleset_item_upgrade`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `ItemUpgradeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for s_d_replacement_model
-- ----------------------------
DROP TABLE IF EXISTS `s_d_replacement_model`;
CREATE TABLE `s_d_replacement_model`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SdFileDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sandbox_scaling
-- ----------------------------
DROP TABLE IF EXISTS `sandbox_scaling`;
CREATE TABLE `sandbox_scaling`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MinLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for scaling_stat_distribution
-- ----------------------------
DROP TABLE IF EXISTS `scaling_stat_distribution`;
CREATE TABLE `scaling_stat_distribution`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PlayerLevelToItemLevelCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for scenario
-- ----------------------------
DROP TABLE IF EXISTS `scenario`;
CREATE TABLE `scenario`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AreaTableID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scenario_locale
-- ----------------------------
DROP TABLE IF EXISTS `scenario_locale`;
CREATE TABLE `scenario_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scenario_step
-- ----------------------------
DROP TABLE IF EXISTS `scenario_step`;
CREATE TABLE `scenario_step`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ScenarioID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Supersedes` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RewardQuestID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Criteriatreeid` int(11) NOT NULL DEFAULT 0,
  `RelatedStep` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scenario_step_locale
-- ----------------------------
DROP TABLE IF EXISTS `scenario_step_locale`;
CREATE TABLE `scenario_step_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Title_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scene_script
-- ----------------------------
DROP TABLE IF EXISTS `scene_script`;
CREATE TABLE `scene_script`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FirstSceneScriptID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NextSceneScriptID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for scene_script_global_text
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_global_text`;
CREATE TABLE `scene_script_global_text`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scene_script_global_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_global_text_locale`;
CREATE TABLE `scene_script_global_text_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Script_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scene_script_package
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_package`;
CREATE TABLE `scene_script_package`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scene_script_package_locale
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_package_locale`;
CREATE TABLE `scene_script_package_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scene_script_package_member
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_package_member`;
CREATE TABLE `scene_script_package_member`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SceneScriptPackageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SceneScriptID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChildSceneScriptPackageID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for scene_script_text
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_text`;
CREATE TABLE `scene_script_text`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Script` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scene_script_text_locale
-- ----------------------------
DROP TABLE IF EXISTS `scene_script_text_locale`;
CREATE TABLE `scene_script_text_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Script_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for scheduled_interval
-- ----------------------------
DROP TABLE IF EXISTS `scheduled_interval`;
CREATE TABLE `scheduled_interval`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `RepeatType` int(11) NOT NULL DEFAULT 0,
  `DurationSecs` int(11) NOT NULL DEFAULT 0,
  `OffsetSecs` int(11) NOT NULL DEFAULT 0,
  `DateAlignmentType` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for scheduled_world_state
-- ----------------------------
DROP TABLE IF EXISTS `scheduled_world_state`;
CREATE TABLE `scheduled_world_state`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ScheduledWorldStateGroupID` int(11) NOT NULL DEFAULT 0,
  `WorldStateID` int(11) NOT NULL DEFAULT 0,
  `Value` int(11) NOT NULL DEFAULT 0,
  `DurationSecs` int(11) NOT NULL DEFAULT 0,
  `Weight` int(11) NOT NULL DEFAULT 0,
  `UniqueCategory` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `OrderIndex` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for scheduled_world_state_group
-- ----------------------------
DROP TABLE IF EXISTS `scheduled_world_state_group`;
CREATE TABLE `scheduled_world_state_group`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `ScheduledIntervalID` int(11) NOT NULL DEFAULT 0,
  `SelectionType` int(11) NOT NULL DEFAULT 0,
  `SelectionCount` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for scheduled_world_state_x_uniq_cat
-- ----------------------------
DROP TABLE IF EXISTS `scheduled_world_state_x_uniq_cat`;
CREATE TABLE `scheduled_world_state_x_uniq_cat`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ScheduledUniqueCategoryID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for screen_effect
-- ----------------------------
DROP TABLE IF EXISTS `screen_effect`;
CREATE TABLE `screen_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Param1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Param2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Param3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Param4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsFadeIn` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightParamsFadeOut` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TimeOfDayOverride` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Effect` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LightFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EffectMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `FullScreenEffectID` int(11) NOT NULL DEFAULT 0,
  `SoundAmbienceID` int(11) NOT NULL DEFAULT 0,
  `ZoneMusicID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for screen_effect_locale
-- ----------------------------
DROP TABLE IF EXISTS `screen_effect_locale`;
CREATE TABLE `screen_effect_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for screen_location
-- ----------------------------
DROP TABLE IF EXISTS `screen_location`;
CREATE TABLE `screen_location`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for screen_location_locale
-- ----------------------------
DROP TABLE IF EXISTS `screen_location_locale`;
CREATE TABLE `screen_location_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for seamless_site
-- ----------------------------
DROP TABLE IF EXISTS `seamless_site`;
CREATE TABLE `seamless_site`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MapID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for server_messages
-- ----------------------------
DROP TABLE IF EXISTS `server_messages`;
CREATE TABLE `server_messages`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for server_messages_locale
-- ----------------------------
DROP TABLE IF EXISTS `server_messages_locale`;
CREATE TABLE `server_messages_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shadowy_effect
-- ----------------------------
DROP TABLE IF EXISTS `shadowy_effect`;
CREATE TABLE `shadowy_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PrimaryColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SecondaryColor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Value` float NOT NULL DEFAULT 0,
  `FadeInTime` float NOT NULL DEFAULT 0,
  `FadeOutTime` float NOT NULL DEFAULT 0,
  `InnerStrength` float NOT NULL DEFAULT 0,
  `OuterStrength` float NOT NULL DEFAULT 0,
  `InitialDelay` float NOT NULL DEFAULT 0,
  `AttachPos` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CurveID` int(11) NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for skill_line
-- ----------------------------
DROP TABLE IF EXISTS `skill_line`;
CREATE TABLE `skill_line`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DisplayName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AlternateVerb` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CategoryID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CanLink` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellIconFileID` int(11) NOT NULL DEFAULT 0,
  `ParentSkillLineID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for skill_line_ability
-- ----------------------------
DROP TABLE IF EXISTS `skill_line_ability`;
CREATE TABLE `skill_line_ability`  (
  `RaceMask` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Spell` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SupercedesSpell` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SkillLine` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TrivialSkillLineRankHigh` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TrivialSkillLineRankLow` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UniqueBit` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TradeSkillCategoryID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NumSkillUps` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int(11) NOT NULL DEFAULT 0,
  `MinSkillLineRank` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AcquireMethod` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for skill_line_locale
-- ----------------------------
DROP TABLE IF EXISTS `skill_line_locale`;
CREATE TABLE `skill_line_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AlternateVerb_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for skill_race_class_info
-- ----------------------------
DROP TABLE IF EXISTS `skill_race_class_info`;
CREATE TABLE `skill_race_class_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RaceMask` bigint(20) NOT NULL DEFAULT 0,
  `SkillID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SkillTierID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Availability` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_ambience
-- ----------------------------
DROP TABLE IF EXISTS `sound_ambience`;
CREATE TABLE `sound_ambience`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundFilterID` int(11) NOT NULL DEFAULT 0,
  `FlavorSoundFilterID` int(11) NOT NULL DEFAULT 0,
  `AmbienceID1` int(11) NOT NULL DEFAULT 0,
  `AmbienceID2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_ambience_flavor
-- ----------------------------
DROP TABLE IF EXISTS `sound_ambience_flavor`;
CREATE TABLE `sound_ambience_flavor`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundEntriesIDDay` int(11) NOT NULL DEFAULT 0,
  `SoundEntriesIDNight` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_bus
-- ----------------------------
DROP TABLE IF EXISTS `sound_bus`;
CREATE TABLE `sound_bus`  (
  `DefaultVolume` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DefaultPlaybackLimit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DefaultPriority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DefaultPriorityPenalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BusEnumID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_bus_override
-- ----------------------------
DROP TABLE IF EXISTS `sound_bus_override`;
CREATE TABLE `sound_bus_override`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Volume` float NOT NULL DEFAULT 0,
  `PlaybackLimit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PriorityPenalty` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundBusID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_emitter_pill_points
-- ----------------------------
DROP TABLE IF EXISTS `sound_emitter_pill_points`;
CREATE TABLE `sound_emitter_pill_points`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Position1` float NOT NULL DEFAULT 0,
  `Position2` float NOT NULL DEFAULT 0,
  `Position3` float NOT NULL DEFAULT 0,
  `SoundEmittersID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_emitters
-- ----------------------------
DROP TABLE IF EXISTS `sound_emitters`;
CREATE TABLE `sound_emitters`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Position1` float NOT NULL DEFAULT 0,
  `Position2` float NOT NULL DEFAULT 0,
  `Position3` float NOT NULL DEFAULT 0,
  `Direction1` float NOT NULL DEFAULT 0,
  `Direction2` float NOT NULL DEFAULT 0,
  `Direction3` float NOT NULL DEFAULT 0,
  `WorldStateExpressionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EmitterType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundEntriesID` int(11) NOT NULL DEFAULT 0,
  `PhaseGroupID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sound_emitters_locale
-- ----------------------------
DROP TABLE IF EXISTS `sound_emitters_locale`;
CREATE TABLE `sound_emitters_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sound_envelope
-- ----------------------------
DROP TABLE IF EXISTS `sound_envelope`;
CREATE TABLE `sound_envelope`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundKitID` int(11) NOT NULL DEFAULT 0,
  `CurveID` int(11) NOT NULL DEFAULT 0,
  `DecayIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SustainIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReleaseIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EnvelopeType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_filter
-- ----------------------------
DROP TABLE IF EXISTS `sound_filter`;
CREATE TABLE `sound_filter`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sound_filter_elem
-- ----------------------------
DROP TABLE IF EXISTS `sound_filter_elem`;
CREATE TABLE `sound_filter_elem`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Params1` float NOT NULL DEFAULT 0,
  `Params2` float NOT NULL DEFAULT 0,
  `Params3` float NOT NULL DEFAULT 0,
  `Params4` float NOT NULL DEFAULT 0,
  `Params5` float NOT NULL DEFAULT 0,
  `Params6` float NOT NULL DEFAULT 0,
  `Params7` float NOT NULL DEFAULT 0,
  `Params8` float NOT NULL DEFAULT 0,
  `Params9` float NOT NULL DEFAULT 0,
  `FilterType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_filter_locale
-- ----------------------------
DROP TABLE IF EXISTS `sound_filter_locale`;
CREATE TABLE `sound_filter_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sound_kit
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit`;
CREATE TABLE `sound_kit`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VolumeFloat` float NOT NULL DEFAULT 0,
  `MinDistance` float NOT NULL DEFAULT 0,
  `DistanceCutoff` float NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundEntriesAdvancedID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DialogType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EAXDef` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VolumeVariationPlus` float NOT NULL DEFAULT 0,
  `VolumeVariationMinus` float NOT NULL DEFAULT 0,
  `PitchVariationPlus` float NOT NULL DEFAULT 0,
  `PitchVariationMinus` float NOT NULL DEFAULT 0,
  `PitchAdjust` float NOT NULL DEFAULT 0,
  `BusOverwriteID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxInstances` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_kit_advanced
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_advanced`;
CREATE TABLE `sound_kit_advanced`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `InnerRadius2D` float NOT NULL DEFAULT 0,
  `DuckToSFX` float NOT NULL DEFAULT 0,
  `DuckToMusic` float NOT NULL DEFAULT 0,
  `InnerRadiusOfInfluence` float NOT NULL DEFAULT 0,
  `OuterRadiusOfInfluence` float NOT NULL DEFAULT 0,
  `TimeToDuck` int(11) NOT NULL DEFAULT 0,
  `TimeToUnduck` int(11) NOT NULL DEFAULT 0,
  `OuterRadius2D` float NOT NULL DEFAULT 0,
  `Usage` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundKitID` int(11) NOT NULL DEFAULT 0,
  `TimeA` int(11) NOT NULL DEFAULT 0,
  `TimeB` int(11) NOT NULL DEFAULT 0,
  `TimeC` int(11) NOT NULL DEFAULT 0,
  `TimeD` int(11) NOT NULL DEFAULT 0,
  `RandomOffsetRange` int(11) NOT NULL DEFAULT 0,
  `TimeIntervalMin` int(11) NOT NULL DEFAULT 0,
  `TimeIntervalMax` int(11) NOT NULL DEFAULT 0,
  `DelayMin` int(11) NOT NULL DEFAULT 0,
  `DelayMax` int(11) NOT NULL DEFAULT 0,
  `VolumeSliderCategory` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DuckToAmbience` float NOT NULL DEFAULT 0,
  `InsideAngle` float NOT NULL DEFAULT 0,
  `OutsideAngle` float NOT NULL DEFAULT 0,
  `OutsideVolume` float NOT NULL DEFAULT 0,
  `MinRandomPosOffset` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxRandomPosOffset` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DuckToDialog` float NOT NULL DEFAULT 0,
  `DuckToSuppressors` float NOT NULL DEFAULT 0,
  `MsOffset` int(11) NOT NULL DEFAULT 0,
  `TimeCooldownMin` int(11) NOT NULL DEFAULT 0,
  `TimeCooldownMax` int(11) NOT NULL DEFAULT 0,
  `MaxInstancesBehavior` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VolumeControlType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VolumeFadeInTimeMin` int(11) NOT NULL DEFAULT 0,
  `VolumeFadeInTimeMax` int(11) NOT NULL DEFAULT 0,
  `VolumeFadeInCurveID` int(11) NOT NULL DEFAULT 0,
  `VolumeFadeOutTimeMin` int(11) NOT NULL DEFAULT 0,
  `VolumeFadeOutTimeMax` int(11) NOT NULL DEFAULT 0,
  `VolumeFadeOutCurveID` int(11) NOT NULL DEFAULT 0,
  `ChanceToPlay` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_kit_child
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_child`;
CREATE TABLE `sound_kit_child`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ParentSoundKitID` int(11) NOT NULL DEFAULT 0,
  `SoundKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_kit_entry
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_entry`;
CREATE TABLE `sound_kit_entry`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundKitID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `Frequency` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Volume` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_kit_fallback
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_fallback`;
CREATE TABLE `sound_kit_fallback`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundKitID` int(11) NOT NULL DEFAULT 0,
  `FallbackSoundKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_kit_name
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_name`;
CREATE TABLE `sound_kit_name`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sound_kit_name_locale
-- ----------------------------
DROP TABLE IF EXISTS `sound_kit_name_locale`;
CREATE TABLE `sound_kit_name_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sound_override
-- ----------------------------
DROP TABLE IF EXISTS `sound_override`;
CREATE TABLE `sound_override`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ZoneIntroMusicID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ZoneMusicID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundAmbienceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPreferencesID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sound_provider_preferences
-- ----------------------------
DROP TABLE IF EXISTS `sound_provider_preferences`;
CREATE TABLE `sound_provider_preferences`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `EAXDecayTime` float NOT NULL DEFAULT 0,
  `EAX2EnvironmentSize` float NOT NULL DEFAULT 0,
  `EAX2EnvironmentDiffusion` float NOT NULL DEFAULT 0,
  `EAX2DecayHFRatio` float NOT NULL DEFAULT 0,
  `EAX2ReflectionsDelay` float NOT NULL DEFAULT 0,
  `EAX2ReverbDelay` float NOT NULL DEFAULT 0,
  `EAX2RoomRolloff` float NOT NULL DEFAULT 0,
  `EAX2AirAbsorption` float NOT NULL DEFAULT 0,
  `EAX3DecayLFRatio` float NOT NULL DEFAULT 0,
  `EAX3EchoTime` float NOT NULL DEFAULT 0,
  `EAX3EchoDepth` float NOT NULL DEFAULT 0,
  `EAX3ModulationTime` float NOT NULL DEFAULT 0,
  `EAX3ModulationDepth` float NOT NULL DEFAULT 0,
  `EAX3HFReference` float NOT NULL DEFAULT 0,
  `EAX3LFReference` float NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EAX2Room` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EAX2RoomHF` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EAX2Reflections` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EAX2Reverb` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EAXEnvironmentSelection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EAX3RoomLF` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sound_provider_preferences_locale
-- ----------------------------
DROP TABLE IF EXISTS `sound_provider_preferences_locale`;
CREATE TABLE `sound_provider_preferences_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for source_info
-- ----------------------------
DROP TABLE IF EXISTS `source_info`;
CREATE TABLE `source_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SourceText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SourceTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PvpFaction` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for source_info_locale
-- ----------------------------
DROP TABLE IF EXISTS `source_info_locale`;
CREATE TABLE `source_info_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SourceText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spam_messages
-- ----------------------------
DROP TABLE IF EXISTS `spam_messages`;
CREATE TABLE `spam_messages`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spam_messages_locale
-- ----------------------------
DROP TABLE IF EXISTS `spam_messages_locale`;
CREATE TABLE `spam_messages_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Text_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for specialization_spells
-- ----------------------------
DROP TABLE IF EXISTS `specialization_spells`;
CREATE TABLE `specialization_spells`  (
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `OverridesSpellID` int(11) NOT NULL DEFAULT 0,
  `SpecID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayOrder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for specialization_spells_locale
-- ----------------------------
DROP TABLE IF EXISTS `specialization_spells_locale`;
CREATE TABLE `specialization_spells_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell
-- ----------------------------
DROP TABLE IF EXISTS `spell`;
CREATE TABLE `spell`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameSubtext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AuraDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_action_bar_pref
-- ----------------------------
DROP TABLE IF EXISTS `spell_action_bar_pref`;
CREATE TABLE `spell_action_bar_pref`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `PreferredActionBarMask` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_activation_overlay
-- ----------------------------
DROP TABLE IF EXISTS `spell_activation_overlay`;
CREATE TABLE `spell_activation_overlay`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `OverlayFileDataID` int(11) NOT NULL DEFAULT 0,
  `Color` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `IconHighlightSpellClassMask1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IconHighlightSpellClassMask2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IconHighlightSpellClassMask3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `IconHighlightSpellClassMask4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ScreenLocationID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TriggerType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundEntriesID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_aura_options
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_options`;
CREATE TABLE `spell_aura_options`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ProcCharges` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ProcTypeMask` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ProcCategoryRecovery` int(11) NOT NULL DEFAULT 0,
  `CumulativeAura` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellProcsPerMinuteID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ProcChance` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_aura_restrictions
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_restrictions`;
CREATE TABLE `spell_aura_restrictions`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CasterAuraSpell` int(11) NOT NULL DEFAULT 0,
  `TargetAuraSpell` int(11) NOT NULL DEFAULT 0,
  `ExcludeCasterAuraSpell` int(11) NOT NULL DEFAULT 0,
  `ExcludeTargetAuraSpell` int(11) NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CasterAuraState` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TargetAuraState` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExcludeCasterAuraState` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ExcludeTargetAuraState` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_aura_vis_x_chr_spec
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_vis_x_chr_spec`;
CREATE TABLE `spell_aura_vis_x_chr_spec`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ChrSpecializationID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_aura_visibility
-- ----------------------------
DROP TABLE IF EXISTS `spell_aura_visibility`;
CREATE TABLE `spell_aura_visibility`  (
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_cast_times
-- ----------------------------
DROP TABLE IF EXISTS `spell_cast_times`;
CREATE TABLE `spell_cast_times`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Base` int(11) NOT NULL DEFAULT 0,
  `Minimum` int(11) NOT NULL DEFAULT 0,
  `PerLevel` smallint(6) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_casting_requirements
-- ----------------------------
DROP TABLE IF EXISTS `spell_casting_requirements`;
CREATE TABLE `spell_casting_requirements`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `MinFactionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredAreasID` smallint(6) NOT NULL DEFAULT 0,
  `RequiresSpellFocus` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FacingCasterFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinReputation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredAuraVision` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_categories
-- ----------------------------
DROP TABLE IF EXISTS `spell_categories`;
CREATE TABLE `spell_categories`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Category` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `StartRecoveryCategory` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChargeCategory` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DefenseType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DispelType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Mechanic` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PreventionType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_category
-- ----------------------------
DROP TABLE IF EXISTS `spell_category`;
CREATE TABLE `spell_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ChargeRecoveryTime` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UsesPerWeek` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxCharges` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TypeMask` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_category_locale`;
CREATE TABLE `spell_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_chain_effects
-- ----------------------------
DROP TABLE IF EXISTS `spell_chain_effects`;
CREATE TABLE `spell_chain_effects`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AvgSegLen` float NOT NULL DEFAULT 0,
  `NoiseScale` float NOT NULL DEFAULT 0,
  `TexCoordScale` float NOT NULL DEFAULT 0,
  `SegDuration` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `JointOffsetRadius` float NOT NULL DEFAULT 0,
  `MinorJointScale` float NOT NULL DEFAULT 0,
  `MajorJointScale` float NOT NULL DEFAULT 0,
  `JointMoveSpeed` float NOT NULL DEFAULT 0,
  `JointSmoothness` float NOT NULL DEFAULT 0,
  `MinDurationBetweenJointJumps` float NOT NULL DEFAULT 0,
  `MaxDurationBetweenJointJumps` float NOT NULL DEFAULT 0,
  `WaveHeight` float NOT NULL DEFAULT 0,
  `WaveFreq` float NOT NULL DEFAULT 0,
  `WaveSpeed` float NOT NULL DEFAULT 0,
  `MinWaveAngle` float NOT NULL DEFAULT 0,
  `MaxWaveAngle` float NOT NULL DEFAULT 0,
  `MinWaveSpin` float NOT NULL DEFAULT 0,
  `MaxWaveSpin` float NOT NULL DEFAULT 0,
  `ArcHeight` float NOT NULL DEFAULT 0,
  `MinArcAngle` float NOT NULL DEFAULT 0,
  `MaxArcAngle` float NOT NULL DEFAULT 0,
  `MinArcSpin` float NOT NULL DEFAULT 0,
  `MaxArcSpin` float NOT NULL DEFAULT 0,
  `DelayBetweenEffects` float NOT NULL DEFAULT 0,
  `MinFlickerOnDuration` float NOT NULL DEFAULT 0,
  `MaxFlickerOnDuration` float NOT NULL DEFAULT 0,
  `MinFlickerOffDuration` float NOT NULL DEFAULT 0,
  `MaxFlickerOffDuration` float NOT NULL DEFAULT 0,
  `PulseSpeed` float NOT NULL DEFAULT 0,
  `PulseOnLength` float NOT NULL DEFAULT 0,
  `PulseFadeLength` float NOT NULL DEFAULT 0,
  `WavePhase` float NOT NULL DEFAULT 0,
  `TimePerFlipFrame` float NOT NULL DEFAULT 0,
  `VariancePerFlipFrame` float NOT NULL DEFAULT 0,
  `TextureCoordScaleU1` float NOT NULL DEFAULT 0,
  `TextureCoordScaleU2` float NOT NULL DEFAULT 0,
  `TextureCoordScaleU3` float NOT NULL DEFAULT 0,
  `TextureCoordScaleV1` float NOT NULL DEFAULT 0,
  `TextureCoordScaleV2` float NOT NULL DEFAULT 0,
  `TextureCoordScaleV3` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthU1` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthU2` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthU3` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthV1` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthV2` float NOT NULL DEFAULT 0,
  `TextureRepeatLengthV3` float NOT NULL DEFAULT 0,
  `TextureParticleFileDataID` int(11) NOT NULL DEFAULT 0,
  `StartWidth` float NOT NULL DEFAULT 0,
  `EndWidth` float NOT NULL DEFAULT 0,
  `ParticleScaleMultiplier` float NOT NULL DEFAULT 0,
  `ParticleEmissionRateMultiplier` float NOT NULL DEFAULT 0,
  `SegDelay` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `JointCount` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID9` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID10` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellChainEffectID11` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WidthScaleCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `JointsPerMinorJoint` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinorJointsPerMajorJoint` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Alpha` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Red` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Green` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Blue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BlendMode` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RenderLayer` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `NumFlipFramesU` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `NumFlipFramesV` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundKitID` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID1` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID2` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID3` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_class_options
-- ----------------------------
DROP TABLE IF EXISTS `spell_class_options`;
CREATE TABLE `spell_class_options`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `SpellClassMask1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassMask2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassMask3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassMask4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `SpellClassSet` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ModalNextSpell` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_cooldowns
-- ----------------------------
DROP TABLE IF EXISTS `spell_cooldowns`;
CREATE TABLE `spell_cooldowns`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CategoryRecoveryTime` int(11) NOT NULL DEFAULT 0,
  `RecoveryTime` int(11) NOT NULL DEFAULT 0,
  `StartRecoveryTime` int(11) NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_description_variables
-- ----------------------------
DROP TABLE IF EXISTS `spell_description_variables`;
CREATE TABLE `spell_description_variables`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Variables` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_description_variables_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_description_variables_locale`;
CREATE TABLE `spell_description_variables_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Variables_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_dispel_type
-- ----------------------------
DROP TABLE IF EXISTS `spell_dispel_type`;
CREATE TABLE `spell_dispel_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `InternalName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Mask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ImmunityPossible` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_dispel_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_dispel_type_locale`;
CREATE TABLE `spell_dispel_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `InternalName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_duration
-- ----------------------------
DROP TABLE IF EXISTS `spell_duration`;
CREATE TABLE `spell_duration`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Duration` int(11) NOT NULL DEFAULT 0,
  `MaxDuration` int(11) NOT NULL DEFAULT 0,
  `DurationPerLevel` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_effect`;
CREATE TABLE `spell_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Effect` int(11) NOT NULL DEFAULT 0,
  `EffectBasePoints` int(11) NOT NULL DEFAULT 0,
  `EffectIndex` int(11) NOT NULL DEFAULT 0,
  `EffectAura` int(11) NOT NULL DEFAULT 0,
  `DifficultyID` int(11) NOT NULL DEFAULT 0,
  `EffectAmplitude` float NOT NULL DEFAULT 0,
  `EffectAuraPeriod` int(11) NOT NULL DEFAULT 0,
  `EffectBonusCoefficient` float NOT NULL DEFAULT 0,
  `EffectChainAmplitude` float NOT NULL DEFAULT 0,
  `EffectChainTargets` int(11) NOT NULL DEFAULT 0,
  `EffectDieSides` int(11) NOT NULL DEFAULT 0,
  `EffectItemType` int(11) NOT NULL DEFAULT 0,
  `EffectMechanic` int(11) NOT NULL DEFAULT 0,
  `EffectPointsPerResource` float NOT NULL DEFAULT 0,
  `EffectRealPointsPerLevel` float NOT NULL DEFAULT 0,
  `EffectTriggerSpell` int(11) NOT NULL DEFAULT 0,
  `EffectPosFacing` float NOT NULL DEFAULT 0,
  `EffectAttributes` int(11) NOT NULL DEFAULT 0,
  `BonusCoefficientFromAP` float NOT NULL DEFAULT 0,
  `PvpMultiplier` float NOT NULL DEFAULT 0,
  `Coefficient` float NOT NULL DEFAULT 0,
  `Variance` float NOT NULL DEFAULT 0,
  `ResourceCoefficient` float NOT NULL DEFAULT 0,
  `GroupSizeBasePointsCoefficient` float NOT NULL DEFAULT 0,
  `EffectSpellClassMask1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectSpellClassMask2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectSpellClassMask3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectSpellClassMask4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectMiscValue1` int(11) NOT NULL DEFAULT 0,
  `EffectMiscValue2` int(11) NOT NULL DEFAULT 0,
  `EffectRadiusIndex1` int(11) NOT NULL DEFAULT 0,
  `EffectRadiusIndex2` int(11) NOT NULL DEFAULT 0,
  `ImplicitTarget1` int(11) NOT NULL DEFAULT 0,
  `ImplicitTarget2` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_effect_emission
-- ----------------------------
DROP TABLE IF EXISTS `spell_effect_emission`;
CREATE TABLE `spell_effect_emission`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `EmissionRate` float NOT NULL DEFAULT 0,
  `ModelScale` float NOT NULL DEFAULT 0,
  `AreaModelID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_equipped_items
-- ----------------------------
DROP TABLE IF EXISTS `spell_equipped_items`;
CREATE TABLE `spell_equipped_items`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `EquippedItemInvTypes` int(11) NOT NULL DEFAULT 0,
  `EquippedItemSubclass` int(11) NOT NULL DEFAULT 0,
  `EquippedItemClass` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_flyout
-- ----------------------------
DROP TABLE IF EXISTS `spell_flyout`;
CREATE TABLE `spell_flyout`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RaceMask` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassMask` int(11) NOT NULL DEFAULT 0,
  `SpellIconFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_flyout_item
-- ----------------------------
DROP TABLE IF EXISTS `spell_flyout_item`;
CREATE TABLE `spell_flyout_item`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `Slot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_flyout_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_flyout_locale`;
CREATE TABLE `spell_flyout_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_focus_object
-- ----------------------------
DROP TABLE IF EXISTS `spell_focus_object`;
CREATE TABLE `spell_focus_object`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_focus_object_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_focus_object_locale`;
CREATE TABLE `spell_focus_object_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_interrupts
-- ----------------------------
DROP TABLE IF EXISTS `spell_interrupts`;
CREATE TABLE `spell_interrupts`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `InterruptFlags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AuraInterruptFlags1` int(11) NOT NULL DEFAULT 0,
  `AuraInterruptFlags2` int(11) NOT NULL DEFAULT 0,
  `ChannelInterruptFlags1` int(11) NOT NULL DEFAULT 0,
  `ChannelInterruptFlags2` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_item_enchantment
-- ----------------------------
DROP TABLE IF EXISTS `spell_item_enchantment`;
CREATE TABLE `spell_item_enchantment`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `EffectArg1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectArg2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectArg3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectScalingPoints1` float NOT NULL DEFAULT 0,
  `EffectScalingPoints2` float NOT NULL DEFAULT 0,
  `EffectScalingPoints3` float NOT NULL DEFAULT 0,
  `TransmogCost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TextureFileDataID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `EffectPointsMin1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EffectPointsMin2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EffectPointsMin3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemVisual` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredSkillRank` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Charges` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Effect1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Effect2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Effect3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ConditionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ScalingClass` tinyint(4) NOT NULL DEFAULT 0,
  `ScalingClassRestricted` tinyint(4) NOT NULL DEFAULT 0,
  `TransmogPlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_item_enchantment_condition
-- ----------------------------
DROP TABLE IF EXISTS `spell_item_enchantment_condition`;
CREATE TABLE `spell_item_enchantment_condition`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LtOperand1` int(11) NOT NULL DEFAULT 0,
  `LtOperand2` int(11) NOT NULL DEFAULT 0,
  `LtOperand3` int(11) NOT NULL DEFAULT 0,
  `LtOperand4` int(11) NOT NULL DEFAULT 0,
  `LtOperand5` int(11) NOT NULL DEFAULT 0,
  `LtOperandType1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LtOperandType2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LtOperandType3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LtOperandType4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LtOperandType5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Operator1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Operator2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Operator3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Operator4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Operator5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperandType5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RtOperand5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Logic1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Logic2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Logic3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Logic4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Logic5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_item_enchantment_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_item_enchantment_locale`;
CREATE TABLE `spell_item_enchantment_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_keybound_override
-- ----------------------------
DROP TABLE IF EXISTS `spell_keybound_override`;
CREATE TABLE `spell_keybound_override`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Function` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Data` int(11) NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_keybound_override_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_keybound_override_locale`;
CREATE TABLE `spell_keybound_override_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Function_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_label
-- ----------------------------
DROP TABLE IF EXISTS `spell_label`;
CREATE TABLE `spell_label`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LabelID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_learn_spell
-- ----------------------------
DROP TABLE IF EXISTS `spell_learn_spell`;
CREATE TABLE `spell_learn_spell`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `LearnSpellID` int(11) NOT NULL DEFAULT 0,
  `OverridesSpellID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_levels
-- ----------------------------
DROP TABLE IF EXISTS `spell_levels`;
CREATE TABLE `spell_levels`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BaseLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxPassiveAuraLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_locale`;
CREATE TABLE `spell_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NameSubtext_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `AuraDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_mechanic
-- ----------------------------
DROP TABLE IF EXISTS `spell_mechanic`;
CREATE TABLE `spell_mechanic`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `StateName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_mechanic_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_mechanic_locale`;
CREATE TABLE `spell_mechanic_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `StateName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_misc
-- ----------------------------
DROP TABLE IF EXISTS `spell_misc`;
CREATE TABLE `spell_misc`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `CastingTimeIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DurationIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RangeIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SchoolMask` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellIconFileDataID` int(11) NOT NULL DEFAULT 0,
  `Speed` float NOT NULL DEFAULT 0,
  `ActiveIconFileDataID` int(11) NOT NULL DEFAULT 0,
  `LaunchDelay` float NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Attributes1` int(11) NOT NULL DEFAULT 0,
  `Attributes2` int(11) NOT NULL DEFAULT 0,
  `Attributes3` int(11) NOT NULL DEFAULT 0,
  `Attributes4` int(11) NOT NULL DEFAULT 0,
  `Attributes5` int(11) NOT NULL DEFAULT 0,
  `Attributes6` int(11) NOT NULL DEFAULT 0,
  `Attributes7` int(11) NOT NULL DEFAULT 0,
  `Attributes8` int(11) NOT NULL DEFAULT 0,
  `Attributes9` int(11) NOT NULL DEFAULT 0,
  `Attributes10` int(11) NOT NULL DEFAULT 0,
  `Attributes11` int(11) NOT NULL DEFAULT 0,
  `Attributes12` int(11) NOT NULL DEFAULT 0,
  `Attributes13` int(11) NOT NULL DEFAULT 0,
  `Attributes14` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_missile
-- ----------------------------
DROP TABLE IF EXISTS `spell_missile`;
CREATE TABLE `spell_missile`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `DefaultPitchMin` float NOT NULL DEFAULT 0,
  `DefaultPitchMax` float NOT NULL DEFAULT 0,
  `DefaultSpeedMin` float NOT NULL DEFAULT 0,
  `DefaultSpeedMax` float NOT NULL DEFAULT 0,
  `RandomizeFacingMin` float NOT NULL DEFAULT 0,
  `RandomizeFacingMax` float NOT NULL DEFAULT 0,
  `RandomizePitchMin` float NOT NULL DEFAULT 0,
  `RandomizePitchMax` float NOT NULL DEFAULT 0,
  `RandomizeSpeedMin` float NOT NULL DEFAULT 0,
  `RandomizeSpeedMax` float NOT NULL DEFAULT 0,
  `Gravity` float NOT NULL DEFAULT 0,
  `MaxDuration` float NOT NULL DEFAULT 0,
  `CollisionRadius` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_missile_motion
-- ----------------------------
DROP TABLE IF EXISTS `spell_missile_motion`;
CREATE TABLE `spell_missile_motion`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ScriptBody` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MissileCount` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_missile_motion_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_missile_motion_locale`;
CREATE TABLE `spell_missile_motion_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ScriptBody_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_power
-- ----------------------------
DROP TABLE IF EXISTS `spell_power`;
CREATE TABLE `spell_power`  (
  `ManaCost` int(11) NOT NULL DEFAULT 0,
  `PowerCostPct` float NOT NULL DEFAULT 0,
  `PowerPctPerSecond` float NOT NULL DEFAULT 0,
  `RequiredAuraSpellID` int(11) NOT NULL DEFAULT 0,
  `PowerCostMaxPct` float NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PowerType` tinyint(4) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `ManaCostPerLevel` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ManaPerSecond` int(11) NOT NULL DEFAULT 0,
  `OptionalCost` int(11) NOT NULL DEFAULT 0,
  `PowerDisplayID` int(11) NOT NULL DEFAULT 0,
  `AltPowerBarID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_power_difficulty
-- ----------------------------
DROP TABLE IF EXISTS `spell_power_difficulty`;
CREATE TABLE `spell_power_difficulty`  (
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_procedural_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_procedural_effect`;
CREATE TABLE `spell_procedural_effect`  (
  `Value1` float NOT NULL DEFAULT 0,
  `Value2` float NOT NULL DEFAULT 0,
  `Value3` float NOT NULL DEFAULT 0,
  `Value4` float NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_procs_per_minute
-- ----------------------------
DROP TABLE IF EXISTS `spell_procs_per_minute`;
CREATE TABLE `spell_procs_per_minute`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BaseProcRate` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_procs_per_minute_mod
-- ----------------------------
DROP TABLE IF EXISTS `spell_procs_per_minute_mod`;
CREATE TABLE `spell_procs_per_minute_mod`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Coeff` float NOT NULL DEFAULT 0,
  `Param` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellProcsPerMinuteID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_radius
-- ----------------------------
DROP TABLE IF EXISTS `spell_radius`;
CREATE TABLE `spell_radius`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Radius` float NOT NULL DEFAULT 0,
  `RadiusPerLevel` float NOT NULL DEFAULT 0,
  `RadiusMin` float NOT NULL DEFAULT 0,
  `RadiusMax` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_range
-- ----------------------------
DROP TABLE IF EXISTS `spell_range`;
CREATE TABLE `spell_range`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DisplayName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DisplayNameShort` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RangeMin1` float NOT NULL DEFAULT 0,
  `RangeMin2` float NOT NULL DEFAULT 0,
  `RangeMax1` float NOT NULL DEFAULT 0,
  `RangeMax2` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_range_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_range_locale`;
CREATE TABLE `spell_range_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DisplayName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DisplayNameShort_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_reagents
-- ----------------------------
DROP TABLE IF EXISTS `spell_reagents`;
CREATE TABLE `spell_reagents`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `Reagent1` int(11) NOT NULL DEFAULT 0,
  `Reagent2` int(11) NOT NULL DEFAULT 0,
  `Reagent3` int(11) NOT NULL DEFAULT 0,
  `Reagent4` int(11) NOT NULL DEFAULT 0,
  `Reagent5` int(11) NOT NULL DEFAULT 0,
  `Reagent6` int(11) NOT NULL DEFAULT 0,
  `Reagent7` int(11) NOT NULL DEFAULT 0,
  `Reagent8` int(11) NOT NULL DEFAULT 0,
  `ReagentCount1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ReagentCount8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_reagents_currency
-- ----------------------------
DROP TABLE IF EXISTS `spell_reagents_currency`;
CREATE TABLE `spell_reagents_currency`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `CurrencyTypesID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CurrencyCount` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_scaling
-- ----------------------------
DROP TABLE IF EXISTS `spell_scaling`;
CREATE TABLE `spell_scaling`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `ScalesFromItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Class` int(11) NOT NULL DEFAULT 0,
  `MinScalingLevel` int(11) NOT NULL DEFAULT 0,
  `MaxScalingLevel` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_shapeshift
-- ----------------------------
DROP TABLE IF EXISTS `spell_shapeshift`;
CREATE TABLE `spell_shapeshift`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `ShapeshiftExclude1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ShapeshiftExclude2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ShapeshiftMask1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ShapeshiftMask2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `StanceBarOrder` tinyint(4) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_shapeshift_form
-- ----------------------------
DROP TABLE IF EXISTS `spell_shapeshift_form`;
CREATE TABLE `spell_shapeshift_form`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DamageVariance` float NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `CombatRoundTime` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MountTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CreatureType` tinyint(4) NOT NULL DEFAULT 0,
  `BonusActionBar` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AttackIconFileID` int(11) NOT NULL DEFAULT 0,
  `CreatureDisplayID1` int(11) NOT NULL DEFAULT 0,
  `CreatureDisplayID2` int(11) NOT NULL DEFAULT 0,
  `CreatureDisplayID3` int(11) NOT NULL DEFAULT 0,
  `CreatureDisplayID4` int(11) NOT NULL DEFAULT 0,
  `PresetSpellID1` int(11) NOT NULL DEFAULT 0,
  `PresetSpellID2` int(11) NOT NULL DEFAULT 0,
  `PresetSpellID3` int(11) NOT NULL DEFAULT 0,
  `PresetSpellID4` int(11) NOT NULL DEFAULT 0,
  `PresetSpellID5` int(11) NOT NULL DEFAULT 0,
  `PresetSpellID6` int(11) NOT NULL DEFAULT 0,
  `PresetSpellID7` int(11) NOT NULL DEFAULT 0,
  `PresetSpellID8` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_shapeshift_form_locale
-- ----------------------------
DROP TABLE IF EXISTS `spell_shapeshift_form_locale`;
CREATE TABLE `spell_shapeshift_form_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spell_special_unit_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_special_unit_effect`;
CREATE TABLE `spell_special_unit_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellVisualEffectNameID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PositionerID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_target_restrictions
-- ----------------------------
DROP TABLE IF EXISTS `spell_target_restrictions`;
CREATE TABLE `spell_target_restrictions`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ConeDegrees` float NOT NULL DEFAULT 0,
  `Width` float NOT NULL DEFAULT 0,
  `Targets` int(11) NOT NULL DEFAULT 0,
  `TargetCreatureType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxTargets` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxTargetLevel` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_totems
-- ----------------------------
DROP TABLE IF EXISTS `spell_totems`;
CREATE TABLE `spell_totems`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `Totem1` int(11) NOT NULL DEFAULT 0,
  `Totem2` int(11) NOT NULL DEFAULT 0,
  `RequiredTotemCategoryID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredTotemCategoryID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual`;
CREATE TABLE `spell_visual`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MissileCastOffset1` float NOT NULL DEFAULT 0,
  `MissileCastOffset2` float NOT NULL DEFAULT 0,
  `MissileCastOffset3` float NOT NULL DEFAULT 0,
  `MissileImpactOffset1` float NOT NULL DEFAULT 0,
  `MissileImpactOffset2` float NOT NULL DEFAULT 0,
  `MissileImpactOffset3` float NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `SpellVisualMissileSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MissileDestinationAttachment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MissileAttachment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MissileCastPositionerID` int(11) NOT NULL DEFAULT 0,
  `MissileImpactPositionerID` int(11) NOT NULL DEFAULT 0,
  `MissileTargetingKit` int(11) NOT NULL DEFAULT 0,
  `AnimEventSoundID` int(11) NOT NULL DEFAULT 0,
  `DamageNumberDelay` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `HostileSpellVisualID` int(11) NOT NULL DEFAULT 0,
  `CasterSpellVisualID` int(11) NOT NULL DEFAULT 0,
  `LowViolenceSpellVisualID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_anim
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_anim`;
CREATE TABLE `spell_visual_anim`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `InitialAnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LoopAnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_color_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_color_effect`;
CREATE TABLE `spell_visual_color_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Color` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ColorMultiplier` float NOT NULL DEFAULT 0,
  `RedCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GreenCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BlueCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AlphaCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OpacityCurveID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PositionerID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_effect_name
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_effect_name`;
CREATE TABLE `spell_visual_effect_name`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ModelFileDataID` int(11) NOT NULL DEFAULT 0,
  `EffectRadius` float NOT NULL DEFAULT 0,
  `BaseMissileSpeed` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `MinAllowedScale` float NOT NULL DEFAULT 0,
  `MaxAllowedScale` float NOT NULL DEFAULT 0,
  `Alpha` float NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 0,
  `GenericID` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID` int(11) NOT NULL DEFAULT 0,
  `RibbonQualityID` int(11) NOT NULL DEFAULT 0,
  `DissolveEffectID` int(11) NOT NULL DEFAULT 0,
  `Unknown13` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_event
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_event`;
CREATE TABLE `spell_visual_event`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `StartEvent` int(11) NOT NULL DEFAULT 0,
  `StartMinOffsetMs` int(11) NOT NULL DEFAULT 0,
  `StartMaxOffsetMs` int(11) NOT NULL DEFAULT 0,
  `EndEvent` int(11) NOT NULL DEFAULT 0,
  `EndMinOffsetMs` int(11) NOT NULL DEFAULT 0,
  `EndMaxOffsetMs` int(11) NOT NULL DEFAULT 0,
  `TargetType` int(11) NOT NULL DEFAULT 0,
  `SpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_kit
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit`;
CREATE TABLE `spell_visual_kit`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `FallbackPriority` float NOT NULL DEFAULT 0,
  `FallbackSpellVisualKitID` int(11) NOT NULL DEFAULT 0,
  `DelayMin` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DelayMax` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_kit_area_model
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit_area_model`;
CREATE TABLE `spell_visual_kit_area_model`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ModelFileDataID` int(11) NOT NULL DEFAULT 0,
  `EmissionRate` float NOT NULL DEFAULT 0,
  `Spacing` float NOT NULL DEFAULT 0,
  `ModelScale` float NOT NULL DEFAULT 0,
  `LifeTime` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_kit_effect
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit_effect`;
CREATE TABLE `spell_visual_kit_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `EffectType` int(11) NOT NULL DEFAULT 0,
  `Effect` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_kit_model_attach
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_kit_model_attach`;
CREATE TABLE `spell_visual_kit_model_attach`  (
  `Offset1` float NOT NULL DEFAULT 0,
  `Offset2` float NOT NULL DEFAULT 0,
  `Offset3` float NOT NULL DEFAULT 0,
  `OffsetVariation1` float NOT NULL DEFAULT 0,
  `OffsetVariation2` float NOT NULL DEFAULT 0,
  `OffsetVariation3` float NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellVisualEffectNameID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AttachmentID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PositionerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Yaw` float NOT NULL DEFAULT 0,
  `Pitch` float NOT NULL DEFAULT 0,
  `Roll` float NOT NULL DEFAULT 0,
  `YawVariation` float NOT NULL DEFAULT 0,
  `PitchVariation` float NOT NULL DEFAULT 0,
  `RollVariation` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `ScaleVariation` float NOT NULL DEFAULT 0,
  `StartAnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EndAnimID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LowDefModelAttachID` int(11) NOT NULL DEFAULT 0,
  `StartDelay` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_visual_missile
-- ----------------------------
DROP TABLE IF EXISTS `spell_visual_missile`;
CREATE TABLE `spell_visual_missile`  (
  `FollowGroundHeight` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `FollowGroundDropSpeed` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `CastOffset1` float NOT NULL DEFAULT 0,
  `CastOffset2` float NOT NULL DEFAULT 0,
  `CastOffset3` float NOT NULL DEFAULT 0,
  `ImpactOffset1` float NOT NULL DEFAULT 0,
  `ImpactOffset2` float NOT NULL DEFAULT 0,
  `ImpactOffset3` float NOT NULL DEFAULT 0,
  `SpellVisualEffectNameID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CastPositionerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ImpactPositionerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FollowGroundApproach` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellMissileMotionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Attachment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DestinationAttachment` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `SoundEntriesID` int(11) NOT NULL DEFAULT 0,
  `AnimKitID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_x_description_variables
-- ----------------------------
DROP TABLE IF EXISTS `spell_x_description_variables`;
CREATE TABLE `spell_x_description_variables`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `SpellDescriptionVariablesID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for spell_x_spell_visual
-- ----------------------------
DROP TABLE IF EXISTS `spell_x_spell_visual`;
CREATE TABLE `spell_x_spell_visual`  (
  `SpellVisualID` int(11) NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Probability` float NOT NULL DEFAULT 0,
  `CasterPlayerConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CasterUnitConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ViewerPlayerConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ViewerUnitConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SpellIconFileID` int(11) NOT NULL DEFAULT 0,
  `ActiveIconFileID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `DifficultyID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SpellID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for startup__strings
-- ----------------------------
DROP TABLE IF EXISTS `startup__strings`;
CREATE TABLE `startup__strings`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Message` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for startup__strings_locale
-- ----------------------------
DROP TABLE IF EXISTS `startup__strings_locale`;
CREATE TABLE `startup__strings_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Message_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for startup_files
-- ----------------------------
DROP TABLE IF EXISTS `startup_files`;
CREATE TABLE `startup_files`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `Locale` int(11) NOT NULL DEFAULT 0,
  `BytesRequired` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for stationery
-- ----------------------------
DROP TABLE IF EXISTS `stationery`;
CREATE TABLE `stationery`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID1` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for summon_properties
-- ----------------------------
DROP TABLE IF EXISTS `summon_properties`;
CREATE TABLE `summon_properties`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Control` int(11) NOT NULL DEFAULT 0,
  `Faction` int(11) NOT NULL DEFAULT 0,
  `Title` int(11) NOT NULL DEFAULT 0,
  `Slot` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for tact_key
-- ----------------------------
DROP TABLE IF EXISTS `tact_key`;
CREATE TABLE `tact_key`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Key1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key9` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key10` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key11` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key12` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key13` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key14` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key15` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Key16` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for tact_key_lookup
-- ----------------------------
DROP TABLE IF EXISTS `tact_key_lookup`;
CREATE TABLE `tact_key_lookup`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TACTID1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TACTID2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TACTID3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TACTID4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TACTID5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TACTID6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TACTID7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TACTID8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for talent
-- ----------------------------
DROP TABLE IF EXISTS `talent`;
CREATE TABLE `talent`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SpellID` int(11) NOT NULL DEFAULT 0,
  `OverridesSpellID` int(11) NOT NULL DEFAULT 0,
  `SpecID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TierID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ColumnIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CategoryMask1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CategoryMask2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for talent_locale
-- ----------------------------
DROP TABLE IF EXISTS `talent_locale`;
CREATE TABLE `talent_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Description_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for taxi_nodes
-- ----------------------------
DROP TABLE IF EXISTS `taxi_nodes`;
CREATE TABLE `taxi_nodes`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `MountCreatureID1` int(11) NOT NULL DEFAULT 0,
  `MountCreatureID2` int(11) NOT NULL DEFAULT 0,
  `MapOffset1` float NOT NULL DEFAULT 0,
  `MapOffset2` float NOT NULL DEFAULT 0,
  `Facing` float NOT NULL DEFAULT 0,
  `FlightMapOffset1` float NOT NULL DEFAULT 0,
  `FlightMapOffset2` float NOT NULL DEFAULT 0,
  `ContinentID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CharacterBitNumber` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UiTextureKitID` int(11) NOT NULL DEFAULT 0,
  `SpecialIconConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for taxi_nodes_locale
-- ----------------------------
DROP TABLE IF EXISTS `taxi_nodes_locale`;
CREATE TABLE `taxi_nodes_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for taxi_path
-- ----------------------------
DROP TABLE IF EXISTS `taxi_path`;
CREATE TABLE `taxi_path`  (
  `FromTaxiNode` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ToTaxiNode` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Cost` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for taxi_path_node
-- ----------------------------
DROP TABLE IF EXISTS `taxi_path_node`;
CREATE TABLE `taxi_path_node`  (
  `LocX` float NOT NULL DEFAULT 0,
  `LocY` float NOT NULL DEFAULT 0,
  `LocZ` float NOT NULL DEFAULT 0,
  `PathID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ContinentID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NodeIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Delay` int(11) NOT NULL DEFAULT 0,
  `ArrivalEventID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DepartureEventID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for terrain_material
-- ----------------------------
DROP TABLE IF EXISTS `terrain_material`;
CREATE TABLE `terrain_material`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Shader` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnvMapDiffuseFileID` int(11) NOT NULL DEFAULT 0,
  `EnvMapSpecularFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for terrain_type
-- ----------------------------
DROP TABLE IF EXISTS `terrain_type`;
CREATE TABLE `terrain_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TerrainDesc` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `FootstepSprayRun` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FootstepSprayWalk` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for terrain_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `terrain_type_locale`;
CREATE TABLE `terrain_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TerrainDesc_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for terrain_type_sounds
-- ----------------------------
DROP TABLE IF EXISTS `terrain_type_sounds`;
CREATE TABLE `terrain_type_sounds`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for terrain_type_sounds_locale
-- ----------------------------
DROP TABLE IF EXISTS `terrain_type_sounds_locale`;
CREATE TABLE `terrain_type_sounds_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for texture_blend_set
-- ----------------------------
DROP TABLE IF EXISTS `texture_blend_set`;
CREATE TABLE `texture_blend_set`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID1` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID2` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID3` int(11) NOT NULL DEFAULT 0,
  `TextureScrollRateU1` float NOT NULL DEFAULT 0,
  `TextureScrollRateU2` float NOT NULL DEFAULT 0,
  `TextureScrollRateU3` float NOT NULL DEFAULT 0,
  `TextureScrollRateV1` float NOT NULL DEFAULT 0,
  `TextureScrollRateV2` float NOT NULL DEFAULT 0,
  `TextureScrollRateV3` float NOT NULL DEFAULT 0,
  `TextureScaleU1` float NOT NULL DEFAULT 0,
  `TextureScaleU2` float NOT NULL DEFAULT 0,
  `TextureScaleU3` float NOT NULL DEFAULT 0,
  `TextureScaleV1` float NOT NULL DEFAULT 0,
  `TextureScaleV2` float NOT NULL DEFAULT 0,
  `TextureScaleV3` float NOT NULL DEFAULT 0,
  `ModX1` float NOT NULL DEFAULT 0,
  `ModX2` float NOT NULL DEFAULT 0,
  `ModX3` float NOT NULL DEFAULT 0,
  `ModX4` float NOT NULL DEFAULT 0,
  `SwizzleRed` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SwizzleGreen` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SwizzleBlue` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SwizzleAlpha` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for texture_file_data
-- ----------------------------
DROP TABLE IF EXISTS `texture_file_data`;
CREATE TABLE `texture_file_data`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MaterialResourcesID` int(11) NOT NULL DEFAULT 0,
  `UsageType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for totem_category
-- ----------------------------
DROP TABLE IF EXISTS `totem_category`;
CREATE TABLE `totem_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TotemCategoryMask` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TotemCategoryType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for totem_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `totem_category_locale`;
CREATE TABLE `totem_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for toy
-- ----------------------------
DROP TABLE IF EXISTS `toy`;
CREATE TABLE `toy`  (
  `SourceText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ItemID` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SourceTypeEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for toy_locale
-- ----------------------------
DROP TABLE IF EXISTS `toy_locale`;
CREATE TABLE `toy_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SourceText_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trade_skill_category
-- ----------------------------
DROP TABLE IF EXISTS `trade_skill_category`;
CREATE TABLE `trade_skill_category`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `HordeName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SkillLineID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ParentTradeSkillCategoryID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trade_skill_category_locale
-- ----------------------------
DROP TABLE IF EXISTS `trade_skill_category_locale`;
CREATE TABLE `trade_skill_category_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `HordeName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trade_skill_item
-- ----------------------------
DROP TABLE IF EXISTS `trade_skill_item`;
CREATE TABLE `trade_skill_item`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ItemLevel` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RequiredLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for transform_matrix
-- ----------------------------
DROP TABLE IF EXISTS `transform_matrix`;
CREATE TABLE `transform_matrix`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `Yaw` float NOT NULL DEFAULT 0,
  `Pitch` float NOT NULL DEFAULT 0,
  `Roll` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for transmog_holiday
-- ----------------------------
DROP TABLE IF EXISTS `transmog_holiday`;
CREATE TABLE `transmog_holiday`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RequiredTransmogHoliday` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for transmog_set
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set`;
CREATE TABLE `transmog_set`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParentTransmogSetID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UiOrder` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExpansionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `TrackingQuestID` int(11) NOT NULL DEFAULT 0,
  `ClassMask` int(11) NOT NULL DEFAULT 0,
  `ItemNameDescriptionID` int(11) NOT NULL DEFAULT 0,
  `TransmogSetGroupID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transmog_set_group
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set_group`;
CREATE TABLE `transmog_set_group`  (
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transmog_set_group_locale
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set_group_locale`;
CREATE TABLE `transmog_set_group_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transmog_set_item
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set_item`;
CREATE TABLE `transmog_set_item`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TransmogSetID` int(11) NOT NULL DEFAULT 0,
  `ItemModifiedAppearanceID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for transmog_set_locale
-- ----------------------------
DROP TABLE IF EXISTS `transmog_set_locale`;
CREATE TABLE `transmog_set_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transport_animation
-- ----------------------------
DROP TABLE IF EXISTS `transport_animation`;
CREATE TABLE `transport_animation`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TimeIndex` int(11) NOT NULL DEFAULT 0,
  `PosX` float NOT NULL DEFAULT 0,
  `PosY` float NOT NULL DEFAULT 0,
  `PosZ` float NOT NULL DEFAULT 0,
  `SequenceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TransportID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for transport_physics
-- ----------------------------
DROP TABLE IF EXISTS `transport_physics`;
CREATE TABLE `transport_physics`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `WaveAmp` float NOT NULL DEFAULT 0,
  `WaveTimeScale` float NOT NULL DEFAULT 0,
  `RollAmp` float NOT NULL DEFAULT 0,
  `RollTimeScale` float NOT NULL DEFAULT 0,
  `PitchAmp` float NOT NULL DEFAULT 0,
  `PitchTimeScale` float NOT NULL DEFAULT 0,
  `MaxBank` float NOT NULL DEFAULT 0,
  `MaxBankTurnSpeed` float NOT NULL DEFAULT 0,
  `SpeedDampThresh` float NOT NULL DEFAULT 0,
  `SpeedDamp` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for transport_rotation
-- ----------------------------
DROP TABLE IF EXISTS `transport_rotation`;
CREATE TABLE `transport_rotation`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TimeIndex` int(11) NOT NULL DEFAULT 0,
  `X` float NOT NULL DEFAULT 0,
  `Y` float NOT NULL DEFAULT 0,
  `Z` float NOT NULL DEFAULT 0,
  `W` float NOT NULL DEFAULT 0,
  `TransportID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for trophy
-- ----------------------------
DROP TABLE IF EXISTS `trophy`;
CREATE TABLE `trophy`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `GameObjectDisplayInfoID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TrophyTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for trophy_locale
-- ----------------------------
DROP TABLE IF EXISTS `trophy_locale`;
CREATE TABLE `trophy_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for u_i_expansion_display_info
-- ----------------------------
DROP TABLE IF EXISTS `u_i_expansion_display_info`;
CREATE TABLE `u_i_expansion_display_info`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ExpansionLogo` int(11) NOT NULL DEFAULT 0,
  `ExpansionBanner` int(11) NOT NULL DEFAULT 0,
  `ExpansionLevel` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for u_i_expansion_display_info_icon
-- ----------------------------
DROP TABLE IF EXISTS `u_i_expansion_display_info_icon`;
CREATE TABLE `u_i_expansion_display_info_icon`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FeatureDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `FeatureIcon` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for u_i_expansion_display_info_icon_locale
-- ----------------------------
DROP TABLE IF EXISTS `u_i_expansion_display_info_icon_locale`;
CREATE TABLE `u_i_expansion_display_info_icon_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FeatureDescription_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_cam_fback_transmog_chr_race
-- ----------------------------
DROP TABLE IF EXISTS `ui_cam_fback_transmog_chr_race`;
CREATE TABLE `ui_cam_fback_transmog_chr_race`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `UiCameraID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChrRaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Gender` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ui_cam_fback_transmog_weapon
-- ----------------------------
DROP TABLE IF EXISTS `ui_cam_fback_transmog_weapon`;
CREATE TABLE `ui_cam_fback_transmog_weapon`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `UiCameraID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ItemClass` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ItemSubclass` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `InventoryType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ui_camera
-- ----------------------------
DROP TABLE IF EXISTS `ui_camera`;
CREATE TABLE `ui_camera`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `Pos3` float NOT NULL DEFAULT 0,
  `LookAt1` float NOT NULL DEFAULT 0,
  `LookAt2` float NOT NULL DEFAULT 0,
  `LookAt3` float NOT NULL DEFAULT 0,
  `Up1` float NOT NULL DEFAULT 0,
  `Up2` float NOT NULL DEFAULT 0,
  `Up3` float NOT NULL DEFAULT 0,
  `AnimFrame` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UiCameraTypeID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AnimVariation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AnimID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_camera_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_camera_locale`;
CREATE TABLE `ui_camera_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_camera_type
-- ----------------------------
DROP TABLE IF EXISTS `ui_camera_type`;
CREATE TABLE `ui_camera_type`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Width` int(11) NOT NULL DEFAULT 0,
  `Height` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_camera_type_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_camera_type_locale`;
CREATE TABLE `ui_camera_type_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_map_p_o_i
-- ----------------------------
DROP TABLE IF EXISTS `ui_map_p_o_i`;
CREATE TABLE `ui_map_p_o_i`  (
  `ContinentID` int(11) NOT NULL DEFAULT 0,
  `WorldLoc1` float NOT NULL DEFAULT 0,
  `WorldLoc2` float NOT NULL DEFAULT 0,
  `WorldLoc3` float NOT NULL DEFAULT 0,
  `UiTextureAtlasMemberID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `PoiDataType` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PoiData` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ui_model_scene
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene`;
CREATE TABLE `ui_model_scene`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `UiSystemType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ui_model_scene_actor
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_actor`;
CREATE TABLE `ui_model_scene_actor`  (
  `ScriptTag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Position1` float NOT NULL DEFAULT 0,
  `Position2` float NOT NULL DEFAULT 0,
  `Position3` float NOT NULL DEFAULT 0,
  `OrientationYaw` float NOT NULL DEFAULT 0,
  `OrientationPitch` float NOT NULL DEFAULT 0,
  `OrientationRoll` float NOT NULL DEFAULT 0,
  `NormalizedScale` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `UiModelSceneActorDisplayID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_model_scene_actor_display
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_actor_display`;
CREATE TABLE `ui_model_scene_actor_display`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AnimSpeed` float NOT NULL DEFAULT 0,
  `Alpha` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `AnimationID` int(11) NOT NULL DEFAULT 0,
  `SequenceVariation` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ui_model_scene_actor_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_actor_locale`;
CREATE TABLE `ui_model_scene_actor_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ScriptTag_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_model_scene_camera
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_camera`;
CREATE TABLE `ui_model_scene_camera`  (
  `ScriptTag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Target1` float NOT NULL DEFAULT 0,
  `Target2` float NOT NULL DEFAULT 0,
  `Target3` float NOT NULL DEFAULT 0,
  `ZoomedTargetOffset1` float NOT NULL DEFAULT 0,
  `ZoomedTargetOffset2` float NOT NULL DEFAULT 0,
  `ZoomedTargetOffset3` float NOT NULL DEFAULT 0,
  `Yaw` float NOT NULL DEFAULT 0,
  `Pitch` float NOT NULL DEFAULT 0,
  `Roll` float NOT NULL DEFAULT 0,
  `ZoomedYawOffset` float NOT NULL DEFAULT 0,
  `ZoomedPitchOffset` float NOT NULL DEFAULT 0,
  `ZoomedRollOffset` float NOT NULL DEFAULT 0,
  `ZoomDistance` float NOT NULL DEFAULT 0,
  `MinZoomDistance` float NOT NULL DEFAULT 0,
  `MaxZoomDistance` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `CameraType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_model_scene_camera_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_model_scene_camera_locale`;
CREATE TABLE `ui_model_scene_camera_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ScriptTag_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_texture_atlas
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_atlas`;
CREATE TABLE `ui_texture_atlas`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `AtlasHeight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AtlasWidth` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for ui_texture_atlas_member
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_atlas_member`;
CREATE TABLE `ui_texture_atlas_member`  (
  `CommittedName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `UiTextureAtlasID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CommittedLeft` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CommittedRight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CommittedTop` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CommittedBottom` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CommittedFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_texture_atlas_member_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_atlas_member_locale`;
CREATE TABLE `ui_texture_atlas_member_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CommittedName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_texture_kit
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_kit`;
CREATE TABLE `ui_texture_kit`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `KitPrefix` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ui_texture_kit_locale
-- ----------------------------
DROP TABLE IF EXISTS `ui_texture_kit_locale`;
CREATE TABLE `ui_texture_kit_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `KitPrefix_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for unit_blood
-- ----------------------------
DROP TABLE IF EXISTS `unit_blood`;
CREATE TABLE `unit_blood`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `PlayerCritBloodSpurtID` int(11) NOT NULL DEFAULT 0,
  `PlayerHitBloodSpurtID` int(11) NOT NULL DEFAULT 0,
  `DefaultBloodSpurtID` int(11) NOT NULL DEFAULT 0,
  `PlayerOmniCritBloodSpurtID` int(11) NOT NULL DEFAULT 0,
  `PlayerOmniHitBloodSpurtID` int(11) NOT NULL DEFAULT 0,
  `DefaultOmniBloodSpurtID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for unit_blood_levels
-- ----------------------------
DROP TABLE IF EXISTS `unit_blood_levels`;
CREATE TABLE `unit_blood_levels`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Violencelevel1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Violencelevel2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Violencelevel3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for unit_condition
-- ----------------------------
DROP TABLE IF EXISTS `unit_condition`;
CREATE TABLE `unit_condition`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Value1` int(11) NOT NULL DEFAULT 0,
  `Value2` int(11) NOT NULL DEFAULT 0,
  `Value3` int(11) NOT NULL DEFAULT 0,
  `Value4` int(11) NOT NULL DEFAULT 0,
  `Value5` int(11) NOT NULL DEFAULT 0,
  `Value6` int(11) NOT NULL DEFAULT 0,
  `Value7` int(11) NOT NULL DEFAULT 0,
  `Value8` int(11) NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variable1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variable2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variable3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variable4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variable5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variable6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variable7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Variable8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Op1` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Op2` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Op3` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Op4` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Op5` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Op6` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Op7` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Op8` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for unit_power_bar
-- ----------------------------
DROP TABLE IF EXISTS `unit_power_bar`;
CREATE TABLE `unit_power_bar`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Cost` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `OutOfError` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ToolTip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `RegenerationPeace` float NOT NULL DEFAULT 0,
  `RegenerationCombat` float NOT NULL DEFAULT 0,
  `FileDataID1` int(11) NOT NULL DEFAULT 0,
  `FileDataID2` int(11) NOT NULL DEFAULT 0,
  `FileDataID3` int(11) NOT NULL DEFAULT 0,
  `FileDataID4` int(11) NOT NULL DEFAULT 0,
  `FileDataID5` int(11) NOT NULL DEFAULT 0,
  `FileDataID6` int(11) NOT NULL DEFAULT 0,
  `Color1` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Color2` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Color3` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Color4` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Color5` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `Color6` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `StartInset` float NOT NULL DEFAULT 0,
  `EndInset` float NOT NULL DEFAULT 0,
  `StartPower` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CenterPower` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BarType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MinPower` int(11) NOT NULL DEFAULT 0,
  `MaxPower` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for unit_power_bar_locale
-- ----------------------------
DROP TABLE IF EXISTS `unit_power_bar_locale`;
CREATE TABLE `unit_power_bar_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Cost_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `OutOfError_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ToolTip_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vehicle
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `TurnSpeed` float NOT NULL DEFAULT 0,
  `PitchSpeed` float NOT NULL DEFAULT 0,
  `PitchMin` float NOT NULL DEFAULT 0,
  `PitchMax` float NOT NULL DEFAULT 0,
  `MouseLookOffsetPitch` float NOT NULL DEFAULT 0,
  `CameraFadeDistScalarMin` float NOT NULL DEFAULT 0,
  `CameraFadeDistScalarMax` float NOT NULL DEFAULT 0,
  `CameraPitchOffset` float NOT NULL DEFAULT 0,
  `FacingLimitRight` float NOT NULL DEFAULT 0,
  `FacingLimitLeft` float NOT NULL DEFAULT 0,
  `CameraYawOffset` float NOT NULL DEFAULT 0,
  `SeatID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SeatID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SeatID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SeatID4` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SeatID5` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SeatID6` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SeatID7` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SeatID8` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleUIIndicatorID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PowerDisplayID1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PowerDisplayID2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PowerDisplayID3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `FlagsB` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `UiLocomotionType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MissileTargetingID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for vehicle_seat
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_seat`;
CREATE TABLE `vehicle_seat`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `FlagsB` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `FlagsC` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `AttachmentOffsetX` float NOT NULL DEFAULT 0,
  `AttachmentOffsetY` float NOT NULL DEFAULT 0,
  `AttachmentOffsetZ` float NOT NULL DEFAULT 0,
  `EnterPreDelay` float NOT NULL DEFAULT 0,
  `EnterSpeed` float NOT NULL DEFAULT 0,
  `EnterGravity` float NOT NULL DEFAULT 0,
  `EnterMinDuration` float NOT NULL DEFAULT 0,
  `EnterMaxDuration` float NOT NULL DEFAULT 0,
  `EnterMinArcHeight` float NOT NULL DEFAULT 0,
  `EnterMaxArcHeight` float NOT NULL DEFAULT 0,
  `ExitPreDelay` float NOT NULL DEFAULT 0,
  `ExitSpeed` float NOT NULL DEFAULT 0,
  `ExitGravity` float NOT NULL DEFAULT 0,
  `ExitMinDuration` float NOT NULL DEFAULT 0,
  `ExitMaxDuration` float NOT NULL DEFAULT 0,
  `ExitMinArcHeight` float NOT NULL DEFAULT 0,
  `ExitMaxArcHeight` float NOT NULL DEFAULT 0,
  `PassengerYaw` float NOT NULL DEFAULT 0,
  `PassengerPitch` float NOT NULL DEFAULT 0,
  `PassengerRoll` float NOT NULL DEFAULT 0,
  `VehicleEnterAnimDelay` float NOT NULL DEFAULT 0,
  `VehicleExitAnimDelay` float NOT NULL DEFAULT 0,
  `CameraEnteringDelay` float NOT NULL DEFAULT 0,
  `CameraEnteringDuration` float NOT NULL DEFAULT 0,
  `CameraExitingDelay` float NOT NULL DEFAULT 0,
  `CameraExitingDuration` float NOT NULL DEFAULT 0,
  `CameraOffsetX` float NOT NULL DEFAULT 0,
  `CameraOffsetY` float NOT NULL DEFAULT 0,
  `CameraOffsetZ` float NOT NULL DEFAULT 0,
  `CameraPosChaseRate` float NOT NULL DEFAULT 0,
  `CameraFacingChaseRate` float NOT NULL DEFAULT 0,
  `CameraEnteringZoom` float NOT NULL DEFAULT 0,
  `CameraSeatZoomMin` float NOT NULL DEFAULT 0,
  `CameraSeatZoomMax` float NOT NULL DEFAULT 0,
  `UiSkinFileDataID` int(11) NOT NULL DEFAULT 0,
  `EnterAnimStart` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EnterAnimLoop` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RideAnimStart` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RideAnimLoop` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RideUpperAnimStart` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RideUpperAnimLoop` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExitAnimStart` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExitAnimLoop` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExitAnimEnd` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleEnterAnim` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleExitAnim` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleRideAnimLoop` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `EnterAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RideAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExitAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleEnterAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleRideAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleExitAnimKitID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `CameraModeID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AttachmentID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PassengerAttachmentID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleEnterAnimBone` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleExitAnimBone` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleRideAnimLoopBone` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VehicleAbilityDisplay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EnterUISoundID` int(11) NOT NULL DEFAULT 0,
  `ExitUISoundID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for vehicle_u_i_ind_seat
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_u_i_ind_seat`;
CREATE TABLE `vehicle_u_i_ind_seat`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `XPos` float NOT NULL DEFAULT 0,
  `YPos` float NOT NULL DEFAULT 0,
  `VirtualSeatIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for vehicle_u_i_indicator
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_u_i_indicator`;
CREATE TABLE `vehicle_u_i_indicator`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BackgroundTextureFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for vignette
-- ----------------------------
DROP TABLE IF EXISTS `vignette`;
CREATE TABLE `vignette`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MaxHeight` float NOT NULL DEFAULT 0,
  `MinHeight` float NOT NULL DEFAULT 0,
  `QuestFeedbackEffectID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VisibleTrackingQuestID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vignette_locale
-- ----------------------------
DROP TABLE IF EXISTS `vignette_locale`;
CREATE TABLE `vignette_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for virtual_attachment
-- ----------------------------
DROP TABLE IF EXISTS `virtual_attachment`;
CREATE TABLE `virtual_attachment`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PositionerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for virtual_attachment_customization
-- ----------------------------
DROP TABLE IF EXISTS `virtual_attachment_customization`;
CREATE TABLE `virtual_attachment_customization`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `VirtualAttachmentID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PositionerID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for virtual_attachment_locale
-- ----------------------------
DROP TABLE IF EXISTS `virtual_attachment_locale`;
CREATE TABLE `virtual_attachment_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for vocal_u_i_sounds
-- ----------------------------
DROP TABLE IF EXISTS `vocal_u_i_sounds`;
CREATE TABLE `vocal_u_i_sounds`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `VocalUIEnum` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RaceID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `NormalSoundID1` int(11) NOT NULL DEFAULT 0,
  `NormalSoundID2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for wb_access_control_list
-- ----------------------------
DROP TABLE IF EXISTS `wb_access_control_list`;
CREATE TABLE `wb_access_control_list`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `URL` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `GrantFlags` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `RevokeFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WowEditInternal` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RegionID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wb_access_control_list_locale
-- ----------------------------
DROP TABLE IF EXISTS `wb_access_control_list_locale`;
CREATE TABLE `wb_access_control_list_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `URL_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wb_cert_whitelist
-- ----------------------------
DROP TABLE IF EXISTS `wb_cert_whitelist`;
CREATE TABLE `wb_cert_whitelist`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Domain` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `GrantAccess` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RevokeAccess` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WowEditInternal` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wb_cert_whitelist_locale
-- ----------------------------
DROP TABLE IF EXISTS `wb_cert_whitelist_locale`;
CREATE TABLE `wb_cert_whitelist_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Domain_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for weapon_impact_sounds
-- ----------------------------
DROP TABLE IF EXISTS `weapon_impact_sounds`;
CREATE TABLE `weapon_impact_sounds`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `WeaponSubClassID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ParrySoundType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ImpactSource` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ImpactSoundID1` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID2` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID3` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID4` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID5` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID6` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID7` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID8` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID9` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID10` int(11) NOT NULL DEFAULT 0,
  `ImpactSoundID11` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID1` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID2` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID3` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID4` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID5` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID6` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID7` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID8` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID9` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID10` int(11) NOT NULL DEFAULT 0,
  `CritImpactSoundID11` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID1` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID2` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID3` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID4` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID5` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID6` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID7` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID8` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID9` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID10` int(11) NOT NULL DEFAULT 0,
  `PierceImpactSoundID11` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID1` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID2` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID3` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID4` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID5` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID6` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID7` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID8` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID9` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID10` int(11) NOT NULL DEFAULT 0,
  `PierceCritImpactSoundID11` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for weapon_swing_sounds2
-- ----------------------------
DROP TABLE IF EXISTS `weapon_swing_sounds2`;
CREATE TABLE `weapon_swing_sounds2`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SwingType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Crit` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for weapon_trail
-- ----------------------------
DROP TABLE IF EXISTS `weapon_trail`;
CREATE TABLE `weapon_trail`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `Yaw` float NOT NULL DEFAULT 0,
  `Pitch` float NOT NULL DEFAULT 0,
  `Roll` float NOT NULL DEFAULT 0,
  `TextureFileDataID1` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID2` int(11) NOT NULL DEFAULT 0,
  `TextureFileDataID3` int(11) NOT NULL DEFAULT 0,
  `TextureScrollRateU1` float NOT NULL DEFAULT 0,
  `TextureScrollRateU2` float NOT NULL DEFAULT 0,
  `TextureScrollRateU3` float NOT NULL DEFAULT 0,
  `TextureScrollRateV1` float NOT NULL DEFAULT 0,
  `TextureScrollRateV2` float NOT NULL DEFAULT 0,
  `TextureScrollRateV3` float NOT NULL DEFAULT 0,
  `TextureScaleU1` float NOT NULL DEFAULT 0,
  `TextureScaleU2` float NOT NULL DEFAULT 0,
  `TextureScaleU3` float NOT NULL DEFAULT 0,
  `TextureScaleV1` float NOT NULL DEFAULT 0,
  `TextureScaleV2` float NOT NULL DEFAULT 0,
  `TextureScaleV3` float NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for weapon_trail_model_def
-- ----------------------------
DROP TABLE IF EXISTS `weapon_trail_model_def`;
CREATE TABLE `weapon_trail_model_def`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `LowDefFileDataID` int(11) NOT NULL DEFAULT 0,
  `WeaponTrailID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for weapon_trail_param
-- ----------------------------
DROP TABLE IF EXISTS `weapon_trail_param`;
CREATE TABLE `weapon_trail_param`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `FadeOutTime` float NOT NULL DEFAULT 0,
  `EdgeLifeSpan` float NOT NULL DEFAULT 0,
  `InitialDelay` float NOT NULL DEFAULT 0,
  `SmoothSampleAngle` float NOT NULL DEFAULT 0,
  `Hand` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OverrideAttachTop` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `OverrideAttachBot` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for weather
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Intensity1` float NOT NULL DEFAULT 0,
  `Intensity2` float NOT NULL DEFAULT 0,
  `TransitionSkyBox` float NOT NULL DEFAULT 0,
  `EffectColor1` float NOT NULL DEFAULT 0,
  `EffectColor2` float NOT NULL DEFAULT 0,
  `EffectColor3` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `Volatility` float NOT NULL DEFAULT 0,
  `TwinkleIntensity` float NOT NULL DEFAULT 0,
  `FallModifier` float NOT NULL DEFAULT 0,
  `RotationalSpeed` float NOT NULL DEFAULT 0,
  `ParticulateFileDataID` int(11) NOT NULL DEFAULT 0,
  `SoundAmbienceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `EffectType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WindSettingsID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `AmbienceID` int(11) NOT NULL DEFAULT 0,
  `EffectTextureFileDataID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for wind_settings
-- ----------------------------
DROP TABLE IF EXISTS `wind_settings`;
CREATE TABLE `wind_settings`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `BaseMag` float NOT NULL DEFAULT 0,
  `BaseDir1` float NOT NULL DEFAULT 0,
  `BaseDir2` float NOT NULL DEFAULT 0,
  `BaseDir3` float NOT NULL DEFAULT 0,
  `VarianceMagOver` float NOT NULL DEFAULT 0,
  `VarianceMagUnder` float NOT NULL DEFAULT 0,
  `VarianceDir1` float NOT NULL DEFAULT 0,
  `VarianceDir2` float NOT NULL DEFAULT 0,
  `VarianceDir3` float NOT NULL DEFAULT 0,
  `MaxStepMag` float NOT NULL DEFAULT 0,
  `MaxStepDir1` float NOT NULL DEFAULT 0,
  `MaxStepDir2` float NOT NULL DEFAULT 0,
  `MaxStepDir3` float NOT NULL DEFAULT 0,
  `Frequency` float NOT NULL DEFAULT 0,
  `Duration` float NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for wmo_area_table
-- ----------------------------
DROP TABLE IF EXISTS `wmo_area_table`;
CREATE TABLE `wmo_area_table`  (
  `AreaName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `WmoGroupID` int(11) NOT NULL DEFAULT 0,
  `AmbienceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ZoneMusic` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `IntroSound` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaTableID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UwIntroSound` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `UwAmbience` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NameSetID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPref` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPrefUnderwater` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `UwZoneMusic` int(11) NOT NULL DEFAULT 0,
  `WmoID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wmo_area_table_locale
-- ----------------------------
DROP TABLE IF EXISTS `wmo_area_table_locale`;
CREATE TABLE `wmo_area_table_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AreaName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wmo_minimap_texture
-- ----------------------------
DROP TABLE IF EXISTS `wmo_minimap_texture`;
CREATE TABLE `wmo_minimap_texture`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `FileDataID` int(11) NOT NULL DEFAULT 0,
  `GroupNum` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BlockX` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BlockY` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for world__pvp__area
-- ----------------------------
DROP TABLE IF EXISTS `world__pvp__area`;
CREATE TABLE `world__pvp__area`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NextTimeWorldstate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `GameTimeWorldstate` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `BattlePopulate_time` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MinLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `MaxLevel` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for world_boss_lockout
-- ----------------------------
DROP TABLE IF EXISTS `world_boss_lockout`;
CREATE TABLE `world_boss_lockout`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `TrackingQuestID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_boss_lockout_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_boss_lockout_locale`;
CREATE TABLE `world_boss_lockout_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_chunk_sounds
-- ----------------------------
DROP TABLE IF EXISTS `world_chunk_sounds`;
CREATE TABLE `world_chunk_sounds`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ChunkX` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ChunkY` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SubChunkX` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SubChunkY` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundOverrideID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for world_effect
-- ----------------------------
DROP TABLE IF EXISTS `world_effect`;
CREATE TABLE `world_effect`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `TargetAsset` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `CombatConditionID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TargetType` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `WhenToDisplay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `QuestFeedbackEffectID` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for world_elapsed_timer
-- ----------------------------
DROP TABLE IF EXISTS `world_elapsed_timer`;
CREATE TABLE `world_elapsed_timer`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_elapsed_timer_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_elapsed_timer_locale`;
CREATE TABLE `world_elapsed_timer_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_map_area
-- ----------------------------
DROP TABLE IF EXISTS `world_map_area`;
CREATE TABLE `world_map_area`  (
  `AreaName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LocLeft` float NOT NULL DEFAULT 0,
  `LocRight` float NOT NULL DEFAULT 0,
  `LocTop` float NOT NULL DEFAULT 0,
  `LocBottom` float NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `MapID` smallint(6) NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DisplayMapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `DefaultDungeonFloor` smallint(6) NOT NULL DEFAULT 0,
  `ParentWorldMapID` smallint(6) NOT NULL DEFAULT 0,
  `LevelRangeMin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `LevelRangeMax` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BountySetID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BountyDisplayLocation` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `VisibilityPlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_map_area_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_map_area_locale`;
CREATE TABLE `world_map_area_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `AreaName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_map_continent
-- ----------------------------
DROP TABLE IF EXISTS `world_map_continent`;
CREATE TABLE `world_map_continent`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `ContinentOffset1` float NOT NULL DEFAULT 0,
  `ContinentOffset2` float NOT NULL DEFAULT 0,
  `Scale` float NOT NULL DEFAULT 0,
  `TaxiMin1` float NOT NULL DEFAULT 0,
  `TaxiMin2` float NOT NULL DEFAULT 0,
  `TaxiMax1` float NOT NULL DEFAULT 0,
  `TaxiMax2` float NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WorldMapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LeftBoundary` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `RightBoundary` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `TopBoundary` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `BottomBoundary` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for world_map_overlay
-- ----------------------------
DROP TABLE IF EXISTS `world_map_overlay`;
CREATE TABLE `world_map_overlay`  (
  `TextureName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ID` int(11) NOT NULL DEFAULT 0,
  `TextureWidth` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `TextureHeight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `MapAreaID` int(11) NOT NULL DEFAULT 0,
  `OffsetX` int(11) NOT NULL DEFAULT 0,
  `OffsetY` int(11) NOT NULL DEFAULT 0,
  `HitRectTop` int(11) NOT NULL DEFAULT 0,
  `HitRectLeft` int(11) NOT NULL DEFAULT 0,
  `HitRectBottom` int(11) NOT NULL DEFAULT 0,
  `HitRectRight` int(11) NOT NULL DEFAULT 0,
  `PlayerConditionID` int(11) NOT NULL DEFAULT 0,
  `Flags` int(11) NOT NULL DEFAULT 0,
  `AreaID1` int(11) NOT NULL DEFAULT 0,
  `AreaID2` int(11) NOT NULL DEFAULT 0,
  `AreaID3` int(11) NOT NULL DEFAULT 0,
  `AreaID4` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_map_overlay_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_map_overlay_locale`;
CREATE TABLE `world_map_overlay_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TextureName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_map_transforms
-- ----------------------------
DROP TABLE IF EXISTS `world_map_transforms`;
CREATE TABLE `world_map_transforms`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `RegionMinX` float NOT NULL DEFAULT 0,
  `RegionMinY` float NOT NULL DEFAULT 0,
  `RegionMinZ` float NOT NULL DEFAULT 0,
  `RegionMaxX` float NOT NULL DEFAULT 0,
  `RegionMaxY` float NOT NULL DEFAULT 0,
  `RegionMaxZ` float NOT NULL DEFAULT 0,
  `RegionOffsetX` float NOT NULL DEFAULT 0,
  `RegionOffsetY` float NOT NULL DEFAULT 0,
  `RegionScale` float NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NewMapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NewDungeonMapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `NewAreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Priority` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for world_safe_locs
-- ----------------------------
DROP TABLE IF EXISTS `world_safe_locs`;
CREATE TABLE `world_safe_locs`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `LocX` float NOT NULL DEFAULT 0,
  `LocY` float NOT NULL DEFAULT 0,
  `LocZ` float NOT NULL DEFAULT 0,
  `LocO` float NOT NULL DEFAULT 0,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_safe_locs_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_safe_locs_locale`;
CREATE TABLE `world_safe_locs_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_state_expression
-- ----------------------------
DROP TABLE IF EXISTS `world_state_expression`;
CREATE TABLE `world_state_expression`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Expression` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_state_u_i
-- ----------------------------
DROP TABLE IF EXISTS `world_state_u_i`;
CREATE TABLE `world_state_u_i`  (
  `Icon` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ExtendedUI` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DynamicTooltip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `String` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Tooltip` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseGroupID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `StateVariable` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExtendedUIStateVariable1` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExtendedUIStateVariable2` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ExtendedUIStateVariable3` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `OrderIndex` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `PhaseUseFlags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ID` int(11) NOT NULL DEFAULT 0,
  `DynamicIconFileID` int(11) NOT NULL DEFAULT 0,
  `DynamicFlashIconFileID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_state_u_i_locale
-- ----------------------------
DROP TABLE IF EXISTS `world_state_u_i_locale`;
CREATE TABLE `world_state_u_i_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Icon_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ExtendedUI_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DynamicTooltip_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `String_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Tooltip_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for world_state_zone_sounds
-- ----------------------------
DROP TABLE IF EXISTS `world_state_zone_sounds`;
CREATE TABLE `world_state_zone_sounds`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `WmoAreaID` int(11) NOT NULL DEFAULT 0,
  `WorldStateID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `WorldStateValue` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `AreaID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ZoneIntroMusicID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `ZoneMusicID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundAmbienceID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `SoundProviderPreferencesID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for zone_intro_music_table
-- ----------------------------
DROP TABLE IF EXISTS `zone_intro_music_table`;
CREATE TABLE `zone_intro_music_table`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MinDelayMinutes` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `SoundID` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zone_intro_music_table_locale
-- ----------------------------
DROP TABLE IF EXISTS `zone_intro_music_table_locale`;
CREATE TABLE `zone_intro_music_table_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zone_light
-- ----------------------------
DROP TABLE IF EXISTS `zone_light`;
CREATE TABLE `zone_light`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MapID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `LightID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `Flags` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zone_light_locale
-- ----------------------------
DROP TABLE IF EXISTS `zone_light_locale`;
CREATE TABLE `zone_light_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Name_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zone_light_point
-- ----------------------------
DROP TABLE IF EXISTS `zone_light_point`;
CREATE TABLE `zone_light_point`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `Pos1` float NOT NULL DEFAULT 0,
  `Pos2` float NOT NULL DEFAULT 0,
  `PointOrder` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for zone_music
-- ----------------------------
DROP TABLE IF EXISTS `zone_music`;
CREATE TABLE `zone_music`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `SetName` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `SilenceIntervalMin1` int(11) NOT NULL DEFAULT 0,
  `SilenceIntervalMin2` int(11) NOT NULL DEFAULT 0,
  `SilenceIntervalMax1` int(11) NOT NULL DEFAULT 0,
  `SilenceIntervalMax2` int(11) NOT NULL DEFAULT 0,
  `Sounds1` int(11) NOT NULL DEFAULT 0,
  `Sounds2` int(11) NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zone_music_locale
-- ----------------------------
DROP TABLE IF EXISTS `zone_music_locale`;
CREATE TABLE `zone_music_locale`  (
  `ID` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `locale` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SetName_lang` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`, `locale`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for zone_story
-- ----------------------------
DROP TABLE IF EXISTS `zone_story`;
CREATE TABLE `zone_story`  (
  `ID` int(11) NOT NULL DEFAULT 0,
  `DisplayAchievementID` int(11) NOT NULL DEFAULT 0,
  `DisplayWorldMapAreaID` int(11) NOT NULL DEFAULT 0,
  `PlayerFactionGroupID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `VerifiedBuild` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

SET FOREIGN_KEY_CHECKS = 1;
