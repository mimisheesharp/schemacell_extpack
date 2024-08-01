name = "Return"
id = "RETURN"
author = "sharp"
texture = "return.png"
updateIndex = 9201
function Push(this, dir, bias)
    this.data.pushed = true
    this.data.dir = dir
    this.direction = dir
    return this.Push(dir, bias)
end

function Step(this)
    if this.data.pushed == true then
        this.Push(this.data.dir+2, 2)
        this.Push(this.data.dir+2, 2)
        this.data.pushed = false
    end
    
end