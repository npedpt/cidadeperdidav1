-- define some basic inventory items

local items = {}

local function play_eat(player)
  local seq = {
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp",1},
    {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

-- gen food choices as genfunc
-- idname
-- ftype: eat or drink
-- vary_hunger
-- vary_thirst
local function gen(ftype, vary_hunger, vary_thirst)
  local fgen = function(args)
    local idname = args[1]
    local choices = {}
    local act = "Unknown"
    if ftype == "eat" then act = "Comer" elseif ftype == "drink" then act = "Beber" end
    local name = vRP.getItemName(idname)

    choices[act] = {function(player,choice)
      local user_id = vRP.getUserId(player)
      if user_id ~= nil then
        if vRP.tryGetInventoryItem(user_id,idname,1,false) then
          if vary_hunger ~= 0 then vRP.varyHunger(user_id,vary_hunger) end
          if vary_thirst ~= 0 then vRP.varyThirst(user_id,vary_thirst) end

          if ftype == "drink" then
            vRPclient.notify(player,{"~b~ Bebendo "..name.."."})
            play_drink(player)
          elseif ftype == "eat" then
            vRPclient.notify(player,{"~b~ Comendo "..name.."."})
			--  TriggerClientEvent("pNotify:SendNotification",player,{text = "Comendo <span color='red'>" ..name.. "</span>",type = "info", timeout = (3000),layout = "centerLeft"})
            play_eat(player)
          end

          vRP.closeMenu(player)
        end
      end
    end}

    return choices
  end

  return fgen
end

-- DRINKS --

items["agua"] = {"Garrafa de água","", gen("drink",0,-25),0.5}
items["leite"] = {"Leite","", gen("drink",0,-5),0.5}
items["cafe"] = {"Café","", gen("drink",0,-10),0.2}
items["cha"] = {"Chá","", gen("drink",0,-15),0.2}
items["cha_gelado"] = {"Chá Gelado","", gen("drink",0,-20), 0.5}
items["suco_laranja"] = {"Suco de laranja.","", gen("drink",0,-25),0.5}
items["cocacola"] = {"Coca Cola","", gen("drink",0,-60),0.5}
items["redbull"] = {"RedBull","", gen("drink",0,-40),0.3}
items["limonada"] = {"Limonada","", gen("drink",0,-25),0.3}
items["vodka"] = {"Vodka","", gen("drink",15,-65),0.5}
items["smirnoff"] = {"Smirnoff","", gen("drink",15,-65),0.5}

--FOOD

-- create Breed item
items["melao"] = {"Melão","", gen("eat",-10,0),0.2}
items["maca"] = {"Maça","", gen("eat",-10,0),0.2}
items["banana"] = {"Banana","", gen("eat",-10,0),0.2}
items["pessegos"] = {"Pêssegos","", gen("eat",-10,0),0.2}
items["pao"] = {"Pão","", gen("eat",-10,0),0.5}
items["donut"] = {"Donut","", gen("eat",-15,0),0.2}
items["pizza"] = {"Pizza","", gen("eat",-20,0),1.000}
items["tacos"] = {"Tacos","", gen("eat",-20,0),0.2}
items["sanduiche"] = {"Sanduíche","A tasty snack.", gen("eat",-25,0),0.5}
items["churrasco"] = {"Churrasco","", gen("eat",-25,0),0.85}
items["pdonut"] = {"Premium Donut","", gen("eat",-25,0),0.5}

return items