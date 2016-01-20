/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef TENDDAMAGECOMMAND_H_
#define TENDDAMAGECOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "TendCommand.h"
#include "server/zone/objects/creature/events/InjuryTreatmentTask.h"

class TendDamageCommand : public TendCommand {
public:

	TendDamageCommand(const String& name, ZoneProcessServer* server)
			: TendCommand(name, server) {
		/*
		TODO:
			Attach buff
			Duration (cooldown)
			Check for 'if on cooldown'
		*/
		
		
		uint32 buffcrc = BuffCRC::JEDI_RESIST_BLEEDING;
		StringIdChatParameter startStringId("medical_heal", "apply_healCooldown");
		StringIdChatParameter endStringId("medical_heal", "remove_healCooldown");
		duration = 10;
		ManagedReference<Buff*> buff = new Buff(creature, buffcrc, duration, BuffType::JEDI);
		Locker locker(buff);
		buff->setStartMessage(startStringId);
		buff->setEndMessage(endStringId);
		
		if (!creature->hasbuff(BuffCRC:JEDI_RESIST_BLEEDING)) {
			creature->addBuff(buff);
			tendDamage = true;
			healthHealed = 1250;
			actionCost = 900;
			creature->playEffect("clienteffect/medic_heal.cef", "");
		} else {
			creature->sendSystemMessage("You're Still on cooldown");	
		}
	}

};

#endif //TENDDAMAGECOMMAND_H_
