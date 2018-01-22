data:extend(
{
	--- Uranium Axe (+mk2)
	{
		type = "technology",
		name = "uranium-tools",
		icon_size = 128,
		icon = "__Advanced-Atomics__/graphics/technology/uranium-tools_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "uranium-axe"
			},
			{
				type = "unlock-recipe",
				recipe = "uranium-axe-mk2"
			}
		},
		prerequisites = {"nuclear-power"},
		unit = {
			count = 400,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 2},
				{"production-science-pack", 3}
			},
			time = 42,			
		},
		order = "e-a-a"
	},
	
	--- Uranium Armor
	{
		type = "technology",
		name = "uranium-armor",
		icon_size = 128,
		icon = "__Advanced-Atomics__/graphics/technology/uranium-armor_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "uranium-armor"
			},
			{
				type = "unlock-recipe",
				recipe = "uranium-shield-equipment"
			},			
		},
		prerequisites = {"nuclear-power", "power-armor-2", "military-4"},
		unit = {
			count = 500,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 2},
				{"military-science-pack", 2},
				{"high-tech-science-pack", 2}
			},
			time = 42			
		},
		order = "g-c-c"
	},
})

data:extend(
{
	--- Plutonium
	{
		type = "technology",
		name = "plutonium",
		icon_size = 128,
		icon = "__Advanced-Atomics__/graphics/technology/plutonium_128.png",
		effects = {
			{
				type = "unlock-recipe",
				recipe = "plutonium-nucleosynthesis"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-axe"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-armor"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-shield-equipment"
			},
			{
				type = "unlock-recipe",
				recipe = "radionuclide-battery-equipment"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-artillery-shell"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-missile"
			}
		},
		prerequisites = {"kovarex-enrichment-process"},
		unit = {
			count = 1000,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 2},
				{"military-science-pack", 2},
				{"high-tech-science-pack", 3}
			},
			time = 42			
		},
		order = "e-p-b-e"
	},	
})


table.insert(data.raw["technology"]["uranium-ammo"].effects,
	{
		type = "unlock-recipe",
		recipe = "uranium-artillery-shell"
	}
)
table.insert(data.raw["technology"]["uranium-ammo"].effects,
	{
		type = "unlock-recipe",
		recipe = "uranium-shotgun-shell"
	}
)

if AA.ENABLED["UraniumExtraction"] then
	data:extend(
	{
		{
			type = "technology",
			name = "uranium-extraction",
			icon_size = 128,
			icon = "__Advanced-Atomics__/graphics/technology/uranium-extraction_128.png",
			effects = {
				{
					type = "unlock-recipe",
					recipe = "water2uranium"
				},
				{
					type = "unlock-recipe",
					recipe = "copper2uranium"
				},
				{
					type = "unlock-recipe",
					recipe = "iron2uranium"
				},
			},
			prerequisites = {"nuclear-power", "coal-liquefaction"},
			unit = {
				count = 400,
				ingredients =
				{
					{"science-pack-1", 1},
					{"science-pack-2", 1},
					{"science-pack-3", 2},
					{"production-science-pack", 3}
				},
				time = 42
			},
			order = "e-p-b-d"
		}
	})
end
		

if AA.ENABLED["SSP4Plutonium"] then
	data.raw["technology"]["plutonium"].unit.ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 2},
		{"military-science-pack", 2},
		{"high-tech-science-pack", 2},
		{"space-science-pack", 3}
	}
end