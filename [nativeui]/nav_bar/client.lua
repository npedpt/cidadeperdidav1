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
	if data == "bebidas-comprar-tequila" then
		TriggerServerEvent("departamento-comprar","tequila")
	elseif data == "bebidas-comprar-vodka" then
		TriggerServerEvent("departamento-comprar","vodka")
	elseif data == "bebidas-comprar-whisky" then
		TriggerServerEvent("departamento-comprar","whisky")
	elseif data == "bebidas-comprar-conhaque" then
		TriggerServerEvent("departamento-comprar","conhaque")
	elseif data == "bebidas-comprar-absinto" then
		TriggerServerEvent("departamento-comprar","absinto")
	elseif data == "bebidas-comprar-energetico" then
		TriggerServerEvent("departamento-comprar","energetico")
	elseif data == "bebidas-comprar-agua" then
		TriggerServerEvent("departamento-comprar","agua")
	elseif data == "bebidas-comprar-limonada" then
		TriggerServerEvent("departamento-comprar","limonada")
	elseif data == "bebidas-comprar-refrigerante" then
		TriggerServerEvent("departamento-comprar","refrigerante")
	elseif data == "bebidas-comprar-cafe" then
		TriggerServerEvent("departamento-comprar","cafe")

	elseif data == "bebidas-vender-cerveja" then
		TriggerServerEvent("departamento-vender","cerveja")
	elseif data == "bebidas-vender-tequila" then
		TriggerServerEvent("departamento-vender","tequila")
	elseif data == "bebidas-vender-vodka" then
		TriggerServerEvent("departamento-vender","vodka")
	elseif data == "bebidas-vender-whisky" then
		TriggerServerEvent("departamento-vender","whisky")
	elseif data == "bebidas-vender-conhaque" then
		TriggerServerEvent("departamento-vender","conhaque")
	elseif data == "bebidas-vender-absinto" then
		TriggerServerEvent("departamento-vender","absinto")
	elseif data == "bebidas-vender-energetico" then
		TriggerServerEvent("departamento-vender","energetico")		
	elseif data == "bebidas-vender-agua" then
		TriggerServerEvent("departamento-vender","agua")
	elseif data == "bebidas-vender-limonada" then
		TriggerServerEvent("departamento-vender","limonada")
	elseif data == "bebidas-vender-refrigerante" then
		TriggerServerEvent("departamento-vender","refrigerante")
	elseif data == "bebidas-vender-cafe" then
		TriggerServerEvent("departamento-vender","cafe")

	elseif data == "fechar" then
		ToggleActionMenu()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local marcacoes = {
	{ -1582.7978515625,-3014.2900390625,-76.00511932373 },
	{ 884.74151611328,-2096.4953613281,36.131820678711 },
}

Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		Citizen.Wait(1)
		for _,mark in pairs(marcacoes) do
			local x,y,z = table.unpack(mark)
			local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),x,y,z,true)
			if distance <= 1.2 then
				if IsControlJustPressed(0,38) then
					ToggleActionMenu()
				end
			end
		end
	end
end)