function nod_turret_extension(inputs)
  return
  {
    filename = "__Advanced-Atomics__/graphics/entity/obelisk/nod-turret-start.png",
    priority = "medium",
    width = 132,
    height = 106,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
    axially_symmetrical = false,
    direction_count = 4,
    --shift = {-0.03125, -0.984375}
  }
  end
  
  function nod_turret_extension_shadow(inputs)
  return
  {
    filename = "__Advanced-Atomics__/graphics/entity/obelisk/laser-turret-gun-start-shadow.png",
    width = 92,
    height = 50,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
    axially_symmetrical = false,
    direction_count = 4,
    draw_as_shadow = true,
    shift = {1.375, 0},
  }
  end
  
  function nod_turret_extension_mask(inputs)
  return
  {
    filename = "__Advanced-Atomics__/graphics/entity/obelisk/nod-turret-start-mask.png",
    flags = { "mask" },
    width = 132,
    height = 107,
    frame_count = inputs.frame_count and inputs.frame_count or 15,
    line_length = inputs.line_length and inputs.line_length or 0,
    run_mode = inputs.run_mode and inputs.run_mode or "forward",
    axially_symmetrical = false,
    apply_runtime_tint = true,
    direction_count = 4,
    --shift = {-0.015625, -1.26563},
  }
  end

