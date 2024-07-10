@tool
extends Area2D

@export var first_texture = load("ex"); 
@export var second_texture = load("TEXTURE PATH HERE");
@export var glow_texture = load("exx");
var isFirst = true; 
@export var toggleable = true; 
var interactable = false


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Sprite2D.set_texture(first_texture)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if interactable:
		if not toggleable and Input.is_action_pressed("interact"):
			$Sprite2D.set_texture(second_texture)
		if toggleable and Input.is_action_pressed("interact"):
			if isFirst:
				$Sprite2D.set_texture(second_texture)
				print("togglefirst")
				await get_tree().create_timer(0.2).timeout
				isFirst = false
				
			elif not isFirst:
				$Sprite2D.set_texture(first_texture)
				print("togglesecond")
				await get_tree().create_timer(0.2).timeout
				isFirst = true
				


func _on_body_entered(body: Node2D) -> void:
	Player.message.show()
	#insert glow texture here 
	interactable = true
	 # Replace with function body.
		

#func _on_Sprite_texture_changed():
	#if $Sprite2D.texture != get_parent().first_texture:
		#await get_tree().create_timer(3).timeout
		#$Sprite2D.set_texture(first_texture)


func _on_body_exited(body: Node2D) -> void:
	Player.message.hide() 
	interactable = false# Replace with function body.
