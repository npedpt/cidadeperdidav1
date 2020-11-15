local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
emP = Tunnel.getInterface("nav_mec")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "utilidades-comprar-nitro" then
		TriggerServerEvent("mecanicos-comprar","nitro")
	elseif data == "utilidades-vender-nitro" then
		TriggerServerEvent("mecanicos-vender","nitro")
	elseif data == "utilidades-comprar-reparo" then
		TriggerServerEvent("mecanicos-comprar","repairkit")
	elseif data == "utilidades-vender-nitro" then
		TriggerServerEvent("mecanicos-reparo","repairkit")
	elseif data == "utilidades-comprar-ferramenta" then
		TriggerServerEvent("mecanicos-ferramenta","ferramenta")

	elseif data == "fechar" then
		ToggleActionMenu()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local marcacoes = {
	{ -197.85159301758,-1340.0600585938,35.648616790772 },
	{ 1021.0873413086,-2290.5668945313,31.31109046936 }
}

Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		Citizen.Wait(1)
		for _,mark in pairs(marcacoes) do
			local x,y,z = table.unpack(mark)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),x,y,z,true)
			if distance <= 2.5 then
			DrawMarker(20,-197.85159301758,-1340.0600585938,35.648616790772-0.97,0,0,0,0,0,0,1.0,1.0,0.5,240,200,80,100,1,0,0,0)
			DrawMarker(20,1021.0873413086,-2290.5668945313,31.31109046936-0.97,0,0,0,0,0,0,1.0,1.0,0.5,240,200,80,100,1,0,0,0)
				if IsControlJustPressed(0,38) and emP.checkPermission() then
					ToggleActionMenu()
				end
			end
		end
	end
end)