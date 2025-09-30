extends Node3D
@onready var memory = preload("res://Scenes/memories.tscn")
var current_count = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.kill_count > current_count:
		spawn()
		current_count += 1


func _on_timer_timeout():
	spawn()
func spawn():
	var mem = memory.instantiate()
	mem.global_position = $".".global_position
	get_parent().add_child(mem)
