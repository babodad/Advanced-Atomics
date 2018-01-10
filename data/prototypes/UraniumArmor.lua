data:extend(
{
	{
    type = "equipment-grid",
    name = "larger-equipment-grid",
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
        decrease = 60,
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
    order = "h[uranium-armor]",
    stack_size = 1,
    equipment_grid = "larger-equipment-grid",
    inventory_size_bonus = 70
  },
  
   {
    type = "recipe",
    name = "uranium-armor",
    enabled = true,
    ingredients =
    {
      {"steel-axe", 1},
      {"uranium-238", 42}
    },
    result = "uranium-armor",
    requester_paste_multiplier = 1
	}
}
)

