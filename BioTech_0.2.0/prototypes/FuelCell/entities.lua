require ("prototypes.BioReactor.pipeConnectors")
require ("util")

data:extend({

  {
    type = "generator",
    name = "biotech-fuel-cell",
    icon = "__BioTech__/graphics/icons/fuel-cell-machine-c.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "biotech-fuel-cell"},
    fast_replaceable_group = "biotech-fuel-cell-machine",
    max_health = 150,
    corpse = "big-remnants",
    collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
    selection_box = {{-1.7, -1.7}, {1.7, 1.7}},    
		effectivity = 100,
		fluid_usage_per_tick = 0.005,
    
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		horizontal_animation =
		{
      filename = "__BioTech__/graphics/entities/fuel-cell/fuel-cell-v.png",
      priority = "high",
      width = 160,
      height = 160,
      frame_count = 1,
      line_length = 1,
		},
		vertical_animation =
		{
      filename = "__BioTech__/graphics/entities/fuel-cell/fuel-cell-h.png",
      priority = "high",
      width = 160,
      height = 160,
      frame_count = 1,
      line_length = 1,
		},			
    
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = { { filename = "__base__/sound/electric-furnace.ogg", volume = 0.7 } },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"crafting-biotech-fuel-cell"},
    source_inventory_size = 1,
    result_inventory_size = 1,
    crafting_speed = 1.0,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
      emissions = 0.05
    },
    energy_usage = "30kW",
    ingredient_count = 1,
    module_specification =
    {
      module_slots = 1
    },
		fluid_box =
		{
			base_area = 1,
      base_level = -1,			
      --pipe_covers = pipecoverspictures(),
      pipe_picture = assembler2pipepicturesBioreactor(),
      pipe_covers = pipecoverspicturesBioreactor(),      
			pipe_connections =
			{
        --{ position = {-2.1, 0} },
        { position = { -2.0, 0.0} },
        { position = {  2.0, 0.0} },
        
			},
		},    
    smoke =
    {
      {
        name = "light-smoke",
        north_position = {-0.5, -1},
        east_position = {-0.5, -1},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60,
      }
    },
     
  },

})
