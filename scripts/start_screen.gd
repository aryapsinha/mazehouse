extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Player.hide()
	$"Camera2D/SettingsMenu/Haptics".text = Tracking.haptics
	$Camera2D.make_current(); 
	 # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_back_pressed() -> void:
	$"Camera2D/SettingsMenu".hide();
	$"Camera2D/SettingsButton".show()
	$"Camera2D/StartButton".show() # Replace with function body.


func _on_settings_button_pressed() -> void:
	$"Camera2D/SettingsButton".hide()
	$"Camera2D/StartButton".hide()
	$"Camera2D/SettingsMenu".show();
	
	 # Replace with function body.


func _on_start_button_pressed() -> void:
	Player.show(); 
	$"/root/Player/Camera2D".make_current(); 
	Navigation.go("startroom")
	Tracking.start() # Replace with function body.
	Tracking.switch("startroom")


func _on_haptics_pressed() -> void:
	Tracking.haptics = !Tracking.haptics
	$"Camera2D/SettingsMenu/Haptics".text = Tracking.haptics
	 # Replace with function body.
