AA = {}

-- ingame config 
AA.ENABLED = {
	["Plutonium"] = settings.startup["AA_enable-Plutonium"].value,
	["TreeMapColor"] = settings.startup["AA_enable-TreeMapColor"].value,	
}

-- Technologies
require ("prototypes.technology")

--- Items
require("prototypes.UraniumAxe")
require("prototypes.UraniumArmor")
if AA.ENABLED["Plutonium"] then
    require("prototypes.Plutonium")
    require("prototypes.PlutoniumArmor")
    require("prototypes.PlutoniumAxe")
end
require("prototypes.projectiles")
require("prototypes.ammo")

--- Equipment
require("prototypes.equipment")

--- Custom Tree Map Color
-- Following server command line needed to regenerate already discovered areas. Warning, chopped/removed trees will reappear!
-- /c game.regenerate_entity("dead-dry-hairy-tree"); game.regenerate_entity("dead-grey-trunk");game.regenerate_entity("dry-hairy-tree");game.regenerate_entity("dry-tree");game.regenerate_entity("tree-01");game.regenerate_entity("tree-02");game.regenerate_entity("tree-02-red");game.regenerate_entity("tree-03");game.regenerate_entity("tree-04");game.regenerate_entity("tree-05");game.regenerate_entity("tree-06");game.regenerate_entity("tree-06-brown");game.regenerate_entity("tree-07");game.regenerate_entity("tree-08");game.regenerate_entity("tree-08-brown");game.regenerate_entity("tree-08-red");game.regenerate_entity("tree-09");game.regenerate_entity("tree-09-brown");game.regenerate_entity("tree-09-red")
if AA.ENABLED["TreeMapColor"]  then
    data.raw["utility-constants"]["default"]["chart"]["default_color_by_type"].tree = {a = 0.1, r = 0.0, g = 0.8, b = 0.1}
    
end