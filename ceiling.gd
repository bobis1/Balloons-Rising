extends Area2D

var xValue

var resetVelocity

@export var ScoreInt: Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load("res://Globals.gd")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	xValue = randf_range(-554.0, 555.0)
	body.global_position = Vector2(xValue,579.0)
	resetVelocity = Vector2(0,0)
	body.linear_velocity = resetVelocity
	body.angular_velocity = 0.0
	body.rotation_degrees = 0.0
	Globals.Score += 1
	print(Globals.Score)
	ScoreInt.text = str(Globals.Score)
		

	pass # Replace with function body.
