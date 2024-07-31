name = "Line Former"
id = "LINE_FORMER"
author = "sharp"        
texture = "line_former.png"
updateIndex = 9201      
function Step(this)
    if this.GetCell(this.direction, 1).name ~= "EMPTY" then
        for i = 1, 9999, 1 do
            if this.GetCell(this.direction, i).name == "EMPTY" then break; end 
            this.GetCell(this.direction, i).direction = this.direction
        end
    end
    this.Push(this.direction, 1)
end