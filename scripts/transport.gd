extends Area2D
@export var sceneto = load("path")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	await get_tree().create_timer(0.5).timeout # Replace with function body.
	get_tree().change_scene_to_file(sceneto.get_path())
