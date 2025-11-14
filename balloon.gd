extends Area2D
@export var balloonSprite: Sprite2D
var poppedTexture: Texture

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_body_entered(body):
	poppedTexture = load("res://Sprites/POP-removebg-preview.png")
	if body.is_in_group("DroppedStuff"):
		balloonSprite.texture = poppedTexture
		await get_tree().create_timer(1).timeout
		get_tree().change_scene_to_file("res:// main.tscn")
		Globals.Score = 0
	

	
	
		
