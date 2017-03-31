require ("prototypes.BioReactor.pipeConnectors")
require ("util")

-- The bio reactor was copied from the Bio Industries mod, who copied it from the Tree Mod
data:extend({

  {
    type = "recipe",
    name = "biotech-biosolarpanel",
    enabled = true,
    ingredients =
    {
      {"wood", 12},
      {"biotech-glass", 10},
      {"biotech-chlorophyll", 10},
    },
    result = "biotech-biosolarpanel"
  },

  {
    type = "recipe",
    name = "biotech-biosolarpanel-2",
    enabled = false,
    ingredients =
    {
      {"wood", 20},
      {"biotech-biosolarpanel", 5},
      {"biotech-advanced-circuit", 10},
      {"biotech-chlorophyll", 35},
    },
    result = "biotech-biosolarpanel-2"
  },

  {
    type = "recipe",
    name = "biotech-biosolarpanel-3",
    enabled = false,
    ingredients =
    {
      {"wood", 30},
      {"biotech-glass", 10},
      {"biotech-biosolarpanel-2", 5},
      {"biotech-neural-processor", 10},
      {"biotech-chlorophyll", 45},
    },
    result = "biotech-biosolarpanel-3"
  },

  {
    type = "recipe",
    name = "biotech-sugar-solution",
    category = "biotech-mod-biosolarpanel",
    energy_required = 3.5,
    ingredients = {{type="fluid", name="water", amount=2},},
    results = {{type="fluid", name="biotech-sugar-solution", amount=1}}
    
  },

})