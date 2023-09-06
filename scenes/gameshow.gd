extends Node2D

const start_round = preload("res://scenes/round.tscn")
const family_a = preload("res://scenes/family_a.tscn")


func _ready():
	var current_round = start_round.instantiate()
	self.add_child(current_round)
	
	
func _process(delta):
	
	# THIS IS THE PARENT BUTTON THAT ISN'T IN THE GAME
	if Input.is_action_just_pressed("button"): # key 0
		get_tree().call_group("button", "reveal" , 0)
		
		
	if Input.is_action_just_pressed("button_1"): # key 1
		get_tree().call_group("button", "reveal" , 1)
	if Input.is_action_just_pressed("button_2"): # key 2
		get_tree().call_group("button", "reveal" , 2)
	if Input.is_action_just_pressed("button_3"): # key 3
		get_tree().call_group("button", "reveal" , 3)
	if Input.is_action_just_pressed("button_4"): # key 4
		get_tree().call_group("button", "reveal" , 4)
	if Input.is_action_just_pressed("button_5"): # key 5
		get_tree().call_group("button", "reveal" , 5)
	if Input.is_action_just_pressed("button_6"): # key 6
		get_tree().call_group("button", "reveal" , 6)
	if Input.is_action_just_pressed("button_7"): # key 7
		get_tree().call_group("button", "reveal" , 7)
	if Input.is_action_just_pressed("button_8"): # key 8
		get_tree().call_group("button", "reveal" , 8)
		
		
	# in case the score windows gets closed
	if Input.is_action_just_pressed("reopen_family_a_score"):
		var family_a_new_window = family_a.instantiate()
		add_child(family_a_new_window)
