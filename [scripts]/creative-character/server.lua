local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

local userlogin = {}
AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
	if first_spawn then
		local data = vRP.getUData(user_id,"vRP:spawnController")
		local sdata = json.decode(data) or 0
		if sdata then
			Citizen.Wait(1000)
			processSpawnController(source,sdata,user_id)
		end
	end
end)

function processSpawnController(source,statusSent,user_id)
	local source = source
	if statusSent == 2 then
		if not userlogin[user_id] then
			userlogin[user_id] = true
			doSpawnPlayer(source,user_id,false)
		else
			doSpawnPlayer(source,user_id,true)
		end
	elseif statusSent == 1 or statusSent == 0 then
		userlogin[user_id] = true
		TriggerClientEvent("creative-character:characterCreate",source)
	end
end

RegisterServerEvent("creative-character:finishedCharacter")
AddEventHandler("creative-character:finishedCharacter",function(characterNome,characterSobrenome,characterAge,currentCharacterMode)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		vRP.setUData(user_id,"currentCharacterMode",json.encode(currentCharacterMode))
		vRP.setUData(user_id,"vRP:spawnController",json.encode(2))
		vRP.execute("vRP/update_user_first_spawn",{ user_id = user_id, firstname = characterSobrenome, name = characterNome, age = characterAge })
		doSpawnPlayer(source,user_id,true)
	end
end)

function doSpawnPlayer(source,user_id,firstspawn)
	TriggerClientEvent("creative-character:normalSpawn",source,firstspawn)
	TriggerEvent("creative-barbershop:init",user_id)
end

Citizen.CreateThread(function()
while true do
  Citizen.Wait(0)
  if Instanced then
    for i=0, 255 do --altere para 32 caso não use onesync
      local otherPlayerPed = GetPlayerPed(i)

      if otherPlayerPed ~= PlayerPedId() then
        SetEntityLocallyInvisible(otherPlayerPed)
        SetEntityNoCollisionEntity(PlayerPedId(), otherPlayerPed, true)
      end
    end
  end
end
end)