extends ProgressBar

@onready var timer = $"../ProgressBar2/FoodTimer"
# Called when the node enters the scene tree for the first time.
func _ready():
	value = Global.motivationlevel


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = Global.motivationlevel
	var section = Global.section
	match section:
		1: timer.wait_time = 5
		2: timer.wait_time = 4.5
		3: timer.wait_time = 4
		4: timer.wait_time = 3.5
		5: timer.wait_time = 3
		6: timer.wait_time = 2.5
		7: timer.wait_time = 2
		8: timer.wait_time = 1.5
		9: timer.wait_time = 1
		10:timer.wait_time = 0.5

func _on_food_timer_timeout():
	Global.set_motivationlevel(Global.motivationlevel - 1)
	value = Global.motivationlevel
