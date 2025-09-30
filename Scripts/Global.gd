extends Node
@onready var oxygenlevel = 100
@onready var section = 1
@onready var motivationlevel = 100
@onready var kill_count = 0
func set_oxygenlevel(level : int):
	oxygenlevel = level
func advance_section():
	section += 1
func set_motivationlevel(level : int):
	motivationlevel = level
func enemy_hit():
	kill_count += 1
