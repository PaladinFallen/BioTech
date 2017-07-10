require "util"


function find_biotechsolarpanels(surface)
	if global.biotech_biosolarpanel == nil then
		global.biotech_biosolarpanel = {}
	for c in surface.get_chunks() do
  for key, biotech_biosolarpanel in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="biotech-biosolarpanel"})) do

      table.insert(global.biotech_biosolarpanel, biotech_biosolarpanel)
  end
end

end
end

function check_biotechsolarpanels()

  if global.archived_biotech_biosolarpanel == nil then
      global.archived_biotech_biosolarpanel = {}
  end

  if global.biotech_biosolarpanel ~= nil then
    for k,gen in pairs(global.biotech_biosolarpanel) do
      if gen.valid then

        --gen.power_usage = "33kW"        
        --gen.crafting_speed = ((1.00 - game.surfaces[1].darkness) * 0.30) + 0.03
        --gen.consumption_modifier = 10
        
        panels =	gen.surface.find_entities_filtered{area = {{gen.position.x -0.2, gen.position.y - 0.2 }, {gen.position.x + 0.2  , gen.position.y + 0.2 }}, name= "biotech-biosolarpanel-solarpanel"}
        if panels[1] ~= nil then
          panels[1].power_usage = "33kW"
        end
      
        if global.archived_biotech_biosolarpanel == nil then
          global.archived_biotech_biosolarpanel = {}
        end

        --game.players[1].print{"solar panel  "..#global.biotech_biosolarpanel.."  "..#gen.crafting_speed}
        
        --table.insert(global.archived_biotech_biosolarpanel, gen)
        --table.remove(global.biotech_biosolarpanel, k)

      else 
        table.remove(global.biotech_biosolarpanel, k)
      end
    end
  end
end



function recheck_archived_biotechsolarpanel()
  if global.archived_biotech_biosolarpanel == nil then
    global.archived_biotech_biosolarpanel = {}
  end
  if not global.gen_index then global.gen_index = 1 end
  local gen_index = global.gen_index
  local generators = global.archived_biotech_biosolarpanel
  local num_archived = #generators
  local gen = generators[gen_index]
 
  if gen ~= nil then
    if gen.valid then
    else table.remove(global.archived_biotech_biosolarpanel, gen_index)
      gen_index = gen_index - 1
    end
  if gen_index == num_archived then gen_index = 0 end
    gen_index = gen_index +1
  end
  global.gen_index = gen_index
end