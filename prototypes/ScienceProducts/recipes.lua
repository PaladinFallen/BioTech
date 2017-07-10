data:extend(
{
  -- Products from smelting  
  {
    type = "recipe",
    name = "biotech-silica",
    enabled = true,
    category = "smelting",
    energy_required = 3.5,
    ingredients = {{ "biotech-sand", 1}},
    result = "biotech-silica"
  },  
  {
    type = "recipe",
    name = "biotech-glass",
    enabled = true,
    category = "smelting",
    energy_required = 3.5,
    ingredients = {{ "biotech-silica", 1}},
    result = "biotech-glass"
  },

  -- Products from the chemistry plant
  {
    type = "recipe",
    name = "biotech-silica-gel",
    enabled = false,
    category = "chemistry",
    energy_required = 3.5,
    ingredients = 
    {
      { "biotech-silica", 2},
    },
    result = "biotech-silica-gel"
  },
  {
    type = "recipe",
    name = "biotech-silica-gel-pack",
    enabled = false,
    category = "chemistry", 
    energy_required = 3,
    ingredients =
    {
      {"biotech-silica-gel", 2},
    },
    result = "biotech-silica-gel-pack"
  },
  
  -- Products from the bio reactor
  {
    type = "recipe",
    name = "biotech-cellulose",
    enabled = true,
    category = "biotech-mod-bioreactor",
    energy_required = 3.5,
    ingredients = 
    {
      {type="fluid", name="biotech-sugar-solution", amount=2},
    },
    result = "biotech-cellulose"
  },
  {
    type = "recipe",
    name = "biotech-synthetic-wood",
    enabled = true,
    category = "biotech-mod-bioreactor",
	subgroup = "biotech-products",
    energy_required = 3.5,
    ingredients = 
    {
      {"biotech-cellulose",2},
    },
    --result = "wood"
    results = 
    {
      {type="item", name="wood", amount=3},
    }
  },
 {
    type = "recipe",
    name = "biotech-carbon",
    enabled = true,
    category = "biotech-mod-bioreactor",
    energy_required = 3.5,
    ingredients = 
    {
      {"biotech-cellulose",2},
    },
    --result = "biotech-carbon"
    results = 
    {
      {type="item", name="biotech-carbon", amount=3},
    }
    
  },
 {
    type = "recipe",
    name = "biotech-plastic-bar",
    enabled = false,
    category = "chemistry",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=3},
      {type="item", name="biotech-carbon", amount=1}
    },
    results=
    {
      {type="item", name="plastic-bar", amount=2}
    },
    requester_paste_multiplier = 4    
  },
 {
    type = "recipe",
    name = "biotech-chlorophyll",
    enabled = true,
    category = "biotech-mod-bioreactor",
    energy_required = 2,
    ingredients = 
    {
      {type="fluid", name="water", amount=1},
      {"wood",1},
    },
    results = 
    {
      {type="item", name="biotech-chlorophyll", amount=5},
    }
  },
  {
    type = "recipe",
    name = "biotech-crude-oil",
    enabled = false,
    category = "biotech-mod-bioreactor",
    subgroup = "biotech-products",
    order = "a[fluid]-2",    
    energy_required = 3.5,
    ingredients = 
    {
      {type="fluid", name="water", amount=5},
      {"biotech-carbon",5},
    },
   results = 
    {
      {type="fluid", name="crude-oil", amount=100},
    }
  },

  -- Products from the assemblers
  {
    type = "recipe",
    name = "biotech-optic-fiber",
    enabled = false,
    energy_required = 3.5,
    ingredients = 
    {
      { "biotech-silica", 1},
    },
    --result = "biotech-optic-fiber"
   results = 
    {
      {type="item", name="biotech-optic-fiber", amount=3},
    }    
  },
  
  {
    type = "recipe",
    name = "biotech-solid-fuel",
    subgroup = "biotech-products",
    order = "c[basic]-3",        
    enabled = false,
    energy_required = 3.5,
    ingredients = 
    {
      {"biotech-carbon",3},
    },
    result = "solid-fuel"
  },
  {
    type = "recipe",
    name = "biotech-graphene",
    enabled = false,
    energy_required = 3.5,
    ingredients = 
    {
      {"biotech-carbon",2},
    },
    result = "biotech-graphene"
  },

  {
    type = "recipe",
    name = "biotech-diamond-substrate",
    enabled = false,
    energy_required = 3.5,
    ingredients = 
    {
      {"biotech-carbon",2},
    },
    result = "biotech-diamond-substrate"
  },
  {
    type = "recipe",
    name = "biotech-carbon-nanotube",
    enabled = false,
    energy_required = 3.5,
    ingredients = 
    {
      {"biotech-carbon",1},
    },
    result = "biotech-carbon-nanotube"
  },
  
  -- Science Pack 1

  {
    type = "recipe",
    name = "biotech-tempered-glass",
    enabled = false,
    category = "smelting",    
    energy_required = 2,
    ingredients = 
    {
      {"biotech-glass",2},
    },
    result = "biotech-tempered-glass"
  },
  
  {
    type = "recipe",
    name = "biotech-circuit",
    enabled = false,
    energy_required = 3.5,
    ingredients = 
    {
      {"biotech-glass",1},
      {"biotech-carbon",3},
    },
    result = "biotech-circuit"
  },
    
  {
    type = "recipe",
    name = "biotech-neural-circuit",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"biotech-circuit", 1},    
      {"biotech-diamond-substrate", 1},
      {"biotech-optic-fiber", 1}
    },
    result = "biotech-neural-circuit"
  },
  {
    type = "recipe",
    name = "biotech-test-tube",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"biotech-glass", 1},
    },
    result = "biotech-test-tube"
  },
  {
    type = "recipe",
    name = "biotech-work-bench",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      {"biotech-test-tube", 4},
      {"wood", 6}
    },
    result = "biotech-work-bench"
  },

  {
    type = "recipe",
    name = "biotech-advanced-circuit",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"biotech-circuit", 2},
      {"biotech-carbon-nanotube", 2},      
      {"biotech-optic-fiber", 4}
    },
    result = "biotech-advanced-circuit"
  },
  {
    type = "recipe",
    name = "biotech-capacitance-gel-pack",
    enabled = false,
    --category = "chemistry",    
    energy_required = 3,
    ingredients =
    {
      {"biotech-silica-gel-pack", 1},
      {"biotech-graphene", 2},      
      {"biotech-glass", 1}
    },
    result = "biotech-capacitance-gel-pack"
  },
  {
    type = "recipe",
    name = "biotech-neural-gel-pack",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"biotech-silica-gel-pack", 1},
      {"biotech-neural-circuit", 2},      
      {"biotech-optic-fiber", 4}
    },
    result = "biotech-neural-gel-pack"
  },
  {
    type = "recipe",
    name = "biotech-neural-processor",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      {"biotech-neural-gel-pack", 2},
      {"biotech-circuit", 20},      
      {"biotech-glass", 1}
    },
    result = "biotech-neural-processor"
  },
    
  {
    type = "recipe",
    name = "biotech-aerogel",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
      {"biotech-silica-gel", 2},
      {"biotech-carbon", 2},
    },
    result = "biotech-aerogel"
  },
  {
    type = "recipe",
    name = "biotech-accumulator",
    subgroup = "biotech-equipment",
    order = "e[others]-2",
	--order = "b[circuits]-a",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"biotech-tempered-glass", 2},
      {"biotech-capacitance-gel-pack", 5}
    },
    result = "accumulator"
  },

  -- Interface cards
  {
    type = "recipe",
    name = "biotech-interface-card",
    subgroup = "biotech-sciences",
    order = "b[circuits]-7",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
      {"biotech-optic-fiber", 2}
    },
    result = "biotech-interface-card"
  },

  {
    type = "recipe",
    name = "biotech-electronic-circuit",
    subgroup = "biotech-sciences",
    order = "b[circuits]-8",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"biotech-circuit", 1},
      {"biotech-carbon-filament", 2}
    },
    result = "electronic-circuit"
  },
  
  {
    type = "recipe",
    name = "biotech-electronic-circuit-advanced",
    subgroup = "biotech-sciences",
    order = "b[circuits]-9",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"biotech-advanced-circuit", 1},
      {"biotech-interface-card", 1}
    },
    result = "advanced-circuit"
  },

  {
    type = "recipe",
    name = "biotech-electronic-processor",
    subgroup = "biotech-sciences",
    order = "b[circuits]-10",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"biotech-neural-processor", 1},
      {"biotech-interface-card", 1}
    },
    result = "processing-unit"
  },

  {
    type = "recipe",
    name = "biotech-battery",
    --category = "chemistry",
    subgroup = "biotech-sciences",
    order = "b[circuits]-a",
    energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"biotech-capacitance-gel-pack", 1},
      {"biotech-interface-card", 1}
    },
    result = "battery"
  },

  
  
  
  
  {
    type = "recipe",
    name = "biotech-carbon-filament",
    subgroup = "biotech-products",
    order = "b[circuits]-a",
    --energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"biotech-carbon", 1},
    },
    result = "biotech-carbon-filament"
  },
  
  {
    type = "recipe",
    name = "biotech-carbon-gear",
    subgroup = "biotech-products",
    order = "b[circuits]-a",
    --energy_required = 3,
    enabled = false,
    ingredients =
    {
      {"biotech-carbon-filament", 1},
    },
    result = "biotech-carbon-gear"
  },

  {
    type = "recipe",
    name = "biotech-carbon-fiber",
    subgroup = "biotech-products",
    order = "b[circuits]-a",
    --energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"biotech-carbon", 1},
    },
    result = "biotech-carbon-fiber"
  },
  

  {
    type = "recipe",
    name = "biotech-carbon-laminated",
    subgroup = "biotech-products",
    order = "b[circuits]-a",
    --energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"biotech-carbon-fiber", 3},
    },
    result = "biotech-carbon-laminated"
  },

  {
    type = "recipe",
    name = "biotech-engine-unit",
    subgroup = "biotech-products",
    order = "b[circuits]-a",
    --energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"biotech-carbon-laminated", 1},
	  {"biotech-carbon-fiber", 1},
	  {"biotech-glass-pipe", 2},
    },
    result = "engine-unit"
  },

  {
    type = "recipe",
    name = "biotech-electric-engine-unit",
	  category = "crafting-with-fluid",
    subgroup = "biotech-products",
    order = "b[circuits]-a",
    --energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"engine-unit", 1},
	  {"biotech-circuit", 1},
	  {type="fluid", name= "lubricant", amount = 15},
    },
    result = "electric-engine-unit"
  },

  {
    type = "recipe",
    name = "biotech-assembling-machine-1",
	  subgroup = "biotech-equipment",
    order = "b[circuits]-a",
    --energy_required = 5,
    enabled = false,
    ingredients =
    {
      {"biotech-circuit", 3},
	  {"biotech-carbon-gear", 5},
	  {"biotech-carbon-fiber", 9},
    },
    result = "assembling-machine-1"
  },

  {
    type = "recipe",
    name = "biotech-science-pack-1",
    enabled = true,
    subgroup = "biotech-sciences",
    order = "c[packs]-1",    
    energy_required = 5,
    ingredients =
    {
      {"biotech-glass", 1},
      {"biotech-carbon", 1}
    },
    result = "science-pack-1"
  },

  {
    type = "recipe",
    name = "biotech-science-pack-2",
    enabled = false,
    subgroup = "biotech-sciences",
    order = "c[packs]-2",
    energy_required = 6,
    ingredients =
    {
      {"biotech-circuit", 1},
      {"biotech-work-bench", 1}
    },
	result_count = 2,
    result = "science-pack-2"
  },
  
  {
    type = "recipe",
    name = "biotech-science-pack-3",
    enabled = false,
    subgroup = "biotech-sciences",
	order = "c[packs]-3",
    energy_required = 12,
    ingredients =
    {
      {"biotech-advanced-circuit", 1},
      {"engine-unit", 1},
      {"assembling-machine-1", 1},
    },
	result_count = 2,
    result = "science-pack-3"
  },

  {
    type = "recipe",
    name = "biotech-production-science-pack",
    enabled = false,
    subgroup = "biotech-sciences",
    order = "c[packs]-4",        
    energy_required = 14,
    ingredients =
    {
      {"biotech-biosolarpanel", 1},
      {"electric-engine-unit", 1},
      {"biotech-bioreactor", 1},
    },
	result_count = 2,
    result = "production-science-pack"
  },

  {
    type = "recipe",
    name = "biotech-high-tech-science-pack",
    enabled = false,
    subgroup = "biotech-sciences",
    order = "c[packs]-5",        
    energy_required = 14,
    ingredients =
    {
      {"battery", 1},
      {"biotech-neural-processor", 1},
      {"biotech-bio-module-1", 1},
      {"biotech-optic-fiber", 1},
    },
	result_count = 2,
    result = "high-tech-science-pack"
  },
  
}
)
