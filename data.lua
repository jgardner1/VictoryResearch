--[[ 
  TODO:
  - When research is complete, drop a one-of-a-kind item in their inventory that builds into a 4x4 plaque.
  - If possible, *write the time they have played on the plaque*
  - Note the victory in the score tab
]]
for i=1,16,1 do
  data:extend({
    {
      type = "technology",
      name = "victory-research-"..i,
      icon = "__base__/graphics/icons/alien-science-pack.png",
      prerequisites = (i == 1) and  {"alien-technology"} or {"victory-research-"..(i-1)},
      unit = {
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
        })[i],
        ingredients = {
          {"science-pack-1", 1},
          {"science-pack-2", 1},
          {"science-pack-3", 1},
          {"alien-science-pack", 1}},
        time = 60
      },
      upgrade = true,
      order = "z-z-z-"..i,
    },
  })
end
