name = "CWGenerator"
id = "CWGENERATOR"
author = "sharp"
texture = "cw_generator.png"
updateIndex = 9001
function Step(this)
    local cell = this.GetCell(this.direction, -1)
    local cell2 = this.GetCell(this.direction, 1)
    if cell2.name == "EMPTY" then
        if this.direction == 0 then
            cell.Clone(this.x+1, this.y, cell.direction)
        elseif this.direction == 1 then
            cell.Clone(this.x, this.y-1, cell.direction)
        elseif this.direction == 2 then
            cell.Clone(this.x-1, this.y, cell.direction)
        elseif this.direction == 3 then
            cell.Clone(this.x, this.y+1, cell.direction)
        end
    elseif cell2.name == "WALL" or cell2.name == "TRASH" then
    elseif cell2.name ~= "EMPTY" then
        cell2.Push(this.direction, 1)
        if this.GetCell(this.direction, 1).name == "EMPTY" then
        if this.direction == 0 then
            cell.Clone(this.x+1, this.y, cell.direction)
        elseif this.direction == 1 then
            cell.Clone(this.x, this.y-1, cell.direction)
        elseif this.direction == 2 then
            cell.Clone(this.x-1, this.y, cell.direction)
        elseif this.direction == 3 then
            cell.Clone(this.x, this.y+1, cell.direction)
        end
    end
    end
    if cell.name == "EMPTY" then
        if this.direction == 0 then
            cell2.Clone(this.x-1, this.y, cell.direction)
        elseif this.direction == 1 then
            cell2.Clone(this.x, this.y+1, cell.direction)
        elseif this.direction == 2 then
            cell2.Clone(this.x+1, this.y, cell.direction)
        elseif this.direction == 3 then
            cell2.Clone(this.x, this.y-1, cell.direction)
        end
    elseif cell.name == "WALL" or cell2.name == "TRASH"then
    elseif cell.name ~= "EMPTY" then
        cell.Push(this.direction, -1)
        if this.GetCell(this.direction, 1).name == "EMPTY" then
        if this.direction == 0 then
            cell.Clone(this.x-1, this.y, cell.direction)
        elseif this.direction == 1 then
            cell.Clone(this.x, this.y+1, cell.direction)
        elseif this.direction == 2 then
            cell.Clone(this.x+1, this.y, cell.direction)
        elseif this.direction == 3 then
            cell.Clone(this.x, this.y-1, cell.direction)
        end
    end
    end

    local cells = {}
    for i=1,4,1 do
        table.insert(cells, this.GetCell(i, 1))
    end
    for i in cells do
        i.Rotate(1)
    end
    local cells = {}
end