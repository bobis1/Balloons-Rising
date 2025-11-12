extends Area2D

var xValue

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	xValue = randf_range(-554.0, 555.0)
	body.global_position = Vector2(xValue,579.0)
	

	pass # Replace with function body.
