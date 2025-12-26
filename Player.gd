@warning_ignore("missing_tool")
extends SimpleCharacter
@export var hearts: Array[Node] = []
@export var speedFactor: float = 1.0
@export var stamina: float = 100

@warning_ignore("unused_parameter")
func _process(delta):

	if (Input.is_action_pressed('moveLeft')):
		position += Vector2(-10.0 * speedFactor, 0.0)
	if (Input.is_action_pressed('moveRight')):
		position += Vector2(10.0 * speedFactor, 0.0)
	if (Input.is_action_pressed('moveUp')):
		position += Vector2(0.0 * speedFactor, -10.0)
	if (Input.is_action_pressed('moveDown')):
		position += Vector2(0.0 * speedFactor, 10.0)
	if(Input.is_action_pressed("Sprint")):
		stamina -= 1
		if stamina > 0:
			speedFactor = 2.5
			print(speedFactor)
		if stamina <= 0:
			speedFactor = 1
			for i in 100:
				stamina += 1 
	if(Input.is_action_just_released("Sprint")):
		speedFactor = 1

func _on_body_entered(body):
	if body.is_in_group("HealthPickup"):
		Globals.Lives += 1
		if Globals.Lives == 3:
			hearts[2].show()
		if Globals.Lives == 2:
			hearts[1].show()
			
