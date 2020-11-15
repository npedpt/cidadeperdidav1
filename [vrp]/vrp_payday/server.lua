local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_salar")

salarii = {
  {"salariopmerj.permissao", 2000}, 
  {"salariogam.permissao", 2000},
  {"salariorecom.permissao", 2000},
  {"salariobope.permissao", 3000},
  {"salariopfederal.permissao", 3000},
  {"salariobpchq.permissao", 2000},
  {"cmdgeral.permissao", 2100},
  {"prf.permissao", 2100},
  {"pcivil.permissao", 2100},
  {"juiz.permissao", 4000},
  {"advogado.permissao", 1000}, 
  {"mecanico.permissao", 1000},
  {"lossantos.permissao", 1000},
  {"enfermeiro.permissao", 2000},
  {"medico.permissao", 2500},
  {"paramedicosamu.permissao", 3000},   
  {"diretorgeral.permissao", 4000}, 
  {"weazel.permissao", 1500}, 
  {"civil.permissao", 75}, 
  
  {"bronze.permissao", 6000},
  {"prata.permissao", 5000},
  {"ouro.permissao", 7000},
  {"platina.permissao", 8000},
}

RegisterServerEvent('offred:salar')
AddEventHandler('offred:salar', function(salar)
	local user_id = vRP.getUserId(source)
	for i,v in pairs(salarii) do
		permisiune = v[1]
		if vRP.hasPermission(user_id, permisiune)then
			salar = v[2]
			vRP.giveBankMoney(user_id,salar)
			TriggerClientEvent('chatMessage',source,"GOVERNO",{255,70,50},"Seu salário de ^1€"..salar.." ^0 foi depositado em sua conta bancária.")
		end
	end
end)
