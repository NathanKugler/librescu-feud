extends Sprite2D



@export var id: int = 0
@export var answer: String = "Lullabuy"
@export var points_value: int = 10

@export var is_alive: bool = false
@export var is_in_game: bool = true


# Called when the node enters the scene tree for the first time.
func _ready():
	frame = 0
	$Order.text = str(id)
	$Answer.text = answer
	$PointsValue.text = str(points_value)
	
	$Answer.hide()
	$PointsValue.hide()
	if(is_in_game == false):
		$Order.text = ""
		hide()
	$Order.show()
	
	
	
	add_to_group("button")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func reveal(id_target):

	if id == id_target and is_alive == false and is_in_game == true: 
		is_alive = true # this is a safe measure so that you can't alive the same button twice
		
		$Order.hide()
		$Answer.show()
		$PointsValue.show()
		frame = 1
		
		get_tree().call_group("scoreboard", "update_scoreboard", points_value)
		get_tree().call_group("Audio", "ding")
	
