extends Node2D
const ts = preload("res://scenes/tileset.tres")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TileMap.tile_set = ts # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
