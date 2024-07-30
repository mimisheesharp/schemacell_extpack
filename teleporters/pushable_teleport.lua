name = "Pushable Teleporter"
id = "PUSHABLE_TELEPORTER"
author = "sharp"
texture = "pushable_teleport.png"
updateIndex = 9001

function Push(this, dir, bias)
    local by_cell = this.GetCell(dir+2, bias)
    local num = 0;
    while true do
        num = num+1
        local get = this.GetCell(dir,num)
        if get.name == "TELEPORTER" and get.name == "PUSHABLE_TELEPORTER" then
        elseif get.name ~= "TELEPORTER" and get.name ~= "PUSHABLE_TELEPORTER" then
            get.Push(dir, bias)
            get = this.GetCell(dir,num)
            local x = get.x
            local y = get.y
            if get.name == "EMPTY" then
                -- print(x .. "and" .. y)
                -- print(by_cell.name)
                if by_cell.name ~= "PUSHABLE_TELEPORTER" and by_cell.name ~= "TELEPORTER" then
                    by_cell.Clone(x, y, by_cell.direction)
                    if this.GetCellXY(x,y).name == by_cell.name then--if cloning successed
                        by_cell.Delete()
                    end
                end
            end
            break;
        end
    end
    return this.Push(dir, bias)
end