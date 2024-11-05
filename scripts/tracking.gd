'''
number of interactions -- increment variable here
- put in vibrating function 


'''


extends Node

var totaltime = 0.0; 
var gameend = false; 
var gamestart = false;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if gamestart and !gameend: 
		totaltime += delta; 

func start(): 
	gamestart = true; 
	
func end(): 
	gameend = true; 
	print(totaltime)
