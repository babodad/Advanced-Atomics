data:extend(
{
	-- Uranium flamethrower stream

	{
    type = "stream",
    name = "handheld-uranium-flamethrower-fire-stream",
    flags = {"not-on-map"},
    working_sound_disabled =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    },

    smoke_sources =
    {
      {
        name = "soft-fire-smoke",
        frequency = 0.05, --0.25, 0.05
        position = {0.0, 0}, -- -0.8},
        starting_frame_deviation = 60
      }
    },

    stream_light = {intensity = 1, size = 4 * 0.8},
    ground_light = {intensity = 0.8, size = 4 * 0.8},

    particle_buffer_size = 65,
    particle_spawn_interval = 2,
    particle_spawn_timeout = 2,
    particle_vertical_acceleration = 0.005 * 0.6,
    particle_horizontal_speed = 0.25,
    particle_horizontal_speed_deviation = 0.0035,
    particle_start_alpha = 0.5,
    particle_end_alpha = 1,
    particle_start_scale = 0.2,
    particle_loop_frame_count = 3,
    particle_fade_out_threshold = 0.9,
    particle_loop_exit_threshold = 0.25,
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
              type = "create-fire",
              entity_name = "fire-flame",
              initial_ground_flame_count = 2,
            },
          }
        }
      },
      {
        type = "area",
        radius = 2.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "fire-sticker"
            },
            {
              type = "damage",
              damage = { amount = 4, type = "fire" },
              apply_damage_to_trees = false
            }
          }
        }
      }
    },

    spine_animation =
    {
      filename = "__Advanced-Atomics__/graphics/entity/flamethrower-fire-stream/uranium-flamethrower-fire-stream-spine.png",
      blend_mode = "additive",
      line_length = 4,
      width = 32,
      height = 18,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      animation_speed = 2,
      scale = 0.75,
      shift = {0, 0},
    },

    shadow =
    {
      filename = "__Advanced-Atomics__/graphics/entity/flamethrower-fire-stream/uranium-flamethrower-explosion.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      scale = 0.5,
      shift = {-0.09 * 0.5, 0.395 * 0.5}
    },

    particle =
    {
      filename = "__Advanced-Atomics__/graphics/entity/flamethrower-fire-stream/uranium-flamethrower-explosion.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      frame_count = 32,
      line_length = 8,
      scale = 0.8,
    },
	},

	{
    type = "stream",
    name = "tank-uranium-flamethrower-fire-stream",
    flags = {"not-on-map"},
    working_sound_disabled =
    {
      {
        filename = "__base__/sound/fight/electric-beam.ogg",
        volume = 0.7
      }
    },

    smoke_sources =
    {
      {
        name = "soft-fire-smoke",
        frequency = 0.05, --0.25,
        position = {0.0, 0}, -- -0.8},
        starting_frame_deviation = 60
      }
    },

    stream_light = {intensity = 1, size = 4 * 0.8},
    ground_light = {intensity = 0.8, size = 4 * 0.8},

    particle_buffer_size = 65,
    particle_spawn_interval = 2,
    particle_spawn_timeout = 2,
    particle_vertical_acceleration = 0.005 * 0.3,
    particle_horizontal_speed = 0.45,
    particle_horizontal_speed_deviation = 0.0035,
    particle_start_alpha = 0.5,
    particle_end_alpha = 1,
    particle_start_scale = 0.5,
    particle_loop_frame_count = 3,
    particle_fade_out_threshold = 0.9,
    particle_loop_exit_threshold = 0.25,
    action =
    {
      {
        type = "area",
        radius = 4,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = { amount = 14, type = "fire" },
              apply_damage_to_trees = true
            }
          }
        }
      }
    },

    spine_animation =
    {
      filename = "__Advanced-Atomics__/graphics/entity/flamethrower-fire-stream/uranium-flamethrower-fire-stream-spine.png",
      blend_mode = "additive",
      line_length = 4,
      width = 32,
      height = 18,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      animation_speed = 2,
      scale = 1.40625,
      shift = {0, 0},
    },

    shadow =
    {
      filename = "__Advanced-Atomics__/graphics/entity/flamethrower-fire-stream/uranium-flamethrower-explosion.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      scale = 0.9375,
      shift = {-0.09 * 0.5, 0.395 * 0.5}
    },

    particle =
    {
      filename = "__Advanced-Atomics__/graphics/entity/flamethrower-fire-stream/uranium-flamethrower-explosion.png",
      filename = "__Advanced-Atomics__/graphics/entity/flamethrower-fire-stream/uranium-flamethrower-explosion.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      frame_count = 32,
      line_length = 8,
      scale = 1.5,
    },
  },

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
					radius = 8.0,
					action_delivery =
					{
					type = "instant",
					target_effects =
					{
						{
						type = "damage",
						damage = {amount = 600 , type = "physical"}
						},
						{
						type = "damage",
						damage = {amount = 600 , type = "explosion"}
						},
						{
							type = "create-entity",
							entity_name = "uranium-cannon-shell-explosion"
						},
						{
							type = "destroy-cliffs",
							radius = 6.0,
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

	-- Uranium grenade

	{
		type = "projectile",
		name = "uranium-grenade",
		flags = {"not-on-map"},
		acceleration = 0.005,
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
				  entity_name = "uranium-cannon-explosion"
				},
				{
				  type = "create-entity",
				  entity_name = "small-scorchmark",
				  check_buildability = true
				}
			  }
			}
		  },
		  {
			type = "area",
			radius = 8,
			action_delivery =
			{
			  type = "instant",
			  target_effects =
			  {
				{
				type = "damage",
				damage = {amount = 80, type = "explosion"}
				},
				{
				type = "create-entity",
				entity_name = "uranium-cannon-shell-explosion"
				}
			  }
			}
		  }
		},
		light = {intensity = 0.8, size = 6},
		animation =
		{
		  filename = "__Advanced-Atomics__/graphics/entity/grenade.png",
		  frame_count = 1,
		  width = 24,
		  height = 24,
		  priority = "high"
		},
		shadow =
		{
		  filename = "__base__/graphics/entity/grenade/grenade-shadow.png",
		  frame_count = 1,
		  width = 24,
		  height = 24,
		  priority = "high"
		}
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
	
	-- Nukebot Capsule

	{
		type = "projectile",
		name = "nukebot-capsule",
		flags = {"not-on-map"},
		acceleration = 0.004,
		action =
		{
		  type = "direct",
		  action_delivery =
		  {
			type = "instant",
			target_effects =
			{
			  type = "create-entity",
			  show_in_tooltip = true,
			  entity_name = "nukebot",
			  -- offsets = {{-0.7, -0.7},{-0.7, 0.7},{0.7, -0.7},{0.7, 0.7},{0, 0}}
			  offsets = {{-2, -2},{2, 2}}
			}
		  }
		},
		light = {intensity = 0.5, size = 4},
		enable_drawing_with_mask = true,
		animation = {
		  layers = {
			{
			  filename = "__Advanced-Atomics__/graphics/entity/nukebot-capsule.png",
			  flags = { "no-crop" },
			  frame_count = 1,
			  width = 48,
			  height = 36,
			  priority = "high"
			},
			{
			  filename = "__Advanced-Atomics__/graphics/entity/nukebot-capsule-mask.png",
			  flags = { "no-crop" },
			  frame_count = 1,
			  width = 48,
			  height = 36,
			  priority = "high",
			  apply_runtime_tint = true,
			},
		  },
		},
		shadow =
		{
		  filename = "__Advanced-Atomics__/graphics/entity/nukebot-capsule-shadow.png",
		  flags = { "no-crop" },
		  frame_count = 1,
		  width = 50,
		  height = 38,
		  priority = "high"
		},
		smoke = capsule_smoke
		},
		

		--- Nade projectile
	{
		type = "artillery-projectile",
		name = "nade-artillery-projectile",
		flags = {"not-on-map"},
		acceleration = 0,
		direction_only = true,
		reveal_map = true,
		map_color = {r=0, g=1, b=1},
		picture =
		{
			filename = "__Advanced-Atomics__/graphics/entity/artillery-projectile/hr-nadeshow-shell.png",
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
					radius = 4.0,
					action_delivery =
					{
					type = "instant",
					target_effects =
					{
						{
						type = "damage",
						damage = {amount = 200 , type = "physical"}
						},
						{
						type = "damage",
						damage = {amount = 200 , type = "explosion"}
						},
						{
							type = "create-entity",
							entity_name = "uranium-cannon-shell-explosion"
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
							
			{
				type = "cluster",
				cluster_count = 18,
				distance = 18,
				distance_deviation = 4,
				action_delivery =
				{
					type = "projectile",
					projectile = "uranium-grenade",
					direction_deviation = 0.7,
					starting_speed = 0.25,
					starting_speed_deviation = 0.3
				}
			},
			{
				type = "cluster",
				cluster_count = 24,
				distance = 24,
				distance_deviation = 4,
				action_delivery =
				{
					type = "projectile",
					projectile = "grenade",
					direction_deviation = 0.7,
					starting_speed = 0.25,
					starting_speed_deviation = 0.3
				}
			},
			{
				type = "cluster",
				cluster_count = 4,
				distance = 8,
				distance_deviation = 4,
				action_delivery =
				{
					type = "projectile",
					projectile = "cluster-grenade",
					direction_deviation = 0.7,
					starting_speed = 0.25,
					starting_speed_deviation = 0.3
				}
			},
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

})


