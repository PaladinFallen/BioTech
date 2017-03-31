require "util"


function find_generators(surface)
	if global.biotech_fuel_cell == nil then
		global.biotech_fuel_cell = {}
	for c in surface.get_chunks() do
  for key, biotech_fuel_cell in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="biotech-fuel-cell"})) do

      table.insert(global.biotech_fuel_cell, biotech_fuel_cell)
  end
end
----game.players[1].print("Migrated Diesel Generators")
end
end


local fluidTypeToTemperature =
{
    ["petroleum-gas"] =
    {
        min = 79.6,
        set = 80
    },
    ["light-oil"] =
    {
        min = 99.6,
        set = 100
    },
    ["diesel-fuel"] =
    {
        min = 99.6,
        set = 100
    },
    ["heavy-oil"] =
    {
        min = 59.6,
        set = 60
    },
    ["biotech-sugar-solution"] =
    {
        min = 99.6,
        set = 100
    },
}

function check_generators()
if global.archived_biotech_fuel_cell == nil then
    global.archived_biotech_fuel_cell = {}
end
  if global.biotech_fuel_cell ~= nil then
    for k,gen in pairs(global.biotech_fuel_cell) do
      if gen.valid then
        if gen.fluidbox[1] ~= nil then 
          local pot = gen.fluidbox[1]
          local p = gen.position
          local lookup = fluidTypeToTemperature[pot.type]
          if lookup ~= nil then
          pot["temperature"] = lookup.set
          else pot["temperature"] = 15
          end
          if math.floor(gen.fluidbox[1]["temperature"] + 0.01) == pot["temperature"] then
            table.insert(global.archived_biotech_fuel_cell, gen)
            table.remove(global.biotech_fuel_cell, k)
            --game.players[1].print{"Generator was archived  "..#global.archived_biotech_fuel_cell.."  "..#global.biotech_fuel_cell}
          end
          
          gen.fluidbox[1] = pot

          else
          if global.archived_biotech_fuel_cell == nil then
            global.archived_biotech_fuel_cell = {}
          end
          table.insert(global.archived_biotech_fuel_cell, gen)
          table.remove(global.biotech_fuel_cell, k)
          --game.players[1].print{"empty pot was archived  "..#global.archived_biotech_fuel_cell.."  "..#global.biotech_fuel_cell}
        end

      else table.remove(global.biotech_fuel_cell, k)
      --game.players[1].print{"Generator was removed from index  "..#global.archived_biotech_fuel_cell.."  "..#global.biotech_fuel_cell}
      end
    end
  end
end



function recheck_archived_generators()
  if global.archived_biotech_fuel_cell == nil then
    global.archived_biotech_fuel_cell = {}
  end
  if not global.gen_index then global.gen_index = 1 end
  local gen_index = global.gen_index
  local generators = global.archived_biotech_fuel_cell
  local num_archived = #generators
  local gen = generators[gen_index]
 
  if gen ~= nil then
    if gen.valid then
      local pot = gen.fluidbox[1]
      if pot ~= nil then
        local lookup = fluidTypeToTemperature[pot.type]
        if lookup ~= nil then
          if pot["temperature"] < lookup.min then
            pot["temperature"] = lookup.set
            gen.fluidbox[1] = pot
            table.insert(global.biotech_fuel_cell, gen)
            table.remove(global.archived_biotech_fuel_cell, gen_index)
            gen_index = gen_index - 1
          end
        end
      end
    else table.remove(global.archived_biotech_fuel_cell, gen_index)
      gen_index = gen_index - 1
    end
  if gen_index == num_archived then gen_index = 0 end
    gen_index = gen_index +1
  end
  global.gen_index = gen_index
end