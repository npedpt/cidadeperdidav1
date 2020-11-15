
local cfg = {}

-- define customization parts
local parts = {
  ["Skins"] = 0,
  ["Desbugar Fardas"] = 3,
  ["Pernas"] = 4,
  ["Capacetes/Boinas"] = "p0",
  ["Oculos"] = "p1",
}

-- changes prices (any change to the character parts add amount to the total price)
cfg.drawable_change_price = 20
cfg.texture_change_price = 5


-- skinshops list {parts,x,y,z}
cfg.desbugskins = {
  {parts,449.8049621582,-991.17663574219,30.689603805542}
}

return cfg
