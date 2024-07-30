name = "Blocker"
id = "BLOCKER"
author = "sharp"
texture = "blocker.png"
updateIndex = 9001

function Start(this)
	grid.enemyCount = grid.enemyCount + 1
end

function Push(this, dir, bias)
    if bias >= 2 then
	    this.EmitParticles(1, 0.1, 0.3)
        this.PlaySound("crash.wav")
	    this.Delete()
	    grid.enemyCount = grid.enemyCount - 1
	    return {true, true}
    end
    return {false, false}
end
