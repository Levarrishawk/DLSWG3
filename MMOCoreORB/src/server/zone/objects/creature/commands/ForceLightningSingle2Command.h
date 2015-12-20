/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCELIGHTNINGSINGLE2COMMAND_H_
#define FORCELIGHTNINGSINGLE2COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "ForcePowersQueueCommand.h"

class ForceLightningSingle2Command : public ForcePowersQueueCommand {
public:

	ForceLightningSingle2Command(const String& name, ZoneProcessServer* server)
		: ForcePowersQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		uint32 buffcrc = BuffCRC::FORCE_RANK_SERENITY;
		uint32 buffcrc2 = BuffCRC::FORCE_RANK_SUFFERING;

		if(creature->hasBuff(buffcrc2)) {
			creature->sendSystemMessage("You cannot snare at this time.");
			return GENERALERROR;
		}

		int duration = 5;
		int duration2 = 15;

		ManagedReference<Buff*> buff2 = new Buff(creature, buffcrc2, duration2, BuffType::JEDI);
		ManagedReference<Buff*> buff = new Buff(creatureTarget, buffcrc, duration, BuffType::JEDI);

		if (object->isCreatureObject() && creatureTarget->isAttackableBy(creature) && !creatureTarget->hasBuff(buffcrc)) {
			buff->setSpeedMultiplierMod(0.5);
			creatureTarget->addBuff(buff);
			creature->addBuff(buff2);
			//creatureTarget->playEffect("clienteffect/pistol_root.cef", "");
		}

		return doCombatAction(creature, target);
	}

};

#endif //FORCELIGHTNINGSINGLE2COMMAND_H_
