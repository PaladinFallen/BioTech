require ("prototypes.BioReactor.pipeConnectors")
require ("util")

-- The bio reactor was copied from the Bio Industries mod, who copied it from the Tree Mod
data:extend({

	{
		type = "assembling-machine",
		name = "biotech-bioreactor",
		icon = "__BioTech__/graphics/icons/wood_reactor_icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "biotech-bioreactor"},
		max_health = 100,
		corpse = "big-remnants",
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }}
			},			
			off_when_no_fluid_recipe = true,
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			--filename = "__BioTech__/graphics/entities/bioreactor/bioreactor.png",
			--priority = "high",
			--width = 128,
			--height = 150,
			--frame_count = 26,
			--line_length = 13,
			--animation_speed = 0.4,
			--shift = {0.55, -0.33}
      
			filename = "__BioTech__/graphics/entities/bioreactor/wood_reactor_sheet.png",
			priority = "high",
			width = 256,
			height = 256,
			frame_count = 25,
			line_length = 5,
			animation_speed = 0.5,
      scale = 0.5,
			shift = {0.5, -0.5}
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		crafting_categories = {"biotech-mod-bioreactor"},
		ingredient_count = 3,
    module_specification =
    {
      module_slots = 1
    },
		crafting_speed = 1,
		energy_usage = "10kW"
	},
  
})