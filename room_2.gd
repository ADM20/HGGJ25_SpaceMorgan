extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	switch_section()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func switch_section():
	var section = Global.section
	match section:
		1: $section1.play()
		2: $section2.play()
		3: $section3.play()
		4: $section4.play()
		5: $section5.play()
		6: $section6.play()
		7: $section7.play()
		8: $section8.play()
		9: $section9.play()
		10: $section10.play()


func _on_timer_timeout():
	switch_section()
