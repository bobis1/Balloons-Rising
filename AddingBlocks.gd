extends Node
var threshold: int
var specialThreshold: int
var falling_stuff = preload("res://Obsts/falling_stuff.tscn").instantiate()
var flying_stuff = preload("res://Obsts/flying_stuff.tscn").instantiate()
var arrow_scene = preload("res://Obsts/Arrow.tscn").instantiate()
var rng = RandomNumberGenerator.new()
var boolOfObject


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	threshold = 10
	specialThreshold = 20
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Globals.Score >= specialThreshold:
		#boolOfObject = rng.randi(x) % 2
		#if boolOfObject == 0:
		for n in 10:
			var falling = falling_stuff
			falling.name = n 
			add_child(falling)
			falling.position = Vector2(-167.0, -100.0)
			
			print("Falling Printd")
		
	if Globals.Score >= threshold && Globals.Score < specialThreshold:
		boolOfObject = rng.randi() % 2
		if boolOfObject == 0:
			var falling = falling_stuff
			add_child(falling)
			falling.position = Vector2(-311.0, 0.0)
			
		if boolOfObject == 1:
			var flying = flying_stuff
			add_child(flying)
			flying.position = Vector2(-213.0, 396.0)
			
		threshold += 10
	
	
	
	
	

	pass
