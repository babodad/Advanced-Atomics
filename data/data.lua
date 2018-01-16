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

-- Player Animation (Armor)
--require ("prototypes.player")

--- Custom Tree Map Color
if AA.ENABLED["TreeMapColor"]  then
    data.raw["utility-constants"]["default"]["chart"]["default_color_by_type"].tree = {a = 0.1, r = 0.0, g = 0.8, b = 0.1}
end