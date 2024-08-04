name = "Remote Generator"
id = "REMOTE_GENERATOR"
author = "sharp"
texture = "remote_generator.png"
updateIndex = 9030

function Step(this)
    local back = this.GetCell(this.direction, -2)
    if back.name ~= "EMPTY" then
        this.GetCell(this.direction, 1).Push(this.direction, 1)
    end
    local front1 = this.GetCell(this.direction, 1)
    if front1.name == "EMPTY" then
        back.Clone(front1.x, front1.y, back.direction)
    end
end
