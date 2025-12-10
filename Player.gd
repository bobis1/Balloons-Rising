@warning_ignore("missing_tool")
extends SimpleCharacter
@export var hearts: Array[Node] = []

@warning_ignore("unused_parameter")
func _process(delta):
	if (Input.is_action_pressed('moveLeft')):
		position += Vector2(-10.0, 0.0)
	if (Input.is_action_pressed('moveRight')):
		position += Vector2(10.0, 0.0)
	if (Input.is_action_pressed('moveUp')):
		position += Vector2(0.0, -10.0)
	if (Input.is_action_pressed('moveDown')):
		position += Vector2(0.0, 10.0)


func _on_body_entered(body):
	if body.is_in_group("HealthPickup"):
		Globals.Lives += 1
		if Globals.Lives == 3:
			hearts[2].show()
		if Globals.Lives == 2:
			hearts[1].show()
			
