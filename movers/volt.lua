name = "Volt"
id = "VOLT"
author = "sharp"
texture = "volt.png"
updateIndex = 9201
function Step(this)
    if this.data.willdelete == true then
        this.Delete()
    end
    this.Push(this.direction+1, 1)
    this.Push(this.direction+1, 1)
    this.Push(this.direction+1, 1)
    this.Push(this.direction+1, 1)
    this.Push(this.direction+1, 1)
    if this.data.willdelete == nil then
    local cross = {}
    table.insert(cross,this.GetCell(this.direction+1, 1))
    table.insert(cross,this.GetCell(this.direction-1, 1))
    table.insert(cross,this.GetCell(this.direction+2, 1))
    table.insert(cross,this.GetCell(this.direction-2, 1))
    
        for index, cell in ipairs(cross) do
            if cell.name == "EMPTY" then
                this.Clone(cell.x, cell.y, this.direction)
                if index == 1 then
                    this.GetCell(this.direction+1, 1).data.willdelete = true
                elseif index == 2 then
                    this.GetCell(this.direction-1, 1).data.willdelete = true
                elseif index == 3 then
                    this.GetCell(this.direction+2, 1).data.willdelete = true
                elseif index == 4 then
                    this.GetCell(this.direction-2, 1).data.willdelete = true
                end
            end
        end
    end
    
end