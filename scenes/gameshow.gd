extends Node2D

const rounds = [preload("res://scenes/rounds/round_1.tscn"), preload("res://scenes/round.tscn")]
var round_select: int = 0

const family_a: PackedScene = preload("res://scenes/family_a.tscn")
const family_b: PackedScene = preload("res://scenes/family_b.tscn")

var family_a_backup_score = 0
var family_b_backup_score = 0

var current_round = rounds[round_select].instantiate()

@export var winning_points = 0




func _ready():
	add_to_group("gameshow")
	self.add_child(current_round)
	set_winning_points()
	
	
	
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
		
	if Input.is_action_just_pressed("reopen_family_b_score"):
		var family_b_new_window = family_b.instantiate()
		add_child(family_b_new_window)

	if Input.is_action_just_pressed("next_round"):
		next_round()
func sync_family_points():
	if get_tree().get_current_scene().has_node("Family A"):
		family_a_backup_score = $"Family A".points
		
	if get_tree().get_current_scene().has_node("Family B"):
		family_b_backup_score = $"Family B".points
	print("Family A Points: " + str(family_a_backup_score))
	print("Family B Points: " + str(family_b_backup_score))
	
func clear_backup_family_points():
	family_a_backup_score = 0;
	family_b_backup_score = 0;
		
func next_round():
	round_select += 1
	remove_child(current_round)
	current_round = rounds[round_select].instantiate()
	add_child(current_round)

func set_winning_points():
	get_tree().call_group("family_a", "update_winning_points", winning_points)
	get_tree().call_group("family_b", "update_winning_points", winning_points)
