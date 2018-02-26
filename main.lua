
local background = display.newImage("background.png", 450, 300)
local rabbit = display.newImageRect("rabbit.png", 90, 130)
rabbit.x = 100
rabbit.y = 125

local function onTouch(event)
if(event.phase == "ended") then 
transition.to(rabbit, {x=event.x, y=event.y})
end
end
Runtime:addEventListener("touch", onTouch)

--Jump scenario
local ground = display.newImage("ground.png")
local sun = display.newImage("sun.png", 200, 50)


ground.x = display.contentCenterX
ground.y = display.contentHeight -1

local physics = require("physics")
physics.start( )

physics.addBody(rabbit, "dynamic", {density = 0, friction = 1, bounce = 1})
physics.addBody(ground, "static", {friction = 1})
