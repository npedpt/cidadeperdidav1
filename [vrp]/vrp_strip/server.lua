local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_strip")

RegisterServerEvent("vrp_strip:paga")
AddEventHandler("vrp_strip:paga", function()
	local source = source
	local user_id = vRP.getUserId({source})
    local preco = math.random(200,300)
  	if vRP.tryPayment({user_id,preco}) then
  		--TriggerClientEvent("zezao:hospital", source)
  		TriggerClientEvent("chatMessage", source, "[CN]", {255, 0, 0}, "Pagou ^2" .. preco .. " ^7Euros pelo show de strip.")
  	else
  		TriggerClientEvent("chatMessage", source, "[CN]", {255, 0, 0}, "Não possui dinheiro suficiente.")
  	end
end)