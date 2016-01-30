
#include "server/zone/objects/tangible/pharmaceutical/StimPack.h"
#include "server/zone/templates/tangible/StimPackTemplate.h"
#include "server/zone/managers/object/ObjectManager.h"

bool StimPackImplementation::isPetStimPack() {
	return getObjectNameStringIdName().contains("pet_stimpack");
}

bool StimPackImplementation::isDroidRepairKit() {
	return getObjectNameStringIdName().contains("droid_damage_kit");
}
bool StimPackImplementation::isClassA() {
	return getMedicineClass() == StimPackTemplate::STIM_A;
}
bool StimPackImplementation::isClassB() {
	return getMedicineClass() == StimPackTemplate::STIM_B;
}
bool StimPackImplementation::isClassC() {
	return getMedicineClass() == StimPackTemplate::STIM_C;
}
bool StimPackImplementation::isClassD() {
	return getMedicineClass() == StimPackTemplate::STIM_D;
}
bool StimPackImplementation::isClassE() {
	return getMedicineClass() == StimPackTemplate::STIM_E;
}

void StimPackImplementation::fillAttributeList(AttributeListMessage msg, CreatureObject object) {
		super.fillAttributeList(msg, object);

		if (!isRangedStimPack() && !isDroidRepairKit()) {
			msg.insertAttribute("examine_heal_damage_health", Math.getPrecision(effectiveness, 0));
		//	msg.insertAttribute("examine_heal_damage_action", Math.getPrecision(effectiveness, 0));

			if (isPetStimPack()) {
				msg.insertAttribute("examine_heal_damage_mind", Math.getPrecision(effectiveness, 0));
			} else {
				msg.insertAttribute("healing_ability", super.medicineUseRequired);
			}
		} else if (isDroidRepairKit()) {
			msg.insertAttribute("examine_repair_energy", Math.getPrecision(effectiveness, 0));
		}
	}

StimPack* StimPackImplementation::split(int charges) {

	Locker locker(_this.getReferenceUnsafeStaticCast());
	ObjectManager* objectManager = ObjectManager::instance();
	ManagedReference<StimPack*> protoclone = cast<StimPack*>( objectManager->cloneObject(_this.getReferenceUnsafeStaticCast()));
	if (protoclone != NULL) {
		Locker cloneLocker(protoclone);

		if(protoclone->hasAntiDecayKit()){
			protoclone->removeAntiDecayKit();
		}

		protoclone->setParent(NULL);
		protoclone->setUseCount(charges);
		setUseCount(getUseCount() - charges);
		return protoclone;
	}

	return NULL;
}
