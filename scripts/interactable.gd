extends Area2D
var first_texture = load("TEXTURE PATH HERE"); 
var second_texture = load("TEXTURE PATH HERE");

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_body_entered(body: Node2D) -> void:
	if Input.is_action_pressed("ui_right"):
		$Sprite2D.set_texture(second_texture) # Replace with function body.

func _on_Sprite_texture_changed():
	if $Sprite2D.texture != get_parent().first_texture:
		await get_tree().create_timer(3).timeout
		$Sprite2D.set_texture(first_texture)
