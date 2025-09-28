extends Node3D
var gameState

func _ready() -> void:
	gameState = get_tree().get_root().get_node("OverShoulder/GameState/")
	
func interact(_grabbing : bool):
	radarScan()
	# print(gameState.EnemyLocation)
	
func radarScan():
	if gameState.EnemiesSpawned == 1:
		$EnemyLocationHead.global_transform = Transform3D(Basis(Vector3.UP, gameState.EnemyLocationRad),$EnemyLocationHead.global_transform.origin)
	print("Radar Scanning...")

func station():
	pass
func normalize_angle(angle_degrees: float) -> float:
	return fmod(angle_degrees + 360.0, 360.0)
