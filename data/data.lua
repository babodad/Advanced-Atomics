AA = {}

-- ingame config 
AA.ENABLED = {
	["SSP4Plutonium"] = settings.startup["AA_enable-SSP4Plutonium"].value,
	["TreeMapColor"] = settings.startup["AA_enable-TreeMapColor"].value,	
	["UraniumExtraction"] = settings.startup["AA_enable-UraniumExtraction"].value,

}

-- Technologies
require ("prototypes.technology")

--- Items
require("prototypes.uranium-axe")
require("prototypes.uranium-armor")
require("prototypes.plutonium")
require("prototypes.plutonium-armor")
require("prototypes.plutonium-axe")
require("prototypes.projectiles")
require("prototypes.ammo")
require("prototypes.entities")

--- Equipment
require("prototypes.equipment")

---Uranium Extraction
if AA.ENABLED["UraniumExtraction"]  then
    require("prototypes.uranium-extraction")   
end
--- Custom Tree Map Color
-- Following server command line needed to regenerate already discovered areas. Warning, chopped/removed trees will reappear!
-- /c game.regenerate_entity("dead-dry-hairy-tree"); game.regenerate_entity("dead-grey-trunk");game.regenerate_entity("dry-hairy-tree");game.regenerate_entity("dry-tree");game.regenerate_entity("tree-01");game.regenerate_entity("tree-02");game.regenerate_entity("tree-02-red");game.regenerate_entity("tree-03");game.regenerate_entity("tree-04");game.regenerate_entity("tree-05");game.regenerate_entity("tree-06");game.regenerate_entity("tree-06-brown");game.regenerate_entity("tree-07");game.regenerate_entity("tree-08");game.regenerate_entity("tree-08-brown");game.regenerate_entity("tree-08-red");game.regenerate_entity("tree-09");game.regenerate_entity("tree-09-brown");game.regenerate_entity("tree-09-red")
if AA.ENABLED["TreeMapColor"]  then
    data.raw["utility-constants"]["default"]["chart"]["default_color_by_type"].tree = {a = 0.4, r = 0.1, g = 0.4, b = 0.1}    
end