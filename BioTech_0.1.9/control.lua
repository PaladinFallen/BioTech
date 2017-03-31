require ("util")
require ("libs/util_ext")
require ("libs/event")
require ("scripts.fuel-cell")
require ("scripts.wind-turbine")
--require ("scripts.bio-solar-panel")

if not BI_Config then BI_Config = {} end
require ("config")

local max_grow_time = 5000

--------------------------------------------------------------------

script.on_init(function()
	
	if global.bi == nil then
		global.bi = {}	
		global.bi.tree_growing = {}
	end
	
end)

script.on_configuration_changed(function(data)
		
	if global.bi == nil then
		global.bi = {}
		global.bi.tree_growing = {}
	end

  if data ~= nil then
    if data.mod_changes ~= nil and data.mod_changes["BioTech"] ~= nil and data.mod_changes["BioTech"].old_version == nil then
      local s = game.surfaces["nauvis"]
       find_turbines(s)
       find_generators(s)
       --find_biotechsolarpanels(s)
       for k, f in pairs (game.forces) do 
          f.reset_recipes()
       end
     end
  end
  
end)
---------------------------------------------------------------------

script.on_event({defines.events.on_built_entity,}, function(event) On_Built(event) end)
script.on_event({defines.events.on_robot_built_entity,}, function(event) On_Built(event) end)
script.on_event({defines.events.on_preplayer_mined_item,}, function(event) On_Remove(event) end)
script.on_event({defines.events.on_robot_pre_mined,}, function(event) On_Remove(event) end)
script.on_event({defines.events.on_entity_died,}, function(event) On_Death(event) end)
	
---------------------------------------------
function On_Built(event)
    local entity = event.created_entity
   
   
	--- Seedling planted
	if entity.name == "biotech-seedling" then

		table.insert(global.bi.tree_growing, {position = event.created_entity.position, time = event.tick + max_grow_time})
		table.sort(global.bi.tree_growing, function(a, b) return a.time < b.time end)

	end

	if entity.name == "electric-sand-mining-drill" then
		entity.recipe = "biotech-sand"
	end

	if entity.name == "burner-sand-mining-drill" then
		entity.recipe = "biotech-sand"
	end

  --[[
	if entity.name == "biotech-biosolarpanel" or entity.name == "biotech-biosolarpanel-2" or entity.name == "biotech-biosolarpanel-3" then
    
    local biotech_biosolarpanel = event.created_entity
    
    if global.biotech_biosolarpanel == nil then 
      global.biotech_biosolarpanel = {}
    end
    
    table.insert(global.biotech_biosolarpanel, biotech_biosolarpanel)
        
    local s = biotech_biosolarpanel.surface
    local p = biotech_biosolarpanel.position
    local f = game.forces.neutral
    
    s.create_entity{name = "biotech-biosolarpanel-solarpanel", position = {p.x , p.y }, force=f}
    s.create_entity{name = "biotech-biosolarpanel-pole", position = {p.x  , p.y}, force=f}
         
	end
   ]]--
   
    --[[
		if global.biotech_solar_panel == nil then global.biotech_solar_panel = {} end
    if global.archived_biotech_solar_panel == nil then global.archived_biotech_solar_panel = {} end
  	local biotech_solar_panel = event.created_entity
    if global.biotech_solar_panel == nil then global.biotech_solar_panel = {} end
    table.insert(global.archived_biotech_solar_panel, biotech_solar_panel)
    --]]
 
	if event.created_entity.name == "biotech-fuel-cell" then	

		if global.biotech_fuel_cell == nil then global.biotech_fuel_cell = {} end
    if global.archived_biotech_fuel_cell == nil then global.archived_biotech_fuel_cell = {} end
			local biotech_fuel_cell = event.created_entity
						if global.biotech_fuel_cell == nil
						then global.biotech_fuel_cell = {}
						end
					table.insert(global.archived_biotech_fuel_cell, biotech_fuel_cell)

	end

	if event.created_entity.name == "biotech-fuel-cell-2" then	

		if global.biotech_fuel_cell == nil then global.biotech_fuel_cell = {} end
    if global.archived_biotech_fuel_cell == nil then global.archived_biotech_fuel_cell = {} end
			local biotech_fuel_cell = event.created_entity
						if global.biotech_fuel_cell == nil
						then global.biotech_fuel_cell = {}
						end
					table.insert(global.archived_biotech_fuel_cell, biotech_fuel_cell)

	end

	if event.created_entity.name == "biotech-wind-turbine" then	
		if global.wind_turbine == nil then global.wind_turbine = {} end
			local wind_turbine = event.created_entity
					table.insert(global.wind_turbine, wind_turbine)
					wind_turbine.fluidbox[1] = {type="wind", amount=1000, temperature=(wind_turbine.surface.wind_speed*2500*(math.random(990,1010)/1000))}
	end
  
end

