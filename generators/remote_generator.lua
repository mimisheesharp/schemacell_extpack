name = "Remote Generator"
id = "REMOTE_GENERATOR"
author = "sharp"
texture = "remote_generator.png"
updateIndex = 9030

function Step(this)
    local back = this.GetCell(this.direction, -2)
    this.GetCell(this.direction, 1).Push(this.direction, 1)
    this.GetCell(this.direction, 1).Push(this.direction, 1)
    local front1 = this.GetCell(this.direction, 1)
    if front1.name == "EMPTY" then
        back.Clone(front1.x, front1.y, back.direction)
    end
end