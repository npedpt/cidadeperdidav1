function vRP.CarregarObjeto(dict,anim,prop,flag,mao,altura,pos1,pos2,pos3,pos4,pos5,tipo)
    local ped = PlayerPedId()

    RequestModel(GetHashKey(prop))
    while not HasModelLoaded(GetHashKey(prop)) do
        Citizen.Wait(10)
    end

    if altura then
        vRP.CarregarAnim(dict)
        TaskPlayAnim(ped,dict,anim,3.0,3.0,-1,flag,0,0,0,0)
        local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
        object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
        SetEntityCollision(object,false,false)
        if tipo == 1 then
            AttachEntityToEntity(object,ped,GetEntityBoneIndexByName(ped,mao),altura,pos1,pos2,pos3,pos4,pos5,true,false,false,true,1,true)
            FreezeEntityPosition(object,true)
        elseif tipo == 2 then
            AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,mao),altura,pos1,pos2,pos3,pos4,pos5,true,false,false,true,1,true)
            FreezeEntityPosition(object,true)
        end
    else
        vRP.CarregarAnim(dict)
        TaskPlayAnim(ped,dict,anim,3.0,3.0,-1,flag,0,0,0,0)
        local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
        object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
        SetEntityCollision(object,false,false)
        AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,mao),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
    end
    SetEntityAsMissionEntity(object,true,true)
end

function vRP.DeletarObjeto()
	vRP.stopAnim(true)
	TriggerEvent("binoculos")
	if DoesEntityExist(object) then
		DetachEntity(object,false,false)
		TriggerServerEvent("trydeleteobj",ObjToNet(object))
		object = nil
	end
end

function vRP.CarregarAnim(dict)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(10)
	end
end

RegisterNetEvent("syncdeleteobj")
AddEventHandler("syncdeleteobj",function(index)
	Citizen.CreateThread(function()
		if NetworkDoesNetworkIdExist(index) then
			SetEntityAsMissionEntity(index,true,true)
			SetObjectAsNoLongerNeeded(index)
			local v = NetToObj(index)
			if DoesEntityExist(v) then
				DetachEntity(v,false,false)
				PlaceObjectOnGroundProperly(v)
				SetEntityAsNoLongerNeeded(v)
				SetEntityAsMissionEntity(v,true,true)
				DeleteObject(v)
			end
		end
	end)
end)

local cancelando = false
RegisterNetEvent('cancelando')
AddEventHandler('cancelando',function(status)
	cancelando = status
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if cancelando then
			BlockWeaponWheelThisFrame()
			DisableControlAction(0,288,true)
			DisableControlAction(0,289,true)
			DisableControlAction(0,170,true)
			DisableControlAction(0,166,true)
			DisableControlAction(0,187,true)
			DisableControlAction(0,189,true)
			DisableControlAction(0,190,true)
			DisableControlAction(0,188,true)
			DisableControlAction(0,57,true)
			DisableControlAction(0,73,true)
			DisableControlAction(0,167,true)
			DisableControlAction(0,311,true)
			DisableControlAction(0,344,true)
			DisableControlAction(0,29,true)
			DisableControlAction(0,182,true)
			DisableControlAction(0,245,true)
			DisableControlAction(0,257,true)
			DisableControlAction(0,47,true)
			DisableControlAction(0,38,true)
		end
	end
end)