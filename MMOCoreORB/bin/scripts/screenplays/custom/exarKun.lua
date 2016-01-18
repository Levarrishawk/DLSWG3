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
		spawnMobile("talus", "exarKunQMobile", 1, 10.4, 2.2, -7, -5, 9895517)
end



function exarKun:getActivePlayerName()
	return self.questdata.activePlayerName
end

function exarKun:setActivePlayerName(playerName)
	self.questdata.activePlayerName = playerName	
end

exarKun_convo_handler = Object:new {
}

function exarKun_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)

	local creature = LuaCreatureObject(conversingPlayer)
	local convosession = creature:getConversationSession()
	lastConversation = nil
	local conversation = LuaConversationTemplate(conversationTemplate)
--	local completedQuest = false --creature:hasScreenPlayState(initiateQuest.states.quest.phaseone, initiateQuest.questString)
	--local completedFS = creature:hasScreenPlayState(exarKun.states.quest.intro, exarKun.questString)
	--local completedFS = creature:hasScreenPlayState(64, "ForceSensitive")
	local player = LuaCreatureObject(conversingPlayer)
	local nextConversationScreen 
	if ( conversation ~= nil ) then
		if ( convosession ~= nil ) then
			 local session = LuaConversationSession(convosession)
			 if ( session ~= nil ) then
			 	lastConversationScreen = session:getLastConversationScreen()
			 end
		end
		
		if ( lastConversationScreen == nil ) then
			local creature = LuaCreatureObject(conversingPlayer)
			nextConversationScreen = conversation:getScreen("first_screen")
--[[
			if (completedFS == false) then
				nextConversationScreen = conversation:getScreen("intro_first_screen")
			elseif ( completedQuest == false ) then
				nextConversationScreen = conversation:getScreen("intro_first_screen")
			elseif ( completedQuest == true ) then
				nextConversationScreen = conversation:getScreen("next_npc_screen")
			else
				nextConversationScreen = conversation:getScreen("hello_screen")
			end
]]--
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
	--local completed = player:getScreenPlayState(black_atlas.states.quest.intro, black_atlas.questString)	
	if ( screenID == "first_screen" ) then
	--	player:setScreenPlayState(black_atlas.states.quest.intro, black_atlas.questString)
		local pGhost = player:getPlayerObject()
		if pGhost ~= nil then
			PlayerObject(pGhost):addWaypoint("talus", "Go here cunt!", "", 4171, 6, 1025, true, true, WAYPOINTTHEMEPARK, 1)
		end
	end
	return conversationScreen
end
