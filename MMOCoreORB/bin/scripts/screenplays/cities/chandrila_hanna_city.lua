HannaCityScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "HannaCityScreenPlay"
}

registerScreenPlay("HannaCityScreenPlay", true)

function HannaCityScreenPlay:start()
	if (isZoneEnabled("chandrila")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function HannaCityScreenPlay:spawnSceneObjects()

	--Cantina Static Objects
	spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 27.1, -0.9, 12.0, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 27.1, -0.9, -10.9, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -16.4, -0.9, 0.4, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 15.0, -0.9, -3.9, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 15.6, -0.9, 5.7, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -1.2, -0.9, 11.3, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 11.8, -0.9, -10.2, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -1.1, -0.9, -10.3, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", -11.4, -0.9, -7.6, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 34.4, 0.1, 1.6, 35791443, math.rad(0) )
  spawnSceneObject("chandrila", "object/tangible/gambling/wheel/roulette.iff", 34.4, 0.1, 1.6, 35791443, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_green_style_01_on.iff", 31.7, 0.1, -6.8, 35791443, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_02_on.iff", -16.7, -0.9, 26.4, 35791453, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_02_on.iff", -31.7, -0.9, 17.1, 35791453, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_sparking_blast_md.iff", 24.5, 3, 9.5, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/particle/pt_flocking_glowzees.iff", 24.5, 0, 9.5, 35791444, math.rad(0) )
  spawnSceneObject("chandrila", "object/tangible/painting/painting_rodian_m.iff", 27.5, 0.6, -5.8, 35791444, math.rad(0) )
  
  -- Military base Static Objects
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_red_style_01_on.iff", -10.8, 7.0, 9.3, 35791638, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 195.5, 6.0, -3075.5, 0, math.rad(0) )
  spawnSceneObject("chandrila", "object/static/structure/general/streetlamp_small_blue_style_01_on.iff", 195.5, 6.0, -3064.5, 0, math.rad(0) )
 

	--Hotel
--	spawnSceneObject("corellia", "object/static/structure/general/droid_r4_powerdown.iff", 6.0, 1.0, 20.2, 2365805, math.rad(143) )

end

function HannaCityScreenPlay:spawnMobiles()

	--Outdoors
	local pNpc = spawnMobile("chandrila", "surgical_droid_21b",60,3.1,0.1,11.5,0,0)
	self:setMoodString(pNpc, "neutral")

	pNpc = spawnMobile("chandrila", "commoner",60,247.0,6.0,-2898.4,20,0)
	self:setMoodString(pNpc, "conversation")
	pNpc = spawnMobile("chandrila", "commoner",60,248.5,6.0,-2896.1,-150,0)
	self:setMoodString(pNpc, "conversation")
	
	pNpc = spawnMobile("chandrila", "rebel_trooper",60,249.9,6.0,-2942.1,84,0)
  self:setMoodString(pNpc, "angry")
	pNpc = spawnMobile("chandrila", "rebel_trooper",60,249.9,6.0,-2931.5,84,0)
  self:setMoodString(pNpc, "angry")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,219.7,6.0,-3027.8,51,0)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "rebel_pilot",60,194.9,6.0,-3026.8,-80,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "rebel_pilot",60,172.5,6.0,-3021.2,29,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "rebel_pilot",60,160.2,6.0,-3014.5,-143,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "rebel_pilot",60,141.5,6.0,-3030.8,96,0)
  self:setMoodString(pNpc, "angry")
  pNpc = spawnMobile("chandrila", "rebel_first_lieutenant",60,145.5,6.0,-3031.7,-74,0)
  self:setMoodString(pNpc, "conversation")
	
	pNpc = spawnMobile("chandrila", "rebel_trooper",60,121.9,6.0,-3100.0,-160,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,143.0,6.0,-3069.9,-91,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,187.3,6.0,-3080.6,90,0)
  self:setMoodString(pNpc, "neutral")
  
  -- Senate Building
        -- Exterior
  pNpc = spawnMobile("chandrila", "royal_imperial_guard",60,494.1,6.0,-2934.1,-90,0)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "royal_imperial_guard",60,494.1,6.0,-2940.1,-90,0)
  self:setMoodString(pNpc, "neutral")
        -- Interior
  pNpc = spawnMobile("chandrila", "royal_imperial_guard",60,-3.3,-18.9,32.7,-5,35791743)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "royal_imperial_guard",60,3.2,-18.9,32.7,0,35791743)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "royal_imperial_guard",60,1.8,-18.9,-28.6,0,35791740)
  self:setMoodString(pNpc, "neutral")
  pNpc = spawnMobile("chandrila", "royal_imperial_guard",60,-1.7,-18.9,-28.7,0,35791740)
  self:setMoodString(pNpc, "neutral")
  
  pNpc = spawnMobile("chandrila", "mon_mothma",60,-0.0,-26.6,0.8,0,35791722)
  self:setMoodString(pNpc, "neutral")
  
  --Military Base
  pNpc = spawnMobile("chandrila", "rebel_major",60,8.4,7.0,10.5,-105,35791639)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "rebel_general",60,5.9,7.0,9.9,78,35791639)
  self:setMoodString(pNpc, "npc_sitting_chair")	
  pNpc = spawnMobile("chandrila", "rebel_colonel",60,2.1,7.0,-15.7,3,35791637)
  self:setMoodString(pNpc, "neutral") 
  
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,6.1,7.0,-11.5,-139,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,2.6,7.0,-11.1,175,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,-0.9,7.0,-11.4,138,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,-3.2,7.0,-8.6,136,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,-0.6,7.0,-6.8,-106,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,2.6,7.0,-6.7,179,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,6.1,7.0,-6.9,-160,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,8.3,7.0,-9.0,-135,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,-3.0,7.0,-4.9,134,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,-0.5,7.0,-3.2,179,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,2.6,7.0,-2.9,179,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,6.4,7.0,-3.4,179,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,9.1,7.0,-4.8,-135,35791637)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_high_general",60,-9.3,7.0,11.2,-144,35791638)
  self:setMoodString(pNpc, "angry")
  pNpc = spawnMobile("chandrila", "rebel_medic",60,19.6,1.0,-3.6,107,35791632)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_medic",60,14.2,1.0,-4.2,-7,35791632)
  self:setMoodString(pNpc, "bored")
  pNpc = spawnMobile("chandrila", "rebel_medic",60,14.2,1.0,-1.0,170,35791632)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "rebel_master_sergeant",60,0.1,2.0,4.3,0,35791629)
  self:setMoodString(pNpc, "bored")
  pNpc = spawnMobile("chandrila", "rebel_second_lieutenant",60,14.9,1.0,-19.8,175,35791633)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,-12.3,1.0,-21.2,23,35791635)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,-10.0,1.0,-19.0,-111,35791635)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,19.7,1.0,17.5,-90,35791630)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,19.6,1.0,20.0,-119,35791630)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,16.7,1.0,20.9,162,35791630)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,16.7,1.0,18.5,76,35791630)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "rebel_trooper",60,16.5,1.0,16.7,61,35791630)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
	-- Cantina
	
  pNpc = spawnMobile("chandrila", "bartender",60,-11.5,-0.9,2,230,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "businessman",60,10.65,-0.894992,1.91,330,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("chandrila", "businessman",60,-4.11,-0.894992,5.4,26.8951,35791444)
  self:setMoodString(pNpc, "happy")
  pNpc = spawnMobile("chandrila", "commoner",60,10.17,-0.894992,2.74,125.098,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "commoner_fat",60,2.11,-0.894992,5.4,180,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  
  pNpc = spawnMobile("chandrila", "commoner_fat",60,-3.2,-0.9,-10.8,65,35791444)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("chandrila", "commoner_naboo",60,3.11,0,5.4,161.005,35791444)
  self:setMoodString(pNpc, "bored")
  pNpc = spawnMobile("chandrila", "commoner_naboo",60,1.11,0,5.4,330.024,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("chandrila", "commoner_naboo",60,-3.11,0,5.4,16.6733,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("chandrila", "commoner_naboo",60,16.1,-0.9,4.1,340,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "commoner_tatooine",60,4.11,-0.894992,5.4,158.443,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("chandrila", "commoner_tatooine",60,1.99,-0.894992,-8.44,325.01,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "commoner_tatooine",60,1.19,-0.894992,-7.63,152.004,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "entertainer",60,9.4,0,3.9,310,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("chandrila", "noble",60,8.49,-0.894992,4.64,128.74,35791444)
  self:setMoodString(pNpc, "conversation")
  
  --
  pNpc = spawnMobile("chandrila", "patron",60,13.7,-0.9,-5.6,67,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "patron",60,13.6,-0.9,-2.4,147,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "patron",60,16.3,-0.9,-5.6,320,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "patron",60,23.5,-0.9,-8.9,51,35791444)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("chandrila", "patron",60,26.3,-0.9,-8.8,317,35791444)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("chandrila", "patron",60,19.1,-0.9,6.1,41,35791444)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("chandrila", "patron",60,22.2,-0.9,4.3,22,35791444)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("chandrila", "patron",60,-3.1,-0.9,11.6,97,35791444)
  self:setMoodString(pNpc, "npc_sitting_table")
  
  
  pNpc = spawnMobile("chandrila", "patron",60,1.2,-0.9,11.6,269,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "patron_ithorian",60,14.1,-0.9,4.3,51,35791444)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("chandrila", "patron_klaatu",60,14.4,-0.9,7.5,139,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("chandrila", "patron_quarren",60,17.1,-0.9,7.8,226,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  spawnMobile("chandrila", "malakili", 60, -28.5, -0.9, 22.5, 46  , 35791453)
  spawnMobile("chandrila", "jabba_rancor", 60, -26.8, -0.9, 24.2, -160, 35791453)
  --
  
	

end
