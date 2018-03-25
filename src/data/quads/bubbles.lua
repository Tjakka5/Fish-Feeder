local quad   = love.graphics.newQuad
local sx, sy = 128, 64

return {
   big   = quad( 0, 0, 64, 64, sx, sy),
   small = quad(64, 0, 64, 64, sx, sy),
}