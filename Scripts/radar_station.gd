extends Node3D
var gameState

func _ready() -> void:
	gameState = get_tree().get_root().get_node("OverShoulder/GameState/")
	
func interact(_grabbing : bool):
	radarScan()
	# print(gameState.EnemyLocation)
	
func radarScan():
	print("Radar Scanning...")

func station():
	pass
func normalize_angle(angle_degrees: float) -> float:
	return fmod(angle_degrees + 360.0, 360.0)
