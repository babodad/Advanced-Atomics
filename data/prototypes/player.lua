playeranimations_aa = {
	dead =
    {
      filename = "__Advanced-Atomics__/graphics/armor/level4addon_dead.png",
      width = 58,
      height = 58,
      shift = util.by_pixel(-7.0,-5.0),
      frame_count = 2,
	},
	dead_mask =
    {
      filename = "__Advanced-Atomics__/graphics/armor/level4addon_dead_mask.png",
      width = 46,
      height = 36,
      shift = util.by_pixel(-2.0,-6.0),
      frame_count = 2,
	  apply_runtime_tint = true,
	},
	idle =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level4addon_idle.png",
		priority = "very-low",
		width = 38,
		height = 44,
		direction_count = 8,
		frame_count = 22,
		animation_speed = 0.15,
		shift = util.by_pixel(0.0,-28.0),
		--axially_symmetrical = false
	},
	idle_mask =
    {
      filename = "__Advanced-Atomics__/graphics/armor/level4addon_idle_mask.png",
      width = 38,
      height = 38,
      shift = util.by_pixel(0.0,-31.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      apply_runtime_tint = true
	  },
	 
	idlewithgun =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level4addon_idle_gun.png",
		priority = "very-low",
		width = 40,
		height = 44,
		direction_count = 8,
		frame_count = 22,
		animation_speed = 0.15,
		shift = util.by_pixel(0.0,-25.0),
		--axially_symmetrical = false
	},
	idle_gun_mask =
    {
      filename = "__Advanced-Atomics__/graphics/armor/level4addon_idle_gun_mask.png",
      width = 38,
      height = 36,
      shift = util.by_pixel(0.0,-28.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.15,
      apply_runtime_tint = true
	  },
	miningwithhands =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level4addon_mining_hands.png",
		priority = "very-low",
		width = 42,
		height = 48,
		direction_count = 8,
		frame_count = 14,
		animation_speed = 0.6,
		shift = util.by_pixel(0.0,-17.0),
		--axially_symmetrical = false
	},
	 mining_hands_mask =
    {
      filename = "__Advanced-Atomics__/graphics/armor/level4addon_mining_hands_mask.png",
      width = 40,
      height = 40,
      shift = util.by_pixel(0.0,-20.0),
      frame_count = 14,
      direction_count = 8,
      animation_speed = 0.6,
      apply_runtime_tint = true
	  },
	miningwithtool =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level4addon_mining_tool.png",
		priority = "very-low",
		width = 72,
		height = 64,
		direction_count = 8,
		frame_count = 26,
		animation_speed = 0.9,
		shift = util.by_pixel(0.0,-21.0),
		--axially_symmetrical = false
	},
	mining_tool_mask =
    {
      filename = "__Advanced-Atomics__/graphics/armor/level4addon_mining_tool_mask.png",
      width = 70,
      height = 56,
      shift = util.by_pixel(0.0,-24.0),
      frame_count = 26,
      direction_count = 8,
      animation_speed = 0.9,
      apply_runtime_tint = true
	  },
	runningwithgun =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level4addon_running_gun.png",
		priority = "very-low",
		width = 38,
		height = 48,
		frame_count = 22,
		direction_count = 18,
		shift = util.by_pixel(0.0,-25.0),
		animation_speed = 0.6,
	},
	running_gun_mask =
    {
      filename = "__Advanced-Atomics__/graphics/armor/level4addon_running_gun_mask.png",
      width = 38,
      height = 38,
      shift = util.by_pixel(1.0,-29.0),
      frame_count = 22,
      direction_count = 18,
      animation_speed = 0.6,
      apply_runtime_tint = true
	  },
	running =
	{
		filename = "__Advanced-Atomics__/graphics/armor/level4addon_running.png",
		priority = "very-low",
		width = 40,
		height = 54,
		direction_count = 8,
		frame_count = 22,
		animation_speed = 0.6,
		shift = util.by_pixel(0.0,-25.0),
		--axially_symmetrical = false
	},
	running_mask =
    {
      filename = "__Advanced-Atomics__/graphics/armor/level4addon_running_mask.png",
      width = 40,
      height = 44,
      shift = util.by_pixel(0.0,-29.0),
      frame_count = 22,
      direction_count = 8,
      animation_speed = 0.6,
      apply_runtime_tint = true,
	  },
}

data.raw["character-corpse"]["character-corpse"].level4addon = {
		{
			armor_picture_mapping = 
			{
				["uranium-armor"] = 4 or nil
			},

			pictures = {
				
				layers = {
					playeranimations.level1.dead,
					--playeranimations.level1.dead_mask,
					playeranimations_aa.dead,
					--playeranimations_aa.dead_mask,
					playeranimations.level1.dead_shadow
				}
			
			}
		}
	}

data.raw.player.player.animations.level4addon = {
	armors =  {"uranium-armor"},
	idle =
	{
		layers =
		{
			playeranimations.level1.idle,
            playeranimations.level1.idle_mask,
			playeranimations_aa.idle,
			playeranimations_aa.idle_mask,
			playeranimations.level1.idle_shadow,
		}
	},
	idle_with_gun =
	{
		layers =
		{
			playeranimations.level1.idle_gun,
            playeranimations.level1.idle_gun_mask,
			playeranimations_aa.idlewithgun,
			playeranimations_aa.idle_gun_mask,
			playeranimations.level1.idle_gun_shadow,
		}
	},
	mining_with_hands =
	{
		layers =
		{
			playeranimations.level1.mining_hands,
            playeranimations.level1.mining_hands_mask,
			playeranimations_aa.miningwithhands,
			playeranimations_aa.mining_hands_mask,
			playeranimations.level1.mining_hands_shadow,
		}
	},
	mining_with_tool =
	{
		layers =
		{
			playeranimations.level1.mining_tool,
            playeranimations.level1.mining_tool_mask,
			playeranimations_aa.miningwithtool,
			playeranimations_aa.mining_tool_mask,
			playeranimations.level1.mining_tool_shadow,
		}
	},                        
	running_with_gun =
	{
		layers =
		{
			playeranimations.level1.running_gun,
            playeranimations.level1.running_gun_mask,
			playeranimations_aa.runningwithgun,
			playeranimations_aa.running_gun_mask,
			playeranimations.level1.running_gun_shadow,
		}
	},
	running =
	{
		layers =
		{	
			playeranimations.level1.running,
            playeranimations.level1.running_mask,
			playeranimations_aa.running,
			playeranimations_aa.running_mask,
			playeranimations.level1.running_shadow,
			
		}
	}
}
