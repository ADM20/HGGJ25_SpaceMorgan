extends Node2D
@onready var radar = $Subradar

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	radar.rotation_degrees += 3
