data:extend(
  {
     	-- Nukebot

	{
    type = "combat-robot",
    name = "nukebot",
    icon = "__Advanced-Atomics__/graphics/icons/nukebot.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map", "not-repairable"},
    resistances = { { type = "fire", percent = 50 } },
    subgroup="capsule",
    order="e-a-c",
    max_health = 20,
    alert_when_damaged = false,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    distance_per_frame = 0.13,
    time_to_live = 60 * 60, --*2
    speed = 0.02,
    follows_player = true,
    friction = 0.01,
    range_from_player = 18.0, --6
    destroy_action =
    {
     {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
            type = "create-entity",
            entity_name = "uranium-cannon-shell-explosion"
        }
      }
      },
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
            damage = {amount = 50 , type = "physical"}
          },
          {
          type = "damage",
          damage = {amount = 250 , type = "explosion"}
          },
        }
        }
      }
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 10,
      projectile_center = {0, 1},
      projectile_creation_distance = 0.1,
      range = 1,
      --sound = make_light_gunshot_sounds(),
      ammo_type =
      {
      category = "bullet",
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
              repeat_count = 10, --100
              type = "create-trivial-smoke",
              smoke_name = "nuclear-smoke",
              offset_deviation = {{-0.5, -1}, {0.5, 1}},
              slow_down_factor = 1,
              starting_frame = 3,
              starting_frame_deviation = 4,
              starting_frame_speed = 0,
              starting_frame_speed_deviation = 5,
              speed_from_center = 0.5,
              speed_deviation = 0.2
             },
            {
              type = "nested-result",
              affects_target = true,
              action = 
              {
                {
                  type = "area",
                  target_entities = false,
                  repeat_count = 70,
                  radius = 3.0,                  
                  action_delivery =
                  {
                    {
                      type = "projectile",
                      projectile = "explosive-uranium-cannon-projectile",
                      starting_speed = 0.4
                    }
                  }
                }
              },
            },
            {
              type = "create-entity",
              entity_name = "uranium-cannon-shell-explosion"
            },

            {
              type = "damage",
              damage = { amount = 200, type = "explosion"}
            }                
          },
          target_effects =
          {
           {
            type = "damage",
            damage = { amount = 1 , type = "physical"}
            }
          } 
          }
         }, 

