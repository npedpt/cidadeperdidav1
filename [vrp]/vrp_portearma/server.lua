--[[BASE]]--
Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")
htmlEntities = module("vrp", "lib/htmlEntities")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_portearma")

--[[SQL]]--
vRP._prepare("vRP:arma:license", "ALTER TABLE vrp_users_data ADD vRP:arma:license varchar(50) NOT NULL default 'Required'")
vRP._prepare("vRP:arma:license", "UPDATE vrp_users_data SET vRP:arma:license WHERE id = @id")
vRP._prepare("vRP:arma:license", "SELECT * FROM vrp_users_data WHERE id = @id AND vRP:arma:license = 'Passed'")

-- init
--vRP._prepare("vRP/portearma_column")

--[[Porte de Arma]]--

RegisterServerEvent("vRP:arma:license")
AddEventHandler("vRP:arma:license", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	vRP._prepare("vRP/portearma_search", {id = user_id}, function(rows, affected)
		if #rows > 0 then
		vRPclient.notify(player,{"~b~Já possui um ~p~porte de arma"})
		else
			if vRP.tryPayment({user_id,50000}) then
						vRP._prepare("vRP/portearma_success", {id = user_id})
						vRPclient.notify(player,{"~b~Porte de arma adquirido com sucesso."})
			else
				vRPclient.notify(player,{"~b~Dinheiro insuficiente."})
			end
		end
	end)
end)

--[[POLICE MENU]]--
local choice_asklc = {function(player,choice)
  vRPclient.getNearestPlayer(player,{10},function(nplayer)
    local nuser_id = vRP.getUserId({nplayer})
    if nuser_id ~= nil then
      vRPclient.notify(player,{"~b~Perguntando sobre o porte de arma..."})
      vRP.request({nplayer,"~b~Deseja mostrar seu porte de arma?",15,function(nplayer,ok)
        if ok then
          vRP._prepare("vRP/portearma_search", {id = nuser_id}, function(rows, affected)
            if #rows > 0 then
			  vRPclient.notify(player,{"~b~Porte de Arma: ~p~Tudo Certo"})
			else
			  vRPclient.notify(player,{"~b~Porte de Arma: ~p~Não obtido"})
            end
          end)
        else
          vRPclient.notify(player,{lang.common.request_refused()})
        end
      end})
    else
      vRPclient.notify(player,{lang.common.no_player_near()})
    end
  end)
end, "~b~Verifique o porte de arma do jogador mais próximo."}

vRP.registerMenuBuilder({"police", function(add, data)
  local player = data.player

  local user_id = vRP.getUserId({player})
  if user_id ~= nil then
    local choices = {}

    -- build police menu
    if vRP.hasPermission({user_id,"policia.permissao"}) then
       choices["Checar Porte"] = choice_asklc
    end

    add(choices)
  end
end})
