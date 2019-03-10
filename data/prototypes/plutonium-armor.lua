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
        decrease = 30,
        percent = 60
      },
      {
        type = "acid",
        decrease = 30,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 80,
        percent = 60
      },
      {
        type = "fire",
        decrease = 0,
        percent = 100
      }
    },
    durability = 40000,
    subgroup = "armor",
    order = "g[plutonium-armor]",
    stack_size = 1,
    equipment_grid = "largest-equipment-grid",
    inventory_size_bonus = 60
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

for _, animation in ipairs(data.raw["player"]["player"]["animations"]) do
  if animation.armors then
    for _, armor in ipairs(animation.armors) do
      if armor == "power-armor-mk2" then
        animation.armors[#animation.armors + 1] = "plutonium-armor"
        break
      end
    end
  end
end