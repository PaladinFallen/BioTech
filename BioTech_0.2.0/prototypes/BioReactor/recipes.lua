require ("prototypes.BioReactor.pipeConnectors")
require ("util")

-- The bio reactor was copied from the Bio Industries mod, who copied it from the Tree Mod
data:extend({

  {
    type = "recipe",
    name = "biotech-bioreactor",
    enabled = "true",
    ingredients =
    {
      {"wood", 10},
      {"iron-plate", 5},
      {"biotech-glass", 10},
    },
    result = "biotech-bioreactor"
  },
    
})