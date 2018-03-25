local quad   = love.graphics.newQuad
local sx, sy = 512, 128

return {
   bronze  = quad(  0, 0, 128, 128, sx, sy),
   diamond = quad(128, 0, 128, 128, sx, sy),
   gold    = quad(256, 0, 128, 128, sx, sy),
   silver  = quad(384, 0, 128, 128, sx, sy),
}