extends Node
var threshold: int
var specialThreshold: int
var falling_stuff: PackedScene = preload("res://Obsts/falling_stuff.tscn")
var flying_stuff: PackedScene = preload("res://Obsts/flying_stuff.tscn")
var arrow_scene: PackedScene = preload("res://Obsts/Arrow.tscn")
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
			var falling = create_instance(falling_stuff)
			add_child(falling)
			falling.position = Vector2(-167.0, -100.0)
			print("Falling Printed")
		specialThreshold += 20
		
	if Globals.Score >= threshold && Globals.Score < specialThreshold:
		boolOfObject = rng.randi() % 2
		if boolOfObject == 0:
			var falling = create_instance(falling_stuff)
			add_child(falling)
			falling.position = Vector2(-311.0, 0.0)
			
		if boolOfObject == 1:
			var flying = create_instance(flying_stuff)
			add_child(flying)
			flying.position = Vector2(-213.0, 396.0)
			
		threshold += 10
	
	
	
	
	

	pass
	
func create_instance(add):
	var scene_instance = add.instantiate()
	return scene_instance
