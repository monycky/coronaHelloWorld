-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

--load image
local pig = display.newImage("pig.png")

--element position
pig.x = display.contentCenterX
pig.y = display.contentCenterY


--adding physics
local physics = require("physics")
physics.start( )

physics.addBody(pig, "dynamic", {radius = 100})