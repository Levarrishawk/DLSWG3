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



black_atlas_conv:addScreen();

]]



black_atlas_conv = ConvoTemplate:new {

	initialScreen = "first_screen",

	templateType = "Lua",

	luaClassHandler = "black_atlas_conv_handler",

	screens = {}

}



first_screen = ConvoScreen:new {

	id = "first_screen",

	leftDialog = "",

	customDialogText = "Eh? ... Oh look at you, are you looking for some adventure?",

	stopConversation = "false",

	options = {

		{"I'm an adventurous type, what do you have in mind?", "stage_1"},

		{"I'm not just going to start doing favours for you when I don't even know who you are.", "belay"},

		{"O....K... I'll be leaving now.","deny"}

	}

}



black_atlas_conv:addScreen(first_screen);



stage_1 = ConvoScreen:new {

	id = "stage_1",

	leftDialog = "",

	customDialogText = "Great, I sent one of my men on a quick drop 'n go... You see the problem is that he hasn't returned, if you can investigate this I'll slip some credits your way.",

	stopConversation = "false",

	options = {

		{"You got it, send me his coordinates and I'll head straight over there.", "stage_1_1"}

		--deny

		--question

	}

}



black_atlas_conv:addScreen(stage_1);



stage_1_1 = ConvoScreen:new {

	id = "stage_1_1",

	leftDialog = "",

	customDialogText = "I'll be right here waiting on you.",

	stopConversation = "true",

	options = {

	}

}



black_atlas_conv:addScreen(stage_1_1);



deny = ConvoScreen:new {

	id = "deny",

	leftDialog = "",

	customDialogText = "Like as if you're worth something, I can hire someone else.",

	stopConversation = "true",

	options = {

	}

}



black_atlas_conv:addScreen(deny);



--TODO: UPDATE LATER

complete = ConvoScreen:new {

	id = "complete",

	leftDialog = "",

	customDialogText = "Alright look, I have some shit to do. I'll let my boss know about you, and we will contact you later.",

	stopConversation = "true",

	options = {

	}

}



black_atlas_conv:addScreen(complete);



not_yet_stage_1 = ConvoScreen:new {

	id = "not_yet_stage_1",

	leftDialog = "",

	customDialogText = "Look just do what I told you to do, I don't have time to waste on the likes of you.",

	stopConversation = "true",

	options = {

	}

}



black_atlas_conv:addScreen(not_yet_stage_1);



jedi = ConvoScreen:new {

	id = "jedi",

	leftDialog = "",

	customDialogText = "You don't think I can see that you're a Jedi? Get out of here before I have you killed.",

	stopConversation = "true",

	options = {

	}

}



black_atlas_conv:addScreen(jedi);



jedi_hunt = ConvoScreen:new {

	id = "jedi_hunt",

	leftDialog = "",

	customDialogText = "I thought you would have been smart, get 'em boys!",

	stopConversation = "true",

	options = {

	}

}



black_atlas_conv:addScreen(jedi_hunt);



addConversationTemplate("black_atlas_conv", black_atlas_conv);
