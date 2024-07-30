name = "Teleporter"
id = "TELEPORTER"
author = "sharp"
texture = "teleport.png"
updateIndex = 9001

function Push(this, dir, bias)
    local by_cell = this.GetCell(dir+2, bias)
    local num = 0;
    while true do
        num = num+1
        local get = this.GetCell(dir,num)
        if get.name == "TELEPORTER" then
        elseif get.name ~= "TELEPORTER" then
            get.Push(dir, bias)
            get = this.GetCell(dir,num)
            local x = get.x
            local y = get.y
            if get.name == "EMPTY" then
                -- print(x .. "and" .. y)
                -- print(by_cell.name)
                by_cell.Clone(x, y, by_cell.direction)
                if this.GetCellXY(x,y).name == by_cell.name then--if cloning successed
                    by_cell.Delete()
                end
            end
            break;
        end
    end
    return {false, false}
end