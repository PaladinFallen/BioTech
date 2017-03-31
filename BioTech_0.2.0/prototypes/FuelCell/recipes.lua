data:extend({
  {
    type = "recipe",
    name = "biotech-fuel-cell",
    icon = "__BioTech__/graphics/icons/fuel-cell-machine.png",
    energy_required = 10.0,
    enabled = false,
    ingredients =
    {
      {"assembling-machine-2", 1},
      {"electronic-circuit", 5},
      {"steel-plate", 10}
    },
    result = "biotech-fuel-cell"
  },


  --[[
  {
    type = "recipe",
    name = "biotech-glycosis",
    icon = "__BioTech__/graphics/icons/glycosis.png",
    --category = "crafting-biotech-fuel-cell",
    --order = "f[plastic-bar]-f[filter-air]",
    energy_required = 1,
    enabled = true,
    ingredients = "",
    --{
      --{type="fluid", name="biotech-sugar-solution", amount=1},    
    --}
    result = "biotech-sand",
    --{
     -- {name="biotech-sand"}
      --{type="fluid", name="water", amount=1},
    --}
  },
]]
})
