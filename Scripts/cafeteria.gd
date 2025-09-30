extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func interact(grabbing : bool):
	if grabbing:
		Global.set_motivationlevel(100)
		print("oxygen")
