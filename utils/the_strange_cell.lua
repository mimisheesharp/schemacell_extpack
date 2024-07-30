name = "the Strange Cell"
id = "STRANGE"
author = "sharp(from CMMM+ by the strange cell)"
texture = "strange.png"
updateIndex = 9201

function Step(this)
    local rnd = math.random(0,7)
    local wait = false
    
    if wait == false then
        if rnd == 0 then
            wait = true--more reduce lag??
        elseif rnd == 1 then
        --nothing
        elseif rnd == 2 then
            this.Push(0, 1)
        elseif rnd == 3 then
            this.Push(1, 1)
        elseif rnd == 4 then
            this.Push(2, 1)
        elseif rnd == 5 then
            this.Push(3, 1)
        elseif rnd == 6 then
            this.GetCell(math.random(0,3), 1).Rotate(1)
        elseif rnd == 7 then
            this.direction = math.random(0,3)
        end
    end

    if wait == true then
        wait = false
    end
end