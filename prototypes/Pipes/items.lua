data:extend(
{
  {
    type = "item",
    name = "biotech-glass-pipe",
    icon = "__BioTech__/graphics/icons/pipe.png",
    flags = {"goes-to-quickbar"},
    --subgroup = "energy-pipe-distribution",
    --order = "a[pipe]-a[pipe]",
    subgroup = "biotech-equipment",
    order = "e[other]-3",
    place_result = "biotech-glass-pipe",
    stack_size = 50
  },
  {
    type = "item",
    name = "biotech-glass-pipe-to-ground",
    icon = "__BioTech__/graphics/icons/pipe-to-ground.png",
    flags = {"goes-to-quickbar"},
    --subgroup = "energy-pipe-distribution",
    --order = "a[pipe]-b[pipe-to-ground]",
    subgroup = "biotech-equipment",    
    order = "e[other]-4",
    place_result = "biotech-glass-pipe-to-ground",
    stack_size = 50
  },
}
)
