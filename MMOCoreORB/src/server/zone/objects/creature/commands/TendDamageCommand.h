/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef TENDDAMAGECOMMAND_H_
#define TENDDAMAGECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "TendCommand.h"

class TendDamageCommand : public TendCommand {
public:

	TendDamageCommand(const String& name, ZoneProcessServer* server)
			: TendCommand(name, server) {

	}
		int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		//effectName = "clienteffect/healing_healdamage.cef";
		int duration = 10;
		int healthHealed = 1250;
		int mindCost = 900;
		uint32 buffcrc = BuffCRC::JEDI_RESIST_BLEEDING;
		StringIdChatParameter startStringId("medical_heal", "apply_healCooldown");
		StringIdChatParameter endStringId("medical_heal", "remove_healCooldown");
		//duration = 10;
		ManagedReference<Buff*> buff = new Buff(creature, buffcrc, duration, BuffType::JEDI);
		Locker locker(buff);
		buff->setStartMessage(startStringId);
		buff->setEndMessage(endStringId);

		if (!creature->hasBuff(BuffCRC::JEDI_RESIST_BLEEDING)) {
			creature->addBuff(buff);
			
			healthHealed = 1250;
			actionCost = 900;
			creature->playEffect("clienteffect/medic_heal.cef", "");
		} else {
			creature->sendSystemMessage("You're Still on cooldown");
		}
		return SUCCESS;
	}

};

#endif //TENDDAMAGECOMMAND_H_
