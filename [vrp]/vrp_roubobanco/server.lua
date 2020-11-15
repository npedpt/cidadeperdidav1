

-- vRP TUNNEL/PROXY
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

-- RESOURCE TUNNEL/PROXY
vRPrb = {}
Tunnel.bindInterface("vrp_roubobanco",vRPrb)
Proxy.addInterface("vrp_roubobanco",vRPrb)
RBclient = Tunnel.getInterface("vrp_roubobanco")

RegisterServerEvent('vrp_roubobanco:ChamadoPolicial')
AddEventHandler('vrp_roubobanco:ChamadoPolicial', function (message, coords)
  local source = source
  local user_id = vRP.getUserId(source)
  if user_id then
    local player = vRP.getUserSource(user_id)
    vRPclient._notify(player,"~r~A Polícia foi Alertada!")
    vRP.sendServiceAlert(player, "Policia",coords.x,coords.y,coords.z,message)
  end
end)

function vRPrb.copsonline()
	local cops = vRP.getUsersByPermission("policia.permissao")
	return #cops 
end

function vRPrb.permissao()
    local source = source
    local user_id = vRP.getUserId(source)
    return vRP.hasPermission(user_id, "policia.permissao")
end

function vRPrb.getBox(bank)
    local money = Config.BankRobbery[bank].Money.Amount
    if money > 0 then
        if money >= Config.BankRobbery[bank].Money.StartMoney/2 then
            Config.BankRobbery[bank].Money.Box = Config.Boxes.Full
        else
            Config.BankRobbery[bank].Money.Box = Config.Boxes.Half
        end
    else
        Config.BankRobbery[bank].Money.Box = Config.Boxes.Empty
    end
    box = Config.BankRobbery[bank].Money.Box
    return box
end

function vRPrb.getitem(item)
    local source = source
	local user_id = vRP.getUserId(source)
    if vRP.tryGetInventoryItem(user_id,item,1,true) then
		return true
    else
		return false
	end
end

RegisterServerEvent('vrp_roubobanco:deleteDrill')
AddEventHandler('vrp_roubobanco:deleteDrill', function(coords)
    TriggerClientEvent('vrp_roubobanco:deleteDrillCl', -1, coords)
end)

function generateRandomMoney(src, bank)
	local xPlayer = vRP.getUserId(src)
    while true do
        local randommoney = math.random(1500, 2500)
        if Config.BankRobbery[bank].Money.Amount - randommoney >= 0 then
            Config.BankRobbery[bank].Money.Amount = Config.BankRobbery[bank].Money.Amount - randommoney
			vRP.giveInventoryItem(xPlayer,"dinheirosujo",randommoney,true)
            break
        end
        Wait(0)
    end
end

RegisterServerEvent('vrp_roubobanco:takeMoney')
AddEventHandler('vrp_roubobanco:takeMoney', function(bank)
    local src = source
	local xPlayer = vRP.getUserId(src)
    if Config.BankRobbery[bank].Money.Amount - 250 >= 0 then
        generateRandomMoney(src, bank)
    else
        if Config.BankRobbery[bank].Money.Amount > 0 then
			vRP.giveInventoryItem(xPlayer,"dinheirosujo",Config.BankRobbery[bank].Money.Amount,true)

            Config.BankRobbery[bank].Money.Amount = 0
        end
    end
    TriggerClientEvent('vrp_roubobanco:updateMoney', -1, bank, Config.BankRobbery[bank].Money.Amount )
end)

RegisterServerEvent('vrp_roubobanco:printFrozenDoors')
AddEventHandler('vrp_roubobanco:printFrozenDoors', function()
    for i = 1, #Config.BankRobbery do 
        for j = 1, #Config.BankRobbery[i].Doors do
            local d = Config.BankRobbery[i].Doors[j]
        end
    end
end)

RegisterServerEvent('vrp_roubobanco:setDoorFreezeStatus')
AddEventHandler('vrp_roubobanco:setDoorFreezeStatus', function(bank, door, status)
    Config.BankRobbery[bank].Doors[door].Frozen = status
    TriggerClientEvent('vrp_roubobanco:setDoorFreezeStatusCl', -1, bank, door, status)
end)

RegisterServerEvent('vrp_roubobanco:getDoorFreezeStatus')
AddEventHandler('vrp_roubobanco:getDoorFreezeStatus', function(bank, door)
    TriggerClientEvent('vrp_roubobanco:setDoorFreezeStatusCl', source, bank, door, Config.BankRobbery[bank].Doors[door].Frozen)
end)

RegisterServerEvent('vrp_roubobanco:toggleSafe')
AddEventHandler('vrp_roubobanco:toggleSafe', function(bank, safe, toggle)
    Config.BankRobbery[bank].Safes[safe].Looted = toggle
    TriggerClientEvent('vrp_roubobanco:safeLooted', -1, bank, safe, toggle)
end)

RegisterServerEvent('vrp_roubobanco:lootSafe')
AddEventHandler('vrp_roubobanco:lootSafe', function(bank, safe)
    local src = source
	local xPlayer = vRP.getUserId(src)
    local randommoney = math.random(Config.SafeMinimum, Config.SafeMax)
	vRP.giveInventoryItem(xPlayer,"dinheirosujo",randommoney,true)
	vRPclient._notify(src,"Encontrou ~g~ €".. randommoney .."!")
    Config.BankRobbery[bank].Safes[safe].Looted = true
    TriggerClientEvent('vrp_roubobanco:safeLooted', -1, bank, safe, true)
end)

AddEventHandler('playerConnecting', function()
    local src = source
    for i = 1, #Config.BankRobbery do
        Wait(0)
        for j = 1, #Config.BankRobbery[i].Doors do
            Wait(0)
            TriggerClientEvent('vrp_roubobanco:setDoorFreezeStatusCl', src, i, j, Config.BankRobbery[i].Doors[j].Frozen)
        end
    end
    for i = 1, #Config.BankRobbery do
        Wait(0)
        for j = 1, #Config.BankRobbery[i].Safes do
            Wait(0)
            TriggerClientEvent('vrp_roubobanco:setDoorFreezeStatusCl', src, i, j, Config.BankRobbery[i].Safes[j].Looted)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        for i = 1, #Config.BankRobbery do
            Wait(0)
            for j = 1, #Config.BankRobbery[i].Doors do
                Wait(0)
                TriggerClientEvent('vrp_roubobanco:setDoorFreezeStatusCl', -1, i, j, Config.BankRobbery[i].Doors[j].Frozen)
            end
        end
        Wait(30000)
    end
end)