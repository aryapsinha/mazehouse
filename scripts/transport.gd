extends Area2D
@export var dest_scene: String
@export var portal_tag: String 
@export var spawnin = Vector2(0,0)
@onready var spawn = $Spawn
var transportable = false 

func _process(delta: float) -> void:
	
	if transportable:
		if Input.is_action_pressed("transport"):
			transportable = false 
			Player.position = spawnin
			#print(spawn.position)
			Navigation.go(dest_scene)
			print(dest_scene)
			await get_tree().create_timer(1).timeout
			
	
func _on_body_entered(body: Node2D) -> void:
	print(body)
	#await get_tree().create_timer(0.5).timeout
	#if Input.is_action_pressed("transport"):
	Player.transmessage.show()
	print("show")
	#Player.position = spawnin
	#print(spawn.position)
	#Navigation.go(dest_scene)
	transportable = true 

func _on_body_exited(body: Node2D) -> void:
	Player.transmessage.hide()
	print("hide")
	transportable = false 
	
'''extends Area2D
@export var sceneto = load("res://scenes/cutesy_room.tscn")
@export var spawnin = Vector2(0,0)
var sceney = sceneto.instantiate()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	await get_tree().create_timer(0.5).timeout # Replace with function body.
	Player.position = spawnin
	print(Player.position)
	
	get_tree().change_scene_to_file(sceneto)
	
'''
