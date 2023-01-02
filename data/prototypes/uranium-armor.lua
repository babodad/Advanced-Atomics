for _, animation in ipairs(data.raw["character"]["character"]["animations"]) do
  if animation.armors then
    for _, armor in ipairs(animation.armors) do
      if armor == "power-armor-mk2" then
        animation.armors[#animation.armors + 1] = "uranium-armor"
        break
      end
    end
  end
end

data:extend(
{
	{
    type = "equipment-grid",
    name = "larger-equipment-grid",
    width = 12,
    height = 12,
    equipment_categories = {"armor"}
  },
  {
    type = "equipment-grid",
    name = "largest-equipment-grid",
    width = 14,
    height = 14,
    equipment_categories = {"armor"}
	},
	
    {
    type = "armor",
    name = "uranium-armor",
    icon = "__Advanced-Atomics__/graphics/icons/uranium-armor.png",
    tint = {r=0, g=1, b=0, a=0.5},  
    icon_size = 32,  
    resistances =
    {
      {
        type = "physical",
        decrease = 40,
        percent = 40
      },
      {
        type = "acid",
        decrease = 20,
        percent = 30
      },
      {
        type = "explosion",
        decrease = 42,
        percent = 70
      },
      {
        type = "fire",
        decrease = 10,
        percent = 80
      }
    },
    subgroup = "armor",
    order = "f[uranium-armor]",
    stack_size = 1,
    infinite = true,
    equipment_grid = "larger-equipment-grid",
    inventory_size_bonus = 50,
    open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
    close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
  },
  
  {
    type = "recipe",
    name = "uranium-armor",
    enabled = false,
    energy_required = 40,
    ingredients =
    {
      {"effectivity-module-3", 20},
      {"speed-module-3", 20},
      {"advanced-circuit", 80},
      {"processing-unit", 120},
      {"electric-engine-unit", 60},
      {"low-density-structure", 42},
      {"uranium-235", 42}
    },
    result = "uranium-armor",
    requester_paste_multiplier = 1
  },

})
