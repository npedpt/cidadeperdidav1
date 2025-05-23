-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
src = {}
Tunnel.bindInterface("vrp_impound",src)
vSERVER = Tunnel.getInterface("vrp_impound")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local serviceX = 433.92
local serviceY = -997.11
local serviceZ = 25.76

--433.92190551758,-997.11413574219,25.762882232666
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRABALHO
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
        local ped = PlayerPedId()
        local x,y,z = table.unpack(GetEntityCoords(ped))
        local distance = Vdist(x,y,z,serviceX,serviceY)
        if distance <= 10 then
            DrawMarker(23,serviceX,serviceY,serviceZ-0.96,0,0,0,0,0,0,10.0,10.0,1.0,255,0,0,50,0,0,0,0)
            if distance <= 5 then
                if IsControlJustPressed(0,38) then
                    vSERVER.checkImpound()
                end
            end
        end
    end
end)
