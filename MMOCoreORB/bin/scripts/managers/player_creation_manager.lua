--Should all created players start with God Mode? 1 = yes, 0 = no
freeGodMode = 0;
--How many cash credits new characters start with after creating a character (changed during test phase, normal value is 100)
startingCash = 100
--startingCash = 100000
--How many bank credits new characters start with after creating a character (changed during test phase, normal value is 1000)
startingBank = 1000
--startingBank = 100000
--How many skill points a new characters start with
skillPoints = 250

professions = {
	"combat_commando",
	"combat_marksman",
	"combat_rifleman",
	"combat_pistol",
	"jedi_pad",
	"outdoors_squadleader",
	"outdoors_creaturehandler",
	"science_medic",
	"crafting_architect",
	"crafting_armorsmith",
	"crafting_droidengineer",
	"crafting_chef",
	"social_entertainer"
}

marksmanPistol = "object/weapon/ranged/pistol/pistol_cdef.iff"
	
marksmanRifle = "object/weapon/ranged/rifle/rifle_cdef.iff"

marksmanCarbine = "object/weapon/ranged/carbine/carbine_cdef.iff"

brawlerOneHander = "object/weapon/melee/knife/knife_stone.iff"

brawlerTwoHander = "object/weapon/melee/axe/axe_heavy_duty.iff"

brawlerPolearm = "object/weapon/melee/polearm/lance_staff_wood_s1.iff"

survivalKnife = "object/weapon/melee/knife/knife_survival.iff"

genericTool = "object/tangible/crafting/station/generic_tool.iff"

foodTool = "object/tangible/crafting/station/food_tool.iff"

mineralTool = "object/tangible/survey_tool/survey_tool_mineral.iff"

chemicalTool = "object/tangible/survey_tool/survey_tool_liquid.iff"

slitherhorn = "object/tangible/instrument/slitherhorn.iff"

marojMelon = "object/tangible/food/foraged/foraged_fruit_s1.iff"

x31Speeder = "object/tangible/deed/vehicle_deed/landspeeder_x31_deed.iff"

robe = "object/tangible/wearables/robe/robe_jedi_padawan.iff"

saber = "object/weapon/melee/sword/crafted_saber/sword_lightsaber_s9_training.iff"

professionSpecificItems = {
	combat_brawler = { brawlerOneHander, brawlerTwoHander, brawlerPolearm },
	combat_marksman = { marksmanPistol, marksmanCarbine, marksmanRifle },
	combat_commando = { marksmanPistol, marksmanCarbine, marksmanRifle },
	combat_rifleman = { marksmanPistol, marksmanCarbine, marksmanRifle },
	combat_pistol = { marksmanPistol, marksmanCarbine, marksmanRifle },
	jedi_pad = { saber, robe, genericTool, mineralTool, chemicalTool },
	outdoors_squadleader = { genericTool },
	outdoors_creaturehandler = { genericTool },
	science_medic = { foodTool },
	crafting_architect = { genericTool, mineralTool, chemicalTool },
	crafting_armorsmith = { genericTool, mineralTool, chemicalTool }, 
	crafting_droidengineer = { genericTool, mineralTool, chemicalTool }, 
	crafting_chef = { genericTool, mineralTool, chemicalTool }, 		
	social_entertainer = { slitherhorn }
}

commonStartingItems = { marojMelon, survivalKnife, x31Speeder }