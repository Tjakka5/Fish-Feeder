local Fluid = require("lib.fluid")

local Sprite = Fluid.component(function(e, texture, color, layer)
   e.texture = texture
   e.color   = color or {255, 255, 255, 255}
   e.layer   = layer or "foreground"
end)

return Sprite