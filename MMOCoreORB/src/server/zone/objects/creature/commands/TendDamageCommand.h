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
		effectName = "clienteffect/medic_heal.cef";

		actionCost = 450;
		cooldown = 20;
		mindWoundCost = 0;


		tendDamage = true;

		healthHealed = 1250;
		//actionHealed = 50;

		//defaultTime = 5.0;
		range = 0;
		}
		void deactivateInjuryTreatment(CreatureObject* creature, bool isRangedStim) const {
				float modSkill = 0.0f;

				int delay = 4;

				delay = (delay < 4) ? 4 : delay;

				StringIdChatParameter message("healing_response", "healing_response_58"); //You are now ready to heal more damage.
				Reference<InjuryTreatmentTask*> task = new InjuryTreatmentTask(creature, message, "injuryTreatment");
				creature->addPendingTask("injuryTreatment", task, delay * 1000);


};

#endif //TENDDAMAGECOMMAND_H_
