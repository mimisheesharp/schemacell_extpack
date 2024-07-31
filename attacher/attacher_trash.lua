name = "Attacher(Trash)"
id = "ATTACHER_TRASH"
author = "sharp"
texture = "attacher_trash.png"
updateIndex = 9201

function Step(this)
    local front = this.GetCell(this.direction, 1)
    if front.name == "MOVER" then
        -- this.Clone(front.x, front.y, front.direction)
        front.Delete()
        grid.NewCell("TRASH_MOVER", front.x, front.y, front.direction)
    end
end