name = "Powerful Gravity Mover"
id = "POWERFUL_GRAVITY_MOVER"
author = "sharp"
texture = "powerful_gravity_mover.png"
updateIndex = 9201
function Start(this)
    local height = grid.height
    local width = grid.width
end
function Step(this)
    if this.direction == 0 or this.direction == 2 then
        for i = 1, grid.width, 1 do
            this.Push(this.direction,1)
        end
    elseif this.direction == 1 or this.direction == 3 then
        for i = 1, grid.height, 1 do
            this.Push(this.direction,1)
        end
    end
end