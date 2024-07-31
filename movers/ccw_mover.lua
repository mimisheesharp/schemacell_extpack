name = "CCW Mover"
id = "CCW_MOVER"
author = "sharp"        
texture = "ccw_mover.png"
updateIndex = 9201      
function Step(this)          
local front = this.GetCell(this.direction,1)
if front.name ~= "EMPTY" then 
    front.direction = front.direction - 1
end                
this.Push(this.direction, 1)     
end