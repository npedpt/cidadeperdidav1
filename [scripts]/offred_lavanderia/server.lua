local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")


RegisterServerEvent('offred_lavanderia:depositarDSujo')
AddEventHandler('offred_lavanderia:depositarDSujo', function(maq)
    local src = source
    local user_id = vRP.getUserId(source)
    local prompt = vRP.prompt(src,"Colocar quanto na máquina?", "5000")
    if tonumber(prompt) < 50001 then
        if vRP.tryGetInventoryItem(user_id,"dinheirosujo",tonumber(prompt),false) then
            vRPclient._playAnim(src,true,{{"mp_common","givetake1_a",1}},false)
            TriggerClientEvent('offred_lavanderia:coloqueiDinheiro', src, maq, tonumber(prompt))
        end
    else
        TriggerClientEvent('chatMessage',src,"ALERTA",{255,70,50},"Limite de até 50.000 dinheiro sujo.")
        TriggerClientEvent('chatMessage',src,"ALERTA",{255,70,50},"Se não tem Permissão vai apenas receber 10% do valor colocado.")
    end
end)

RegisterServerEvent('offred_lavanderia:enviarQuantia')
AddEventHandler('offred_lavanderia:enviarQuantia', function(receber)
    local src = source
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"lavar.dinheiro") then
        local pagamento = receber*0.9
        vRP.giveMoney(user_id,parseInt(pagamento))
        TriggerClientEvent('chatMessage',source,"ALERTA",{255,70,50},"Recebeu €"..pagamento..".")
    else
        local pagamento = receber*0.1
        vRP.giveMoney(user_id,parseInt(pagamento))
        TriggerClientEvent('chatMessage',source,"ALERTA",{255,70,50},"Recebeu €"..pagamento..".")
    end
end)