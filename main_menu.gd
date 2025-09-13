extends Node2D

func _ready():
	# Show the mouse cursor
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
func _on_start_pressed() -> void:
		get_tree().change_scene_to_file("res://orthogonal.tscn")
		
func _on_quit_pressed() -> void:
	get_tree().quit()
