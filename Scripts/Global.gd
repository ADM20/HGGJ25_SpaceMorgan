extends Node
@onready var oxygenlevel = 0
@onready var section = 1
func set_oxygenlevel(level : int):
	oxygenlevel = level
	print(oxygenlevel)
func advance_section():
	section += 1
