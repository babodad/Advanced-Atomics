data:extend({
  
	---- UraniumAxe
	{
		type = "mining-tool",
		name = "uranium-axe",
		icon = "__Advanced-Atomics__/graphics/icons/uranium-axe.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		action =
		{
		  type="direct",
		  action_delivery =
		  {
			type = "instant",
			target_effects =
			{
				type = "damage",
				damage = { amount = 10 , type = "physical"}
			}
		  }
		},
		durability = 6000,
		subgroup = "tool",
		order = "a[mining]-b[steel-axe]",
		speed = 6,
		stack_size = 10,
		build_distance_bonus = 10,
		item_drop_distance_bonus = 10,
		item_pickup_distance_bonus = 10,
		loot_pickup_distance_bonus = 10,
		resource_reach_distance_bonus = 10
	},	
  

  {
    type = "recipe",
    name = "uranium-axe",
    enabled = false,
    ingredients =
    {
      {"steel-axe", 1},
      {"uranium-238", 42}
    },
    result = "uranium-axe",
    requester_paste_multiplier = 1
	},  
	
	---- UraniumAxe Mark 2
	{
		type = "mining-tool",
		name = "uranium-axe-mk2",
		icon = "__Advanced-Atomics__/graphics/icons/uranium-axe.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		action =
		{
		  type="direct",
		  action_delivery =
		  {
			type = "instant",
			target_effects =
			{
				type = "damage",
				damage = { amount = 10 , type = "physical"}
			}
		  }
		},
		durability = 101010,
		subgroup = "tool",
		order = "a[mining]-b[steel-axe]",
		speed = 10,
		stack_size = 10,
		build_distance_bonus = 20,
		item_drop_distance_bonus = 20,
		item_pickup_distance_bonus = 20,
		loot_pickup_distance_bonus = 20,
		resource_reach_distance_bonus = 20
	},	
  

  {
    type = "recipe",
    name = "uranium-axe-mk2",
    enabled = false,
    ingredients =
    {
      {"uranium-axe", 1},
      {"uranium-235", 42}
    },
    result = "uranium-axe-mk2",
    requester_paste_multiplier = 1
  },  
  
 })