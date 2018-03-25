local quad   = love.graphics.newQuad
local sx, sy = 640, 64

return {
   blue   = quad(  0, 0, 64, 64, sx, sy),
   green  = quad(128, 0, 64, 64, sx, sy),
   orange = quad(256, 0, 64, 64, sx, sy),
   purple = quad(384, 0, 64, 64, sx, sy),
   red    = quad(512, 0, 64, 64, sx, sy),

   blue_dead   = quad( 64, 0, 64, 64, sx, sy),
   green_dead  = quad(192, 0, 64, 64, sx, sy),
   orange_dead = quad(320, 0, 64, 64, sx, sy),
   purple_dead = quad(448, 0, 64, 64, sx, sy),
   red_dead    = quad(576, 0, 64, 64, sx, sy),
}