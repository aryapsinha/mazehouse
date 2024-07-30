extends Node2D

const ts = preload("res://scenes/tileset.tres")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	 # Replace with function body.
	$TileMap.tile_set = ts

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
