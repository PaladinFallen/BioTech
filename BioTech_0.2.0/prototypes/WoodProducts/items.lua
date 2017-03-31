data:extend({

	{
		type = "item",
		name = "biotech-big-wooden-pole",
		icon = "__BioTech__/graphics/icons/big-wooden-pole.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy-pipe-distribution",
		order = "a[energy]-b[small-electric-pole]",
		place_result = "biotech-big-wooden-pole",
		stack_size = 50,
		fuel_value = "20MJ"

	},

	{
		type = "item",
		name = "biotech-wooden-fence",
		icon = "__BioTech__/graphics/icons/wooden-fence.png",
		flags = {"goes-to-quickbar"},
		subgroup = "defensive-structure",
		order = "a-a[stone-wall]-a[wooden-fence]",
		place_result = "biotech-wooden-fence",
		fuel_value = "8MJ",
		stack_size = 50
	},

  {
    type = "item",
    name = "biotech-seedling",
    icon = "__BioTech__/graphics/icons/Seedling.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "biotech-products",
    order = "b[plant]-1",
    place_result="biotech-seedling",
    fuel_value = "1MJ",
    stack_size= 50
  },
	
})

