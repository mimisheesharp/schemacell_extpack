name = "Direction Manager"
id = "DIRECTIONMANAGER"
author = "sharp"
texture = "direction_manager.png"
updateIndex = 9201

function Step(this)
    local cells = {}
    for i = 0, 3, 1 do
        table.insert(cells, this.GetCell(i, 1))
    end
    for cell in cells do
        cell.direction = this.direction
    end
end