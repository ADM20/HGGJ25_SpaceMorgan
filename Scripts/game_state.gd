extends Node2D

var HP : int = 5
var EnemiesSpawned : int = 0
var EnemyLocation : float = 0.0 # angle in degrees
var EnemyLocationRad : float = 0.0
var player

func _ready() -> void:
	$CanvasLayer/Control/BoxContainer/Label.text = "Current Ship Health = " + str(HP)
	player = get_tree().get_root().get_node("OverShoulder/ProtoController/")

func _on_timer_timeout() -> void:
	EnemiesSpawned = 1
	print("Enemy Spawned at")
	$EnemyControl.visible = true
	EnemyLocation = randf() * 360
	print(EnemyLocation)
	EnemyLocationRad = (deg_to_rad(EnemyLocation))
	print(EnemyLocationRad)
	$DamageTimer.start(randf()*30 + 30)
	
func DestroyEnemy():
	$DamageTimer.stop()
	print("Enemy Eliminated")
	$EnemyControl.visible = false
	EnemiesSpawned = 0
	EnemyLocation = 0.0
	$Timer.start(randf()*60 + 30) # spawn another enemy between 30s and 90s
	$EnemyDestroyControl.visible = true
	$EnemyDestroyControl/EnemyDestroyedTimer.start()
	
# Damage player
func _on_damage_timer_timeout() -> void:
	HP -= 1
	$CanvasLayer/Control/BoxContainer/Label.text = "Current Ship Health = " + str(HP)
	$DamageTimer.start(randf()*30 + 30)
	print("Take Damage From Enemy, remaining HP = ")
	print(HP)
	if HP <= 0:
		get_tree().change_scene_to_file("res://Scenes/you_lose.tscn")
	player.ShakeCamera()


func _on_enemy_destroyed_timer_timeout() -> void:
	$EnemyDestroyControl.visible = false
