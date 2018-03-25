local quad   = love.graphics.newQuad
local sx, sy = 512, 64

return {
   algae_1 = quad( 0, 0, 64, 64, sx, sy),
   algae_2 = quad(64, 0, 64, 64, sx, sy),
   algae_3 = quad(128, 0, 64, 64, sx, sy),
   algae_4 = quad(192, 0, 64, 64, sx, sy),

   rock_1 = quad(256, 0, 64, 64, sx, sy),
   rock_2 = quad(320, 0, 64, 64, sx, sy),

   star_1 = quad(384, 0, 64, 64, sx, sy),
   star_2 = quad(448, 0, 64, 64, sx, sy),
}