extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Player.hide()
	$Camera2D.make_current(); 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	Player.show(); 
	$"/root/Player/Camera2D".make_current(); 
	Navigation.go("startroom")
	pass # Replace with function body.
