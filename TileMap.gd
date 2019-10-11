extends TileMap

var grid = []

var rng = RandomNumberGenerator.new()
func _ready():
	rng.randomize()
	grid.resize(17)
	for n in 17:
		grid[n] = []
		grid[n].resize(17)
		for m in 17:
			if (n%15 == 0 or n%8 == 0) and randi()%28 != 0:
				grid[n][m] = 0
			else:
				grid[n][m] = -1
			
	for n in range(0, 16):
		for m in range(0, 16):
			#if grid[n][m] == 0:
			set_cell(n, m, grid[n][m])	

