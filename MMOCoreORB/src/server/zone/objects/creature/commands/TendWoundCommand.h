/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef TENDWOUNDCOMMAND_H_
#define TENDWOUNDCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "TendCommand.h"

class TendWoundCommand : public TendCommand {
public:

	TendWoundCommand(const String& name, ZoneProcessServer* server)
		: TendCommand(name, server) {
		effectName = "clienteffect/healing_healwound.cef";

		actionCost = 400;
		mindWoundCost = 0;

		woundPool = 1;
		woundsHealed = 100;

		tendWound = true;

		//defaultTime = 5.0;
		range = 32.0;
	}


};

#endif //TENDWOUNDCOMMAND_H_
