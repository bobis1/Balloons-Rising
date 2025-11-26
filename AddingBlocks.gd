extends Node
var threshold: int
var specialThreshold: int
var falling_stuff = preload("res://Obsts/falling_stuff.tscn")
var flying_stuff = preload("res://Obsts/flying_stuff.tscn")
var arrow_scene = preload("res://Obsts/Arrow.tscn")
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
		var arrow = arrow_scene.instantiate()
		arrow.position = Vector2(-322.0, 128.0)
		add_child(arrow)
		print("Arrow Spawned")
		specialThreshold += 20
		print(get_tree().get_nodes_in_group("DroppedStuff"))
	if Globals.Score >= threshold && Globals.Score < specialThreshold:
		boolOfObject = rng.randi() % 2
		if boolOfObject == 0:
			var falling = falling_stuff.instantiate()
			falling.position = Vector2(-311.0, 0.0)
			add_child(falling)
			print('falling')
		if boolOfObject == 1:
			var flying = flying_stuff.instantiate()
			flying.position = Vector2(-213.0, 396.0)
			add_child(flying)
			print('flying')
		threshold += 10
		print("block spawned")
		print(get_tree().get_nodes_in_group("DroppedStuff"))
	
	
	
	
	

	pass
