name = "Sticky"
id = "STICKY"
author = "sharp"
texture = "sticky.png"
updateIndex = 9001



local function detector(this, i)
    local fourdirs = {};
    for i in fourdirs do
        print(i.name);
    end
    for i=0,3,1 do
        table.insert(fourdirs, this.GetCell(i, 1));
    end
    for i in fourdirs do
        if i.name == "STICKY" and this.data.stickable == nil or this.data.stickable == true then
            i.data.stickable = false;
        end
    end
    return fourdirs[i]
end
function Push(this, dir, bias)
    -- print(this.name)
    
    -- for key in detarray(this) do
    --     -- print(key.name)
    -- end
    for i=1,4,1 do
        local detected_cell = detector(this, i);
        if detected_cell.name ~= "MOVER" 
        and detected_cell.name ~= "GENERATOR" 
        and detected_cell.name ~= "CWGEAR" 
        and detected_cell.name ~= "STICKY"
        and detected_cell.name ~= "PULLER"then
            detected_cell.Push(dir, bias)
        elseif detected_cell.name == "STICKY" and this.data.stickable == nil or this.data.stickable == true  then
            detected_cell.Push(dir, bias)
        end
    end
    return this.Push(dir, bias);
end

