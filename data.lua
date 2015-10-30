--[[ 
  TODO:
  - When research is complete, drop a one-of-a-kind item in their inventory that builds into a 4x4 plaque.
  - If possible, *write the time they have played on the plaque*
  - Note the victory in the score tab
]]
for i=1,16,1 do
  count = ({
    10000,
    25000,
    50000,
    100000,
    250000,
    500000,
    1000000,
    2500000,
    5000000,
    10000000,
    25000000,
    50000000,
    100000000,
    250000000,
    500000000,
    1000000000,
  })[i]

  data:extend({
    {
      type = "technology",
      name = "victory-research-a-"..i,
      icon = "__base__/graphics/icons/science-pack-1.png",
      prerequisites = (i == 1) and  {} or {"victory-research-a-"..(i-1)},
      unit = {
        count = count,
        ingredients = {
          {"science-pack-1", 1},
        },
        time = 60
      },
      upgrade = true,
      order = "z-z-za-"..i,
    },
    {
      type = "technology",
      name = "victory-research-b-"..i,
      icon = "__base__/graphics/icons/science-pack-2.png",
      prerequisites = (i == 1) and  {} or {"victory-research-b-"..(i-1)},
      unit = {
        count = count,
        ingredients = {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
        },
        time = 60
      },
      upgrade = true,
      order = "z-z-zb-"..i,
    },
    {
      type = "technology",
      name = "victory-research-c-"..i,
      icon = "__base__/graphics/icons/science-pack-3.png",
      prerequisites = (i == 1) and {"battery"} or {"victory-research-c-"..(i-1)},
      unit = {
        count = count,
        ingredients = {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
        },
        time = 60
      },
      upgrade = true,
      order = "z-z-zc-"..i,
    },
  })
end
