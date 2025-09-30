extends Node2D
@onready var radar = $Subradar
var gameState
var enemy_location_rad : float = 0.0

func _ready() -> void:
	gameState = get_tree().get_root().get_node("OverShoulder/GameState/")
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	radar.rotation_degrees += 3
	gameState.EnemyLocationRad
	$Enemy.position = Vector2(109.0, 49.0) + Vector2(cos(enemy_location_rad), sin(enemy_location_rad)) * 15
	
