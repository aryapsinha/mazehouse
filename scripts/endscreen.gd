extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Tracking.end()
	Player.hide()
	$Camera2D.make_current(); 
	# Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Tracking.send() # Replace with function body.
