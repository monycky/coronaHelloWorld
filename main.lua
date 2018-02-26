-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--load image
local background = display.newImageRect("background.png", 450, 1050)
background.x = display.contentCenterX
background.y = display.contentCenterY

local rabbit = display.newImage("rabbit.png")
local ground = display.newImage("ground.png")
--element position
rabbit.x = display.contentCenterX
rabbit.y = display.contentCenterY

ground.x = display.contentCenterX
ground.y = display.contentHeight -1

--adding physics
local physics = require("physics")
physics.start( )

physics.addBody(rabbit, "dynamic", {density = 0, friction = 1, bounce = 1})
physics.addBody(ground, "static", {friction = 1})


