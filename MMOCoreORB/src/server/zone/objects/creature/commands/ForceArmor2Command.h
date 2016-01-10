/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef FORCEARMOR2COMMAND_H_
#define FORCEARMOR2COMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/creature/buffs/SingleUseBuff.h"

class ForceArmor2Command : public QueueCommand {
public:

	ForceArmor2Command(const String& name, ZoneProcessServer* server)
		: QueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (creature->hasAttackDelay() || !creature->checkPostureChangeDelay())
			return GENERALERROR;

		if (isWearingArmor(creature)) {
			return NOJEDIARMOR;
		}

		// Force cost of skill.
		int actionCost = 900;
		int duration = 0;
		duration = creature->getSkillMod("center_of_being_duration_unarmed");


		//Check for and deduct Force cost.

		ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();




		uint32 buffcrc1 = BuffCRC::JEDI_FORCE_ARMOR_1;
		uint32 buffcrc2 = BuffCRC::JEDI_FORCE_ARMOR_2;

		if (creature->hasBuff(buffcrc1)) {
			creature->removeBuff(buffcrc1);
		} else if (creature->hasBuff(buffcrc2)) {
			creature->removeBuff(buffcrc2);
		}


		StringIdChatParameter startStringId("jedi_spam", "apply_forcearmor2");
		StringIdChatParameter endStringId("jedi_spam", "remove_forcearmor2");

		int duration = 15;

		Vector<unsigned int> eventTypes;
		eventTypes.add(ObserverEventType::FORCEBUFFHIT);

		ManagedReference<SingleUseBuff*> buff = new SingleUseBuff(creature, buffcrc2, duration, BuffType::JEDI, getNameCRC());

		Locker locker(buff);

		buff->setStartMessage(startStringId);
		buff->setEndMessage(endStringId);
		buff->setSkillModifier("force_armor", 80);
		buff->init(&eventTypes);

		creature->addBuff(buff);
		creature->playEffect("clienteffect/pl_force_armor_self.cef", "");

		return SUCCESS;
	}

	void handleBuff(SceneObject* creature, ManagedObject* object, int64 param) {

		ManagedReference<CreatureObject*> creo = cast<CreatureObject*>( creature);
		if (creo == NULL)
			return;

		// Client Effect upon hit (needed)
		creo->playEffect("clienteffect/pl_force_armor_hit.cef", "");

		ManagedReference<PlayerObject*> playerObject = creo->getPlayerObject();
		if (playerObject == NULL)
			return;

		// TODO: Force Rank modifiers.



	}

};

#endif //FORCEARMOR2COMMAND_H_
