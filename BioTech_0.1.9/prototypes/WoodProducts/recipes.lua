data:extend({

	
	{
		type = "recipe",
		name = "biotech-big-wooden-pole",
		ingredients = 
		{
		  {"wood", 10},    
		  {"small-electric-pole", 2},  
		},
		result = "biotech-big-wooden-pole",
		enabled = true,
	},
	
	
	{
		type = "recipe",
		name = "biotech-wooden-fence",
		
		ingredients =
		{
		  {"wood", 4},
		},
		result = "biotech-wooden-fence",
		enabled = true,
	},

	{
		type = "recipe",
		name = "biotech-seedling",
		enabled = true,
    category = "biotech-mod-bioreactor",
		energy_required = 0.5,
		icon = "__BioTech__/graphics/icons/Seedling.png",
		ingredients = 
    {
      {"wood",1},
      {type="fluid", name="water", amount=4},
      {"biotech-chlorophyll",1},
    },
		results=
		{
		  {type="item", name="biotech-seedling", amount=5},
		},
	},
  
 })

