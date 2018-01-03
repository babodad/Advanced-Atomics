data:extend{
	{
		type = "armor",
		name = "klaproth-armor",
		--icon = "PATH",
		icon_size = 32,
		flags = {"goes-to-main-inventory"}
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
	order = "h(klaproth-armor)",
	stack-size = 1,
	--equipment_grid = "",
	inventory_size_bonus = 70
	}
}