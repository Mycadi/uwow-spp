#include <map>

#include "Config.h"
#include "ScriptMgr.h"
#include "Unit.h"
#include "Player.h"
#include "Pet.h"
#include "Map.h"
#include "Group.h"
#include "InstanceScript.h"
#include "Chat.h"
#include "Log.h"

/*
 * TODO:
 * 1. Dispel target regeneration
 * 2. Provide unlimited http://www.wowhead.com/item=17333/aqual-quintessence
 */

namespace {

	class solocraft_player_instance_handler : public PlayerScript {

	public:
		solocraft_player_instance_handler() : PlayerScript("solocraft_player_instance_handler") {
			TC_LOG_INFO(LOG_FILTER_CHARACTER, "[Solocraft] solocraft_player_instance_handler Loaded");
		}

		void OnMapChanged(Player *player) override {
			Map *map = player->GetMap();
			int difficulty = CalculateDifficulty(map, player);
			int numInGroup = GetNumInGroup(player);
			ApplyBuffs(player, map, difficulty, numInGroup);
		}
	private:
		std::map<ObjectGuid, int> _unitDifficulty;

		int CalculateDifficulty(Map *map, Player *player) {
			int difficulty = 1;
			if (map) {
				if (map->Is25ManRaid()) {
					difficulty = 25;
				}
				else if (map->IsHeroic()) {
					difficulty = 10;
				}
				else if (map->IsRaid()) {
					difficulty = 40;
				}
				else if (map->IsDungeon()) {
					difficulty = 5;
				}
			}
			return difficulty;
		}

		int GetNumInGroup(Player *player) {
			int numInGroup = 1;
			Group *group = player->GetGroup();
			if (group) {
				Group::MemberSlotList const& groupMembers = group->GetMemberSlots();
				numInGroup = groupMembers.size();
			}
			return numInGroup;
		}

		void ApplyBuffs(Player *player, Map *map, int difficulty, int numInGroup) {
			ClearBuffs(player, map);
			if (difficulty > 1) {
				//InstanceMap *instanceMap = map->ToInstanceMap();
				//InstanceScript *instanceScript = instanceMap->GetInstanceScript();

				// Announce to player
				std::ostringstream ss;
				ss << "|cffFF0000[SoloCraft] |cffFF8000" << player->GetName() << " entered %s - # of Players: %d - Difficulty Offset: %0.2f.";
				ChatHandler(player->GetSession()).PSendSysMessage(ss.str().c_str(), map->GetMapName(), numInGroup, difficulty + 1.0);

				_unitDifficulty[player->GetGUID()] = difficulty;
					/*for (int32 i = STAT_STRENGTH; i < MAX_STATS; ++i) 
					{
						player->HandleStatModifier(UnitMods(UNIT_MOD_STAT_START + i), TOTAL_PCT, float(difficulty * 100), true);
					}*/

				bool m_Solocraft = sConfigMgr->GetBoolDefault("Solocraft.Enable", false);
				if (m_Solocraft)
				{
					player->HandleStatModifier(UnitMods(UNIT_MOD_MANA), TOTAL_PCT, float(difficulty * 50), true);// Total mana
					player->HandleStatModifier(UnitMods(UNIT_MOD_HEALTH), TOTAL_PCT, float(difficulty * 50), true);

					player->RemoveAurasDueToSpell(300047);// pour risque de doublon , retire toutes les auras 300047
					player->AddAura(300047, player);

					player->SetFullHealth();
					if (player->getPowerType() == POWER_MANA) {
						player->SetPower(POWER_MANA, player->GetMaxPower(POWER_MANA));

					}
				}
			}
		}

		void ClearBuffs(Player *player, Map *map) {
			std::map<ObjectGuid, int>::iterator unitDifficultyIterator = _unitDifficulty.find(player->GetGUID());
			if (unitDifficultyIterator != _unitDifficulty.end()) {
				int difficulty = unitDifficultyIterator->second;
				_unitDifficulty.erase(unitDifficultyIterator);

				// Inform the player
				std::ostringstream ss;
				ss << "|cffFF0000[SoloCraft] |cffFF8000" << player->GetName() << " exited to %s - Reverting Difficulty Offset: %0.2f.";
				ChatHandler(player->GetSession()).PSendSysMessage(ss.str().c_str(), map->GetMapName(), difficulty + 1.0);

				/*			for (int32 i = STAT_STRENGTH; i < MAX_STATS; ++i) {
								player->HandleStatModifier(UnitMods(UNIT_MOD_STAT_START + i), TOTAL_PCT, float(difficulty * 100), false);
							}
				*/
				bool m_Solocraft = sConfigMgr->GetBoolDefault("Solocraft.Enable", false);
				if (m_Solocraft)
				{
					player->HandleStatModifier(UnitMods(UNIT_MOD_MANA), TOTAL_PCT, float(difficulty * 50), false);
					player->HandleStatModifier(UnitMods(UNIT_MOD_HEALTH), TOTAL_PCT, float(difficulty * 50), false);
					player->RemoveAurasDueToSpell(300047);// pour risque de doublon , retire toutes les auras 300047
				}

			}
		}
	};

}

void AddSC_solocraft() {
	new solocraft_player_instance_handler();
}