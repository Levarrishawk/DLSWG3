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
		effectName = "clienteffect/medic_heal.cef";

		actionCost = 900;
		defaultTime = 20.0;
		mindWoundCost = 0;


		tendDamage = true;

		healthHealed = 1250;
		//actionHealed = 50;

		//defaultTime = 5.0;
		range = 0;
	}

};

#endif //TENDDAMAGECOMMAND_H_
