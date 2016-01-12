test_convo_handler = Object:new {
	tstring = "myconversation"
 }

function test_convo_handler:getNextConversationScreen(conversationTemplate, conversingPlayer, selectedOption)
	
	
	print("------------------------------\n")
	
	print("getNextConversation() called")
	
	local conversation = LuaConversationTemplate(conversationTemplate)
	
	local nextConversationScreen = nil
	
	if ( conversation ~= nil ) then
	
		-- try to get the initial screen from the conversation template
		print("Getting intialScreen")
		nextConversationScreen = conversation:getScreen("first_screen")
		
	end
	

		
	return nextConversationScreen
	
end


function test_convo_handler:runScreenHandlers(conversationTemplate, conversingPlayer, conversingNPC, selectedOption, conversationScreen)
	
	print("\ntest_convo_handler:runScreenHandlers() called\n")

	return conversationScreen
end