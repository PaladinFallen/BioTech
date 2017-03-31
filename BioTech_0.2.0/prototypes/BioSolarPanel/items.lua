-- The bio reactor was copied from the Bio Industries mod, who copied it from the Tree Mod
data:extend({

  {
    type = "item",
    name = "biotech-biosolarpanel",
    icon = "__BioTech__/graphics/icons/panel-1.png",
    flags = {"goes-to-quickbar"},
    fuel_value = "6MJ",
    subgroup = "biotech-equipment",
    order = "c[solar]",
    place_result = "biotech-biosolarpanel",
    stack_size = 64
  },  

  {
    type = "item",
    name = "biotech-biosolarpanel-2",
    icon = "__BioTech__/graphics/icons/panel-2.png",
    flags = {"goes-to-quickbar"},
    fuel_value = "6MJ",
    subgroup = "biotech-equipment",
    order = "c[solar]",
    place_result = "biotech-biosolarpanel-2",
    stack_size = 64
  },  

  {
    type = "item",
    name = "biotech-biosolarpanel-3",
    icon = "__BioTech__/graphics/icons/panel-3.png",
    flags = {"goes-to-quickbar"},
    fuel_value = "6MJ",
    subgroup = "biotech-equipment",
    order = "c[solar]",
    place_result = "biotech-biosolarpanel-3",
    stack_size = 64
  },  

  {
    type = "fluid",
    name = "biotech-sugar-solution",
    default_temperature = 25,
    max_temperature = 95,
    heat_capacity = "1KJ",
    fuel_value = "6MJ",
    base_color = {r=0.8, g=1.0, b=1.0},
    flow_color = {r=1.00, g=1.0, b=1.0},
    icon = "__BioTech__/graphics/icons/liquid-sugar-solution.png",
    subgroup = "biotech-products",
    order = "a[fluid]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },

    {
    type = "item",
    name = "biotech-biosolarpanel-pole",
    icon = "__BioTech__/graphics/icons/torchicon.png",
    flags = {"goes-to-quickbar", "hidden"},
    subgroup = "biotech-equipment",
    place_result = "biotech-biosolarpanel-pole",
    stack_size = 50
  },
  
    {
    type = "item",
    name = "biotech-biosolarpanel-solarpanel",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"goes-to-quickbar", "hidden"},
    subgroup = "biotech-equipment",
    place_result = "biotech-biosolarpanel-solarpanel",
    stack_size = 50
  },

  
})