'''
number of interactions -- increment variable here
- put in vibrating function 


'''


extends Node



var kitchen = 0.0
var livingroom = 0.0
var bathroom2 = 0.0
var cutesy = 0.0
var guestbedroom = 0.0
var indoorgarden = 0.0
var laundryroom = 0.0
var masterbedroom = 0.0
var nursey = 0.0 #spelling error - keep in mind
var startroom = 0.0
var storageroom = 0.0
var studyroom = 0.0
var angsty = 0.0
var bathroom1 = 0.0
var gamesroom = 0.0
var library = 0.0
var hallway1 = 0.0
var hallway2 = 0.0
var hallway3 = 0.0
var hallway4 = 0.0




var curroom = startroom
var totaltime = 0.0; 
var gameend = false; 
var gamestart = false;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if gamestart and !gameend: 
		
		curroom += delta
		totaltime += delta; 
func switch(leveltag): 
	
	match leveltag:
		"kitchen":
			kitchen += curroom
			curroom = 0
			print(kitchen)
			
		"livingroom":
			livingroom += curroom
			curroom = 0
			
		"bathroom2":
			bathroom2 += curroom
			curroom = 0
			
		"cutesy":
			cutesy += curroom
			curroom = 0
			
		"guestbedroom":
			guestbedroom += curroom
			curroom = 0
			
		"indoorgarden":
			indoorgarden += curroom
			curroom = 0
		"laundryroom":
			laundryroom += curroom
			curroom = 0
		"masterbedroom":
			masterbedroom += curroom
			curroom = 0
		"nursey":
			nursey += curroom
			curroom = 0
		"startroom":
			startroom += curroom
			curroom = 0
			print(startroom)
		"storageroom":
			storageroom += curroom
			curroom = 0
		"studyroom":
			studyroom += curroom
			curroom = 0
		"library":
			library += curroom
			curroom = 0
		"gamesroom":
			gamesroom += curroom
			curroom = 0
		"angsty":
			angsty += curroom
			curroom = 0
		"bathroom1":
			bathroom1 += curroom
			curroom = 0
		"hallway1":
			hallway1 += curroom
			curroom = 0
			print(hallway1)
		"hallway2":
			hallway2 += curroom
			curroom = 0
			print(hallway2)
		"hallway3":
			hallway3 += curroom
			curroom = 0
			print(hallway3)
		"hallway4":
			hallway4 += curroom
			curroom = 0
			print(hallway4)
		
func start(): 
	gamestart = true; 
	
func end(): 
	gameend = true; 
	print(totaltime)
	


func send():
	var eventdata = {}
	var datafile = FileAccess.open("res://datasheets/tester.json", FileAccess.READ_WRITE)
	datafile.seek_end()
	eventdata["Total"] = []
	eventdata["Startroom"] = []
	eventdata["Total"].append(totaltime)
	eventdata["Startroom"].append(startroom)
	datafile.store_line(JSON.stringify(eventdata, "\t"))
	datafile.close()
