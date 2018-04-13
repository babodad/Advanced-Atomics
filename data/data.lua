if not bobmods then bobmods = {} end
if not bobmods.lib then bobmods.lib = {} end

if not AA then AA = {} end


---- Mod-Settings
AA = {}

AA.ENABLED = {
	["SSP4Plutonium"] = settings.startup["AA_enable-SSP4Plutonium"].value,
	["UraniumExtraction"] = settings.startup["AA_enable-UraniumExtraction"].value,
}

-- Distance Bonus
local distance_bonus = settings.startup["AA_DistanceBonus"].value


if distance_bonus == "off" then
	AA.DistFactor = 0
elseif distance_bonus == "low" then
	AA.DistFactor = 0.5
elseif distance_bonus == "medium" then
	AA.DistFactor = 1.0	
elseif distance_bonus == "high" then
	AA.DistFactor = 1.5
end

-- Custom Tree Map Color
AA.TreeContrast = settings.startup["AA_TreeMapContrast"].value

if AA.TreeContrast == "low" then
	data.raw["utility-constants"]["default"]["chart"]["default_color_by_type"].tree = {a = 0.3, r = 0.1, g = 0.4, b = 0.1}
elseif AA.TreeContrast == "medium"  then
	data.raw["utility-constants"]["default"]["chart"]["default_color_by_type"].tree = {a = 0.38, r = 0.1, g = 0.4, b = 0.1}    
elseif AA.TreeContrast == "high"  then
	data.raw["utility-constants"]["default"]["chart"]["default_color_by_type"].tree = {a = 0.52, r = 0.1, g = 0.5, b = 0.1}      
end
-- Server command line needed to regenerate already discovered areas: Warning, chopped/removed trees will reappear!
-- /c game.regenerate_entity("dead-dry-hairy-tree"); game.regenerate_entity("dead-grey-trunk");game.regenerate_entity("dry-hairy-tree");game.regenerate_entity("dry-tree");game.regenerate_entity("tree-01");game.regenerate_entity("tree-02");game.regenerate_entity("tree-02-red");game.regenerate_entity("tree-03");game.regenerate_entity("tree-04");game.regenerate_entity("tree-05");game.regenerate_entity("tree-06");game.regenerate_entity("tree-06-brown");game.regenerate_entity("tree-07");game.regenerate_entity("tree-08");game.regenerate_entity("tree-08-brown");game.regenerate_entity("tree-08-red");game.regenerate_entity("tree-09");game.regenerate_entity("tree-09-brown");game.regenerate_entity("tree-09-red")

---- Technologies
require ("prototypes.technology")

---- Items
require("prototypes.atomic-tools")
require("prototypes.uranium-armor")
require("prototypes.plutonium")
require("prototypes.plutonium-armor")
require("prototypes.projectiles")
require("prototypes.ammo")
require("prototypes.atomic-warfare")

---- Equipment
require("prototypes.equipment")

---- Uranium Extraction
if AA.ENABLED["UraniumExtraction"]  then
    require("prototypes.uranium-extraction")   
end

