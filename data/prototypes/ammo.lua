data:extend(
{
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
					projectile = "atomic-artillery-projectile",
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
			{"atomic-bomb", 1},
			{"explosive-uranium-cannon-shell", 4},
			{"rocket-control-unit", 3},
			{"radar", 1}
		},
		result = "uranium-artillery-shell"
	}
}
)
