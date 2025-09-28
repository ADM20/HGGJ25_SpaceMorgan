extends Node3D
var player

@export var input_left : String = "move_left"
## Name of Input Action to move Right.
@export var input_right : String = "move_right"
## Name of Input Action to move Forward.
@export var input_forward : String = "move_up"
## Name of Input Action to move Backward.
@export var input_back : String = "move_down"
@export var input_shoot : String = "ui_accept"

var active_station : bool = false
var rotation_speed := 90.0 # degrees per second
var direction := 0.0
var gameState
var radar
var canShoot : bool = true

func _ready():
	player = get_tree().get_root().get_node("OverShoulder/ProtoController/")
	gameState = get_tree().get_root().get_node("OverShoulder/GameState/")
	radar = get_tree().get_root().get_node("OverShoulder/RadarStation/")

func interact(grabbing : bool):
	if $GunMesh/CameraTarget/Camera3D.is_current():
		get_tree().get_root().get_node("OverShoulder/ProtoController/Head/Camera3D").make_current()
		player._enable_player_movement(true)
		active_station = false
	else: 
		$GunMesh/CameraTarget/Camera3D.make_current()
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
			$GunMesh.rotate_y(deg_to_rad(rotation_speed * delta * direction))
			
		if Input.is_action_just_pressed(input_shoot) and canShoot:
			var gunRotation = normalize_angle(rad_to_deg($GunMesh.rotation.y))
			var enemyLocation = normalize_angle(gameState.EnemyLocation)
			print(gunRotation)
			print(enemyLocation)
			if abs(gunRotation - enemyLocation) <= 20.0:
				gameState.DestroyEnemy()
				print("HIT!")
			canShoot = false
			$GunMesh/GunTip_debug.rotate_x(deg_to_rad(90))
			$GunCooldown.start()
func normalize_angle(angle_degrees: float) -> float:
	return fmod(angle_degrees + 360.0, 360.0)


func _on_gun_cooldown_timeout() -> void:
	canShoot = true
	$GunMesh/GunTip_debug.rotate_x(deg_to_rad(-90))
