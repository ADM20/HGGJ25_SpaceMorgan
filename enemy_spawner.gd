extends Node3D
@onready var enemy = preload("res://Scenes/enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func spawn():
	var en = enemy.instantiate()
	en.global_position = $StaticBody3D/CollisionShape3D.global_position
	get_parent().add_child(en)
