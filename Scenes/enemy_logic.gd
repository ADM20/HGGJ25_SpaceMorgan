extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var x = randi_range(1,4)
	match x:
		1:$EnemySpawner.spawn()
		2:$EnemySpawner2.spawn()
		3:$EnemySpawner3.spawn()
		4:$EnemySpawner4.spawn()
