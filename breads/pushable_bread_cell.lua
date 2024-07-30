name = "Pushable Bread"
id = "PUSHABLE_BREAD"
author = "sharp(original from samplue)"
texture = "pushable_bread_cell.png"
updateIndex = 9001
function Push(this, dir, bias)
    if (bias >= 3) then
        this.Delete()
        
        this.EmitParticles(0.9, 0.5, 0.2)
        this.PlaySound("crash.wav")
    end
    return this.Push(dir, bias)
end