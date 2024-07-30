-- name = "Importer 0"
-- id = "IMPORTER_0"
-- author = "sharp"
-- texture = "importer0.png"
-- updateIndex = 9001

-- function Start(this)
-- 	this.data.imported = false
-- end

-- function Push(this, dir, bias)
-- 	this.data.imported = true
-- 	print(CellID("OUTPUTER_0"))
-- 	local outputers = grid.GetCells(CellID("OUTPUTER_0"))
-- 	for _, cell in ipairs(outputers) do
-- 		cell.Push(dir, bias)
-- 	end
-- 	return this.Push(dir, bias)
-- end

-- function Step(this)
-- 	if this.data.imported == true then
-- 		this.data.imported = false
-- 	end
-- end

