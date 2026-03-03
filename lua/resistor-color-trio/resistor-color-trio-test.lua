local rcd = require("lua/resistor-color-trio/resistor-color-trio")

local num, unit = rcd.decode('red', 'black', 'red')
print(num, unit)
