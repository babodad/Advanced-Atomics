data:extend(
{

	{
		type = "technology",
		name = "uranium-tools",
		icon_size = 128,
		icon = "__Advanced-Atomics__/graphics/technology/UraniumTools_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "uranium-axe"
			}
		},
		prerequisites = {
			"nuclear-power"
		},
		unit = {
			count = 1000,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"production-science-pack", 1},
			},
			time = 42
		}
	},

})

--table.insert(data.raw["technology"]["atomic-bomb"].effects,{type="unlock-recipe",recipe="uranium-artillery-shell"})