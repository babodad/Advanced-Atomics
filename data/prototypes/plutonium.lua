data:extend(
{
    {
    type = "item",
    name = "plutonium-239",
    icon = "__Advanced-Atomics__/graphics/icons/plutonium-239.png",
    icon_size = 32,
    flags = {"goes-to-main-inventory"},
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
        probability = 0.999,
        amount = 10
      }
    }
  }

})