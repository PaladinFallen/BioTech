data:extend({
	{
    type = "recipe",
    name = "biotech-wind-turbine",
    energy_required = 4,
    enabled = "true",
    order="a[buildings]-b[wind]",
    ingredients =
    {
      {"iron-plate", 8},
      {"iron-gear-wheel", 4},
      {"copper-cable", 8},
      {"iron-stick", 5}
    },
    result = "biotech-wind-turbine"
  },
})