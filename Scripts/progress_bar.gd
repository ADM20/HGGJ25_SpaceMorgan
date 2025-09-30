extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready():
	value = Global.oxygenlevel


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = Global.oxygenlevel
	var section = Global.section
	match section:
		1: $OxygenTimer.wait_time = 5
		2: $OxygenTimer.wait_time = 4.5
		3: $OxygenTimer.wait_time = 4
		4: $OxygenTimer.wait_time = 3.5
		5: $OxygenTimer.wait_time = 3
		6: $OxygenTimer.wait_time = 2.5
		7: $OxygenTimer.wait_time = 2
		8: $OxygenTimer.wait_time = 1.5
		9: $OxygenTimer.wait_time = 1
		10:$OxygenTimer.wait_time = 0.5


func _on_oxygen_timer_timeout():
	Global.set_oxygenlevel(Global.oxygenlevel - 1)
	value = Global.oxygenlevel
