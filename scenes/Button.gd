extends Sprite2D



@export var id: int = 0
@export var answer: String = "Lullabuy"
@export var pointsValue: int = 10

@export var isAlive: bool = false
@export var isInGame: bool = true


# Called when the node enters the scene tree for the first time.
func _ready():
	frame = 0
	$Order.text = str(id)
	$Answer.text = answer
	$PointsValue.text = str(pointsValue)
	
	$Answer.hide()
	$PointsValue.hide()
	if(isInGame == false):
		$Order.text = ""
	$Order.show()
	
	
	
	add_to_group("button")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func reveal(idTarget):

	if id == idTarget and isAlive == false and isInGame == true: 
		isAlive = true # this is a safe measure so that you can't alive the same button twice
		
		$Order.hide()
		$Answer.show()
		$PointsValue.show()
		frame = 1
		
		get_tree().call_group("scoreboard", "update_scoreboard", pointsValue)
	
