-- The bio reactor was copied from the BioTech mod, who copied it from the Bio Industries mod, who copied it from the Tree Mod
data:extend({

-- Bioreactor 2
  {
    type = "item",
    name = "biotech-ext-bioreactor-2",
    icon = "__BioTech__/graphics/icons/bioreactor-2_icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "biotech-equipment",
    order = "d[bio]-2",
    place_result = "biotech-ext-bioreactor-2",
    stack_size = 64,
  },

-- Bioreactor 3
  {
    type = "item",
    name = "biotech-ext-bioreactor-3",
    icon = "__BioTech__/graphics/icons/bioreactor-3_icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "biotech-equipment",
    order = "d[bio]-3",
    place_result = "biotech-ext-bioreactor-3",
    stack_size = 64,
  },

-- Sandminer 2
  {
    type = "item",
    name = "biotech-ext-sandminer-2",
    icon = "__BioTech__/graphics/icons/sandminer-2_icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "biotech-equipment",
    order = "a[sand]-3",
    place_result = "biotech-ext-sandminer-2",
    stack_size = 50,
  },

-- Sandminer 3
  {
    type = "item",
    name = "biotech-ext-sandminer-3",
    icon = "__BioTech__/graphics/icons/sandminer-3_icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "biotech-equipment",
    order = "a[sand]-4",
    place_result = "biotech-ext-sandminer-3",
    stack_size = 50,
  },

-- Catalytic Surface
  {
    type = "item",
    name = "biotech-ext-catalytic-surface",
    icon = "__BioTech__/graphics/icons/catalytic-surface_icon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "biotech-products",
    order = "d[basic]-1",
    stack_size = 100,
  },

})