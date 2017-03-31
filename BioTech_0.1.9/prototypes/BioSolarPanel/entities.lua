require ("prototypes.BioReactor.pipeConnectors")
require ("util")

data:extend({

  	-- BIO SOLAR PANEL
    
	{
		type = "assembling-machine",
		name = "biotech-biosolarpanel",
		icon = "__BioTech__/graphics/icons/solar-panel-green.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "biotech-biosolarpanel"},
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
			off_when_no_fluid_recipe = false,
		},
		
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		
		
		animation =
		{
			filename = "__BioTech__/graphics/entities/solar-panel/panel-1.png",
			priority = "high",
			width = 104,
			height = 96,
			frame_count = 1,
			line_length = 1,
			animation_speed = 0.4,
			shift = {0.0, -0.1}
		},

		
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
      --emissions = -0.09 / 3.5,
      emissions = -8,
		},
		crafting_categories = {"biotech-mod-biosolarpanel"},
		ingredient_count = 1,
    module_specification =
    {
      module_slots = 1
    },
		crafting_speed = 0.33,
		energy_usage = "0.1kW",
    production = "0.1kW",
    fixed_recipe = "biotech-sugar-solution"

	},

  {
		type = "assembling-machine",
		name = "biotech-biosolarpanel-2",
		icon = "__BioTech__/graphics/icons/panel-2.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "biotech-biosolarpanel-2"},
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
			off_when_no_fluid_recipe = false,
		},
		
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		
		
		animation =
		{
			filename = "__BioTech__/graphics/entities/solar-panel/panel-2.png",
			priority = "high",
			width = 104,
			height = 94,
			frame_count = 1,
			line_length = 1,
			animation_speed = 0.4,
			shift = {0.0, -0.1}
		},

		
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
      --emissions = -0.09 / 3.5,
      emissions = -8,
		},
		crafting_categories = {"biotech-mod-biosolarpanel"},
		ingredient_count = 1,
    module_specification =
    {
      module_slots = 2
    },
		crafting_speed = 1.5,
		energy_usage = "0.1kW",
    production = "0.1kW",
    fixed_recipe = "biotech-sugar-solution"

	},

  	{
		type = "assembling-machine",
		name = "biotech-biosolarpanel-3",
		icon = "__BioTech__/graphics/icons/panel-3.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "biotech-biosolarpanel-3"},
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
			off_when_no_fluid_recipe = false,
		},
		
		collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		
		
		animation =
		{
			filename = "__BioTech__/graphics/entities/solar-panel/panel-3.png",
			priority = "high",
			width = 104,
			height = 96,
			frame_count = 1,
			line_length = 1,
			animation_speed = 0.4,
			shift = {0.0, -0.1}
		},

		
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
      --emissions = -0.09 / 3.5,
      emissions = -8,
		},
		crafting_categories = {"biotech-mod-biosolarpanel"},
		ingredient_count = 1,
    module_specification =
    {
      module_slots = 4
    },
		crafting_speed = 7.5,
		energy_usage = "0.1kW",
    production = "0.1kW",
    fixed_recipe = "biotech-sugar-solution"

	},
  
  {
    type = "solar-panel",
    name = "biotech-biosolarpanel-solarpanel",
		icon = "__BioTech__/graphics/icons/solar-panel-green.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map",},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel"},
    max_health = 100,
    selectable_in_game = false,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__base__/graphics/entity/solar-panel/solar-panel.png",
      priority = "high",
      width = 104,
      height = 96
    },
    production = "0.2kW"
  },

  
  {
    type = "electric-pole",
    name = "biotech-biosolarpanel-pole",
    icon = "__BioTech__/graphics/icons/torchicon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map",},
    minable = {hardness = 0.2, mining_time = 0.5, result = "biotech-biosolarpanel-pole"},
    max_health = 150,
    corpse = "medium-remnants",
    resistances = 
    {
      --{
      --  type = "fire",
      --  percent = 100
      --}
    },
    collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selectable_in_game = false,
    --drawing_box = {{-0.0,-0.0}, {0.0,0.0}},
    maximum_wire_distance = 0,
    supply_area_distance = 0.1,
    pictures =
    {
      filename = "__BioTech__/graphics/entities/blank.png",
      priority = "extra-high",
      width = 12,
      height = 12,
      axially_symmetrical = false,
      direction_count = 4,
      shift = {0, 0}
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.7, 0},
          green = {1.8, 0},
          red = {3.6, 0}
        },
        wire =
        {
          copper = {0, -3.1},
          green = {-0.6,-3.1},
          red = {0.6,-3.1}
        }
      },
      {
        shadow =
        {
          copper = {3.1, 0.2},
          green = {2.3, -0.3},
          red = {3.8, 0.6}
        },
        wire =
        {
          copper = {-0.08, -3.15},
          green = {-0.55, -3.5},
          red = {0.3, -2.87}
        }
      },
      {
        shadow =
        {
          copper = {2.9, 0.06},
          green = {3.0, -0.6},
          red = {3.0, 0.8}
        },
        wire =
        {
          copper = {-0.1, -3.1},
          green = {-0.1, -3.55},
          red = {-0.1, -2.8}
        }
      },
      {
        shadow =
        {
          copper = {3.1, 0.2},
          green = {3.8, -0.3},
          red = {2.35, 0.6}
        },
        wire =
        {
          copper = {0, -3.25},
          green = {0.45, -3.55},
          red = {-0.54, -3.0}
        }
      }
    },
    copper_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    green_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    radius_visualisation_picture =
    {
      filename = "__BioTech__/graphics/entities/blank.png",
      width = 12,
      height = 12
    },
    red_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    wire_shadow_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    }
  },
--[[
  {
    type = "electric-energy-interface",
    name = "biotech-biosolarpanel-accumulator",
    icon = "__base__/graphics/icons/accumulator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "electric-energy-interface"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "10MJ",
      usage_priority = "primary",
      input_flow_limit = "30kW",
      output_flow_limit = "0kW"
    },
    energy_production = "0kW",
    energy_usage = "30kW",
    -- also 'pictures' for 4-way sprite is available, or 'animation' resp. 'animations'
    picture =
    {
      filename = "__base__/graphics/entity/accumulator/accumulator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.6875, -0.203125}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
  ]]--
  
})