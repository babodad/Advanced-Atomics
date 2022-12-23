data:extend(
{  
  --- Uranium Shield
  {
  type = "item",
  name = "uranium-shield-equipment",
  icon = "__Advanced-Atomics__/graphics/icons/uranium-shield.png",
  icon_size = 32,
  placed_as_equipment_result = "uranium-shield-equipment",
  flags = {},
  subgroup = "equipment",
  order = "b[shield]-c[uranium-shield-equipment]",
  stack_size = 50,
  default_request_amount = 10
  },

   {
    type = "energy-shield-equipment",
    name = "uranium-shield-equipment",
    sprite =
    {
      filename = "__Advanced-Atomics__/graphics/equipment/uranium-shield-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 3,
      type = "full"
    },
    max_shield_value = 400,
    energy_source =
    {
      type = "electric",
      buffer_capacity = "480kJ",
      input_flow_limit = "500kW",
      usage_priority = "primary-input"
    },
    energy_per_shield = "80kJ",
    categories = {"armor"}
  },

  {
    type = "recipe",
    name = "uranium-shield-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"energy-shield-mk2-equipment", 10},
	    {"advanced-circuit", 40},
      {"processing-unit", 20},
      {"uranium-235", 10}
    },
    result = "uranium-shield-equipment"
  },

})

data:extend(
{
  --- Plutonium Shield
  {
    type = "item",
    name = "plutonium-shield-equipment",
    icon = "__Advanced-Atomics__/graphics/icons/plutonium-shield.png",
    icon_size = 32,
    placed_as_equipment_result = "plutonium-shield-equipment",
    flags = {},
    subgroup = "equipment",
    order = "b[shield]-d[plutonium-shield-equipment]",
    stack_size = 50,
    default_request_amount = 10
   },
     {
      type = "energy-shield-equipment",
      name = "plutonium-shield-equipment",
      sprite =
      {
        filename = "__Advanced-Atomics__/graphics/equipment/plutonium-shield-equipment.png",
        width = 64,
        height = 64,
        priority = "medium"
      },
      shape =
      {
        width = 3,
        height = 3,
        type = "full"
      },
      max_shield_value = 500,
      energy_source =
      {
        type = "electric",
        buffer_capacity = "600kJ",
        input_flow_limit = "800kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = "100kJ",
      categories = {"armor"}
    },

    {
      type = "recipe",
      name = "plutonium-shield-equipment",
      enabled = false,
      energy_required = 10,
      ingredients =
      {
        {"uranium-shield-equipment", 10},
        {"advanced-circuit", 40},
        {"processing-unit", 20},
        {"plutonium-239", 10}
      },
      result = "plutonium-shield-equipment"
    },

  --- Plutonium Battery
  {
    type = "item",
    name = "radionuclide-battery-equipment",
    icon = "__Advanced-Atomics__/graphics/icons/radionuclide-battery.png",
    icon_size = 32,
    placed_as_equipment_result = "radionuclide-battery-equipment",
    flags = {},
    subgroup = "equipment",
    order = "c[battery]-c[radionuclide-battery]",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "battery-equipment",
    name = "radionuclide-battery-equipment",
    sprite =
    {
      filename = "__Advanced-Atomics__/graphics/equipment/radionuclide-battery-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "750MJ",
      input_flow_limit = "4GW",
      output_flow_limit = "4GW",
      usage_priority = "tertiary"
    },
    categories = {"armor"}
  },

  {
    type = "recipe",
    name = "radionuclide-battery-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
	    {"steel-plate", 30},
      {"advanced-circuit", 40},
      {"processing-unit", 30},
      {"plutonium-239", 20}
    },
    result = "radionuclide-battery-equipment"
  },
  
})




