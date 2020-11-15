vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vrp_banheiro")

local hotel = { 
	{nome = "Banheiro", id = 480, cor = 57, x = -253.98420715332, y = -943.26281738281, z = 31.219987869263},
}

local Quartos = {
	[1]  = { ["X"] = -253.98420715332, ["Y"] = -943.26281738281, ["Z"] = 31.219987869263},
}

Citizen.CreateThread(function()
	for _, item in pairs(hotel) do
      	item.blip = AddBlipForCoord(item.x, item.y, item.z)
      	SetBlipSprite(item.blip, item.id)
      	SetBlipColour(item.blip, item.cor)
      	SetBlipAsShortRange(item.blip, true)
      	BeginTextCommandSetBlipName("STRING")
      	AddTextComponentString(item.nome)
      	EndTextCommandSetBlipName(item.blip)
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for i = 1, #Quartos do
			local Coordenadas = GetEntityCoords( GetPlayerPed(-1) )
			local Distancia = GetDistanceBetweenCoords(Coordenadas.x, Coordenadas.y, Coordenadas.z, Quartos[i]["X"], Quartos[i]["Y"], Quartos[i]["Z"], true)
			if Distancia < 30.0 then
				Opacidade = math.floor(255 - (Distancia * 7))
				Texto3D(-253.98420715332,-943.26281738281,31.219987869263, "~w~Pressione ~b~[ E ]  ~w~| Valor pra da uma aliviada: ~b~150 reais", Opacidade)
				DrawMarker(27,-253.98420715332,-943.26281738281,31.219987869263-1.0001, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, 255, 255, 255, Opacidade, 0, 0, 0, 0)
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)
		for i = 1, #Quartos do
			local Coordenadas = GetEntityCoords( GetPlayerPed(-1) )
			local Distancia = GetDistanceBetweenCoords(Coordenadas.x, Coordenadas.y, Coordenadas.z, Quartos[i]["X"], Quartos[i]["Y"], Quartos[i]["Z"], true)
			if Distancia < 2.0 and IsControlPressed(1,38) then
				TriggerServerEvent("vrp_banheiro:pagar", source)
			end
		end
	end
end)

function Texto3D(x,y,z, text, Opacidade)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())    
    if onScreen then
        SetTextScale(0.54, 0.54)
        SetTextFont(4)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, Opacidade)
        SetTextDropshadow(0, 0, 0, 0, Opacidade)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x,_y)
    end
end