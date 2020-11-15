local MeeleWeapons = {
    ["WEAPON_NIGHTSTICK"] = 1.1, 
    ["WEAPON_GOLFCLUB"] = 1.1,  
    ["WEAPON_FLASHLIGHT"] = 1.1,    	
    ["WEAPON_DAGGER"] = 1.1,    
    ["WEAPON_BAT"] = 1.1,    
    ["WEAPON_BOTTLE"] = 1.1,    
    ["WEAPON_CROWBAR"] = 1.1,    
    ["WEAPON_HAMMER"] = 1.1,    
    ["WEAPON_HATCHET"] = 1.1,    
    ["WEAPON_KNUCKLE"] = 1.1,    
    ["WEAPON_KNIFE"] = 1.1,    
    ["WEAPON_MACHETE"] = 1.1,    
    ["WEAPON_SWITCHBLADE"] = 1.1,    
    ["WEAPON_WRENCH"] = 1.1,    
    ["WEAPON_BATTLEAXE"] = 1.1,    
    ["WEAPON_POOLCUE"] = 1.1,    
    ["WEAPON_STONE_HATCHET"] = 1.1,    
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)

		for weapon, modifier in pairs(MeeleWeapons) do
			if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey(weapon) then
				SetPlayerMeleeWeaponDamageModifier(PlayerId(), v)
			end
		end
    end
end)
-- ARMAS DE FOGO
Citizen.CreateThread(function()
    while true do
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 1.5)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL_MK2"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATPISTOL"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_APPISTOL"), 1.2)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SNSPISTOL"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_VINTAGEPISTOL"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_REVOLVER"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MUSKET"), 1.2)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MICROSMG"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMG"), 2.5) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ASSAULTSMG"), 2.5) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATPDW"), 1.2)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PUMPSHOTGUN"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_GUSENBERG"), 1.2) 
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CARBINERIFLE"), 1.2)
	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_ASSAULTRIFLE"), 1.2) 
	Wait(0)
    end
end)