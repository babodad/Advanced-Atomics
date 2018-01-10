playeranimations_aa = {
	idle =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level3addon_idle.png",
		priority = "very-low",
		width = 38,
		height = 44,
		direction_count = 8,
		frame_count = 22,
		animation_speed = 0.15,
		shift = {0.13, -0.25},
		axially_symmetrical = false
	},
	idlewithgun =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level3addon_idle_gun.png",
		priority = "very-low",
		width = 40,
		height = 44,
		direction_count = 8,
		frame_count = 22,
		animation_speed = 0.15,
		shift = {0.13, -0.25},
		axially_symmetrical = fals
	},
	miningwithhands =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level3addon_mining_hands.png",
		priority = "very-low",
		width = 42,
		height = 48,
		direction_count = 8,
		frame_count = 14,
		animation_speed = 0.6,
		shift = {0.13, -0.25},
		axially_symmetrical = false
	},
	miningwithtool =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level3addon_mining_tool.png",
		priority = "very-low",
		width = 72,
		height = 64,
		direction_count = 8,
		frame_count = 26,
		animation_speed = 0.6,
		shift = {0.13, -0.25},
		axially_symmetrical = false
	},
	runningwithgun =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level3addon_running_gun.png",
		priority = "very-low",
		width = 38,
		height = 48,
		frame_count = 22,
		direction_count = 18,
		shift = {0.13, -0.25},
	},
	running =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level3addon_running.png",
		priority = "very-low",
		width = 40,
		height = 54,
		direction_count = 8,
		frame_count = 22,
		shift = {0.13, -0.25},
		axially_symmetrical = false
	},
}

data.raw.player.player.animations.levelAaddon = {
	armors =  {"uranium-armor"},
	idle =
	{
		layers =
		{
			playeranimations_aa.idle
		}
	},
	idle_with_gun =
	{
		layers =
		{
			playeranimations_aa.idlewithgun
		}
	},
	mining_with_hands =
	{
		layers =
		{
			playeranimations_aa.miningwithhands
		}
	},
	mining_with_tool =
	{
		layers =
		{
			playeranimations_aa.miningwithtool
		}
	},                        
	running_with_gun =
	{
		layers =
		{
			playeranimations_aa.runningwithgun
		}
	},
	running =
	{
		layers =
		{
			playeranimations_aa.running
		}
	}
}
