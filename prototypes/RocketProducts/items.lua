data:extend(
{
 
  {
    type = "module",
    name = "biotech-bio-module-1",
    icon = "__BioTech__/graphics/icons/bio-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "biotech-rocket",
    order = "a[parts]-2",
    category = "effectivity",
    tier = 1,
    stack_size = 50,
    default_request_amount = 10,
    effect = { consumption = {bonus = -0.3}, pollution = {bonus = -0.3}},
    limitation = production
  },

}
)
