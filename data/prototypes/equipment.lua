data:extend(
{  

  --- Uranium Shield
  {
  type = "item",
  name = "uranium-shield-equipment",
  icon = "__Advanced-Atomics__/graphics/icons/uranium-shield.png",
  icon_size = 32,
  placed_as_equipment_result = "uranium-shield-equipment",
  flags = {"goes-to-main-inventory"},
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

  --- Plutonium Shield
  {
    type = "item",
    name = "plutonium-shield-equipment",
    icon = "__Advanced-Atomics__/graphics/icons/plutonium-shield.png",
    icon_size = 32,
    placed_as_equipment_result = "plutonium-shield-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "equipment",
    order = "b[shield]-c[plutonium-shield-equipment]",
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

  --- Plutonium Battery
  {
    type = "item",
    name = "radionuclide-battery-equipment",
    icon = "__Advanced-Atomics__/graphics/icons/radionuclide-battery.png",
    icon_size = 32,
    placed_as_equipment_result = "radionuclide-battery-equipment",
    flags = {"goes-to-main-inventory"},
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
      width = 64,
      height = 96,
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
      usage_priority = "terciary"
    },
    categories = {"armor"}
  }
}
)
