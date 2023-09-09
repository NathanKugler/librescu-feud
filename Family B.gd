extends Window

var points: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("family_b")



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = str(points)


func _input(event):
	incrementDecrement(event)
	
func _on_close_requested():
	queue_free()
	
func updatePoints(p):
	points += p








func incrementDecrement(event):
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			# Check if the mouse click is within editMode check position
			var mouse_position = get_mouse_position()
			var region_rect = Rect2(Vector2(0, 0), Vector2(500, 500)) 
			if region_rect.has_point(mouse_position):
				# Mouse was clicked within the region
				points += 1
		if event.pressed and event.button_index == MOUSE_BUTTON_RIGHT:
			# Check if the mouse click is within editMode check position
			var mouse_position = get_mouse_position()
			var region_rect = Rect2(Vector2(0, 0), Vector2(500, 500)) 
			if region_rect.has_point(mouse_position):
				# Mouse was clicked within the region
				points -= 1
		
