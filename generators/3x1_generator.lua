name = "3x1 Generator"
id = "31_GENERATOR"
author = "sharp"
texture = "3x1_generator.png"
updateIndex = 9030

function Step(this)
    local back = this.GetCell(this.direction, -1)
    this.GetCell(this.direction, 1).Push(this.direction, 1)
    if this.direction == 0 or this.direction == 2 then
    this.GetCellXY(this.GetCell(this.direction, 1).x, this.GetCell(this.direction, 1).y+1).Push(this.direction, 1)
    this.GetCellXY(this.GetCell(this.direction, 1).x, this.GetCell(this.direction, 1).y-1).Push(this.direction, 1)
    else
        this.GetCellXY(this.GetCell(this.direction, 1).x+1, this.GetCell(this.direction, 1).y).Push(this.direction, 1)
        this.GetCellXY(this.GetCell(this.direction, 1).x-1, this.GetCell(this.direction, 1).y).Push(this.direction, 1)
    end
    local front = this.GetCell(this.direction, 1)
    if front.name == "EMPTY" then
        back.Clone(front.x, front.y, back.direction)
    end
    if this.direction == 0 or this.direction == 2 then
    if this.GetCellXY(front.x, front.y+1).name == "EMPTY" then
        back.Clone(front.x, front.y+1, back.direction)
    end
    if this.GetCellXY(front.x, front.y-1).name == "EMPTY" then
        back.Clone(front.x, front.y-1, back.direction)
    end
    else
        if this.GetCellXY(front.x+1, front.y).name == "EMPTY" then
            back.Clone(front.x+1, front.y, back.direction)
        end
        if this.GetCellXY(front.x-1, front.y).name == "EMPTY" then
            back.Clone(front.x-1, front.y, back.direction)
        end
    end
end