data:extend(
  {

      -- to be moved prep for turret

      {
        type = "item",
        name = "nod-turret",
        icon = "__base__/graphics/icons/laser-turret.png",
        icon_size = 32,
        flags = {"goes-to-quickbar"},
        subgroup = "defensive-structure",
        order = "b[turret]-c[laser-turret]",
        place_result = "nod-turret",
        stack_size = 50
      },

      {
        type = "recipe",
        name = "nod-turret",
        enabled = true,
        energy_required = 20,
        ingredients =
        {
          {"steel-plate", 20},
          {"electronic-circuit", 20},
          {"battery", 12}
        },
        result = "nod-turret"
      },

      

      -- NOD Obelsik

      {
        type = "electric-turret",
        name = "nod-turret",
        icon = "__base__/graphics/icons/laser-turret.png",
        icon_size = 32,
        flags = { "placeable-player", "placeable-enemy", "player-creation"},
        minable = { mining_time = 0.5, result = "laser-turret" },
        max_health = 1000,
        corpse = "medium-remnants",
        collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
        selection_box = {{ -1, -1}, {1, 1}},
        rotation_speed = 0.01,
        preparing_speed = 0.05,
        dying_explosion = "medium-explosion",
        folding_speed = 0.05,
        energy_source =
        {
          type = "electric",
          buffer_capacity = "801kJ",
          input_flow_limit = "9600kW",
          drain = "24kW",
          usage_priority = "primary-input"
        },
       folded_animation =
        {
          layers =
          {
            nod_turret_extension{frame_count=1, line_length = 1},
            nod_turret_extension_shadow{frame_count=1, line_length=1},
            nod_turret_extension_mask{frame_count=1, line_length=1}
          }
        },
        preparing_animation =
        {
          layers =
          {
            nod_turret_extension{},
            nod_turret_extension_shadow{},
            nod_turret_extension_mask{}
          }
        }, 
        prepared_animation =
        {
          layers =
          {
            {
              filename = "__Advanced-Atomics__/graphics/entity/obelisk/nod-turret.png",
              line_length = 8,
              width = 251,
              height = 200,
              frame_count = 1,
              axially_symmetrical = false,
              direction_count = 64,
              --shift = {-0.03125, -1}
              scale = 0.9
            },
            {
              filename = "__Advanced-Atomics__/graphics/entity/obelisk/nod-turret-mask.png",
              flags = { "mask" },
              line_length = 8,
              width = 251,
              height = 200,
              frame_count = 1,
              axially_symmetrical = false,
              apply_runtime_tint = true,
              direction_count = 64,
              --shift = {-0.03125, -1.3125},
              scale = 0.9

            },
            {
              filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
              line_length = 8,
              width = 88,
              height = 52,
              frame_count = 1,
              axially_symmetrical = false,
              direction_count = 64,
              draw_as_shadow = true,
              shift = {1.5, 0}
            }
          }
        },
        folding_animation =
        {
          layers =
          {
            laser_turret_extension{run_mode = "backward"},
            laser_turret_extension_shadow{run_mode = "backward"},
            laser_turret_extension_mask{run_mode = "backward"}
          }
        },
        base_picture =
        {
          layers =
          {
            {
              filename = "__Advanced-Atomics__/graphics/entity/obelisk/nod-turret-base.png",
              --priority = "high",
              width = 250,
              
              height = 200,
              axially_symmetrical = false,
              direction_count = 1,
              frame_count = 1,
              --shift = {0.015625, 0.03125}
            },
            {
              filename = "__Advanced-Atomics__/graphics/entity/obelisk/laser-turret-base-mask.png",
              flags = { "mask" },
              line_length = 1,
              width = 54,
              height = 46,
              axially_symmetrical = false,
              apply_runtime_tint = true,
              direction_count = 1,
              frame_count = 1,
              shift = {-0.046875, -0.109375},
            },
          }
        },
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    
        attack_parameters =
        {
          type = "projectile",
          ammo_category = "electric",
          cooldown = 20,
          projectile_center = {-0.09375, -0.2},
          projectile_creation_distance = 1.4,
          range = 24,
          damage_modifier = 4,
          ammo_type =
          {
            type = "projectile",
            category = "laser-turret",
            energy_consumption = "800kJ",
            action =
            {
              {
                type = "direct",
                action_delivery =
                {
                  {
                    type = "projectile",
                    projectile = "laser",
                    starting_speed = 0.35
                  }
                }
              }
            }
          },
          sound = make_laser_sounds()
        },
        call_for_help_radius = 40
      },

      -- Marvin
{
     type = "unit",
    name = "marvin",
    icon_size = 32,
    icon = "__Advanced-Atomics__/graphics/icons/nukebot.png",
    flags = {"placeable-player", "player-creation", "placeable-off-grid"},
    subgroup="creatures",
    order="e-a-b-d",
    has_belt_immunity = true,
    max_health = 300,
    alert_when_damaged = false,
    healing_per_tick = 0.02,
	friendly_map_color = green,
  collision_box = {{0, 0}, {0, 0}},
  selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    sticker_box = {{-0.5, -0.5}, {0.5, 0.5}},
	vision_distance = 30,
    movement_speed = 0.18,
--	minable = {hardness = 0.1, mining_time = 0.1, result = "terminator"},
	pollution_to_join_attack = 0.0,
	distraction_cooldown = 0,
    distance_per_frame =  0.05,
	dying_explosion = "medium-explosion",
	resistances =
    {
      {
        type = "physical",
        decrease = 1,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 20,
        percent = 90
      },
      {
        type = "acid",
        decrease = 5,
        percent = 85
      },
	  {
        type = "laser",
        decrease = 5,
        percent = 35
      },
	  {
        type = "fire",
		decrease = 5,
        percent = 95
      }
    },
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
		      {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 50,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 100, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  },
				         {
				        	type = "create-entity",
				        	entity_name = "small-scorchmark",
			        		check_buildability = true
				         }
                }
              }
            }
		  },
      }
	  }
 
    },
	attack_parameters =
    {
      
	  type = "projectile",
      ammo_category = "bullet",
      cooldown = 10,
      projectile_center = {0, 0.4},
      projectile_creation_distance = 1.5,
      range = 15,
      --sound = make_laser_sounds(1),
	  animation =
		 {
			  filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot.png",
			  priority = "high",
			  width = 64,
			  height = 52,
			  direction_count = 2,
			  frame_count = 32,
			  animation_speed = 0.15,
			  shift = {0, 0}
		 },
      ammo_type =
      {
        type = "projectile",
        category = "bullet",
        --energy_consumption = "0W",
        --projectile = "laser-dual",
        --speed = 2,
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
                  type = "nested-result",
                  affects_target = true,
                  action = 
                  {
                    {
                      type = "area",
                      radius = 6.0,
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
              },

            {
              {
                type = "projectile",
                projectile = "bullet",
                starting_speed = 1
              }
            },


          }
        }
       }
	  
	 
    },
	idle =
	{
	  filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot.png",
	  priority = "very-low",
	  width = 64,
	  height = 52,
	  direction_count = 2,
	  frame_count = 32,
	  animation_speed = 0.5,
	  shift = {0, 0}
	},
	run_animation =
	{
	  filename = "__Advanced-Atomics__/graphics/entity/nukebot/nukebot.png",
	  priority = "high",
	  width = 64,
	  height = 52,
	  direction_count = 2,
	  frame_count = 32,
	  animation_speed = 0.5,
	  shift = {0, 0}
	}
},




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
        range_from_player = 12.0, --6
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
          projectile_creation_distance = 0.5,
          range = 3,
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
                  type = "nested-result",
                  affects_target = true,
                  action = 
                  {
                    {
                      type = "area",
                      radius = 6.0,
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
              y = 52, --39
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
        icon = "__base__/graphics/icons/refined-concrete.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
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
        energy_required = 15,
        enabled = true,
        category = "crafting-with-fluid",
        ingredients =
        {
          {"concrete", 20},
          {"iron-stick", 8},
          {"steel-plate", 1},
          {type="fluid", name="water", amount=100}
        },
        result= "uranium-concrete",
        result_count = 10
      },

})

