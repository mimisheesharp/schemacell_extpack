name = "Triple Power Generator"
id = "TRIPLE_POWER_GENERATOR"
author = "sharp"
texture = "triple_power_generator.png"
updateIndex = 9030

function Step(this)
    local back = this.GetCell(this.direction, -1)
    if back.name ~= "EMPTY" then
    this.GetCell(this.direction, 1).Push(this.direction, 1)
    this.GetCell(this.direction, 1).Push(this.direction, 1)
    this.GetCell(this.direction, 1).Push(this.direction, 1)
    this.GetCell(this.direction, 2).Push(this.direction, 1)
    this.GetCell(this.direction, 2).Push(this.direction, 1)
    this.GetCell(this.direction, 2).Push(this.direction, 1)
    this.GetCell(this.direction, 3).Push(this.direction, 1)
    this.GetCell(this.direction, 3).Push(this.direction, 1)
    this.GetCell(this.direction, 3).Push(this.direction, 1)
    end
    local front1 = this.GetCell(this.direction, 1)
    local front2 = this.GetCell(this.direction, 2)
    local front3 = this.GetCell(this.direction, 3)
    if front1.name == "EMPTY" then
        back.Clone(front1.x, front1.y, back.direction)
    end
    if front2.name == "EMPTY" then
        back.Clone(front2.x, front2.y, back.direction)
    end
    if front3.name == "EMPTY" then
        back.Clone(front3.x, front3.y, back.direction)
    end
end
