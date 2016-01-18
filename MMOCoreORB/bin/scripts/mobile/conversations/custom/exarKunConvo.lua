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

exarKunConvo:addScreen();

]]

exarKunConvo = ConvoTemplate:new {
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

exarKunConvo:addScreen(first_screen);
