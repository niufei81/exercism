local saddle_points = require('lua/saddle-points/saddle-points')
local matrix = {
  { 8, 7, 9 }, --
  { 6, 7, 6 }, --
  { 3, 2, 5 } --
}
print(saddle_points(matrix))