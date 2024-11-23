extends CharacterBody2D
var normText = preload("res://assets/player/hci-player-oppressedghost-still.png")
var intText = preload("res://assets/player/hci-player-oppressedghost-interact.png")
@onready var message = $IntMessage
@onready var transmessage = $TransMessage
const SPEED = 100.0
const JUMP_VELOCITY = -400.0
var messageshow = false
var messagehide = false

var toggled_on = false


func _physics_process(delta: float) -> void:
	# Add the gravity.
	velocity = Input.get_vector("left", "right", "up", "down", 0.5)*SPEED
	move_and_slide()
	
	
	
	#temporary end screen trigger -- replace when decided functionality 
	if Input.is_action_pressed("endtrig"):
		Navigation.go("endscreen")
		
		

func interact():
	#await get_tree().create_timer(0.3).timeout
	$Sprite2D.set_texture(intText)
	
	
	
func normal():
	#await get_tree().create_timer(0.3).timeout
	$Sprite2D.set_texture(normText)
	#Input.start_joy_vibration(0, 0.5, 0.5, 0.1)
	



	 # Replace with function body.




func _on_button_pressed() -> void:
	print(toggled_on)
	if toggled_on: 
		$ObjectivePopUp.hide()
		toggled_on = false; 
	else: 
		$ObjectivePopUp.show() 
		toggled_on = true; # Replace with function body.
