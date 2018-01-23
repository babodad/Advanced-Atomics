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
		order = "d[explosive-cannon-shell]-d[artillery]y",
		stack_size = 1
	},

	{
		type = "recipe",
		name = "uranium-artillery-shell",
		enabled = false,
		energy_required = 30,
		ingredients =
		{
			{"explosive-uranium-cannon-shell", 8},
			{"explosives", 12},
			{"radar", 1}
		},
		result = "uranium-artillery-shell"
	},

	-- Uranium Grenade

	{
    type = "capsule",
    name = "uranium-grenade",
    icon = "__Advanced-Atomics__/graphics/icons/uranium-grenade.png",
    icon_size = 32,
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "grenade",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 20,
        ammo_type =
        {
          category = "grenade",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "uranium-grenade",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "a[grenade]-c[uranium]",
    stack_size = 100
	},
	{
    type = "recipe",
    name = "uranium-grenade",
    enabled = false,
    energy_required = 12,
    ingredients =
    {
			{"grenade", 4},
      {"steel-plate", 3},			
			{"explosives", 4},
			{"uranium-238", 8},
    },
    result = "uranium-grenade"
  },

	--- uranium shotgun
	{
		type = "ammo",
		name = "uranium-shotgun-shell",
		icon = "__Advanced-Atomics__/graphics/icons/uranium-shotgun-shell.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
		  category = "shotgun-shell",
		  target_type = "direction",
		  clamp_position = true,
		  action =
		  {
			{
			  type = "direct",
			  action_delivery =
			  {
				type = "instant",
				source_effects =
				{
				  {
					type = "create-explosion",
					entity_name = "explosion-gunshot"
				  }
				}
			  }
			},
			{
			  type = "direct",
			  repeat_count = 16,
			  action_delivery =
			  {
				type = "projectile",
				projectile = "uranium-shotgun-pellet",
				starting_speed = 1.0,
				direction_deviation = 0.25,
				range_deviation = 0.25,
				max_range = 18,
			  }
			}
		  }
		},
		magazine_size = 10,
		subgroup = "ammo",
		order = "b[shotgun]-c[uranium]",
		stack_size = 200
	  },

	  {
		type = "recipe",
		name = "uranium-shotgun-shell",
		enabled = false,
		energy_required = 10,
		ingredients =
		{
		  {"shotgun-shell", 2},
		  {"uranium-238", 4},
		  {"steel-plate", 2}
		},
		result = "uranium-shotgun-shell"
	  },
})

data:extend(
{
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
		order = "d[explosive-cannon-shell]-d[artillery]z",
		stack_size = 1
	},

	{
		type = "recipe",
		name = "plutonium-artillery-shell",
		enabled = false,
		energy_required = 60,
		ingredients =
		{
			{"plutonium-239", 42},
			{"nuclear-fuel", 10},
			{"rocket-control-unit", 10},
			{"radar", 1}
		},
		result = "plutonium-artillery-shell"
	},

	---Plutonium missile
	{
		type = "ammo",
		name = "plutonium-missile",
		icon = "__Advanced-Atomics__/graphics/icons/plutonium-missile.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		ammo_type =
		{
		  range_modifier = 6,
		  cooldown_modifier = 2,
		  target_type = "position",
		  category = "rocket",
		  action =
		  {
			type = "direct",
			action_delivery =
			{
			  type = "projectile",
			  projectile = "atomic-rocket",
			  starting_speed = 0.08,
			  source_effects =
			  {
				type = "create-entity",
				entity_name = "explosion-hit"
			  }
			}
		  }
		},
		subgroup = "ammo",
		order = "d[rocket-launcher]-c[atomic-bomb]z",
		stack_size = 25
	  },

	  {
		type = "recipe",
		name = "plutonium-missile",
		enabled = false,
		energy_required = 42,
		ingredients =
		{
		  {"processing-unit", 20},
		  {"explosives", 10},
		  {"plutonium-239", 20}
		},
		result = "plutonium-missile"
	  },
	  
})


