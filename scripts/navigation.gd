extends Node

const kitchen = preload("res://scenes/demoroom copy.tscn")
const livingroom = preload("res://scenes/livingroom.tscn")
const bathroom2 = preload("res://scenes/bathroom_2.tscn")
const cutesy = preload("res://scenes/cutesy_room.tscn")
const guestbedroom = preload("res://scenes/guestbedroom.tscn")
const indoorgarden = preload("res://scenes/indoor_garden.tscn")
const laundryroom = preload("res://scenes/laundryroom.tscn")
const masterbedroom = preload("res://scenes/masterbedroom.tscn")
const nursey = preload("res://scenes/nursery_child_room.tscn")
const startroom = preload("res://scenes/start_room.tscn")
const storageroom = preload("res://scenes/storageroom.tscn")
const studyroom = preload("res://scenes/studyroom.tscn")

const angsty = preload("res://scenes/angsty_room.tscn")
const bathroom1 = preload("res://scenes/bathroom_1.tscn")
const gamesroom = preload("res://scenes/gamesroom.tscn") 
const library = preload("res://scenes/libraryroom.tscn")
const hallway1 = preload("res://scenes/hallway_1.tscn")
const hallway2 = preload("res://scenes/hallway_2.tscn")
const hallway3 = preload("res://scenes/hallway_3.tscn")
const hallway4 = preload("res://scenes/hallway_4.tscn")
'''



'''
var spawndoortag
# Called when the node enters the scene tree for the first time.
func go(leveltag):
	var sceneload
	
	match leveltag:
		"kitchen":
			sceneload = kitchen
		"livingroom":
			sceneload = livingroom
		"bathroom2":
			sceneload = bathroom2
		"cutesy":
			sceneload = cutesy
		"guestbedroom":
			sceneload = guestbedroom
		"indoorgarden":
			sceneload = indoorgarden
		"laundryroom":
			sceneload = laundryroom
		"masterbedroom":
			sceneload = masterbedroom
		"nursey":
			sceneload = nursey
		"startroom":
			sceneload = startroom
		"storageroom":
			sceneload = storageroom 
		"studyroom":
			sceneload = studyroom 
		"library":
			sceneload = library
		"gamesroom":
			sceneload = gamesroom
		"angsty":
			sceneload = angsty
		"bathroom1":
			sceneload = bathroom1
		"hallway1":
			sceneload = hallway1
		"hallway2":
			sceneload = hallway2
		"hallway3":
			sceneload = hallway3
		"hallway4":
			sceneload = hallway4
	if sceneload != null:
		#spawndoortag = spawndoor
		
		get_tree().change_scene_to_packed(sceneload)
