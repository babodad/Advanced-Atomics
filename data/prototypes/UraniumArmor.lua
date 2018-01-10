--[[data:extend{
	{
    type = "equipment-grid",
    name = "larger-equipment-grid",
    width = 14,
    height = 14,
    equipment_categories = {"armor"}
  }
}

data:extend{
	{
		type = "armor",
		name = "uranium-armor",
		--icon = "PATH",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		resistances =
    {
      {
        type = "physical",
        decrease = 30,
        percent = 80
      },
      {
        type = "acid",
        decrease = 30,
        percent = 80
      },
      {
        type = "explosion",
        decrease = 40,
        percent = 90
      },
      {
        type = "fire",
        decrease = 0,
        percent = 100
      }
    },
	durability = 50000,
	subgroup = "armor",
	order = "h(uranium-armor)",
	stack-size = 1,
	--equipment_grid = "larger-equipment-grid",
	inventory_size_bonus = 70
  },
  

  --- Plutonium Armor
  {
    type = "armor",
    name = "plutonium-armor",
    --icon = "PATH",
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
        decrease = 40,
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
    equipment_grid = "larger-equipment-grid",
    inventory_size_bonus = 60
	
  },

  {
    type = "recipe",
    name = "plutonium-armor",
    enabled = false,
    energy_required = 120,
    ingredients = {
	  {"uranium-armor", 1},
	  {"Pu-239", 42},
	  {"fusion-reactor-equipment", 2},
	  {"processing-unit", 300},
	  {"low-density-structure", 200}
	},
    result = "plutonium-armor",
    requester_paste_multiplier = 1
  }

} --]]