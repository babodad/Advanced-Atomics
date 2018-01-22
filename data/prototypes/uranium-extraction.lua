data:extend({
  {
    type = "recipe",
    name = "water2uranium",
    energy_required = 120,
    category = "chemistry",
    icon = "__Advanced-Atomics__/graphics/icons/water2uranium.png",
    icon_size = 32,
    enabled = false,
    ingredients =
    {
      {"plastic-bar", 40},
      {type = "fluid", name="water", amount=1000},
      {type = "fluid", name = "sulfuric-acid", amount = 40}
    },
    result = "uranium-ore",
    result_count = 10
  },

  {
    type = "recipe",
    name = "iron2uranium",
    energy_required = 60,
    category = "chemistry",
    icon = "__Advanced-Atomics__/graphics/icons/iron2uranium.png",
    icon_size = 32,
    enabled = false,
    ingredients =
    {
      {"iron-ore", 100}, 
      {type = "fluid", name = "sulfuric-acid", amount = 100}
    },
    result = "uranium-ore",
    result_count = 10
  },

  {
    type = "recipe",
    name = "copper2uranium",
    energy_required = 60,
    category = "chemistry",
    icon = "__Advanced-Atomics__/graphics/icons/copper2uranium.png",
    icon_size = 32,
    enabled = false,
    ingredients =
    {
      {"copper-ore", 100}, 
      {type = "fluid", name = "sulfuric-acid", amount = 100}
    },
    result = "uranium-ore",
    result_count = 10
  },

})