--[[

Template

 = ConvoScreen:new {
	id = "",
	leftDialog = "",
	customDialogText = "",
	stopConversation = "",
	options = {
	}
}

exar_kun_conv:addScreen();

]]

exar_kun_conv = ConvoTemplate:new {
	initialScreen = "first_screen",
	templateType = "Lua",
	luaClassHandler = "exarKun_convo_handler",
	screens = {}
}

first_screen = ConvoScreen:new {
	id = "first_screen",
	leftDialog = "",
	customDialogText = "You're a fucking douche.",
	stopConversation = "true",
	options = {
	}
}

exar_kun_conv:addScreen(first_screen);





addConversationTemplate("exar_kun_conv", exar_kun_conv);
