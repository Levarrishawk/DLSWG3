--[[

TODO:

-convo to be able to teleport in
-Teleport inside the instance
-Teleport out after complete
-Require 8 man team, hard-core-insane
-Exar NPCs
	-Exar Kun
	-3 Bosses
		-Boss 1 Details

		-Boss 2 Details

		-Boss 3 Details

-Reward after killing boss (exar)

]]--


exarKun = ScreenPlay:new { 
	numberOfActs = 1, 
	questString = "exarKunString",
	states = {
		quest = { hasQuest = 1, completedQuest = 2 } --Add more states to allow more to the quest.
	}, 
	questdata = Object:new {
		activePlayerName = "initial",
	}

}

registerScreenPlay("exarKun", true)

function exarKun:start() 
	if (isZoneEnabled("talus")) then
		self:spawnMobiles()
		--ActiveAreas
	end
end




function exarKun:spawnMobiles()
		spawnMobile("talus", "trainer_artisan", 1, 10.4, 2.2, -7, -5, 9895517)
end


--[[
function exarKun_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConve2
				nextConversationScreen = conversation:getScreen("next_npc_screen")
			else
				nextConversationScreen = conversation:getScreen("hello_screen")
			end
		else
			local luaLastConversationScreen = LuaConversationScreen(lastConversationScreen)
			local optionLink = luaLastConversationScreen:getOptionLink(selectedOption)		
			nextConversationScreen = conversation:getScreen(optionLink)			
		end			
	end			

	return nextConversationScreen	

end



function exarKun_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)	

	local screen = LuaConversationScreen(conversationScreen)	
	local screenID = screen:getScreenID()
	local player = LuaCreatureObject(conversingPlayer)
	local completed = player:getScreenPlayState(exarKun.states.quest.intro, exarKun.questString)	
	
	if ( screenID == "intro_first_screen" ) then
		player:setScreenPlayState(exarKun.states.quest.intro, exarKun.questString)
		local pGhost = player:getPlayerObject()
		if pGhost ~= nil then
			PlayerObject(pGhost):addWaypoint("tatooine", "test", "", 1, 1, 1, true, true, WAYPOINTTHEMEPARK, 1)
		end
	end
	
	return conversationScreen
	
end
]]--
