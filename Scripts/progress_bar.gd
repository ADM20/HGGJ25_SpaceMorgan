extends ProgressBar


# Called when the node enters the scene tree for the first time.
func _ready():
	value = Global.oxygenlevel


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	value = Global.oxygenlevel


func _on_oxygen_timer_timeout():
	Global.set_oxygenlevel(Global.oxygenlevel - 1)
	value = Global.oxygenlevel
