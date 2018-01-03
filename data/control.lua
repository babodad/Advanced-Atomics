<<<<<<< HEAD
=======

--[[
script.on_event(defines.events.on_player_placed_equipment, function(event)
local player = game.players[event.player_index]
	player.print(event.equipment.name)	
	if event.equipment.name == "graviton-gloves-equipment"
		then
			player.print(character_build_distance_bonus)
			player.character_build_distance_bonus = player.character_build_distance_bonus + 4
			player.character_reach_distance_bonus = player.character_reach_distance_bonus + 4
			player.character_item_drop_distance_bonus = player.character_item_drop_distance_bonus + 4
			player.character_resource_reach_distance_bonus = player.character_resource_reach_distance_bonus + 2
	end
end)

script.on_event(defines.events.on_player_removed_equipment, function(event)
local player = game.players[event.player_index]
	player.print(event.equipment.name)	
	if event.equipment.name == "graviton-gloves-equipment"
		then
			player.print(character_build_distance_bonus)
			player.character_build_distance_bonus = player.character_build_distance_bonus - 4
			player.character_reach_distance_bonus = player.character_reach_distance_bonus - 4
			player.character_item_drop_distance_bonus = player.character_item_drop_distance_bonus - 4
			player.character_resource_reach_distance_bonus = player.character_resource_reach_distance_bonus - 2
	end
end)

--]]
>>>>>>> 58504284baa54f7099c34d13ccb9aa7eb86c7190
