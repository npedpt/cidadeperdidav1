-- Configure the coordinates where the strippers should be placed.
local strippers = {
  {type=5, hash=0x2970a494, x=112.159, y=-1287.326, z=28.459, a=265.902},
  {type=5, hash=0x2970a494, x=108.440, y=-1289.298, z=28.859, a=338.700},
  }

-- Configure the coordinates for the bartenders.
  local bartenders = {
    {type=5, hash=0x780c01bd, x=128.900, y=-1283.211, z=29.273, a=123.98},
  }

function LocalPed()
  return GetPlayerPed(-1)
end

Citizen.CreateThread(function()
  -- Load the ped modal (s_f_y_bartender_01)
  RequestModel(GetHashKey("s_f_y_bartender_01"))
  while not HasModelLoaded(GetHashKey("s_f_y_bartender_01")) do
    Wait(1)
  end

  -- Load the ped modal (mp_f_stripperlite)
  RequestModel(GetHashKey("mp_f_stripperlite"))
  while not HasModelLoaded(GetHashKey("mp_f_stripperlite")) do
    Wait(1)
  end

  -- Load the ped modal (s_m_m_bouncer_01)
  RequestModel(GetHashKey("s_m_m_bouncer_01"))
  while not HasModelLoaded(GetHashKey("s_m_m_bouncer_01")) do
    Wait(1)
  end

  -- Load the animation (testing)
  RequestAnimDict("mini@strip_club@private_dance@part2")
  while not HasAnimDictLoaded("mini@strip_club@private_dance@part2") do
    Wait(1)
  end

  -- Load the bouncer animation (testing)
  RequestAnimDict("mini@strip_club@idles@bouncer@base")
  while not HasAnimDictLoaded("mini@strip_club@idles@bouncer@base") do
    Wait(1)
  end

    -- Spawn the bartender to the coordinates
    bartender =  CreatePed(5, 0x780c01bd, 128.900, -1283.21, 29.273, 123.98, false, true)
    SetBlockingOfNonTemporaryEvents(bartender, true)
    SetPedCombatAttributes(bartender, 292, true)
    SetPedFleeAttributes(bartender, 0, 0)
    SetPedRelationshipGroupHash(bartender, GetHashKey("CIVFEMALE"))

  -- Spawn the strippers to the coordinates
  for _, item in pairs(strippers) do
    stripper =  CreatePed(item.type, item.hash, item.x, item.y, item.z, item.a, false, true)
    SetPedCombatAttributes(stripper, 292, true)
    SetPedFleeAttributes(stripper, 0, 0)
    SetPedDiesWhenInjured(ped, false)
    SetPedRelationshipGroupHash(stripper, GetHashKey("CIVFEMALE"))
    TaskPlayAnim(stripper,"mini@strip_club@private_dance@part2","priv_dance_p2", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
  end
end)


local playerCoords
local playerPed
showStartText = false


function Toxicated()
  RequestAnimSet("move_m@drunk@verydrunk")
  while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
    Citizen.Wait(0)
  end

  TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_DRUG_DEALER", 0, 1)
  DoScreenFadeOut(1000)
  Citizen.Wait(1000)
  ClearPedTasksImmediately(GetPlayerPed(-1))
  SetTimecycleModifier("spectator5")
  SetPedMotionBlur(GetPlayerPed(-1), true)
  SetPedMovementClipset(GetPlayerPed(-1), "move_m@drunk@verydrunk", true)
  SetPedIsDrunk(GetPlayerPed(-1), true)
  DoScreenFadeIn(1000)
  end

  function reality()
    DoScreenFadeOut(1000)
    Citizen.Wait(1000)
    DoScreenFadeIn(1000)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(GetPlayerPed(-1), 0)
    SetPedIsDrunk(GetPlayerPed(-1), false)
    SetPedMotionBlur(GetPlayerPed(-1), false)
    -- Stop the toxication
    Citizen.Trace("Voltando à realidade\n")
end