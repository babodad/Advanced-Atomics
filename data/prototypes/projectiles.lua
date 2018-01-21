data:extend(
{
	--- Uranium Shells
	{
		type = "artillery-projectile",
		name = "uranium-artillery-projectile",
		flags = {"not-on-map"},
		acceleration = 0,
		direction_only = true,
		reveal_map = true,
		map_color = {r=1, g=1, b=0},
		picture =
		{
			filename = "__Advanced-Atomics__/graphics/entity/artillery-projectile/hr-uranium-shell.png",
			width = 64,
			height = 64,
			scale = 0.5,
		},
		shadow =
		{
			filename = "__base__/graphics/entity/artillery-projectile/hr-shell-shadow.png",
			width = 64,
			height = 64,
			scale = 0.5,
		},
		chart_picture =
		{
			filename = "__Advanced-Atomics__/graphics/entity/artillery-projectile/uranium-artillery-shoot-map-visualization.png",
			flags = { "icon" },
			frame_count = 1,
			width = 64,
			height = 64,
			priority = "high",
			scale = 0.25,
		},
		action =
		{
			type = "direct",
			action_delivery =
			{
			type = "instant",
			target_effects =
			{
				{
				type = "nested-result",
				action =
				{
					type = "area",
					radius = 5.0,
					action_delivery =
					{
					type = "instant",
					target_effects =
					{
						{
						type = "damage",
						damage = {amount = 800 , type = "physical"}
						},
						{
						type = "damage",
						damage = {amount = 500 , type = "explosion"}
						},
						{
							type = "destroy-cliffs",
							radius = 5.0,
							explosion = "explosion"
						},
					}
					}
				}
				},
				{
				type = "create-trivial-smoke",
				smoke_name = "artillery-smoke",
				initial_height = 0,
				speed_from_center = 0.05,
				speed_from_center_deviation = 0.005,
				offset_deviation = {{-4, -4}, {4, 4}},
				max_radius = 3.5,
				repeat_count = 4 * 4 * 15
				},
				{
				type = "create-entity",
				entity_name = "big-artillery-explosion"
				},
				{
				type = "show-explosion-on-chart",
				scale = 8/32,
				}
			}
			}
		},
		final_action =
		{
			type = "direct",
			action_delivery =
			{
			type = "instant",
			target_effects =
			{
				{
				type = "create-entity",
				entity_name = "small-scorchmark",
				check_buildability = true
				}
			}
			}
		},
		animation =
		{
			filename = "__base__/graphics/entity/bullet/bullet.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high"
		},
	},

	--- uranium-shotgun
	{
		type = "projectile",
		name = "uranium-shotgun-pellet",
		flags = {"not-on-map"},
		collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
		acceleration = 0,
		direction_only = true,
		action =
		{
		  type = "direct",
		  action_delivery =
		  {
			type = "instant",
			target_effects =
			{
			  type = "damage",
			  damage = {amount = 16, type = "physical"}
			}
		  }
		},
		animation =
		{
		  filename = "__Advanced-Atomics__/graphics/entity/uranium-bullet.png",
		  frame_count = 1,
		  width = 3,
		  height = 50,
		  priority = "high"
		},
	  },



})

data:extend(
{
	--- Plutonium Projectile
	{
		type = "artillery-projectile",
		name = "plutonium-artillery-projectile",
		flags = {"not-on-map"},
		acceleration = 0,
		direction_only = true,
		reveal_map = true,
		map_color = {r=1, g=1, b=0},
		picture =
		{
			filename = "__Advanced-Atomics__/graphics/entity/artillery-projectile/hr-plutonium-shell.png",
			width = 64,
			height = 64,
			scale = 0.5,
		},
		shadow =
		{
			filename = "__base__/graphics/entity/artillery-projectile/hr-shell-shadow.png",
			width = 64,
			height = 64,
			scale = 0.5,
		},
		chart_picture =
		{
			filename = "__Advanced-Atomics__/graphics/entity/artillery-projectile/plutonium-artillery-shoot-map-visualization.png",
			flags = { "icon" },
			frame_count = 1,
			width = 64,
			height = 64,
			priority = "high",
			scale = 0.25,
		},
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						repeat_count = 100,
						type = "create-trivial-smoke",
						smoke_name = "nuclear-smoke",
						offset_deviation = {{-1, -1}, {1, 1}},
						slow_down_factor = 1,
						starting_frame = 3,
						starting_frame_deviation = 5,
						starting_frame_speed = 0,
						starting_frame_speed_deviation = 5,
						speed_from_center = 0.5,
						speed_deviation = 0.2
					},
					{
						type = "create-entity",
						entity_name = "explosion"
					},
					{
						type = "damage",
						damage = {amount = 500, type = "explosion"}
					},
					{
						type = "destroy-cliffs",
						radius = 20,
						explosion = "explosion"
					},
					{
						type = "create-entity",
						entity_name = "small-scorchmark",
						check_buildability = true
					},
					{
						type = "nested-result",
						action =
						{
							type = "area",
							target_entities = false,
							repeat_count = 3000,
							radius = 40,
							action_delivery =
							{
								type = "projectile",
								projectile = "atomic-artillery-wave",
								starting_speed = 0.5
							},
						}
					}
				}
			}
		},
		final_action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "create-entity",
						entity_name = "small-scorchmark",
						check_buildability = true
					}
				}
			}
		},
		animation =
		{
			filename = "__base__/graphics/entity/bullet/bullet.png",
			frame_count = 1,
			width = 3,
			height = 50,
			priority = "high"
		}
	},
	{
		type = "projectile",
		name = "atomic-artillery-wave",
		flags = {"not-on-map"},
		acceleration = 0,
		action =
		{
			{
				type = "direct",
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-entity",
							entity_name = "explosion"
						}
					}
				}
			},
			{
				type = "area",
				radius = 3,
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						type = "damage",
						damage = {amount = 500, type = "explosion"}
					}
				}
			}
		},
		animation =
		{
			filename = "__core__/graphics/empty.png",
			frame_count = 1,
			width = 1,
			height = 1,
			priority = "high"
		},
		shadow =
		{
			filename = "__core__/graphics/empty.png",
			frame_count = 1,
			width = 1,
			height = 1,
			priority = "high"
		}
	},

	  {
    type = "projectile",
    name = "atomic-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
              repeat_count = 100,
              type = "create-trivial-smoke",
              smoke_name = "nuclear-smoke",
              offset_deviation = {{-1, -1}, {1, 1}},
              slow_down_factor = 1,
              starting_frame = 3,
              starting_frame_deviation = 5,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5,
              speed_from_center = 0.5,
              speed_deviation = 0.2
          },
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 400, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              repeat_count = 2000,
              radius = 35,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave",
                starting_speed = 0.5
              }
            }
          }
        }
      }
    },
    light = {intensity = 0.8, size = 15},
    animation =
    {
      filename = "__base__/graphics/entity/rocket/rocket.png",
      frame_count = 8,
      line_length = 8,
      width = 9,
      height = 35,
      shift = {0, 0},
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
      frame_count = 1,
      width = 7,
      height = 24,
      priority = "high",
      shift = {0, 0}
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },
})


