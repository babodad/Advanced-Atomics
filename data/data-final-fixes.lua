if data.raw["technology"]["kovarex-enrichment-process"] then
	data.raw["technology"]["plutonium"].prerequisites = {"kovarex-enrichment-process"}
else
	data.raw["technology"]["plutonium"].prerequisites = {"nuclear-power"}	
end

--[[ ---MushroomCloud mod support
if mods["MushroomCloud"] and AA.ENABLED["Plutonium"] then
    data.raw["artillery-projectile"]["plutonium-artillery-projectile"].action = {
           
        type = "direct",
        action_delivery =
        {
            type = "instant",
            target_effects =
            {
                {
                    repeat_count = 100,
                    type = "create-trivial-smoke",
                    smoke_name = "nuclear-smoke",
                    offset_deviation = {{-1, -1}, {1, 1}},
                    slow_down_factor = 1,
                    starting_frame = 3,
                    starting_frame_deviation = 5,
                    starting_frame_speed = 0,
                    starting_frame_speed_deviation = 5,
                    speed_from_center = 0.5,
                    speed_deviation = 0.2
                },
                {
                    type = "create-entity",
                    entity_name = "explosion"
                },
                {
                    type = "damage",
                    damage = {amount = 500, type = "explosion"}
                },
                {
                    type = "destroy-cliffs",
                    radius = 20,
                    explosion = "explosion"
                },
                {
                    type = "create-entity",
                    entity_name = "uranium-explosion-LUQ",
                    trigger_created_entity = "true"                
                },
                {
                    type = "create-entity",
                    entity_name = "uranium-explosion-RUQ"
                },
                {
                    type = "create-entity",
                    entity_name = "uranium-explosion-LLQ"
                },
                {
                    type = "create-entity",
                    entity_name = "uranium-explosion-RLQ"
                },
                {
                    type = "create-entity",
                    entity_name = "nuclear-scorchmark"
                },
                {
                    type = "nested-result",
                    action =
                    {
                        type = "area",
                        target_entities = false,
                        repeat_count = 3000,
                        radius = 40,
                        action_delivery =
                        {
                            type = "projectile",
                            projectile = "atomic-artillery-wave",
                            starting_speed = 0.5
                        }
                    }
                }
            }
        }
    }

end ]]