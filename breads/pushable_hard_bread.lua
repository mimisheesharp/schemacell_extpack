name = "Pushable_Toast"
id = "PUSHABLE_TOAST"
author = "sharp(original from samplue)"
texture = "hard_bread_cell.png"
updateIndex = 9001
function Push(this, dir, bias)
    if (bias >= 6) then
        this.Delete()
        
        this.EmitParticles(0.9, 0.5, 0.2)
        this.PlaySound("crash.wav")
        return {false, true}
    else
        return this.Push(dir, bias)
    end
end