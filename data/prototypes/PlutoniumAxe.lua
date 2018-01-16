data:extend(
    {
---- Plutonium Axe
	{
		type = "mining-tool",
		name = "plutonium-axe",
		icon = "__Advanced-Atomics__/graphics/icons/plutonium-axe.png",
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
				damage = { amount = 24 , type = "physical"}
			}
		  }
		},
		durability = 101010,
		subgroup = "tool",
		order = "a[mining]-e[plutonium-axe]",---test: 
		speed = 18,
		stack_size = 5,
		build_distance_bonus = 24,
		item_drop_distance_bonus = 24,
		item_pickup_distance_bonus = 24,
		loot_pickup_distance_bonus = 24,
		resource_reach_distance_bonus = 12
	},	
  
  {
    type = "recipe",
    name = "plutonium-axe",
    enabled = false,
    ingredients =
    {
      {"uranium-axe-mk2", 1},
      {"plutonium-239", 42}
    },
    result = "plutonium-axe",
    requester_paste_multiplier = 1
	}
	
})