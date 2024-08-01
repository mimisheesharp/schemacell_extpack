name = "Pusher"
id = "PUSHER"
author = "sharp"
texture = "pusher.png"
updateIndex = 9201

function Step(this)
    local cell = this.GetCell(this.direction+3, 1)
    -- print(cell.name)
    if cell.name ~= "EMPTY" then
        cell.Push(this.direction+3, 1)
    end
end
