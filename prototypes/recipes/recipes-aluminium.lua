---PROCESSING RECIPES---

RECIPE {
    type = "recipe",
    name = "powdered-aluminium",
    category = "ball-mill",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "ore-aluminium", amount = 5}
    },
    results = {
        {type = "item", name = "powdered-aluminium", amount = 1},
        {type = "item", name = "gravel", amount = 1, probability = 0.5}
    },
    main_product = "powdered-aluminium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk01")

RECIPE {
    type = "recipe",
    name = "sodium-aluminate",
    category = "hydroclassifier",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "fluid", name = "al-pulp-04", amount = 300},
        {type = "fluid", name = "water", amount = 300},
        {type = "item", name = "sodium-hydroxide", amount =10},
        {type = "item", name = "sodium-chlorate", amount = 10},
        {type = "item", name = "starch", amount = 5},
    },
    results = {
        {type = "item", name = "sodium-aluminate", amount = 1},
        {type = "fluid", name = "al-tailings", amount = 50},
    },
    main_product = "sodium-aluminate",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk02")

RECIPE {
    type = "recipe",
    name = "crystalized-sodium-aluminate",
    category = "evaporator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "sodium-aluminate", amount = 1},
        {type = "fluid", name = "steam", amount = 500, temperature = 165}, --pyfe pressured air
    },
    results = {
        {type = "item", name = "crystalized-sodium-aluminate", amount = 1},
    },
    main_product = "crystalized-sodium-aluminate",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk03")

RECIPE {
    type = "recipe",
    name = "high-grade-alumina",
    category = "electrolyzer",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "crystalized-sodium-aluminate", amount = 1},--pyht graphite
        {type = "item", name = "sodium-hydroxide", amount =8},
        {type = "item", name = "nichrome", amount =4},
    },
    results = {
        {type = "item", name = "high-grade-alumina", amount = 1},
        {type = "fluid", name = "water", amount = 50},
    },
    main_product = "high-grade-alumina",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk04"):add_ingredient({type = "item", name = "graphite", amount =3})



--SINTER and DRP IMPROVEMENTS



RECIPE {
    type = "recipe",
    name = "reduction-aluminium",
    category = "drp",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-alumina", amount = 1},
        {type = "item", name = "iron-oxide", amount = 2},
        {type = "fluid", name = "diesel", amount = 50},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-aluminium", amount = 1},
    },
    main_product = "reduced-aluminium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-aluminium-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "crystalized-sodium-aluminate", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-aluminium", amount = 1},
    },
    main_product = "sintered-aluminium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk03"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-aluminium-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-aluminium", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-aluminium", amount = 2},
    },
    main_product = "sintered-aluminium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})



--MOLTEN VERSION



RECIPE {
    type = "recipe",
    name = "molten-aluminium-01",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sodium-aluminate", amount = 1},
        {type = "item", name = "borax", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-aluminium", amount = 25},
    },
    main_product = "molten-aluminium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk02"):add_ingredient({type = "item", name = "graphite", amount =3})

RECIPE {
    type = "recipe",
    name = "molten-aluminium-02",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sintered-aluminium", amount = 1},
        {type = "item", name = "borax", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-aluminium", amount = 50},
    },
    main_product = "molten-aluminium",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("aluminium-mk03"):add_ingredient({type = "item", name = "graphite", amount =3})



----PLATES----



RECIPE {
    type = "recipe",
    name = "aluminium-plate-2",
    category = "casting",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "powdered-aluminium", amount = 1},
        {type = "item", name = "borax", amount = 2},
        {type = "fluid", name = "tar", amount = 25},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 2}
    },
    main_product= "aluminium-plate",
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aluminium-mk01")

RECIPE {
    type = "recipe",
    name = "aluminium-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-aluminium", amount = 100},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 20}
    },
    main_product= "aluminium-plate",
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("aluminium-mk02")



---INITIAL PLATE---



RECIPE {
    type = "recipe",
    name = "aluminium-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "ore-aluminium", amount = 6}
    },
    results = {
        {type = "item", name = "aluminium-plate", amount = 1}
    },
    main_product= "aluminium-plate",
    subgroup = "py-rawores-recipes",
    order = "j"
}