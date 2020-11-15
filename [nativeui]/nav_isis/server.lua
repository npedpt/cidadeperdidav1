local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
emP = {}
Tunnel.bindInterface("nav_isis",emP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARRAY
-----------------------------------------------------------------------------------------------------------------------------------------
local valores = {
	{ item = "algemas", quantidade = 1, compra = 5000, venda = 2500 },
	{ item = "capuz", quantidade = 1, compra = 2500, venda = 1250 },
	{ item = "lockpick", quantidade = 1, compra = 2000, venda = 1000 },
	{ item = "bombaadesiva", quantidade = 1, compra = 7000, venda = 7000 },
	{ item = "masterpick", quantidade = 1, compra = 6000, venda = 6000 },
	{ item = "pendrive", quantidade = 1, compra = 5000, venda = 5000 },
	{ item = "rebite", quantidade = 1, compra = 250, venda = 125 },
	{ item = "colete", quantidade = 1, compra = 5000, venda = 2500 },
	{ item = "serra", quantidade = 1, compra = 2500, venda = 500 },
	{ item = "furadeira", quantidade = 1, compra = 2500, venda = 500 },
	{ item = "c4", quantidade = 1, compra = 4500, venda = 500 },
	{ item = "placa", quantidade = 1, compra = 1000, venda = 500 }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPRAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("isis-comprar")
AddEventHandler("isis-comprar",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(v.item)*v.quantidade <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.tryGetInventoryItem(user_id,"dinheirosujo",v.compra) then
						vRP.giveInventoryItem(user_id,v.item,parseInt(v.quantidade))
						TriggerClientEvent("Notify",source,"sucesso","Comprou <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> por <b>€"..vRP.format(parseInt(v.compra)).." euros sujos</b>.")
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro sujo insuficiente.")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VENDER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("isis-vender")
AddEventHandler("isis-vender",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.tryGetInventoryItem(user_id,v.item,parseInt(v.quantidade)) then
					vRP.giveInventoryItem(user_id,"dinheirosujo",parseInt(v.venda))
					TriggerClientEvent("Notify",source,"sucesso","Vendeu <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> por <b>€"..vRP.format(parseInt(v.venda)).." euros sujos</b>.")
				else
					TriggerClientEvent("Notify",source,"negado","Não possui <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> em sua mochila.")
				end
			end
		end
	end
end)

function emP.checkPermission()
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,"isis.permissao")
end