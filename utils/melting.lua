name = "Melting"
id = "MELTING"
author = "sharp"
texture = "melting.png"
updateIndex = 9201

function Step(this)
    local rnd = math.random(0,3)
    local void_cell = -1;
    local x = this.x;
    local y = this.y;
    local minusy = this.GetCellXY(x, y-1);
    local doubleminus = this.GetCellXY(x-1, y-1);
    local minusx = this.GetCellXY(x-1, y);
    local plusx = this.GetCellXY(x+1, y);
    local main = this.GetCellXY(x,y);
    -- print(rnd)
    if minusy.name ~= this.name and this.GetCellXY(x, y-1).cellType ~= void_cell and rnd == 0 then
        this.clone(x, y-1, main.direction)
    end
    if doubleminus.name ~= this.name and doubleminus.cellType ~= void_cell and rnd == 1 then
        this.clone(x-1, y-1, main.direction)
    end
    if minusx.name ~= this.name and minusx.cellType ~= void_cell and rnd == 2 then
        this.clone(x-1, y, main.direction)
    end
    if plusx.name ~= this.name and plusx.cellType ~= void_cell and rnd == 3 then
        this.clone(x+1, y, main.direction)
    end
    if this.data.tick == 2 then
        this.delete()
    else
        if this.data.tick ~= nil then
            this.data.tick = this.data.tick + 1
        else
            this.data.tick = 0
        end
    end
end
