extends Node3D
var current_music

# Called when the node enters the scene tree for the first time.
func _ready():
	switch_base()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func switch_base():
	var section = Global.section
	match section:
		1: 
			$music_base1.play() 
			current_music = $music_base1
		2: 
			$music_base2.play()
			current_music = $music_base2
		3: 
			$music_base3.play()
			current_music = $music_base3
		4: 
			$music_base4.play()
			current_music = $music_base4
		5: 
			$music_base5.play()
			current_music = $music_base5
		6: 
			$music_base6.play()
			current_music = $music_base6
		7: 
			$music_base7.play()
			current_music = $music_base7
		8: 
			$music_base8.play()
			current_music = $music_base8
		9: 
			$music_base9.play()
			current_music = $music_base9
		10:
			$music_base10.play()
			current_music = $music_base10
	$Timer.start()


func _on_timer_timeout():
	current_music.play()


func _on_timer_2_timeout():
	Global.advance_section()
	switch_base()
	print("advance")
