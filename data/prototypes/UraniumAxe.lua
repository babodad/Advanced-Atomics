data:extend({
  
	---- UraniumAxe
	{
		type = "mining-tool",
		name = "uranium-axe",
		icon = "__Cheesecake__/graphics/icons/uranium-axe.png",
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
		reach_distance_bonus = 20,
		build_distance_bonus = 20
	},	
  

  {
    type = "recipe",
    name = "uranium-axe",
    enabled = false,
    ingredients =
    {
      {"steel-axe", 1},
      {"uranium-235", 42}
    },
    result = "uranium-axe",
    requester_paste_multiplier = 1
  },  
  
 })
