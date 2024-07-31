extends CharacterBody2D
var normText = preload("res://assets/player/hci-player-oppressedghost-still.png")
var intText = preload("res://assets/player/hci-player-oppressedghost-interact.png")
@onready var message = $IntMessage
@onready var transmessage = $TransMessage
const SPEED = 100.0
const JUMP_VELOCITY = -400.0
var messageshow = false
var messagehide = false


func _physics_process(delta: float) -> void:
	# Add the gravity.
	velocity = Input.get_vector("left", "right", "up", "down")*SPEED
	move_and_slide()

func interact():
	$Sprite2D.set_texture(intText)
	
func normal():
	$Sprite2D.set_texture(normText)
