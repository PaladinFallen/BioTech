--require ("prototypes.BioReactor.pipeConnectors")
require ("util")

-- The bio reactor was copied from the Bio Industries mod, who copied it from the Tree Mod
data:extend({

  {
    type = "recipe",
    name = "biotech-bioreactor",
    enabled = "true",
    ingredients =
    {
      {"wood", 12},
      {"biotech-glass", 12},
    },
    result = "biotech-bioreactor"
  },
    
})