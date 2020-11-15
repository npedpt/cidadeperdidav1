Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP", "vrp_banheiro")

coordenadas = {
  [1] = {["X"] = -275.92166137695, ["Y"] = -950.94012451172, ["Z"] = 86.303611755371}, -- -275.92166137695,-950.94012451172,86.303611755371
  [2] = {["X"] = -275.92166137695, ["Y"] = -950.94012451172, ["Z"] = 86.303611755371}, -- -275.92166137695,-950.94012451172,86.303611755371
}

RegisterServerEvent("vrp_banheiro:pagar")
AddEventHandler("vrp_banheiro:pagar", function()
  local source = source
  local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  if vRP.tryPayment({user_id,0}) then
    local escolha = math.random(1,#coordenadas)
	vRPclient.teleport(source, {coordenadas[escolha]["X"],coordenadas[escolha]["Y"],coordenadas[escolha]["Z"]})
    vRPclient.playAnim(source,{true,{{"missbigscore1switch_trevor_piss", "piss_loop", 1}},true})
	vRPclient.notify(player,{"~b~Você pagou ~p~RS150 ~b~reais pra da uma aliviada."})
	--TriggerClientEvent("pNotify:SendNotification",player,{text = "Você pagou 150 reais pela diária", type = "error", timeout = (3000),layout = "centerLeft"})
    SetTimeout(40000, function()
      local source = vRP.getUserSource({user_id})
      vRPclient.stopAnim(source,{false})
      vRPclient.teleport(source,{ -253.98420715332,-943.26281738281,31.219987869263}) ----  saida
      vRP.varyNecessidades({user_id,-100})
    end)
  else
  vRPclient.notify(player,{"~b~Não tem dinheiro suficiente."})
  --TriggerClientEvent("pNotify:SendNotification",player,{text = "Você não tem dinheiro suficiente", type = "error", timeout = (3000),layout = "centerLeft"})
  end
end)