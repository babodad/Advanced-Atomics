data:extend(
{
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
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 2},
				{"military-science-pack", 2},
				{"utility-science-pack", 2}
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
			},
			{
				type = "unlock-recipe",
				recipe = "mox-fuel-cell"
			},
			{
				type = "unlock-recipe",
				recipe = "plutonium-fuel"
			},
		},
		-- prerequisites = {"kovarex-enrichment-process"},
		unit = {
			count = 2000,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 2},
				{"military-science-pack", 2},
				{"utility-science-pack", 3}
			},
			time = 42			
		},
		order = "e-p-b-e"
	},	

--[[ 	---Plutonium warfare
	{
		type = "technology",
		name = "plutonium-warfare",
		icon_size = 128,
		icon = "__Advanced-Atomics__/graphics/technology/plutonium-warfare_128.png",
		effects = {		
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
			},
		},
		prerequisites = {"plutonium", "artillery"},
		unit = {
			count = 1000,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 2},
				{"utility-science-pack", 2}
			},
			time = 42			
		},
		order = "e-p-b-f"
	}, ]]
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
table.insert(data.raw["technology"]["uranium-ammo"].effects,
	{
		type = "unlock-recipe",
		recipe = "uranium-grenade"
	}
)
table.insert(data.raw["technology"]["uranium-ammo"].effects,
	{
		type = "unlock-recipe",
		recipe = "uranium-flamethrower-ammo"
	}
)
table.insert(data.raw["technology"]["uranium-ammo"].effects,
	{
		type = "unlock-recipe",
		recipe = "nade-artillery-shell"
	}
)
table.insert(data.raw["technology"]["uranium-ammo"].effects,
	{
		type = "unlock-recipe",
		recipe = "nukebot-capsule"
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
				{
					type = "unlock-recipe",
					recipe = "uranium-concrete"
				}
			},
			prerequisites = {"nuclear-power", "coal-liquefaction"},
			unit = {
				count = 400,
				ingredients =
				{
					{"automation-science-pack", 1},
					{"logistic-science-pack", 1},
					{"chemical-science-pack", 2},
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
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 2},
		{"military-science-pack", 2},
		{"utility-science-pack", 2},
		{"space-science-pack", 3}
	}
end
