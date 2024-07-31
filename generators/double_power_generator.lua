name = "Double Power Generator"
id = "DOUBLE_POWER_GENERATOR"
author = "sharp"
texture = "double_power_generator.png"
updateIndex = 9030

function Step(this)
    local back = this.GetCell(this.direction, -1)
    this.GetCell(this.direction, 1).Push(this.direction, 1)
    this.GetCell(this.direction, 1).Push(this.direction, 1)
    this.GetCell(this.direction, 2).Push(this.direction, 1)
    this.GetCell(this.direction, 2).Push(this.direction, 1)
    this.GetCell(this.direction, 3).Push(this.direction, 1)
    this.GetCell(this.direction, 3).Push(this.direction, 1)
    local front1 = this.GetCell(this.direction, 1)
    local front2 = this.GetCell(this.direction, 2)
    if front1.name == "EMPTY" then
        back.Clone(front1.x, front1.y, back.direction)
    end
    if front2.name == "EMPTY" then
        back.Clone(front2.x, front2.y, back.direction)
    end
end