--[[
       { 
       type = "direct",
        action_delivery =
       { 
            
        type = "instant",
        target_effects =
        {
          {
              repeat_count = 40, --100
              type = "create-trivial-smoke",
              smoke_name = "nuclear-smoke",
              offset_deviation = {{-0.5, -1}, {0.5, 1}},
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
                        damage = {amount = 50, type = "explosion"},
                        
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
              repeat_count = 1, --1000
              radius = 3,
              action_delivery =
              {
                type = "projectile",
                projectile = "explosive-uranium-cannon-projectile",
                starting_speed = 0.1
              }
            }}
          }
        }
      } --]]


        }
      }
    },
    idle =
    {
      layers =
      {
        {
          filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot.png",
          priority = "high",
          line_length = 32,
          width = 64,
          height = 52,
          y = 52, 
          frame_count = 1,
          direction_count = 32,
          --shift = {0.078125, -0.546875},
          hr_version = {
            filename = "__Advanced-Atomics__/graphics/entity/nukebot/hr-nukebot.png",
            priority = "high",
            line_length = 32,
            width = 128,
            height = 104,
            y = 102,
            frame_count = 1,
            direction_count = 32,
            --shift = util.by_pixel(2.5, -17.25),
            scale = 0.5
          }
        },
        {
          filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot_mask.png",
          priority = "high",
          line_length = 32,
          width = 64,
          height = 52,
          y = 52,
          frame_count = 1,
          direction_count = 32,
          --shift = {0.078125, -0.734375},
          apply_runtime_tint = true,
          hr_version = {
            filename = "__Advanced-Atomics__/graphics/entity/nukebot/hr-nukebot_mask.png",
            priority = "high",
            line_length = 32,
            width = 128,
            height = 104,
            y = 104,
            frame_count = 1,
            direction_count = 32,
            --shift = util.by_pixel(2.5, -23),
            apply_runtime_tint = true,
            scale = 0.5
          }
        },
      } 
    },
    shadow_idle =
    {
      filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot_shadow.png",
      priority = "high",
      line_length = 32,
      width = 64,
      height = 51,
      frame_count = 1,
      direction_count = 32,
      --shift = {0.78125, 0},
      hr_version = {
        filename = "__Advanced-Atomics__/graphics/entity/nukebot/hr-nukebot_shadow.png",
        priority = "high",
        line_length = 32,
        width = 128,
        height = 103,
        frame_count = 1,
        direction_count = 32,
        --shift = util.by_pixel(23.5, 1),
        scale = 0.5
      }
    },
    in_motion =
    {
      layers =
      {
        {
          filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot.png",
          priority = "high",
          line_length = 32,
          width = 64,
          height = 52,
          frame_count = 1,
          direction_count = 32,
          --shift = {0.078125, -0.546875},
          hr_version = {
            filename = "__Advanced-Atomics__/graphics/entity/nukebot/hr-nukebot.png",
            priority = "high",
            line_length = 32,
            width = 128,
            height = 104,
            frame_count = 1,
            direction_count = 32,
            --shift = util.by_pixel(2.5, -17.25),
            scale = 0.5
          }
        },
        {
          filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot_mask.png",
          priority = "high",
          line_length = 32,
          width = 64,
          height = 52,
          frame_count = 1,
          direction_count = 32,
          --shift = {0.078125, -0.734375},
          apply_runtime_tint = true,
          hr_version = {
            filename = "__Advanced-Atomics__/graphics/entity/nukebot/hr-nukebot_mask.png",
            priority = "high",
            line_length = 32,
            width =128,
            height = 104,
            frame_count = 1,
            direction_count = 32,
            --shift = util.by_pixel(2.5, -23),
            apply_runtime_tint = true,
            scale = 0.5
          }
        }
      } 
    },
    shadow_in_motion =
    {
      filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot_shadow.png",
      priority = "high",
      line_length = 32,
      width = 64,
      height = 51,
      frame_count = 1,
      direction_count = 32,
      --shift = {0.78125, 0},
      hr_version = {
        filename = "__Advanced-Atomics__/graphics/entity/nukebot/hr-nukebot_shadow.png",
        priority = "high",
        line_length = 32,
        width = 128,
        height = 103,
        frame_count = 1,
        direction_count = 32,
        --shift = util.by_pixel(23.5, 1),
        scale = 0.5
      }
    }
  },

  -- Uranium Concrete

  {
    type = "tile",
    name = "uranium-concrete",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "uranium-concrete"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.8,
    layer = 64,
    transition_overlay_layer_offset = 3, -- need to render border overlay on top of hazard-concrete
    decorative_removal_probability = 0.25,
    variants =
    {
      main =
      {
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 1
        },
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 2,
          probability = 0.39
        },
        {
          picture = "__base__/graphics/terrain/concrete/concrete-dummy.png",
          count = 1,
          size = 4,
          probability = 1
        },
      },
      inner_corner =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png",
        count = 16,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-inner-corner.png",
          count = 16,
          scale = 0.5
        },
      },
      inner_corner_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-inner-corner-mask.png",
        count = 16,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-inner-corner-mask.png",
          count = 16,
          scale = 0.5
        },
      },

      outer_corner =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png",
        count = 8,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-outer-corner.png",
          count = 8,
          scale = 0.5
        },
      },
      outer_corner_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-outer-corner-mask.png",
        count = 8,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-outer-corner-mask.png",
          count = 8,
          scale = 0.5
        },
      },

      side =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-side.png",
        count = 16,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-side.png",
          count = 16,
          scale = 0.5
        },
      },
      side_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-side-mask.png",
        count = 16,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-side-mask.png",
          count = 16,
          scale = 0.5
        },
      },

      u_transition =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-u.png",
        count = 8,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-u.png",
          count = 8,
          scale = 0.5
        },
      },
      u_transition_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-u-mask.png",
        count = 8,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-u-mask.png",
          count = 8,
          scale = 0.5
        },
      },

      o_transition =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-o.png",
        count = 4,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-o.png",
          count = 4,
          scale = 0.5
        },
      },
      o_transition_mask =
      {
        picture = "__base__/graphics/terrain/concrete/concrete-o-mask.png",
        count = 4,
        hr_version = {
          picture = "__base__/graphics/terrain/concrete/hr-concrete-o-mask.png",
          count = 4,
          scale = 0.5
        },
      },


      material_background =
      {
        picture = "__Advanced-Atomics__/graphics/entity/uranium-concrete.png",
        count = 8,
        hr_version =
        {
          picture = "__Advanced-Atomics__/graphics/entity/hr-uranium-concrete.png",
          count = 8,
          scale = 0.5
        },
        
      }
    },

    transitions = concrete_transitions,
    transitions_between_transitions = concrete_transitions_between_transitions,

    walking_sound =
    {
      {
        filename = "__base__/sound/walking/concrete-01.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-02.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-03.ogg",
        volume = 1.2
      },
      {
        filename = "__base__/sound/walking/concrete-04.ogg",
        volume = 1.2
      }
    },
    map_color={r=100, g=100, b=100},
    ageing=0,
    vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
 

{
    type = "item",
    name = "uranium-concrete",
    icon = "__Advanced-Atomics__/graphics/icons/uranium-concrete.png",
    icon_size = 32,
    flags = {},
    subgroup = "terrain",
    order = "b[concrete]-d[uranium]",
    stack_size = 100,
    place_as_tile =
    {
      result = "uranium-concrete",
      condition_size = 1,
      condition = { "water-tile" }
    }
  },

  {
    type = "recipe",
    name = "uranium-concrete",
    energy_required = 20,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"refined-concrete", 20},
      {"steel-plate", 2},
      {"uranium-238", 2},
      {type="fluid", name="water", amount=100}
    },
    result= "uranium-concrete",
    result_count = 20
  },


  }
)