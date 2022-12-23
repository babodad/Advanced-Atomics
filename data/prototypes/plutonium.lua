data:extend(
{
    {
    type = "item",
    name = "plutonium-239",
    icon = "__Advanced-Atomics__/graphics/icons/plutonium-239.png",
    icon_size = 32,
    flags = {},
    subgroup = "intermediate-product",
    order = "g[uranium-238]z",
    stack_size = 50
    },

    {
    type = "recipe",
    name = "plutonium-nucleosynthesis",
    energy_required = 42,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"uranium-235", 42}, {"uranium-238", 5}},
    icon = "__Advanced-Atomics__/graphics/icons/plutonium-processing.png",
    icon_size = 32,
    subgroup = "intermediate-product",
    order = "r[uranium-processing]z",
    allow_decomposition = false,
    main_product = "",
    results =
    {
      {
        name = "plutonium-239",
        probability = 0.4,
        amount = 5
      },
      {
        name = "uranium-238",
        probability = 0.6,
        amount = 5
      },
      {
        name = "uranium-235",
        probability = 0.99,
        amount = 42
      }
    }
  },

  -- Plutonium fuel
  {
    type = "item",
    name = "plutonium-fuel",
    icon = "__Advanced-Atomics__/graphics/icons/plutonium-fuel.png",
    icon_size = 32,
    flags = {},
    fuel_category = "chemical",
    fuel_value = "1.8GJ",
    fuel_acceleration_multiplier = 3,
    fuel_top_speed_multiplier = 1.25,
    subgroup = "intermediate-product",
    order = "r[plutonium-fuel]",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "plutonium-fuel",
    energy_required = 60,
    enabled = false,
    category = "centrifuging",
    subgroup = "intermediate-product",
    order = "r[plutonium-fuel]",
    ingredients = {
      {"plutonium-239", 2},      
      {"rocket-fuel", 1}
    },
    icon = "__Advanced-Atomics__/graphics/icons/plutonium-fuel.png",
    icon_size = 32,
    results =
    {
      {
        name = "plutonium-fuel",
        probability = 0.9,
        amount = 1
      },
      {
        name = "nuclear-fuel",
        probability = 0.1,
        amount = 1
      }
    }
  },

--- mox-fuel-cell
  {
    type = "item",
    name = "mox-fuel-cell",
    icon = "__Advanced-Atomics__/graphics/icons/mox-fuel-cell.png",
    icon_size = 32,
    flags = {},
    subgroup = "intermediate-product",
    order = "r[uranium-processing]-b[mox-fuel-cell]",
    fuel_category = "nuclear",
    burnt_result = "used-up-uranium-fuel-cell",
    fuel_value = "12GJ",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "mox-fuel-cell",
    energy_required = 10,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 10},
      {"uranium-235", 1},
      {"plutonium-239", 1},
      {"uranium-238", 18}
    },
    result = "mox-fuel-cell",
    result_count = 10
  },

})

if not AA.ENABLED["SSP4Plutonium"] then
--- modify nuclear-fuel-reprocessing
data.raw["recipe"]["nuclear-fuel-reprocessing"].results =
  {
    {
      name = "uranium-238",
      amount = 3,
      probability = 1.0,
    },
    {
      name = "plutonium-239",
      amount = 1,
      probability = 0.1,
    }
  }
end