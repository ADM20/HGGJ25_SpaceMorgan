extends Node2D

var HP : int = 5
var EnemiesSpawned : int = 0
var EnemyLocation : float = 0.0 # angle in degrees
var EnemyLocationRad

func _on_timer_timeout() -> void:
	EnemiesSpawned = 1
	print("Enemy Spawned at")
	EnemyLocation = randf() * 360
	print(EnemyLocation)
	EnemyLocationRad = (deg_to_rad(EnemyLocation))
	print(EnemyLocationRad)
	$DamageTimer.start(randf()*30 + 30)
	
func DestroyEnemy():
	$DamageTimer.stop()
	print("Enemy Eliminated")
	EnemiesSpawned = 0
	EnemyLocation = 0.0
	$Timer.start(randf()*60 + 30) # spawn another enemy between 30s and 90s

# Damage player
func _on_damage_timer_timeout() -> void:
	HP -= 1
	$DamageTimer.start(randf()*30 + 30)
	print("Take Damage From Enemy, remaining HP = ")
	print(HP)
	if HP <= 0:
		get_tree().change_scene_to_file("res://Scenes/you_lose.tscn")
