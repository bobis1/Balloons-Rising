extends Area2D

var xValue
var resetVelocity: Vector2
var rb

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	xValue = randf_range(-554.0, 555.0)
	resetVelocity = Vector2(0,0)
	rb = body.get_child(0)
	body.global_position = Vector2(xValue,-653)
	
	body.linear_velocity = resetVelocity
	body.angular_velocity = 0.0

	pass # Replace with function body.
