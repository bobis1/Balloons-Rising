extends Area2D
@export var balloonSprite: Sprite2D
var poppedTexture: Texture
@export var hearts: Array[Node] = []
var timer: float
@onready var anim: AnimationPlayer = $AnimationPlayer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Globals.Lives = 3
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_body_entered(body):
	poppedTexture = load("res://Sprites/POP-removebg-preview.png")
	if body.is_in_group("DroppedStuff"):
		Globals.Lives -= 1
		if(Globals.Lives == 2):
			hearts[0].hide()
		if(Globals.Lives == 1):
			hearts[1].hide()
		if(Globals.Lives == 0):
			balloonSprite.texture = poppedTexture
			hearts[2].hide()
			await get_tree().create_timer(1).timeout
			balloonSprite.material.set_shader_parameter("hit_opacity", 0)
			get_tree().change_scene_to_file("res:// main.tscn")
			anim.play("RESET")
			Globals.Score = 0
		anim.active = true
		anim.play("flicker")
		
		

	
	
		
