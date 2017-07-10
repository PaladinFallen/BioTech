data:extend(
{
  -- Products from the mining machine
  {
    type = "recipe",
    name = "electric-sand-mining-drill",
    energy_required = 2,
    ingredients =
    {
      {"electronic-circuit", 3},
      {"iron-gear-wheel", 5},
      {"iron-plate", 10}
    },
    result = "electric-sand-mining-drill"
  },
  {
    type = "recipe",
    name = "burner-sand-mining-drill",
    energy_required = 2,
    ingredients =
    {
      {"iron-gear-wheel", 3},
      {"stone-furnace", 1},
      {"iron-plate", 3}
    },
    result = "burner-sand-mining-drill"
  },
  {
    type = "recipe",
    name = "biotech-sand",
    energy_required = 2,
    category = "biotech-mod-sandminer",
    ingredients = { },
    result = "biotech-sand"
  },
  }
)
