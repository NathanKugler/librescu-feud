extends Node2D

func _ready():
	pass
	
func _process(delta):
	
	if Input.is_action_just_pressed("button"): # key 0
		get_tree().call_group("button", "reveal" , 0)


