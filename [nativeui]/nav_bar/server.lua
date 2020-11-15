local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARRAY
-----------------------------------------------------------------------------------------------------------------------------------------
local valores = {
	{ item = "cerveja", quantidade = 1, compra = 18, venda = 9 },
	{ item = "tequila", quantidade = 1, compra = 30, venda = 15 },
	{ item = "vodka", quantidade = 1, compra = 48, venda = 24 },
	{ item = "whisky", quantidade = 1, compra = 60, venda = 30 },
	{ item = "conhaque", quantidade = 1, compra = 72, venda = 36 },
	{ item = "absinto", quantidade = 1, compra = 90, venda = 45 },
	{ item = "energetico", quantidade = 1, compra = 150, venda = 75 },
	{ item = "agua", quantidade = 1, compra = 80, venda = 40 },
	{ item = "limonada", quantidade = 1, compra = 60, venda = 30 },
	{ item = "refrigerante", quantidade = 1, compra = 40, venda = 20 },
	{ item = "cafe", quantidade = 1, compra = 25, venda = 12 },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPRAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("bar-comprar")
AddEventHandler("bar-comprar",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(v.item)*v.quantidade <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.tryPayment(user_id,parseInt(v.compra)) then
						vRP.giveInventoryItem(user_id,v.item,parseInt(v.quantidade))
						TriggerClientEvent("Notify",source,"sucesso","Comprou <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> por <b>$"..vRP.format(parseInt(v.compra)).." dólares</b>.")
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
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
