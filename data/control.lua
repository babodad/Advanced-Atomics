--------------------------------------------------------------------

local function On_Init()
	
	-- enable researched recipes
	for i, force in pairs(game.forces) do
		force.reset_technologies()
		force.reset_recipes()
	end
	
end

--------------------------------------------------------------------
local function On_Config_Change()

	-- enable researched recipes
	for i, force in pairs(game.forces) do
		for _, tech in pairs(force.technologies) do
			if tech.researched then
				for _, effect in pairs(tech.effects) do
					if effect.type == "unlock-recipe" then          
						force.recipes[effect.recipe].enabled = true
					end
				end
			end
		end
	end
	
end

--------------------------------------------------------------------


script.on_configuration_changed(On_Config_Change)
script.on_init(On_Init)