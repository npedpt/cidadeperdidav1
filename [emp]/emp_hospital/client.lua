local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
emP = Tunnel.getInterface("emp_hospital")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local macas = {
	{ ['x'] = 308.85, ['y'] = -581.63, ['z'] = 43.28, ['x2'] = 307.65, ['y2'] = -581.80, ['z2'] = 44.20, ['h'] = 165.0 },
	{ ['x'] = 312.19, ['y'] = -582.86, ['z'] = 43.28, ['x2'] = 310.91, ['y2'] = -583.00, ['z2'] = 44.20, ['h'] = 165.0 },
	{ ['x'] = 315.56, ['y'] = -584.12, ['z'] = 43.28, ['x2'] = 314.27, ['y2'] = -584.39, ['z2'] = 44.20, ['h'] = 165.0 },
	{ ['x'] = 318.67, ['y'] = -585.39, ['z'] = 43.28, ['x2'] = 317.62, ['y2'] = -585.63, ['z2'] = 44.20, ['h'] = 165.0 },
	{ ['x'] = 321.98, ['y'] = -586.34, ['z'] = 43.28, ['x2'] = 322.57, ['y2'] = -587.52, ['z2'] = 44.21, ['h'] = 165.0 },

	{ ['x'] = 322.95, ['y'] = -582.87, ['z'] = 43.28, ['x2'] = 324.18, ['y2'] = -582.53, ['z2'] = 44.20, ['h'] = 330.0 },
	{ ['x'] = 318.44, ['y'] = -580.72, ['z'] = 43.28, ['x2'] = 319.43, ['y2'] = -580.70, ['z2'] = 44.20, ['h'] = 330.0 },
	{ ['x'] = 314.77, ['y'] = -579.44, ['z'] = 43.28, ['x2'] = 313.94, ['y2'] = -578.66, ['z2'] = 44.20, ['h'] = 330.0 },
	{ ['x'] = 310.25, ['y'] = -577.99, ['z'] = 43.28, ['x2'] = 309.27, ['y2'] = -577.04, ['z2'] = 44.20, ['h'] = 330.0 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
--Cirurgia macas
-----------------------------------------------------------------------------------------------------------------------------------------
local cirurgia = {
	{ ['x'] = 316.10, ['y'] = -566.73, ['z'] = 43.28, ['x2'] = 315.42, ['y2'] = -566.72, ['z2'] = 43.28, ['h'] = 330.0 },
	{ ['x'] = 320.37, ['y'] = -567.95, ['z'] = 44.25, ['x2'] = 321.18, ['y2'] = -568.63, ['z2'] = 44.25, ['h'] = 330.0 },
	{ ['x'] = 326.03, ['y'] = -570.60, ['z'] = 44.25, ['x2'] = 326.66, ['y2'] = -571.21, ['z2'] = 44.25, ['h'] = 330.0 }

	
}

local exames= {
	{ ['x'] = 337.70, ['y'] = -575.47, ['z'] = 44.18, ['x2'] = 336.97, ['y2'] = -575.24, ['z2'] = 44.18, ['h'] = 330.0 },
	{ ['x'] = 347.92, ['y'] = -579.23, ['z'] = 44.18, ['x2'] = 348.56, ['y2'] = -579.93, ['z2'] = 44.18, ['h'] = 330.0 }
	}

-- em breve
local maiscamas= {
	{ ['x'] = 331.44, ['y'] = -570.76, ['z'] = 43.2, ['x2'] = 330.58, ['y2'] = -570.18, ['z2'] = 43.28, ['h'] = 330.0 },
	{ ['x'] = 358.42, ['y'] = -598.48, ['z'] = 43.28, ['x2'] = 357.51, ['y2'] = -598.17, ['z2'] = 43.98, ['h'] = 330.0 }

}	
--em breve

-----------------------------------------------------------------------------------------------------------------------------------------
-- DEITANDO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(macas) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			if distance <= 1.1 then
				drawTxt("~b~E~w~  DEITAR    ~b~G~w~  TRATAMENTO",4,0.5,0.88,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					SetEntityCoords(ped,v.x2,v.y2,v.z2)
					SetEntityHeading(ped,v.h)
					vRP._playAnim(false,{{"amb@world_human_sunbathe@female@back@idle_a","idle_a"}},true)
				end
				if IsControlJustPressed(0,47) then
					if emP.checkServices() then
						TriggerEvent('tratamento-macas')
						SetEntityCoords(ped,v.x2,v.y2,v.z2)
						SetEntityHeading(ped,v.h)
						vRP._playAnim(false,{{"amb@world_human_sunbathe@female@back@idle_a","idle_a"}},true)
					else
						TriggerEvent("Notify","aviso","Existem paramédicos em serviço.")
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--Cirurgia macas 
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(cirurgia) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			if distance <= 1.1 then
				drawTxt("~b~E~w~  DEITAR ",4,0.5,0.88,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					SetEntityCoords(ped,v.x2,v.y2,v.z2)
					SetEntityHeading(ped,v.h)
					vRP._playAnim(false,{{"amb@world_human_sunbathe@female@back@idle_a","idle_a"}},true)
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
--Cirurgia exames 
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(exames) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			if distance <= 1.1 then
				drawTxt("~b~E~w~  DEITAR ",4,0.5,0.88,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) then
					SetEntityCoords(ped,v.x2,v.y2,v.z2)
					SetEntityHeading(ped,v.h)
					vRP._playAnim(false,{{"amb@world_human_sunbathe@female@back@idle_a","idle_a"}},true)
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

RegisterNetEvent('tratamento-macas')
AddEventHandler('tratamento-macas',function()
	TriggerEvent("cancelando",true)
	repeat
		SetEntityHealth(PlayerPedId(),GetEntityHealth(PlayerPedId())+5)
		Citizen.Wait(2000)
	until GetEntityHealth(PlayerPedId()) >= 400 or GetEntityHealth(PlayerPedId()) <= 100
		TriggerEvent("Notify","importante","Tratamento concluido.")
		TriggerEvent("Notify","importante","Pode Levantar agora.")
		TriggerEvent("cancelando",false)
end)