extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Player.hide()
	$Camera2D.make_current(); 
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_start_pressed():
	Player.show(); 
	$"/root/Player/Camera2D".make_current(); 
	Navigation.go("startroom")
	Tracking.start()
	Tracking.switch("startroom")
