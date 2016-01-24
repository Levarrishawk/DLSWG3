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
  
  spawnMobile("chandrila", "malakili", 60, -29.3, -0.9, 423.0, 139, 35791453)
  spawnMobile("chandrila", "jabba_rancor", 60, -26.8, -0.9, 24.2, -160, 35791453)
  --
  
	

end
