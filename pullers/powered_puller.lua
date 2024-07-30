name = "Powered Puller"
id = "POWERED_PULLER"
author = "sharp"
texture = "poweredpuller.png"
updateIndex = 2000

function Step(this)
    local cell = this.GetCell(this.direction, -1)
    local cell2 = this.GetCell(this.direction, -2)
    this.Push(this.direction, 1)
    if cell.name ~= "EMPTY" then
        this.ChangeTexture("poweredpuller_1.png")
        cell.Push(this.direction, 1)
        cell2.Push(this.direction, 1)
    else
        this.ChangeTexture("powerpuller.png")
    end
    
    
end