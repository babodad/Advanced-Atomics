for _, animation in ipairs(data.raw["character"]["character"]["animations"]) do
  if animation.armors then
    for _, armor in ipairs(animation.armors) do
      if armor == "power-armor-mk2" then
        animation.armors[#animation.armors + 1] = "plutonium-armor"
        break
      end
    end
  end
end

data:extend(
    {
  --- Plutonium Armor
  {
    type = "armor",
    name = "plutonium-armor",
    icon = "__Advanced-Atomics__/graphics/icons/plutonium-armor.png",
    icon_size = 32,
    flags = {},
    resistances =
    {
      {
        type = "physical",
        decrease = 50,
        percent = 50
      },
      {
        type = "acid",
        decrease = 30,
        percent = 40
      },
      {
        type = "explosion",
        decrease = 42,
        percent = 80
      },
      {
        type = "fire",
        decrease = 0,
        percent = 100
      }
    },  
    subgroup = "armor",
    order = "g[plutonium-armor]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "largest-equipment-grid",
    inventory_size_bonus = 60,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  
  {
    type = "recipe",
    name = "plutonium-armor",
    enabled = false,
    energy_required = 120,
    ingredients =
    {
      {"uranium-armor", 1},      
      {"fusion-reactor-equipment", 2},
      {"processing-unit", 300},
      {"low-density-structure", 200},
      {"plutonium-239", 42}
    },
    result = "plutonium-armor",
    requester_paste_multiplier = 1
  }

})


