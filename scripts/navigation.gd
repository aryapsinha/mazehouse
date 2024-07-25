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

'''
const gamesroom = preload('ex')
const bathroom1 = preload('ex')
const angsty 
const library

const hallway1 = preload('ex')
const hallway2 = preload('ex')
const hallway3 = preload('ex')
const hallway4 = preload('ex')
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
	if sceneload != null:
		#spawndoortag = spawndoor
		
		get_tree().change_scene_to_packed(sceneload)
