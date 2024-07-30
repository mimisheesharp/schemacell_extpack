name = "180Rotator"
id = "HALF_ROTATOR"
author = "sharp"
texture = "half_rotator.png"
updateIndex = 9201
function Step(this)
    local cells = {}
    for i=1,4,1 do
        table.insert(cells, this.GetCell(i, 1))
    end
    for i in cells do
        i.Rotate(2)
    end
end