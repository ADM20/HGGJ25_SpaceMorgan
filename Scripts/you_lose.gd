extends Node2D

func _ready():
	# Show the mouse cursor
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _on_return_to_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
