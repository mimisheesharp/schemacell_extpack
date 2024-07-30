name = "Grid Teleporter"
id = "GRID_TELEPORTER"
author = "sharp"
texture = "grid_teleport.png"
updateIndex = 1

function Push(this, dir, bias)
    local height = math.random(-2, 2)
    local width = math.random(-2, 2)
    local cell = this.GetCellXY(this.x+width, this.y+height)
    local target = this.GetCell(dir,-1)
    if cell.name == "EMPTY" then
        target.Clone(cell.x, cell.y, target.direction)
        target.Delete()
    end
    -- If you want that it can push,
    -- Please uncomment return line.
    return this.Push(dir, bias)
end
