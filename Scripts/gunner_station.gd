extends Node3D
var player

@export var input_left : String = "move_left"
## Name of Input Action to move Right.
@export var input_right : String = "move_right"
## Name of Input Action to move Forward.
@export var input_forward : String = "move_up"
## Name of Input Action to move Backward.
@export var input_back : String = "move_down"

var active_station : bool = false
var rotation_speed := 90.0 # degrees per second
var direction := 0.0

func _ready():
	player = get_tree().get_root().get_node("OverShoulder/ProtoController/")

func interact(grabbing : bool):
	if $CameraTarget/Camera3D.is_current():
		get_tree().get_root().get_node("OverShoulder/ProtoController/Head/Camera3D").make_current()
		player._enable_player_movement(true)
		active_station = false
	else: 
		$CameraTarget/Camera3D.make_current()
		player._enable_player_movement(false)
		active_station = true
func station():
	pass
	
func _physics_process(delta: float) -> void:
	if active_station:
		direction = 0
		if Input.is_action_pressed("move_left"):
			direction = 1.0
		if Input.is_action_pressed("move_right"): 
			direction = -1.0
		if direction != 0.0:
			rotate_y(deg_to_rad(rotation_speed * delta * direction))
