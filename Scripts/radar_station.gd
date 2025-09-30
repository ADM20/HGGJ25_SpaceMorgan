extends Node3D
var gameState
var player

func _ready() -> void:
	gameState = get_tree().get_root().get_node("OverShoulder/GameState/")
	player = get_tree().get_root().get_node("OverShoulder/ProtoController/")
	
func interact(_grabbing : bool):
	radarScan()
	# print(gameState.EnemyLocation)
	if $Camera3D.is_current():
		print("tryswapradarcam")
		get_tree().get_root().get_node("OverShoulder/ProtoController/Head/Camera3D").make_current()
		player._enable_player_movement(true)
	else: 
		print("failtswp")
		$Camera3D.make_current()
		player._enable_player_movement(false)
	
func radarScan():
	print("Radar Scanning...")

func station():
	pass
func normalize_angle(angle_degrees: float) -> float:
	return fmod(angle_degrees + 360.0, 360.0)
