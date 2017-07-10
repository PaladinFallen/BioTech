-- The bio reactor was copied from the BioTech mod, who copied it from the Bio Industries mod, who copied it from the Tree Mod

data:extend({

-- Bioreactor 2
  {
    type = "recipe",
    name = "biotech-ext-bioreactor-2",
    enabled = "false",
    ingredients = {
      {"biotech-bioreactor",1},
      {"steel-plate", 10},
      {"biotech-test-tube", 10},
      {"biotech-advanced-circuit", 5},
    },
    result = "biotech-ext-bioreactor-2",
  },

-- Bioreactor 3
  {
    type = "recipe",
    name = "biotech-ext-bioreactor-3",
    enabled = "false",
    ingredients = {
      {"biotech-ext-bioreactor-2",1},
      {"biotech-tempered-glass", 10},
      {"biotech-ext-catalytic-surface", 2},
      {"biotech-neural-circuit", 5},
    },
    result = "biotech-ext-bioreactor-3",
  },

-- Sandminer 2
  {
    type = "recipe",
    name = "biotech-ext-sandminer-2",
    energy_required = 2,
    enabled = "false",
    ingredients = {
      {"electric-sand-mining-drill", 1},
      {"electronic-circuit", 5},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
    },
    result = "biotech-ext-sandminer-2",
  },

-- Sandminer 3
  {
    type = "recipe",
    name = "biotech-ext-sandminer-3",
    energy_required = 2,
    enabled = "false",
    ingredients = {
      {"biotech-ext-sandminer-2", 1},
      {"advanced-circuit", 5},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
    },
    result = "biotech-ext-sandminer-3",
  },

-- Catalytic Surface
  {
    type = "recipe",
    name = "biotech-ext-catalytic-surface",
    enabled = false,
    energy_required = 4,
    ingredients = {
      {"biotech-carbon-nanotube", 5},
      {"biotech-graphene", 4},
      {"biotech-diamond-substrate", 1},
      {"biotech-optic-fiber", 5},
    },
    result = "biotech-ext-catalytic-surface",
  },

})