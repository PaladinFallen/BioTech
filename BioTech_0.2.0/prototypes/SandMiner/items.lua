data:extend(
{
  {
    type = "item",
    name = "burner-sand-mining-drill",
    icon = "__base__/graphics/icons/burner-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "biotech-equipment",
    order = "a[sand]-1",
    place_result = "burner-sand-mining-drill",
    stack_size = 50
  },
  {
    type = "item",
    name = "electric-sand-mining-drill",
    icon = "__BioTech__/graphics/icons/sand-mining-drill-electric-4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "biotech-equipment",
    order = "a[sand]-2",
    place_result = "electric-sand-mining-drill",
    stack_size = 50
  },
  {
    type = "item",
    name = "biotech-sand",
    icon = "__BioTech__/graphics/icons/sand.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "biotech-products",
    order = "c[glass]-2",
    stack_size = 50
  },  
}
)
