
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