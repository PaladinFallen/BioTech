require ("util")

-- The bio reactor was copied from the BioTech mod, who copied it from the Bio Industries mod, who copied it from the Tree Mod

data:extend({

-- Bioreactor 2
  {
    type = "assembling-machine",
    name = "biotech-ext-bioreactor-2",
    icon = "__BioTech__/graphics/icons/bioreactor-2_icon.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "biotech-ext-bioreactor-2"},
    max_health = 150,
    corpse = "big-remnants",
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },			
      off_when_no_fluid_recipe = true,
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    animation = {
      filename = "__BioTech__/graphics/entities/bioreactor-2_sheet.png",
      priority = "high",
      width = 256,
      height = 256,
      frame_count = 25,
      line_length = 5,
      animation_speed = 0.5,
      scale = 0.5,
      shift = {0.5, -0.5}
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    crafting_categories = {"biotech-mod-bioreactor"},
    ingredient_count = 3,
    crafting_speed = 2,
    energy_usage = "25kW",
    module_specification = { module_slots = 1 },
    fast_replaceable_group = "biotech-mod-bioreactor",
  },

-- Bioreactor 3
  {
    type = "assembling-machine",
    name = "biotech-ext-bioreactor-3",
    icon = "__BioTech__/graphics/icons/bioreactor-3_icon.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "biotech-ext-bioreactor-3"},
    max_health = 200,
    corpse = "big-remnants",
    fluid_boxes = {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },			
      off_when_no_fluid_recipe = true,
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    animation = {
      filename = "__BioTech__/graphics/entities/bioreactor-3_sheet.png",
      priority = "high",
      width = 256,
      height = 256,
      frame_count = 25,
      line_length = 5,
      animation_speed = 0.6,
      scale = 0.5,
      shift = {0.5, -0.5}
    },
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input"
    },
    crafting_categories = {"biotech-mod-bioreactor"},
    ingredient_count = 3,
    crafting_speed = 3.75,
    energy_usage = "35kW",
    module_specification = { module_slots = 3 },
    fast_replaceable_group = "biotech-mod-bioreactor",
  },

-- Sandminer 2
  {
    type = "assembling-machine",
    name = "biotech-ext-sandminer-2",
    icon = "__BioTech__/graphics/icons/sandminer-2_icon.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "biotech-ext-sandminer-2"},
    max_health = 450,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    crafting_categories = {"biotech-mod-sandminer"},
    crafting_speed = 1.5,
    ingredient_count = 1,	
    working_sound = {
      sound = {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animation = {
      filename = "__BioTech__/graphics/entities/sandminer-2_sheet.png",
      priority = "extra-high",
      width = 110,
      height = 114,
      frame_count = 64,
      line_length = 8,
      animation_speed = 0.5,
      shift = {0.2, -0.2},
      run_mode = "forward-then-backward",
    },
    energy_source = {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "200kW",
    mining_power = 4.5,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification = {
      module_slots = 3
    },
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    fixed_recipe = "biotech-sand",
    fast_replaceable_group = "biotech-mod-sandminer",
  },

-- Sandminer 3
  {
    type = "assembling-machine",
    name = "biotech-ext-sandminer-3",
    icon = "__BioTech__/graphics/icons/sandminer-3_icon.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "biotech-ext-sandminer-3"},
    max_health = 600,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    crafting_categories = {"biotech-mod-sandminer"},
    crafting_speed = 2.25,
    ingredient_count = 1,	
    working_sound = {
      sound = {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animation = {
      filename = "__BioTech__/graphics/entities/sandminer-3_sheet.png",
      priority = "extra-high",
      width = 110,
      height = 114,
      frame_count = 64,
      line_length = 8,
      animation_speed = 0.6,
      shift = {0.2, -0.2},
      run_mode = "forward-then-backward",
    },
    energy_source = {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "320kW",
    mining_power = 6,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification = {
      module_slots = 3
    },
    radius_visualisation_picture = {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    fast_replaceable_group = "biotech-mod-sandminer",
    fixed_recipe = "biotech-sand",
  },

})