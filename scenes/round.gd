extends Node2D

var CurrentBoardPoints: int = 0

func _ready():
	add_to_group("scoreboard")

func update_scoreboard(points):
	CurrentBoardPoints += points
	$CurrentBoardPoints.text = str(CurrentBoardPoints)
