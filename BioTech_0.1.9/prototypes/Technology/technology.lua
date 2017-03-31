data:extend({
  
  {
      type = "technology",
      name = "biotech-carbon-tech-1",
      icon = "__BioTech__/graphics/technologies/carbon-tech.png",
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-circuit"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-science-pack-2"
        },
      },
      --prerequisites = {"electronics"},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-carbon-tech-2",
      icon = "__BioTech__/graphics/technologies/carbon-tech.png",
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-carbon-nanotube"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-graphene"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-diamond-substrate"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-advanced-circuit"
        },
      },
      prerequisites = {"biotech-carbon-tech-1","automation-2"},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-carbon-tech-3",
      icon = "__BioTech__/graphics/technologies/carbon-tech.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "biotech-solid-fuel"
        },      
        {
            type = "unlock-recipe",
            recipe = "biotech-crude-oil"
        },     		
      },
      prerequisites = {"biotech-carbon-tech-2"},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-carbon-tech-4",
      icon = "__BioTech__/graphics/technologies/carbon-tech.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "biotech-interface-card"
        },      
        {
            type = "unlock-recipe",
            recipe = "biotech-electronic-circuit-advanced"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-electronic-processor"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-battery"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-plastic-bar"
        },     		
      },
      prerequisites = {"biotech-carbon-tech-3"},
      unit =
      {
        count = 100,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-photosynthesis-1",
      icon = "__BioTech__/graphics/technologies/panel-1-t.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "biotech-biosolarpanel-2"
        },      
      },
      prerequisites = {"biotech-carbon-tech-2"},
      unit =
      {
        count = 200,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-photosynthesis-2",
      icon = "__BioTech__/graphics/technologies/panel-2-t.png",
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "biotech-biosolarpanel-3"
        },      
      },
      prerequisites = {"biotech-photosynthesis-1","biotech-carbon-tech-4"},
      unit =
      {
        count = 200,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-glass-tech",
      icon = "__BioTech__/graphics/technologies/glass-tech.png",
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-tempered-glass"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-optic-fiber"
        },     		
      },
      prerequisites = {"automation-2"},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 20
      }
  },


  {
      type = "technology",
      name = "biotech-fuel-cell-tech",
      icon = "__BioTech__/graphics/technologies/fuel-cell-tech.png",
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-fuel-cell"
        },
      },
      prerequisites = {"advanced-oil-processing"},
      unit =
      {
        count = 100,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1}
        },
        time = 20
      }
  },
  
  {
      type = "technology",
      name = "biotech-silica-gel-tech",
      icon = "__BioTech__/graphics/technologies/silica-gel-tech.png",
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-silica-gel"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-silica-gel-pack"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-capacitance-gel-pack"
        },
      },
      prerequisites = {"advanced-material-processing"},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-neural-tech",
      icon = "__BioTech__/graphics/technologies/neural-tech.png",
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-neural-circuit"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-neural-gel-pack"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-neural-processor"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-science-pack-3"
        },        
      },
      prerequisites = {"biotech-silica-gel-tech"},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-spatial-tech",
      icon = "__BioTech__/graphics/technologies/spatial-tech.png",
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-aerogel"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-low-density-structure"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-rocket-control-unit"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-accumulator"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-bio-module-1"
        },
      },
      prerequisites = {"rocket-silo"},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1}
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "biotech-accumulators",
      icon = "__base__/graphics/technology/electric-energy-acumulators.png",
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-accumulator"
        },
      },
      prerequisites = {"electric-energy-accumulators-1"},
      unit =
      {
        count = 150,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 30
      }
  },
    
})