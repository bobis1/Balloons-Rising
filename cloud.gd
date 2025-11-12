extends Node2D

@export var speed: float = 50.0      
@export var reset_y: float = 600.0   
@export var start_y: float = -100.0  
@export var cloud: Node2D

var start_position: Vector2

func _ready() -> void:
	start_position = position

func _process(delta: float) -> void:
	position.y += speed * delta
	if position.y > reset_y:
		position = Vector2(position.x, start_y)
		cloud.global_position = position
		
		
