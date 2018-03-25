local Fluid = require("lib.fluid")

local Sprite = Fluid.component(function(e, texture, layer)
   e.texture = texture
   e.layer   = layer
   e.id      = nil
end)

return Sprite