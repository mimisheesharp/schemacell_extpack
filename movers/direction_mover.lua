name = "direction_mover"
id = "DIRECTION_MOVER"
author = "sharp"        
texture = "direction_mover.png"
updateIndex = 9201      
function Step(this)          
    for i=0, 3, 1 do
    local front = this.GetCell(i,1)
        if front.name ~= "EMPTY" then 
            if front.name == "VOLT" then
                front.direction = this.direction -1
            else
                front.direction = this.direction
            end
        end
    end
    this.Push(this.direction, 1)     
end