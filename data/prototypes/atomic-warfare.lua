--[[
data:extend(
{
  {
    type = "gun",
    name = "uranium-flamethrower",
    icon = "__base__/graphics/icons/flamethrower.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "f[uranium-flamethrower]",
    attack_parameters =
    {
      type = "stream",
      ammo_category = "flamethrower",
      cooldown = 1,
      movement_slow_down_factor = 0.4,
      projectile_creation_distance = 0.6,
      gun_barrel_length = 0.8,
      gun_center_shift = { 0, -1 },
      range = 15,
      min_range = 3,
      cyclic_sound =
      {
        begin_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 0.7
          }
        },
        middle_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 0.7
          }
        },
        end_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 0.7
          }
        }
      }
    },
    stack_size = 5
  },

  {
    type = "recipe",
    name = "uranium-flamethrower",
    enabled = true,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 10}
    },
    result = "uranium-flamethrower"
  },
}
)
]]--