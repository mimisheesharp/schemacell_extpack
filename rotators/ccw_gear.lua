name = "CCW Gear"
id = "CCWGEAR"
author = "sharp"
texture = "ccw_gear.png"
updateIndex = 9201
local function SetDirection(this,x,y)
    local cell = this.GetCellXY(this.x+x, this.y+y)
    local dir = cell.direction
    if cell.name ~= "EMPTY"
    and cell.name ~= "TELEPORTER" then
        if y == 1 and x == 0 then
            cell.Push(2, 1)
        elseif y == 0 and x == 1 then
            cell.Push(3, 1)
        elseif y == -1 and x == 0 then
            cell.Push(0, 1)
        elseif y == 0 and x == -1 then
            cell.Push(1, 1)
        elseif y == 1 and x == -1 then
            cell.Push(1, 1)
        elseif y == 1 and x == 1 then
            cell.Push(2, 1)
        elseif y == -1 and x == 1 then
            cell.Push(3, 1)
        elseif y == -1 and x == -1 then
            cell.Push(0, 1)
        end
        cell.Rotate(-1)
    end
end
function Step(this)
    SetDirection(this, 0, 1)
    SetDirection(this, 1, 0)
    SetDirection(this, 0, -1)
    SetDirection(this, -1, 0)
    SetDirection(this, -1, 1)
    SetDirection(this, 1, 1)
    SetDirection(this, 1, -1)
    SetDirection(this, -1, -1)
end
