data:extend(
{
	{
    type = "equipment-grid",
    name = "larger-equipment-grid",
    width = 12,
    height = 12,
    equipment_categories = {"armor"}
  },
  {
    type = "equipment-grid",
    name = "largest-equipment-grid",
    width = 14,
    height = 14,
    equipment_categories = {"armor"}
	},
	
    {
    type = "armor",
    name = "uranium-armor",
    icon = "__Advanced-Atomics__/graphics/icons/uranium-armor.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
    resistances =
    {
      {
        type = "physical",
        decrease = 20,
        percent = 60
      },
      {
        type = "acid",
        decrease = 20,
        percent = 60
      },
      {
        type = "explosion",
        decrease = 70,
        percent = 60
      },
      {
        type = "fire",
        decrease = 0,
        percent = 90
      }
    },
    durability = 30000,
    subgroup = "armor",
    order = "f[uranium-armor]",
    stack_size = 1,
    equipment_grid = "larger-equipment-grid",
    inventory_size_bonus = 50
  },
  
  {
    type = "recipe",
    name = "uranium-armor",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"effectivity-module-3", 20},
      {"speed-module-3", 20},
      {"advanced-circuit", 80},
      {"processing-unit", 120},
      {"uranium-235", 42}
    },
    result = "uranium-armor",
    requester_paste_multiplier = 1
  },
  
  --- Plutonium Armor
  {
    type = "armor",
    name = "plutonium-armor",
    icon = "__Advanced-Atomics__/graphics/icons/uranium-armor.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
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

