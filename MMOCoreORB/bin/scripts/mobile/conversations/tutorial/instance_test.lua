instance_test = ConvoTemplate:new {
	initialScreen = "first_convo",
	templateType = "Lua",
	luaClassHandler = "instance_test",
	screens = {}
}

instance_convo_first_screen = ConvoScreen:new {
   id = "first_screen",
   leftDialog = "@tatooine_convo:greeting_1",
   customDialogText = "Are you ready for the battle?",
   stopConversation = "false",
   options = {
      {"Jakku Instance 1", "jakku1"},   
      {"Jakku Instance 2", "jakku2"},
      {"No thank you.", "deny_quest"}
   }
}
transitconvo_template:addScreen(transit_convo_about_quest);
transit_convo_deny_quest = ConvoScreen:new {
   id = "deny_quest",
   leftDialog = "",
   customDialogText = "Be vigilant Soldier",
   stopConversation = "true",
   options = {   
   }
}
instance_test:addScreen(instance_convo_first_screen);
addConversationTemplate("instance_test", instance_test);
