extends AudioStreamPlayer

class_name music_player
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Music")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func kill():
	stop()
