extends CharacterBody2D

@onready var message = $IntMessage
const SPEED = 100.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	velocity = Input.get_vector("left", "right", "up", "down")*SPEED
	


	move_and_slide()
