data:extend(
{
  {
    type = "recipe-category",
    name = "biotech-resource-processing",
  },
  
  {
    type = "item-group",
    name = "biotech-resource-processing",
    order = "m",
    inventory_order = "m-a",
    icon = "__BioTech__/graphics/technologies/biotech.png",
    icon_size = 64,
  },

  -- equipment
  {
    type = "item-subgroup",
    name = "biotech-equipment",
    group = "biotech-resource-processing",
    order = "a[equipment]",
  },  

  -- products
  {
    type = "item-subgroup",
    name = "biotech-products",
    group = "biotech-resource-processing",
    order = "b[products]",
  },    
  
  --sciences
  
  {
    type = "item-subgroup",
    name = "biotech-sciences",
    group = "biotech-resource-processing",
    order = "c[science]",
  },  

  -- rocket
  {
    type = "item-subgroup",
    name = "biotech-rocket",
    group = "biotech-resource-processing",
    order = "d[rocket]",
  },  


  }
 )
