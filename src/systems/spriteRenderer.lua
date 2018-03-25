local Fluid = require("lib.fluid")

local Quads = require("src.data.quads")

local C = require("src.components")

local SpriteRenderer = Fluid.system({C.transform, C.sprite})

function SpriteRenderer:init()
   self.layers = {}

   for name, _ in pairs(Quads) do
      local layer = {
         batch = love.graphics.newSpriteBatch(love.graphics.newImage("assets/"..name..".png"), 1000),
         open  = {},
      }

      for i = 1, 1000 do
         layer.batch:add(nil, nil, nil, 0, 0)
         layer.open[i] = i
      end

      self.layers[#self.layers + 1] = layer
      self.layers[name] = layer
   end
end

function SpriteRenderer:entityAdded(e)
   local sprite = e:get(C.sprite)
   local layer  = self.layers[sprite.layer]

   sprite.id = layer.open[#layer.open]
   layer.open[#layer.open] = nil
end

function SpriteRenderer:entityRemoved(e)
   local sprite = e:get(C.sprite)
   local layer  = self.layers[sprite.layer]

   layer.open[#layer.open + 1] = sprite.id
   layer.batch:set(sprite.id, nil, nil, nil, 0, 0)

   sprite.id = nil
end

function SpriteRenderer:draw()
   local e
   for i = 1, self.pool.size do
      e = self.pool:get(i)

      local transform = e:get(C.transform)
      local sprite    = e:get(C.sprite)

      local layer = self.layers[sprite.layer]

      local _, _, w, h = sprite.texture:getViewport()
      local ox, oy = w/2, h/2

      layer.batch:set(sprite.id, sprite.texture, transform.position.x, transform.position.y, nil, transform.direction, 1, ox, oy)
   end

   for i = 1, #self.layers do
      love.graphics.draw(self.layers[i].batch)
   end
end

return SpriteRenderer