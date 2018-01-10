data:extend(
{
    {
    type = "armor",
    name = "uranium-armor",
    icon = "__Advanced-Atomics__/graphics/icons/uranium-axe.png",
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
    equipment_grid = "large-equipment-grid",
    inventory_size_bonus = 70
  }
}
)
