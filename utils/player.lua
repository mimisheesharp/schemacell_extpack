name = "Player"
id = "PLAYER"
author = "sharp(from CMMM+ by the strange cell)"
texture = "player.png"
updateIndex = 9201
function Push(this, dir, bias)
    if this.data.Isinput == false then
        this.PlaySound("crash.wav")
        this.Delete()
        return {false, true}
    else
        this.data.Isinput = false
    end
    return {false, false}
end
function Step(this)
    if input.IsPressed("UpArrow") == true then
        this.Push(3, 1)
    elseif input.IsPressed("DownArrow") == true then
        this.Push(1, 1)
    elseif input.IsPressed("RightArrow") == true then
        this.Push(0, 1)
    elseif input.IsPressed("LeftArrow") == true then
        this.Push(2, 1)
    end
end
