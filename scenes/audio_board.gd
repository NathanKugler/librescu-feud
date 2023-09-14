extends Control



func _ready():
	add_to_group("Audio")


func _process(delta):
	pass

func win():
	$ThemeMusic.play() 

func _on_theme_toggled(button_pressed):
	if button_pressed:
		$ThemeMusic.play()
	else:
		$ThemeMusic.stop()

func _on_kill_pressed():
	get_tree().call_group("Music", "kill")
	get_tree().call_group("MusicButton", "kill")
