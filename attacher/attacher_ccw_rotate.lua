name = "Attacher(CCW Rotate)"
id = "ATTACHER_CCW_ROTATE"
author = "sharp"
texture = "attacher_ccw_rotate.png"
updateIndex = 9201

function Step(this)
    local front = this.GetCell(this.direction, 1)
    if front.name == "MOVER" then
        -- this.Clone(front.x, front.y, front.direction)
        front.Delete()
        grid.NewCell("CCW_MOVER", front.x, front.y, front.direction)
    end
end