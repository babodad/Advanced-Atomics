data:extend({
	{
        type = "bool-setting",
		name = "AA_enable-SSP4Plutonium",
		setting_type = "startup",
		default_value = false,
		order = "a-a"
	},
	{
        type = "bool-setting",
		name = "AA_enable-UraniumExtraction",
		setting_type = "startup",
		default_value = false,
		order = "a-bc"
	},
	{
		type = "string-setting",
		name = "AA_DistanceBonus",
		setting_type = "startup",
		default_value = "medium",
		allowed_values = { "off", "low", "medium", "large"}, 
        order = "a-c"
	},
	{
		type = "string-setting",
		name = "AA_TreeMapContrast",
		setting_type = "startup",
		default_value = "medium",
		allowed_values = { "off", "low", "medium", "high"}, 
        order = "a-d"
	},

	
})