local Fluid  = require("lib.fluid")
local Vector = require("lib.vector")

local Transform = Fluid.component(function(e, position, direction)
   e.position  = position  or Vector(0, 0)
   e.direction = direction or 1
end)

return Transform