extends Node
var threshold: int
var falling_stuff = preload("res://Obsts/falling_stuff.tscn")
var flying_stuff = preload("res://Obsts/falling_stuff.tscn")
var rng = RandomNumberGenerator.new()
var boolOfObject


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	threshold = 10
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.Score > threshold:
		boolOfObject = rng.randi() % 2
		if boolOfObject == 0:
			var falling = falling_stuff.instantiate()
			falling.position = Vector2(-311.0, 0.0)
			add_child(falling)
		if boolOfObject == 1:
			var flying = flying_stuff.instantiate()
			flying.position = Vector2(-213.0, 396.0)
			add_child(flying)
			
		threshold += 10
		print("block spawned")

	pass
