extends Node3D
var player
func _ready():
	player = get_tree().get_root().get_node("OverShoulder/ProtoController/")

func interact(grabbing : bool):
	if $CameraTarget/Camera3D.is_current():
		get_tree().get_root().get_node("OverShoulder/ProtoController/Head/Camera3D").make_current()
		player._enable_player_movement(true)
	else: 
		$CameraTarget/Camera3D.make_current()
		player._enable_player_movement(false)
func station():
	pass
