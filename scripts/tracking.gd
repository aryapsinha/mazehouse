'''
number of interactions -- increment variable here
- put in vibrating function 


'''


extends Node

var roomstring = ""

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

var intercount = 0


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
		"kitchen": #k
			kitchen += curroom
			roomstring += "k"
			curroom = 0
			print(kitchen)
			
		"livingroom": #v
			livingroom += curroom
			roomstring += "v"
			curroom = 0
			
		"bathroom2": #d
			bathroom2 += curroom
			roomstring += "d"
			curroom = 0
			
		"cutesy": #c
			cutesy += curroom
			roomstring += "c"
			curroom = 0
			
		"guestbedroom": #g
			guestbedroom += curroom
			roomstring += "g"
			curroom = 0
			
		"indoorgarden": #i
			indoorgarden += curroom
			roomstring += "i"
			curroom = 0
		"laundryroom": #l
			laundryroom += curroom
			roomstring += "l"
			curroom = 0
		"masterbedroom": #m
			masterbedroom += curroom
			roomstring += "m"
			curroom = 0
		"nursey": #n
			nursey += curroom
			roomstring += "n"
			curroom = 0
		"startroom": #t
			startroom += curroom
			roomstring += "t"
			curroom = 0
			print(startroom)
		"storageroom": #o
			storageroom += curroom
			roomstring += "o"
			curroom = 0
		"studyroom": #u
			studyroom += curroom
			roomstring += "u"
			curroom = 0
		"library": #y
			library += curroom
			roomstring += "y"
			curroom = 0
		"gamesroom": #e
			gamesroom += curroom
			roomstring += "e"
			curroom = 0
		"angsty": #a
			angsty += curroom
			roomstring += "a"
			curroom = 0
		"bathroom1": #b
			bathroom1 += curroom
			roomstring += "b"
			curroom = 0
		"hallway1": #1
			hallway1 += curroom
			roomstring += "1"
			curroom = 0
			print(hallway1)
		"hallway2": #2
			hallway2 += curroom
			roomstring += "2"
			curroom = 0
			print(hallway2)
		"hallway3": #3
			hallway3 += curroom
			roomstring += "3"
			curroom = 0
			print(hallway3)
		"hallway4": #4
			hallway4 += curroom
			roomstring += "4"
			curroom = 0
			print(hallway4)
		
func start(): 
	gamestart = true; 
	
func end(): 
	gameend = true; 
	print(totaltime)
	

'''
var file = File.new()
var path = "user://example.txt"

if file.file_exists(path):
	file.open(path, File.READ_WRITE)
	file.seek_end()
else:
	file.open(path, File.WRITE)

# append lines to file
file.store_line("example")

file.close()


'''
func send():
	var eventdata = {}
	var datafile = FileAccess.open("res://datasheets/tester.json", FileAccess.READ)
	var content = datafile.get_as_text()
	var json = JSON.new()
	var parse = json.parse(content)
	var data = json.get_data()
	
	
	eventdata["Interactions"] = intercount
	eventdata["Total"] = totaltime
	eventdata["Rooms"] = roomstring
	
	eventdata["Startroom"] = startroom
	eventdata["Kitchen"] = kitchen
	eventdata["Living Room"] = livingroom
	eventdata["Bathroom 2"] = bathroom2
	eventdata["Cutesy"] = cutesy
	eventdata["Guest Bed"] = guestbedroom
	eventdata["Indoor Garden"] = indoorgarden
	eventdata["Laundry"] = laundryroom
	eventdata["Master"] = masterbedroom
	eventdata["Nursery"] = nursey
	eventdata["Storage"] = storageroom
	eventdata["Study"] = studyroom
	eventdata["Angsty"] = angsty
	eventdata["Bathroom 1"] = bathroom1
	eventdata["Games"] = gamesroom
	eventdata["Library"] = library
	eventdata["Hallway 1"] = hallway1
	eventdata["Hallway 2"] = hallway2
	eventdata["Hallway 3"] = hallway3
	eventdata["Hallway 4"] = hallway4
	
	#eventdata["Total"].append(totaltime)
	#eventdata["Startroom"].append(startroom)
	data["eval"].append(eventdata)
	datafile.close()
	
	var fiwrite = FileAccess.open("res://datasheets/tester.json", FileAccess.WRITE)
	var jstring = JSON.stringify(data, "\t")
	fiwrite.store_string(jstring)
	fiwrite.close()
	
	#datafile.store_line(JSON.stringify(eventdata, "\t"))
	
