name = "Single Cell Generator"
id = "SINGLECELLGENERATOR"
author = "sharp(idea from kocter(single cell generator))"
texture = "singlecellgenerator.png"
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
    end
end