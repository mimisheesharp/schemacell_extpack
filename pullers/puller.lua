name = "Puller"
id = "PULLER"
author = "sharp"
texture = "puller.png"
updateIndex = 2000

function Step(this)
    local cell = this.GetCell(this.direction, -1)
    if cell.name ~= "EMPTY" then
        this.ChangeTexture("puller_1.png")
    else
        this.ChangeTexture("puller.png")
    end
    this.Push(this.direction, 1)
    cell.Push(this.direction, 1)
end