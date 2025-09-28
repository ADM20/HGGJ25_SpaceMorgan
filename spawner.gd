extends Node3D
@onready var memory = preload("res://Scenes/memories.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var mem = memory.instantiate()
	mem.global_position = $".".global_position
	get_parent().add_child(mem)
