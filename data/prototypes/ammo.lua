data:extend(
{
	---Uranium Shell
	{
		type = "ammo",
		name = "uranium-artillery-shell",
		icon = "__Advanced-Atomics__/graphics/icons/uranium-artillery-shell.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
		  category = "artillery-shell",
		  target_type = "position",
		  action =
		  {
			type = "direct",
			action_delivery =
			{
			  type = "artillery",
			  projectile = "uranium-artillery-projectile",
			  starting_speed = 1,
			  direction_deviation = 0,
			  range_deviation = 0,
			  source_effects =
			  {
				type = "create-explosion",
				entity_name = "artillery-cannon-muzzle-flash"
			  },
			}
		  },
		},
		subgroup = "ammo",
		order = "d[explosive-cannon-shell]-d[artillery]",
		stack_size = 1
	},

	{
		type = "recipe",
		name = "uranium-artillery-shell",
		enabled = false,
		energy_required = 120,
		ingredients =
		{
			{"explosive-uranium-cannon-shell", 5},
			{"explosives", 10},
			{"radar", 1}
		},
		result = "uranium-artillery-shell"
	},

	--- Plutonium Shell
	{
		type = "ammo",
		name = "plutonium-artillery-shell",
		icon = "__Advanced-Atomics__/graphics/icons/plutonium-artillery-shell.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
			category = "artillery-shell",
			target_type = "position",
			action =
			{
				type = "direct",
				action_delivery =
				{
					type = "artillery",
					projectile = "plutonium-artillery-projectile",
					starting_speed = 1,
					direction_deviation = 0,
					range_deviation = 0,
					source_effects =
					{
						type = "create-explosion",
						entity_name = "artillery-cannon-muzzle-flash"
					},
				}
			},
		},
		subgroup = "ammo",
		order = "d[explosive-cannon-shell]-d[artillery]",
		stack_size = 1
	},

	{
		type = "recipe",
		name = "plutonium-artillery-shell",
		enabled = false,
		energy_required = 120,
		ingredients =
		{
			{"atomic-bomb", 1},
			{"explosive-uranium-cannon-shell", 4},
			{"rocket-control-unit", 3},
			{"radar", 1}
		},
		result = "plutonium-artillery-shell"
	}

})