---------------------------------------------
function On_Remove(event)
	
	--- Seedling Removed
	if event.entity.name == "biotech-seedling" then
	
		for k, v in pairs(global.bi.tree_growing) do
			if v.position.x == event.entity.position.x and v.position.y == event.entity.position.y then
				table.remove(global.bi.tree_growing, k)
				return
			end
		end

	end

	--- Bio solar panel removed
	if event.entity.name == "biotech-biosolarpanel" or event.entity.name == "biotech-biosolarpanel-2" or event.entity.name == "biotech-biosolarpanel-3" then
	
    local X = event.entity.position.x 
    local Y = event.entity.position.y
	
		local poles = {}		
		poles =	game.players[1].surface.find_entities_filtered{area = {{X -0, Y - 0 }, {X + 0.6  , Y + 0.6 }}, name= "biotech-biosolarpanel-pole"}
		if poles[1] ~= nil then
		poles[1].destroy()	end
		
		local power = {}		
		panels =	game.players[1].surface.find_entities_filtered{area = {{X -0.2, Y - 0.2 }, {X + 0.2  , Y +0.2 }}, name= "biotech-biosolarpanel-solarpanel"}
		if panels[1] ~= nil then
		panels[1].destroy()	end
		
	end
	
end

---------------------------------------------
function On_Death(event)
	
	--- Seedling Removed
	
	if event.entity.name == "biotech-seedling" then
	
		for k, v in pairs(global.bi.tree_growing) do
			if v.position.x == event.entity.position.x and v.position.y == event.entity.position.y then
				table.remove(global.bi.tree_growing, k)
				return
			end
		end

	end

	--- Bio solar panel removed
	if event.entity.name == "biotech-biosolarpanel" then
	
    local X = event.entity.position.x 
    local Y = event.entity.position.y
	
		local poles = {}		
		poles =	game.players[1].surface.find_entities_filtered{area = {{X -0, Y - 0 }, {X + 0.6  , Y + 0.6 }}, name= "biotech-biosolarpanel-pole"}
		if poles[1] ~= nil then
		poles[1].destroy()	end
		
		local power = {}		
		panels =	game.players[1].surface.find_entities_filtered{area = {{X -0.2, Y - 0.2 }, {X + 0.2  , Y +0.2 }}, name= "biotech-biosolarpanel-solarpanel"}
		if panels[1] ~= nil then
		panels[1].destroy()	end
		
	end
	
end

--------------------

---- Growing Tree
Event.register(defines.events.on_tick, function(event)	

	--if game.tick % 60 == 0 and #global.bi.tree_growing > 0 then
		while #global.bi.tree_growing > 0 do
			if event.tick < global.bi.tree_growing[1].time then break end

			Grow_tree(global.bi.tree_growing[1].position)
			table.remove(global.bi.tree_growing, 1)
		end
	--end
  
		check_generators()
    recheck_archived_generators()  
    
    --check_biotechsolarpanels()
    --recheck_archived_biotechsolarpanel()
  
    local t = event.tick
		if (t % 25000) == 0 then
			change_wind_day()
		end

		if (t % 2500) == 0 then
			change_wind_hour()

		end

		if (t % 249) == 0 then
			tick_wind()
		end
		check_turbines()
    
end)


function Grow_tree(pos)
	
	local foundtree = false
	local surface = game.surfaces['nauvis']
	local tree = surface.find_entity("biotech-seedling", pos)
	local currentTilename = surface.get_tile(pos.x, pos.y).name
	writeDebug("The current tile is: " .. currentTilename)
				
	if tree then
		foundtree = true
		tree.destroy()
		
		--- Depending on Terain, choose tree type & Convert seedling into a tree
		local growth_chance = math.random(100)
		if 	currentTilename == "grass" then 
			treetype = "tree-05"
			if foundtree and surface.can_place_entity({ name=treetype, position=pos}) then
				surface.create_entity({ name=treetype, amount=1, position=pos})
			end
					
		elseif currentTilename == "grass-medium" then 
			treetype = "tree-04"
			if growth_chance > 15 and foundtree and surface.can_place_entity({ name=treetype, position=pos}) then
				surface.create_entity({ name=treetype, amount=1, position=pos})
			end
		
		elseif currentTilename == "grass-dry" then 
			treetype = math.random(2)
			treetype = "tree-0".. treetype
			if growth_chance > 25 and foundtree and surface.can_place_entity({ name=treetype, position=pos}) then
				surface.create_entity({ name=treetype, amount=1, position=pos})
			end
		
		elseif currentTilename == "dirt" or currentTilename == "dirt-dark" then 
			treetype = math.random(2)
			treetype = treetype + 5
			treetype = "tree-0".. treetype
			if growth_chance > 85 and foundtree and surface.can_place_entity({ name=treetype, position=pos}) then
				surface.create_entity({ name=treetype, amount=1, position=pos})
			end
		
		else
			treetype = math.random(3)
			if treetype == 1 then
				treetype = "tree-03"
			elseif treetype == 2 then
				treetype = "tree-08"
			else
				treetype = "tree-09"
			end
			if growth_chance > 70 and foundtree and surface.can_place_entity({ name=treetype, position=pos}) then
				surface.create_entity({ name=treetype, amount=1, position=pos})
			end
				
		end		

	end
	
end

--- Utils for grouping
function group_entities(entity_list)
    return group_entities(nil, entity_list)
end

function group_entities(entity_groupid, entity_list)
    return group("entities", entity_groupid, entity_list)
end

function getGroup_entities(entity_groupid)
    return getGroup("entities", entity_groupid)
end

function getGroup_entities_by_member(entity_id)
    return getGroup_byMember("entities", entity_id)
end

function ungroup_entities(entity_groupid)
    return ungroup("entities", entity_groupid)
end

--- DeBug Messages 
function writeDebug(message)
	if BI_Config.QCCode then 
		for i, player in pairs(game.players) do
			player.print(tostring(message))
		end
	end
end

