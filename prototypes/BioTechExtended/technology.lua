data:extend({

-- Bioprocessing 1
  {
    type = "technology",
    name = "biotech-ext-bioprocessing-1",
    icon = "__BioTech__/graphics/technologies/bioprocessing_tech.png",
    icon_size = 128,
    effects = {   
      {
        type = "unlock-recipe",
        recipe = "biotech-ext-bioreactor-2"
      },
      {
        type = "unlock-recipe",
        recipe = "biotech-ext-sandminer-2"
      },
    },
    prerequisites = {"biotech-carbon-tech-2"},
    unit = {
      count = 150,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
  },

-- Bioprocessing 2
  {
    type = "technology",
    name = "biotech-ext-bioprocessing-2",
    icon = "__BioTech__/graphics/technologies/bioprocessing_tech.png",
    icon_size = 128,
    effects = {
      {
        type = "unlock-recipe",
        recipe = "biotech-ext-catalytic-surface"
      },     		
      {
        type = "unlock-recipe",
        recipe = "biotech-ext-bioreactor-3"
      },
      {
        type = "unlock-recipe",
        recipe = "biotech-ext-sandminer-3"
      },      
    },
    prerequisites = {"biotech-ext-bioprocessing-1", "biotech-neural-tech", "biotech-glass-tech"},
    unit = {
      count = 150,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
  },    
})