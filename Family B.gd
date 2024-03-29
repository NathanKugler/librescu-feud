extends Window

var points: int = 0
var winning_points:int 
var game_won = false
@export var count_speed:float = 0.01
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("family_b")
	$Confetti.hide()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = str(points)
	check_win()
	buzzer()


func _input(event):
	incrementDecrement(event)
	
func _on_close_requested():
	get_tree().call_group("gameshow", "sync_family_points")
	queue_free()
	
func updatePoints(p):
	for i in p:
		points += 1
		get_tree().call_group("Audio", "popding")
		await get_tree().create_timer(count_speed).timeout

func update_winning_points(p):
	winning_points = p
	print("family B winning points is " + str(winning_points))


func check_win():
	if points >= winning_points:
		win()
		
func win():
	if game_won == false:
		$Confetti.show()
		get_tree().call_group("Audio", "win")
		game_won = true



func incrementDecrement(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			# Check if the mouse click is within editMode check position
			var mouse_position = get_mouse_position()
			var region_rect = Rect2(Vector2(0, 0), Vector2(500, 500)) 
			if region_rect.has_point(mouse_position):
				# Mouse was clicked within the region
				points += 1
				get_tree().call_group("Audio", "popding")
		if event.pressed and event.button_index == MOUSE_BUTTON_RIGHT:
			# Check if the mouse click is within editMode check position
			var mouse_position = get_mouse_position()
			var region_rect = Rect2(Vector2(0, 0), Vector2(500, 500)) 
			if region_rect.has_point(mouse_position):
				# Mouse was clicked within the region
				points -= 1
				get_tree().call_group("Audio", "popding")
		
func buzzer():
	if Input.is_action_just_pressed("family_b_buzzer"):
		get_tree().call_group("Audio", "family_b_buzzer_play")
