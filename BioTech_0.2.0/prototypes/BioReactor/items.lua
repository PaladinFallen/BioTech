-- The bio reactor was copied from the Bio Industries mod, who copied it from the Tree Mod
data:extend({

  {
    type = "item",
    name = "biotech-bioreactor",
    icon = "__BioTech__/graphics/icons/wood_reactor_icon.png",
    flags = {"goes-to-quickbar"},
    fuel_value = "6MJ",
    subgroup = "biotech-equipment",
    order = "d[bio]-1",
    place_result = "biotech-bioreactor",
    stack_size = 64
  },  
})