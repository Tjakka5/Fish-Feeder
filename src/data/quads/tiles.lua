local quad   = love.graphics.newQuad
local sx, sy = 768, 64

return {
   full_1 = quad(  0, 0, 64, 64, sx, sy),
   full_2 = quad( 64, 0, 64, 64, sx, sy),
   full_3 = quad(128, 0, 64, 64, sx, sy),
   full_4 = quad(704, 0, 64, 64, sx, sy),

   top_1 = quad(192, 0, 64, 64, sx, sy),
   top_2 = quad(256, 0, 64, 64, sx, sy),
   top_3 = quad(320, 0, 64, 64, sx, sy),
   top_4 = quad(384, 0, 64, 64, sx, sy),
   top_5 = quad(448, 0, 64, 64, sx, sy),
   top_6 = quad(512, 0, 64, 64, sx, sy),
   top_7 = quad(576, 0, 64, 64, sx, sy),
   top_8 = quad(640, 0, 64, 64, sx, sy),
}