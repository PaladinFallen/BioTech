data:extend({
  
  {
      type = "technology",
      name = "biotech-carbon-tech-1",
      icon = "__BioTech__/graphics/technologies/carbon-tech.png",
      icon_size = 128,
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
        {
            type = "unlock-recipe",
            recipe = "biotech-test-tube"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-work-bench"
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
      icon_size = 128,
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
        {
            type = "unlock-recipe",
            recipe = "biotech-interface-card"
        },      		
      },
      prerequisites = {"biotech-carbon-tech-1","automation-2","biotech-glass-tech"},
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
      icon_size = 128,
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

        {
            type = "unlock-recipe",
            recipe = "biotech-carbon-filament"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-carbon-gear"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-carbon-fiber"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-carbon-laminated"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-engine-unit"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-assembling-machine-1"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-science-pack-3"
        },		
        {
            type = "unlock-recipe",
            recipe = "biotech-electronic-circuit"
        },		
      },
      prerequisites = {"biotech-carbon-tech-2", "engine","advanced-electronics"},
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
      icon_size = 128,
      effects =
      {
        {
            type = "unlock-recipe",
            recipe = "biotech-electronic-circuit-advanced"
        },     		
        {
            type = "unlock-recipe",
            recipe = "biotech-plastic-bar"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-electric-engine-unit"
        },
        {
            type = "unlock-recipe",
            recipe = "biotech-production-science-pack"
        },		
      },
      prerequisites = {"biotech-carbon-tech-3","plastics","electric-engine"},
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
      name = "biotech-carbon-tech-5",
      icon = "__BioTech__/graphics/technologies/carbon-tech.png",
      icon_size = 128,
      effects =
      {
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
            recipe = "biotech-bio-module-1"
        },        
        {
            type = "unlock-recipe",
            recipe = "biotech-high-tech-science-pack"
        },
      },
      prerequisites = {"biotech-carbon-tech-4","biotech-neural-tech","advanced-electronics-2","battery"},
      unit =
      {
        count = 100,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
          {"production-science-pack", 1},
        },
        time = 20
      }
  },
  
  
  {
      type = "technology",
      name = "biotech-photosynthesis-1",
      icon = "__BioTech__/graphics/technologies/panel-1-t.png",
      icon_size = 128,
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
      icon_size = 128,
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
          {"production-science-pack", 1},
        },
        time = 20
      }
  },
  {
      type = "technology",
      name = "biotech-glass-tech",
      icon = "__BioTech__/graphics/technologies/glass-tech.png",
      icon_size = 128,
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
      icon_size = 128,
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
          {"production-science-pack", 1}
        },
        time = 20
      }
  },
  
  {
      type = "technology",
      name = "biotech-silica-gel-tech",
      icon = "__BioTech__/graphics/technologies/silica-gel-tech.png",
      icon_size = 128,
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
      icon_size = 128,
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
      icon_size = 128,
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
      },
      prerequisites = {"rocket-silo","biotech-silica-gel-tech","biotech-carbon-tech-2","biotech-neural-tech",},
      unit =
      {
        count = 50,
        ingredients =
        {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
          {"production-science-pack", 1},
          {"high-tech-science-pack", 1},
        },
        time = 30
      }
  },
  {
      type = "technology",
      name = "biotech-accumulators",
      icon = "__base__/graphics/technology/electric-energy-acumulators.png",
      icon_size = 128,
      effects =
      {   
        {
            type = "unlock-recipe",
            recipe = "biotech-accumulator"
        },
      },
      prerequisites = {"electric-energy-accumulators-1","biotech-glass-tech","biotech-silica-gel-tech"},
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