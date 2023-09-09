extends Node2D

var CurrentBoardPoints: int = 0
@export var RoundMultiplier: float = 1.0
var isCelebrating: bool = false
var canUpdateCurrentScore: bool = true

func _ready():
	add_to_group("scoreboard")
	
	
func _process(_delta):
	if Input.is_action_just_pressed("add_family_a_points"):
		get_tree().call_group("family_a", "updatePoints", RoundMultiplier * CurrentBoardPoints)
		celebrate()
		print("Congradualations Family A!")
		
	if Input.is_action_just_pressed("add_family_b_points"):
		get_tree().call_group("family_b", "updatePoints", RoundMultiplier * CurrentBoardPoints)
		celebrate()
		print("Congradualations Family B!")
		
	$CurrentBoardPoints.text = str(CurrentBoardPoints)
	

func update_scoreboard(points):
	if canUpdateCurrentScore == true:
		CurrentBoardPoints += points
		

func celebrate():
	isCelebrating = true
	CurrentBoardPoints = 0
	canUpdateCurrentScore = false
	CurrentBoardPoints = 0
	isCelebrating = false
	
