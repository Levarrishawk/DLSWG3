--THEME_PARK_UNKNOWN_BADGE = badge #

starter_quest =
	{
		{
			missionType = "assassinate",
			primarySpawns =
			{
				{ npcTemplate = "dune_bantha", planetName = "tatooine", npcName = "Infected Dune Bantha" }
			},
			
			secondarySpawns =
			{
				
			},
			itemSpawns = {},
			rewards =
			{
				{ rewardType = "credits", amount = 5000 }
			}
		},
	}
	

npcMapStarter =
	{
		{
			spawnData = { planetName = "tatooine", npcTemplate = "sullustan_male", x = 3517, z = 5, y = -4796, direction = 124, cellID = 0, position = STAND },
			--worldPosition = { x = 3517, y = -4796 },
			npcNumber = 1,
			stfFile = "@theme_park_skyyyr/skyyyr",
			missions = starter_quest
		},
	}

ThemeParkSkyyyr = ThemeParkLogic:new {
	numberOfActs = 1,
	npcMap = npcMapStarter,
	--permissionMap = permissionMapJabba,
	className = "ThemeParkSkyyyr",
	screenPlayState = "skyyyr_theme_park",
	distance = 850,
	missionDescriptionStf = "@theme_park_skyyyr/quest_details:skyyyr_theme_",
	--missionCompletionMessageStf = "@theme_park/messages:jabba_completion_message"
}

registerScreenPlay("ThemeParkSkyyyr", true)

theme_park_skyyyr_mission_giver_conv_handler = mission_giver_conv_handler:new {
	themePark = ThemeParkSkyyyr
}
theme_park_skyyyr_mission_target_conv_handler = mission_target_conv_handler:new {
	themePark = ThemeParkSkyyyr
}

