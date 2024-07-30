name = "Self Teleporter"
id = "SELF_TELEPORTER"
author = "sharp"
texture = "self_teleport.png"
updateIndex = 9001

function Step(this)
    local height = math.random(-2, 2)
    local width = math.random(-2, 2)
    local cell = this.GetCellXY(this.x+width, this.y+height)
    if this.GetCellXY(cell.x, cell.y).name == "EMPTY" then
    this.Clone(cell.x, cell.y, this.direction)
    this.Delete()
    end
end