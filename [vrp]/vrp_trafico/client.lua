local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("vrp_trafico")
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORT
-----------------------------------------------------------------------------------------------------------------------------------------
local Teleport = {
	["TRAFICO01"] = { -- Bunker
		positionFrom = { ['x'] = -3033.40, ['y'] = 3333.93, ['z'] = 10.27, ['perm'] = "entrada.permissao" },
		positionTo = { ['x'] = 894.49, ['y'] = -3245.88, ['z'] = -98.25, ['perm'] = "entrada.permissao" },
	},

	["TRAFICO02"] = { -- Bunker
		positionFrom = { ['x'] = -928.237, ['y'] = -1510.992, ['z'] = 5.176, ['perm'] = "yakuza.permissao" },
		positionTo = { ['x'] = 1138.04, ['y'] = -3198.547, ['z'] = -39.66, ['perm'] = "yakuza.permissao" }
	},
	["Transporteboate"] = { -- Teleporte para a boate
		positionFrom = { ['x'] = -1620.81, ['y'] = -3017.53, ['z'] = -75.20, ['perm'] = "isis.permissao" },
		positionTo = { ['x'] = -1573.14, ['y'] = -3014.52, ['z'] = -74.40, ['perm'] = "isis.permissao" }
	},
	["Transportemc"] = { -- Teleporte para a mc
		positionFrom = { ['x'] = 884.63, ['y'] = -2099.07, ['z'] = 35.59, ['perm'] = "motoclub.permissao" }, -- 884.63665771484,-2099.0715332031,35.591960906982
		positionTo = { ['x'] = 884.84, ['y'] = -2097.85, ['z'] = 35.59, ['perm'] = "motoclub.permissao" }  -- 884.84423828125,-2097.8530273438,35.591915130615
	},
	["TransporteTCP"] = { -- Teleporte para a TCP
		positionFrom = { ['x'] = 1371.71, ['y'] = -720.45, ['z'] = 67.22, ['perm'] = "tcp.permissao" }, -- 1371.7154541016,-720.45281982422,67.220581054688
		positionTo = { ['x'] = 1367.45, ['y'] = -720.62, ['z'] = 71.15, ['perm'] = "tcp.permissao" }  -- 1367.4595947266,-720.62799072266,71.155532836914
	},
	["TransporteADA"] = { -- Teleporte para a ADA
		positionFrom = { ['x'] = 382.73, ['y'] = -1834.21, ['z'] = 28.16, ['perm'] = "ada.permissao" }, -- 382.7314453125,-1834.2132568359,28.161310195923
		positionTo = { ['x'] = 378.86, ['y'] = -1836.52, ['z'] = 32.32, ['perm'] = "ada.permissao" }  -- 378.86575317383,-1836.5228271484,32.321422576904
	},
	["TransporteADV"] = { -- Teleporte para a Advogado
		positionFrom = { ['x'] = 154.30, ['y'] = -1103.29, ['z'] = 29.32, ['perm'] = "elevador.permissao" }, -- 154.3046875,-1103.2969970703,29.323261260986
		positionTo = { ['x'] = 154.55, ['y'] = -1109.06, ['z'] = 37.18, ['perm'] = "elevador.permissao" }  -- 154.55435180664,-1109.0673828125,37.183788299561
	}
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(Teleport) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.positionFrom.x,v.positionFrom.y,v.positionFrom.z)
			local distance = GetDistanceBetweenCoords(v.positionFrom.x,v.positionFrom.y,cdz,x,y,z,true)
			local bowz,cdz2 = GetGroundZFor_3dCoord(v.positionTo.x,v.positionTo.y,v.positionTo.z)
			local distance2 = GetDistanceBetweenCoords(v.positionTo.x,v.positionTo.y,cdz2,x,y,z,true)

			if distance <= 10 then
				DrawMarker(1,v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-1,0,0,0,0,0,0,1.0,1.0,1.0,255,255,255,50,0,0,0,0)
				if distance <= 1.5 then
					if IsControlJustPressed(0,38) and func.checkPermission(v.positionTo.perm) then
						SetEntityCoords(PlayerPedId(),v.positionTo.x,v.positionTo.y,v.positionTo.z-0.50)
					end
				end
			end

			if distance2 <= 10 then
				DrawMarker(1,v.positionTo.x,v.positionTo.y,v.positionTo.z-1,0,0,0,0,0,0,1.0,1.0,1.0,255,255,255,50,0,0,0,0)
				if distance2 <= 1.5 then
					if IsControlJustPressed(0,38) and func.checkPermission(v.positionFrom.perm) then
						SetEntityCoords(PlayerPedId(),v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-0.50)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local processo = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local locais = {
--	{ ['id'] = 1, ['x'] = -1873.12, ['y'] = 2100.75, ['z'] = 138.58, ['text'] = "ADUBO", ['perm'] = "roxos.permissao" }, -- trafico 904.04, -3201.62, -97.18
--	{ ['id'] = 2, ['x'] = 1060.37, ['y'] = -3197.21, ['z'] = -39.16, ['text'] = "FERTILIZANTE", ['perm'] = "roxos.permissao" }, -- trafico
--	{ ['id'] = 3, ['x'] = 1035.93, ['y'] = -3204.02, ['z'] = -38.17, ['text'] = "MACONHA", ['perm'] = "roxos.permissao" }, -- trafico 908.17, -3203.21, -97.18

	{ ['id'] = 4, ['x'] = 588.03, ['y'] = -3282.32, ['z'] = 6.06, ['text'] = "CAPSULA", ['perm'] = "motoclub.permissao" }, -- motoclub 588.03564453125,-3282.3208007812,6.069556236267
	{ ['id'] = 5, ['x'] = 591.22, ['y'] = -3282.10, ['z'] = 6.06, ['text'] = "POLVORA", ['perm'] = "motoclub.permissao" }, -- motoclub 591.22344970704,-3282.1098632812,6.0695571899414

	{ ['id'] = 7, ['x'] = 1099.55, ['y'] = -2000.60, ['z'] = 30.33, ['text'] = "CARBONO", ['perm'] = "mafia.permissao" }, -- liberty 1099.55,-2000.60,30.33
	{ ['id'] = 8, ['x'] = 1110.08, ['y'] = -2007.81, ['z'] = 31.04, ['text'] = "FERRO", ['perm'] = "mafia.permissao" }, -- liberty  831.56,2154.96,53.50
	{ ['id'] = 9, ['x'] = 1088.10, ['y'] = -2002.08, ['z'] = 30.88, ['text'] = "AÇO", ['perm'] = "mafia.permissao" }, -- liberty 836.45,2116.69,53.16
	
--	{ ['id'] = 10, ['x'] = 1390.31, ['y'] = 3608.65, ['z'] = 38.94, ['text'] = "ACUCAR", ['perm'] = "amarelos.permissao" }, -- trafico 1390.31,3608.65,38.94
--	{ ['id'] = 11, ['x'] = 1005.66, ['y'] = -3200.33, ['z'] = -38.51, ['text'] = "XAROPE", ['perm'] = "amarelos.permissao" }, -- trafico
--	{ ['id'] = 12, ['x'] = 1011.16, ['y'] = -3196.73, ['z'] = -38.99, ['text'] = "METANFETAMINA", ['perm'] = "amarelos.permissao" }, -- trafico 908.17, -3203.21, -97.18
	
--	{ ['id'] = 13, ['x'] = 363.11, ['y'] = 6481.95, ['z'] = 29.20, ['text'] = "FARINHA", ['perm'] = "verdes.permissao" }, -- trafico 904.04, -3201.62, -97.18
--	{ ['id'] = 14, ['x'] = 1087.47, ['y'] = -3197.04, ['z'] = -38.99, ['text'] = "PÓ", ['perm'] = "verdes.permissao" }, -- trafico
--	{ ['id'] = 15, ['x'] = 1099.60, ['y'] = -3194.29, ['z'] = -38.99, ['text'] = "COCAÍNA", ['perm'] = "verdes.permissao" }, -- trafico 908.17, -3203.21, -97.18
	
--	{ ['id'] = 16, ['x'] = 2670.56, ['y'] = 1600.84, ['z'] = 24.50, ['text'] = "CARBONO", ['perm'] = "motoclub.permissao" }, -- liberty 2670.56, 1600.84, 24.50
--	{ ['id'] = 17, ['x'] = 2658.03, ['y'] = 1609.06, ['z'] = 24.76, ['text'] = "FERRO", ['perm'] = "motoclub.permissao" }, -- liberty 
--	{ ['id'] = 18, ['x'] = 1652.56, ['y'] = 28.69, ['z'] = 172.88, ['text'] = "AÇO", ['perm'] = "motoclub.permissao" }, -- liberty
	
	{ ['id'] = 16, ['x'] = 583.29, ['y'] = -3108.25, ['z'] = 6.06, ['text'] = "MUNIÇÃO de FIVE-SEVEN", ['perm'] = "motoclub.permissao" }, -- 583.29931640625,-3108.2556152344,6.0692615509033	 
	{ ['id'] = 17, ['x'] = 583.41, ['y'] = -3110.24, ['z'] = 6.06, ['text'] = "MUNIÇÃO de SHOTGUN", ['perm'] = "motoclub.permissao" }, -- 583.41546630859,-3110.2468261719,6.069260597229
	{ ['id'] = 18, ['x'] = 583.47, ['y'] = -3112.61, ['z'] = 6.06, ['text'] = "MUNIÇÃO de AK-103", ['perm'] = "motoclub.permissao" }, -- 583.47247314453,-3112.6196289063,6.069260597229
	{ ['id'] = 19, ['x'] = 583.42, ['y'] = -3114.47, ['z'] = 6.06, ['text'] = "MUNIÇÃO de TEC-9", ['perm'] = "motoclub.permissao" }, -- 583.42431640625,-3114.4731445313,6.0692596435547
	{ ['id'] = 20, ['x'] = 585.81, ['y'] = -3118.78, ['z'] = 6.06, ['text'] = "MUNIÇÃO de THOMPSON", ['perm'] = "motoclub.permissao" }, -- 585.81976318359,-3118.7807617188,6.0692577362061
	{ ['id'] = 21, ['x'] = 583.45, ['y'] = -3116.78, ['z'] = 6.06, ['text'] = "MUNIÇÃO de SMG de ASSALTO", ['perm'] = "motoclub.permissao" }, -- 583.45147705078,-3116.7873535156,6.069260597229
	
	{ ['id'] = 22, ['x'] = 2141.11, ['y'] = 4777.00, ['z'] = 40.97, ['text'] = "CARBONO", ['perm'] = "merryweather.permissao" }, -- liberty 2141.11, 4777.00, 40.97
	{ ['id'] = 23, ['x'] = 2141.37, ['y'] = 4789.26, ['z'] = 40.97, ['text'] = "FERRO", ['perm'] = "merryweather.permissao" }, -- liberty
	{ ['id'] = 24, ['x'] = 2135.39, ['y'] = 4772.33, ['z'] = 40.97, ['text'] = "AÇO", ['perm'] = "merryweather.permissao" }, -- liberty
	
	{ ['id'] = 25, ['x'] = -588.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento FiveSeven", ['perm'] = "merryweather.permissao" }, -- -588.97827148438,-1617.541015625,33.010513305664
	{ ['id'] = 26, ['x'] = -590.50, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento Shotgun", ['perm'] = "merryweather.permissao" }, -- -590.5048828125,-1617.6069335938,33.010581970215
	{ ['id'] = 27, ['x'] = -592.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento MTAR-21", ['perm'] = "merryweather.permissao" }, -- -592.97827148438,-1617.541015625,33.010513305664
	{ ['id'] = 28, ['x'] = -593.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento AK-103", ['perm'] = "merryweather.permissao" }, -- -593.97827148438,-1617.541015625,33.010513305664
	{ ['id'] = 29, ['x'] = -595.97, ['y'] = -1616.54, ['z'] = 33.01, ['text'] = "Armamento TEC-9", ['perm'] = "merryweather.permissao" }, -- -588.97827148438,-1617.541015625,33.010513305664
	{ ['id'] = 30, ['x'] = -600.28, ['y'] = -1618.69, ['z'] = 33.01, ['text'] = "Armamento THOMPSON", ['perm'] = "merryweather.permissao" }, -- -600.28472900391,-1618.6944580078,33.010528564453
	
	{ ['id'] = 25, ['x'] = -588.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento FiveSeven", ['perm'] = "mafia.permissao" }, -- -588.97827148438,-1617.541015625,33.010513305664
	{ ['id'] = 26, ['x'] = -590.50, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento Shotgun", ['perm'] = "mafia.permissao" }, -- -590.5048828125,-1617.6069335938,33.010581970215
	{ ['id'] = 27, ['x'] = -592.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento MTAR-21", ['perm'] = "mafia.permissao" }, -- -592.97827148438,-1617.541015625,33.010513305664
	{ ['id'] = 28, ['x'] = -593.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento AK-103", ['perm'] = "mafia.permissao" }, -- -593.97827148438,-1617.541015625,33.010513305664
	{ ['id'] = 29, ['x'] = -595.97, ['y'] = -1616.54, ['z'] = 33.01, ['text'] = "Armamento TEC-9", ['perm'] = "mafia.permissao" }, -- -588.97827148438,-1617.541015625,33.010513305664
	{ ['id'] = 30, ['x'] = -600.28, ['y'] = -1618.69, ['z'] = 33.01, ['text'] = "Armamento THOMPSON", ['perm'] = "mafia.permissao" }, -- -600.28472900391,-1618.6944580078,33.010528564453
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(locais) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			if distance <= 1.5 and not processo then
				drawTxt("PRESSIONE  ~b~E~w~  PARA COLETAR "..v.text,4,0.5,0.93,0.50,255,255,255,180)
				DrawMarker(23, 1099.55,-2000.60,30.33-0.9701, 0, 0, 0, 0, 0, 0, 3.0, 3.0, 3.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
				DrawMarker(23, 831.56,2154.96,53.50-0.9701, 0, 0, 0, 0, 0, 0, 3.0, 3.0, 3.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
				DrawMarker(23, 836.45,2116.69,53.16-0.9701, 0, 0, 0, 0, 0, 0, 3.0, 3.0, 3.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
				if IsControlJustPressed(0,38) and func.checkPermission(v.perm) then
					if func.checkPayment(v.id) then
						processo = true
						TriggerEvent('cancelando',true)
						TriggerEvent("progress",10000,"produzindo")
						TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_PARKING_METER", 0, true)
						SetTimeout(10000,function()
							processo = false
							TriggerEvent('cancelando',false)
							ClearPedTasksImmediately(GetPlayerPed(-1))
						end)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end