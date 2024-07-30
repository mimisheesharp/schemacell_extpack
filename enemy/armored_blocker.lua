name = "Armored Blocker"
id = "ARMORED_BLOCKER"
author = "sharp"
texture = "armored_blocker.png"
updateIndex = 9001

function Start(this)
	grid.enemyCount = grid.enemyCount + 1
end

function Push(this, dir, bias)
    	if bias >= 2 then
	    this.EmitParticles(1, 0.1, 0.3)
	    this.PlaySound("crash.wav")
	    this.Delete()
	    grid.NewCell("BLOCKER" , this.x, this.y, this.direction)
		grid.enemyCount = grid.enemyCount - 1
		return { true, true }
	else 
		return { false, false }
	end

	return 
end
