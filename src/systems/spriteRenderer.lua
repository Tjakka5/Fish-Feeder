local Fluid = require("lib.fluid")

local C = require("src.components")

local SpriteRenderer = Fluid.system({C.transform, C.sprite})

function SpriteRenderer:init()

end

function SpriteRenderer:draw()

end

return SpriteRenderer