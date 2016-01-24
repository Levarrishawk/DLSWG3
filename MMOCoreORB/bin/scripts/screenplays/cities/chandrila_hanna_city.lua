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
	
  pNpc = spawnMobile("tatooine", "bartender",60,-11.5,-0.9,2,230,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("tatooine", "businessman",60,10.65,-0.894992,1.91,330,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("tatooine", "businessman",60,-4.11,-0.894992,5.4,26.8951,35791444)
  self:setMoodString(pNpc, "happy")
  pNpc = spawnMobile("tatooine", "commoner",60,10.17,-0.894992,2.74,125.098,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("tatooine", "commoner_fat",60,2.11,-0.894992,5.4,180,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("tatooine", "commoner_fat",60,-2.2,-0.9,-10.9,65,35791444)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("tatooine", "commoner_naboo",60,3.11,0,5.4,161.005,35791444)
  self:setMoodString(pNpc, "bored")
  pNpc = spawnMobile("tatooine", "commoner_naboo",60,1.11,0,5.4,330.024,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("tatooine", "commoner_naboo",60,-3.11,0,5.4,16.6733,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("tatooine", "commoner_naboo",60,16.1,-0.9,4.1,340,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("tatooine", "commoner_tatooine",60,4.11,-0.894992,5.4,158.443,35791444)
  self:setMoodString(pNpc, "npc_standing_drinking")
  pNpc = spawnMobile("tatooine", "commoner_tatooine",60,1.99,-0.894992,-8.44,325.01,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("tatooine", "commoner_tatooine",60,1.19,-0.894992,-7.63,152.004,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("tatooine", "entertainer",60,9.4,0,3.9,310,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("tatooine", "noble",60,8.49,-0.894992,4.64,128.74,35791444)
  self:setMoodString(pNpc, "conversation")
  pNpc = spawnMobile("tatooine", "patron",60,14.2,-0.9,-4.8,67,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("tatooine", "patron",60,14.7,-0.9,-3,147,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("tatooine", "patron",60,16.5,-0.9,-4.8,320,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("tatooine", "patron",60,24.5,-0.9,-8.1,51,35791444)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("tatooine", "patron",60,26.1,-0.9,-8.2,317,35791444)
  self:setMoodString(pNpc, "npc_sitting_table_eating")
  pNpc = spawnMobile("tatooine", "patron",60,8.8,-0.9,-6,208,35791444)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("tatooine", "patron",60,6.8,-0.9,-6.5,230,35791444)
  self:setMoodString(pNpc, "entertained")
  pNpc = spawnMobile("tatooine", "patron",60,-2.2,-0.9,11.8,97,35791444)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("tatooine", "patron",60,0.6,-0.9,11.9,269,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("tatooine", "patron_chiss",60,3.62,-0.894992,-4.77,184.005,35791444)
  self:setMoodString(pNpc, "sad")
  pNpc = spawnMobile("tatooine", "patron_chiss",60,1.74,-0.894992,-4.91,95.0028,35791444)
  self:setMoodString(pNpc, "npc_consoling")
  pNpc = spawnMobile("tatooine", "patron_devaronian",60,21.4,-0.9,5.4,161,35791444)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("tatooine", "patron_ishitib",60,22.3,-0.9,3.1,339,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("tatooine", "patron_ithorian",60,14.9,-0.9,4.9,51,35791444)
  self:setMoodString(pNpc, "npc_sitting_table")
  pNpc = spawnMobile("tatooine", "patron_klaatu",60,15,-0.9,6.9,139,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("tatooine", "patron_nikto",60,23.4,-0.9,4.8,272,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  pNpc = spawnMobile("tatooine", "patron_quarren",60,17,-0.9,6.8,226,35791444)
  self:setMoodString(pNpc, "npc_sitting_chair")
  
  
	

end
