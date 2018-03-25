love.math.setRandomSeed(os.time())
love.graphics.setBackgroundColor(204, 241, 253)

local Fluid = require("lib.fluid").init({
   useEvents = true,
})
local Vector = require("lib.vector")

local Quads = require("src.data.quads")

local Game = Fluid.instance()
Fluid.addInstance(Game)

local C = require("src.components")
local S = require("src.systems")

Game:addSystem(S.spriteRenderer(), "draw")

local myEntity = Fluid.entity()
:give(C.transform, Vector(100, 100))
:give(C.sprite, Quads.fish.green, "fish")

Game:addEntity(myEntity)

local myEntity2 = Fluid.entity()
:give(C.transform, Vector(170, 100), -1)
:give(C.sprite, Quads.fish.red, "fish")

Game:addEntity(myEntity2)

local myEntity3 = Fluid.entity()
:give(C.transform, Vector(300, 100), -1)
:give(C.sprite, Quads.fish.blue, "fish")

Game:addEntity(myEntity3)

-- Floor
local startY = 720

for i = 1, 1280, 64 do
   local top_tile = Fluid.entity()
   :give(C.transform, Vector(32 + i, startY - 96), 1)
   :give(C.sprite, Quads.tiles["top_"..love.math.random(1, 8)], "tiles")

   Game:addEntity(top_tile)

   
   local full_tile = Fluid.entity()
   :give(C.transform, Vector(32 + i, startY - 32), 1)
   :give(C.sprite, Quads.tiles["full_"..love.math.random(1, 4)], "tiles")

   Game:addEntity(full_tile)
end