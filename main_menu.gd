extends Node2D

func _ready():
	# Show the mouse cursor
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	
func _on_rd_person_pressed() -> void:
	get_tree().change_scene_to_file("res://over_shoulder.tscn")


func _on_orthogonal_pressed() -> void:
	get_tree().change_scene_to_file("res://orthogonal.tscn")


func _on_d_ship_pressed() -> void:
	get_tree().change_scene_to_file("res://3dorthogonal.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
