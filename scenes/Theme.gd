extends CheckButton

class_name music_button

func _ready():
	add_to_group("MusicButton")

func _process(delta):
	toggle_mode = true

func kill():
	toggle_mode = false
