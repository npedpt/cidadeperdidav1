Citizen.CreateThread(function()

interiorID = GetInteriorAtCoords(96.47223, 6347.784, 30.48238)
	if IsValidInterior(interiorID) then
	
		EnableInteriorProp(interiorID, "weed_hosea")
		EnableInteriorProp(interiorID, "weed_hoseb")
		EnableInteriorProp(interiorID, "weed_hosec")
		EnableInteriorProp(interiorID, "weed_hosed")
		EnableInteriorProp(interiorID, "weed_hosee")
		EnableInteriorProp(interiorID, "weed_hosef")
		EnableInteriorProp(interiorID, "weed_hoseg")
		EnableInteriorProp(interiorID, "weed_hoseh")
		EnableInteriorProp(interiorID, "weed_hosei")
		EnableInteriorProp(interiorID, "weed_growtha_stage3")
		EnableInteriorProp(interiorID, "weed_growthb_stage3")
		EnableInteriorProp(interiorID, "weed_growthc_stage3")
		EnableInteriorProp(interiorID, "weed_growthd_stage3")
		EnableInteriorProp(interiorID, "weed_growthe_stage3")
		EnableInteriorProp(interiorID, "weed_growthf_stage3")
		EnableInteriorProp(interiorID, "weed_growthg_stage3")
		EnableInteriorProp(interiorID, "weed_growthh_stage3")
		EnableInteriorProp(interiorID, "weed_growthi_stage3")
		EnableInteriorProp(interiorID, "light_growtha_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthb_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthc_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthd_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthe_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthf_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthg_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthh_stage33_upgrade")
		EnableInteriorProp(interiorID, "light_growthi_stage33_upgrade")
		EnableInteriorProp(interiorID, "weed_upgrade_equip")
		EnableInteriorProp(interiorID, "weed_drying")
		EnableInteriorProp(interiorID, "weed_security_upgrade")
		EnableInteriorProp(interiorID, "weed_production")
		EnableInteriorProp(interiorID, "weed_set_up")
		EnableInteriorProp(interiorID, "weed_chairs")
		RefreshInterior(interiorID)
		
	end

interiorID = GetInteriorAtCoords(24.54136000, -1400.42700000, 29.12644000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "weed_upgrade_equip")
		EnableInteriorProp(interiorID, "counterfeit_security")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10a")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile100d")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile20d")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10b")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10c")
		EnableInteriorProp(interiorID, "counterfeit_cashpile10d")
		EnableInteriorProp(interiorID, "counterfeit_setup")
		EnableInteriorProp(interiorID, "counterfeit_upgrade_equip")
		DisableInteriorProp(interiorID, "dryera_on")
		DisableInteriorProp(interiorID, "dryerb_on")
		DisableInteriorProp(interiorID, "dryerc_on")
		DisableInteriorProp(interiorID, "dryerd_on")
		EnableInteriorProp(interiorID, "money_cutter")
		EnableInteriorProp(interiorID, "special_chairs")
		RefreshInterior(interiorID)
	end


interiorID = GetInteriorAtCoords(1497.75100000, 6393.09000000, 21.78359000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "meth_lab_upgrade")
		EnableInteriorProp(interiorID, "meth_lab_production")
		EnableInteriorProp(interiorID, "meth_lab_security_high")
		EnableInteriorProp(interiorID, "meth_lab_setup")
		EnableInteriorProp(interiorID, "counterfeit_standard_equip")
		RefreshInterior(interiorID)
	end
end)

interiorID = GetInteriorAtCoords(-1103.1722412109,4951.3447265625,234.8638)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "coke_cut_01")
		EnableInteriorProp(interiorID, "coke_cut_02")
		EnableInteriorProp(interiorID, "coke_cut_03")
		EnableInteriorProp(interiorID, "coke_cut_04")
		EnableInteriorProp(interiorID, "coke_cut_05")
		EnableInteriorProp(interiorID, "set_up")
		EnableInteriorProp(interiorID, "security_high")
		EnableInteriorProp(interiorID, "production_upgrade")
		EnableInteriorProp(interiorID, "equipment_upgrade")
		RefreshInterior(interiorID)
	end

interiorID = GetInteriorAtCoords(2845.278,4441.969,47.50344)
	if IsValidInterior(interiorID) then
		RefreshInterior(interiorID)
	end	

RequestIpl("imp_impexp_interior_placement_interior_1_impexp")
interiorID = GetInteriorAtCoords(941.10520000,-971.67590000,39.39997000)
	if IsValidInterior(interiorID) then
		EnableInteriorProp(interiorID, "branded_style_set")
		EnableInteriorProp(interiorID, "car_floor_hatch")
		EnableInteriorProp(interiorID, "door_blocker")
		RefreshInterior(interiorID)
	end		
end