@tool
extends Area2D
signal interactSprite
signal normalSprite
@export var first_texture = load("ex"); 
@export var second_texture = load("TEXTURE PATH HERE");
@export var glow_texture = load("exx");
var isFirst = true; 
@export var toggleable = true; 
var interactable = false
#@onready var app = $AudioStreamPlayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void: 
	$Sprite2D.set_texture(first_texture)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if toggleable and has_overlapping_bodies():
		interactMess()
	#if isFirst and not toggleable and has_overlapping_bodies():
		#interactMess()
		#print("vibrate")
	
	#***need to make message disappear after interacting with nontoggleable
	if interactable:
		if not toggleable and Input.is_action_pressed("interact"):
			$Sprite2D.set_texture(second_texture)
			Player.interact()
			Input.start_joy_vibration(0, 0.5, 0.5, 0.1)
			isFirst = false 
		if toggleable and Input.is_action_pressed("interact"):
			Player.interact()
			Input.start_joy_vibration(0, 0.5, 0.5, 0.1)
			if isFirst:
				$Sprite2D.set_texture(second_texture)
				#print("togglefirst")
				await get_tree().create_timer(0.2).timeout
				isFirst = false
				
			elif not isFirst:
				$Sprite2D.set_texture(first_texture)
				#print("togglesecond")
				await get_tree().create_timer(0.2).timeout
				isFirst = true
		if not Input.is_action_pressed("interact"):
			Player.normal()

		
func interactMess():
	Player.message.show()
	
func _on_body_exited(body: Node2D) -> void:
	 
		print(has_overlapping_bodies())
		if not has_overlapping_bodies():
			Player.message.hide() 
		if toggleable or isFirst:
			if has_overlapping_bodies():
				Player.message.show() 
			print("hide message")
			interactable = false# Replace with function body.

func _on_body_entered(body: Node2D) -> void:
	if toggleable or  isFirst: 
		Player.message.show()
		print("show message")
		#insert glow texture here 
		interactable = true
