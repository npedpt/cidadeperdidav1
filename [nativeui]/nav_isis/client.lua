local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
emP = Tunnel.getInterface("nav_isis")
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
	if data == "utilidades-comprar-algemas" then
		TriggerServerEvent("isis-comprar","algemas")
	elseif data == "utilidades-comprar-capuz" then
		TriggerServerEvent("isis-comprar","capuz")
	elseif data == "utilidades-comprar-lockpick" then
		TriggerServerEvent("isis-comprar","lockpick")
	elseif data == "utilidades-comprar-masterpick" then
		TriggerServerEvent("isis-comprar","masterpick")
	elseif data == "utilidades-comprar-pendrive" then
		TriggerServerEvent("isis-comprar","pendrive")
	elseif data == "utilidades-comprar-rebite" then
		TriggerServerEvent("isis-comprar","rebite")
	elseif data == "utilidades-comprar-bomba" then
		TriggerServerEvent("isis-comprar","bombaadesiva")
	elseif data == "utilidades-comprar-placa" then
		TriggerServerEvent("isis-comprar","placa")
	elseif data == "utilidades-comprar-colete" then
		TriggerServerEvent("isis-comprar","colete")
	elseif data == "utilidades-comprar-serra" then
		TriggerServerEvent("isis-comprar","serra")	
	elseif data == "utilidades-comprar-furadeira" then
		TriggerServerEvent("isis-comprar","furadeira")
	elseif data == "utilidades-comprar-c4" then
		TriggerServerEvent("isis-comprar","C4")

	elseif data == "utilidades-vender-algemas" then
		TriggerServerEvent("isis-vender","algemas")
	elseif data == "utilidades-vender-capuz" then
		TriggerServerEvent("isis-vender","capuz")
	elseif data == "utilidades-vender-lockpick" then
		TriggerServerEvent("isis-vender","lockpick")
	elseif data == "utilidades-vender-masterpick" then
		TriggerServerEvent("isis-vender","masterpick")
	elseif data == "utilidades-vender-bomba" then
		TriggerServerEvent("isis-vender","bombaadesiva")
	elseif data == "utilidades-vender-pendrive" then
		TriggerServerEvent("isis-vender","pendrive")
	elseif data == "utilidades-vender-rebite" then
		TriggerServerEvent("isis-vender","rebite")
	elseif data == "utilidades-vender-placa" then
		TriggerServerEvent("isis-vender","placa")
	elseif data == "utilidades-vender-serra" then
		TriggerServerEvent("isis-vender","serra")	
	elseif data == "utilidades-vender-furadeira" then
		TriggerServerEvent("isis-vender","furadeira")
	elseif data == "utilidades-vender-c4" then
		TriggerServerEvent("isis-vender","C4")

	elseif data == "fechar" then
		ToggleActionMenu()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		Citizen.Wait(1)
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),-1620.0435791016,-3010.4365234375,-74.388786315918,true)
		if distance <= 30 then
			DrawMarker(20,-1620.0435791016,-3010.4365234375,-74.388786315918-0.97,0,0,0,0,0,0,1.0,1.0,0.5,240,200,80,100,1,0,0,0)
			if distance <= 1.1 then
				if IsControlJustPressed(0,38) and emP.checkPermission() then
					ToggleActionMenu()
				end
			end
		end
	end
end)