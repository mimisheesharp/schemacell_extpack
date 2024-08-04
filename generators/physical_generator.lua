name = "Physical Generator"
id = "PHYSICAL_GENERATOR"
author = "sharp"
texture = "physical_generator.png"
updateIndex = 9030

function Step(this)
    local back = this.GetCell(this.direction, -1)
    if back.name ~= "EMPTY" then
        this.GetCell(this.direction, 1).Push(this.direction, 1)
        this.GetCell(this.direction, 1).Push(this.direction, 1)
    end
    local front1 = this.GetCell(this.direction, 1)
    if front1.name == "EMPTY" then
        back.Clone(front1.x, front1.y, back.direction)
    else
        if back.name ~= "EMPTY" then
        this.Push(this.direction+2, 1)
        local front2 = this.GetCell(this.direction, 1)
        if front2.name == "EMPTY" then
            back.Clone(front2.x, front2.y, back.direction)
        end
        end
    end
end
