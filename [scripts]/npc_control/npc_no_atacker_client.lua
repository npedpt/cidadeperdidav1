local relationshipTypes = {
  "GANG_1",
  "GANG_2",
  "GANG_9",
  "GANG_10",
  "AMBIENT_GANG_LOST",
  "AMBIENT_GANG_MEXICAN",
  "AMBIENT_GANG_FAMILY",
  "AMBIENT_GANG_BALLAS",
  "AMBIENT_GANG_MARABUNTE",
  "AMBIENT_GANG_CULT",
  "AMBIENT_GANG_SALVA",
  "AMBIENT_GANG_WEICHENG",
  "AMBIENT_GANG_HILLBILLY",
  "DEALER",
  "HATES_PLAYER",
  "a_m_y_stlat_01",
  "TAXI",
  "NO_RELATIONSHIP",
  "SPECIAL",
  "MISSION2",
  "MISSION3",
  "MISSION4",
  "MISSION5",
  "MISSION6",
  "MISSION7",
  "MISSION8",
  "ig_rashcosvki",
  "g_m_y_famfor_01",
  "ig_claypain",
  "ig_lazlow",
  "a_m_y_vindouche_01",
  "g_m_m_armgoon_01",
  "g_m_m_armboss_01",
  "s_m_y_ammucity_01",
  "mp_m_shopkeep_01" 
} 

Citizen.CreateThread(function()
    while true do
        Wait(50)
        for _, group in ipairs(relationshipTypes) do
              SetRelationshipBetweenGroups(0, GetHashKey('PLAYER'), GetHashKey(group))
              SetRelationshipBetweenGroups(0, GetHashKey(group), GetHashKey('PLAYER'))
			  SetRelationshipBetweenGroups(0, GetHashKey("AMBIENT_GANG_HILLBILLY"), GetHashKey('PLAYER'))
        end
    end
end)