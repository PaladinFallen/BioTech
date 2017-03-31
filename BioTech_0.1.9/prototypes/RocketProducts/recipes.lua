data:extend(
{
  {
    type = "recipe",
    name = "biotech-low-density-structure",
    subgroup = "biotech-rocket",
    order = "a[parts]-3",
    energy_required = 30,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"biotech-aerogel", 10},
      {"biotech-diamond-substrate", 5},
      {"biotech-graphene", 5},
    },
    result= "low-density-structure"
  },
  {
    type = "recipe",
    name = "biotech-rocket-control-unit",
    subgroup = "biotech-rocket",
    order = "a[parts]-4",
    energy_required = 30,
    enabled = false,
    category = "crafting",
    ingredients =
    {
      {"biotech-neural-processor", 1},
      {"biotech-bio-module-1", 1}
    },
    result= "rocket-control-unit"
  },
  {
    type = "recipe",
    name = "biotech-accumulator",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"biotech-tempered-glass", 2},
      {"biotech-capacitance-gel-pack", 5}
    },
    result = "accumulator"
  },
  {
    type = "recipe",
    name = "biotech-bio-module-1",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"biotech-circuit", 5},
      {"biotech-advanced-circuit", 5}
    },
    result = "biotech-bio-module-1"
  },
  
}
)
