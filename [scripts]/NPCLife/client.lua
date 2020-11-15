-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false

-------------------------------------------------------------------------------------------------
----------------------------------- YOU CAN EDIT THIS LINES -------------------------------------
-------------------------------------------------------------------------------------------------

local ShopClerk = {
  -- ID: id of NPC | name: Name of Blip | BlipID: Icone of Blip | VoiceName: NPC Talk When near it | Ambiance: Ambiance of Shop | Weapon: Hash of Weapon | modelHash: Model | X: Position x | Y: Position Y | Z: Position Z | heading: Where Npc look
	{id = 1, name = "Shop", BlipID = 52, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "mp_m_shopkeep_01", x = -2511.16479492188, y = 3616.90478515625, z = 13.6422147750854, heading = 245.000457763672}, 
	{id = 2, name = "Shop", BlipID = 52, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "mp_m_shopkeep_01", x = 24.392505645752, y = -1345.41369628906, z = 29.4970207214355, heading = 264.900115966797},
	{id = 3, name = "Shop", BlipID = 52, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "mp_m_shopkeep_01", x = -47.3110542297363, y = -1758.62475585938, z = 29.4209995269775, heading = 48.1558074951172},
	{id = 4, name = "Ammunation", BlipID = 110, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "s_m_y_ammucity_01", x = 841.843566894531, y = -1035.70556640625, z = 28.1948642730713, heading = 3.31448912620544},
	{id = 5, name = "TCP", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1B06D571, modelHash = "G_M_Y_BallaSout_01", x = 708.62768554688, y = -295.33242797852, z = 59.183330535889, heading = 3.31448912620544}, -- 708.62768554688,-295.33242797852,59.183330535889
	{id = 6, name = "TCP", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1B06D571, modelHash = "G_M_Y_BallaEast_01", x = 706.18218994141, y = -293.90686035156, z = 59.182731628418, heading = 425.31448912620544}, -- 706.18218994141,-293.90686035156,59.182731628418
	{id = 7, name = "TCP", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1B06D571, modelHash = "G_M_Y_BallaEast_01", x = 699.76373291016, y = -292.60702514648, z = 59.184299468994, heading = 475.31448912620544}, -- 699.76373291016,-292.60702514648,59.184299468994
	{id = 8, name = "ADA", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1B06D571, modelHash = "csb_grove_str_dlr", x = 371.48513793945, y = -1852.5830078125, z = 27.727308273315, heading = 475.31448912620544}, -- 371.48513793945,-1852.5830078125,27.727308273315
	{id = 9, name = "ADA", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1B06D571, modelHash = "csb_grove_str_dlr", x = 368.10885620117, y = -1848.1632080078, z = 27.901861190796, heading = 475.31448912620544}, -- 368.10885620117,-1848.1632080078,27.901861190796
	--{id = 8, name = "AgenciaEmprego", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "A_M_Y_Business_01", x = -269.14859008789, y = -955.83752441406, z = 29.223142623901, heading = 200.31448912620544},
	{id = 13, name = "Medico", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "S_M_M_Doctor_01", x = 308.44381713867, y = -595.08831787109, z = 43.284019470215, heading = 100.31448912620544}, -- 308.44381713867,-595.08831787109,43.284019470215
	{id = 12, name = "Medico2", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "S_M_M_Doctor_01", x = 300.10433959961, y = -581.07189941406, z = 43.260833740234, heading = 100.31448912620544}, -- 300.10433959961,-581.07189941406,43.260833740234
	--{id = 11, name = "Medico3", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "S_M_M_Doctor_01", x = 1150.7692871094, y = -1530.3120117188, z = 35.386299133301, heading = 325.31448912620544},
	--{id = 12, name = "Medico4", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "S_M_M_Doctor_01", x = -676.86187744141, y = 313.74105834961, z = 83.084144592285, heading = 180.31448912620544},
	--{id = 13, name = "Medico5", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0xA2719263, modelHash = "S_M_M_Paramedic_01", x = 436.72634887695, y = -406.40078735352, z = 47.598628997803, heading = 135.31448912620544},
	{id = 14, name = "Policia", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "S_M_Y_Cop_01", x = 454.13284301758, y = -979.96466064453, z = 30.689590454102, heading = 100.31448912620544},
	{id = 15, name = "Guarda1", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "S_M_M_Armoured_01", x = 146.51782226563, y = -1039.498046875, z = 29.367910385132, heading = 325.31448912620544}, -- 146.51782226563,-1039.498046875,29.367910385132
	{id = 16, name = "Guarda2", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "S_M_M_Armoured_01", x = 306.80825805664, y = -282.81365966797, z = 54.164615631104, heading = 325.31448912620544},
	{id = 17, name = "Guarda3", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "S_M_M_Armoured_01", x = 235.97398376465, y = 228.11682128906, z = 106.28679656982, heading = 175.31448912620544},
	{id = 18, name = "Guarda4", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "S_M_M_Armoured_01", x = 260.04479980469, y = 217.29406738281, z = 106.28649139404, heading = 75.31448912620544},
	{id = 19, name = "Guarda5", VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", Weapon = 0x1D073A89, modelHash = "S_M_M_Armoured_01", x = 252.79150390625, y = 227.60621643066, z = 101.68325805664, heading = 250.31448912620544},
}

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Blip For NPC
Citizen.CreateThread(function()
	for k,v in pairs(ShopClerk)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.BlipID)
		SetBlipScale(blip, 0.1)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.name)
		EndTextCommandSetBlipName(blip)
	end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Spawn NPC
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	
	if (not generalLoaded) then
	  
	  for i=1, #ShopClerk do
        RequestModel(GetHashKey(ShopClerk[i].modelHash))
        while not HasModelLoaded(GetHashKey(ShopClerk[i].modelHash)) do
          Wait(1)
        end
		
        ShopClerk[i].id = CreatePed(2, ShopClerk[i].modelHash, ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, ShopClerk[i].heading, true, true)
        SetPedFleeAttributes(ShopClerk[i].id, 0, 0)
		SetAmbientVoiceName(ShopClerk[i].id, ShopClerk[i].Ambiance)
		SetPedDropsWeaponsWhenDead(ShopClerk[i].id, false)
		SetPedDiesWhenInjured(ShopClerk[i].id, false)
		GiveWeaponToPed(ShopClerk[i].id, ShopClerk[i].Weapon, 2800, false, true)
		
      end
      generalLoaded = true
		
    end
	
  end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Action when player Near NPC (or not)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
		RequestAnimDict("random@shop_gunstore")
		while (not HasAnimDictLoaded("random@shop_gunstore")) do 
			Citizen.Wait(0) 
		end
		
		for i=1, #ShopClerk do
			distance = GetDistanceBetweenCoords(ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, GetEntityCoords(GetPlayerPed(-1)))
			if distance < 4 and PlayingAnim ~= true then
				TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_greeting", 1.0, -1.0, 4000, 0, 1, true, true, true)
				PlayAmbientSpeech1(ShopClerk[i].id, ShopClerk[i].VoiceName, "SPEECH_PARAMS_FORCE", 1)
				PlayingAnim = true
				Citizen.Wait(4000)
				if PlayingAnim == true then
					TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle_b", 1.0, -1.0, -1, 0, 1, true, true, true)
					Citizen.Wait(40000)
				end
			else
				--don't touch this
				--TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle", 1.0, -1.0, -1, 0, 1, true, true, true)
			end
			if distance > 5.5 and distance < 6 then
				PlayingAnim = false
			end


		end
  end
end)

