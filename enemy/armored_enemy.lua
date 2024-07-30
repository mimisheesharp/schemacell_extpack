name = "Armored Enemy"
id = "ARMORED_ENEMY"
author = "sharp"
texture = "armored_enemy.png"
updateIndex = 9001

function Start(this)
	grid.enemyCount = grid.enemyCount + 1
end

function Push(this, dir, bias)
	this.EmitParticles(1, 0.1, 0.3)
	this.PlaySound("crash.wav")
	this.Delete()
	grid.NewCell("ENEMY" , this.x, this.y, this.direction)
	grid.enemyCount = grid.enemyCount - 1

	return {true, true}
end
