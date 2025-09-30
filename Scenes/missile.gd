extends CharacterBody3D

@onready var move_dir
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if move_dir != null:
		velocity.x = move_dir.x * 1
		velocity.z = move_dir.z * 1
	move_and_slide()


func _on_area_3d_area_entered(area):
	queue_free()
func set_move_dir(x):
	move_dir = x
