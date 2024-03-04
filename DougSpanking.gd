extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
var scene_finished = false
@onready var scene_bg = $SceneBg

func _ready():
	dialogue_label.start_dialogue()

func _process(delta):
	if dialogue_label.message_id == 0:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_1.png")		
		if SaveManager.save.doug_cg["doug_1"] == false:
				SaveManager.save.doug_cg["doug_1"] = true
	if dialogue_label.message_id == 2:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_2.png")		
		if SaveManager.save.doug_cg["doug_2"] == false:
				SaveManager.save.doug_cg["doug_2"] = true
	if dialogue_label.message_id == 5: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_3.png")		
		if SaveManager.save.doug_cg["doug_3"] == false:
				SaveManager.save.doug_cg["doug_3"] = true
	if dialogue_label.message_id == 7: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4.png")
		if SaveManager.save.doug_cg["doug_4"] == false:
				SaveManager.save.doug_cg["doug_4"] = true
	if dialogue_label.message_id == 9: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-2.png")		
		if SaveManager.save.doug_cg["doug_5"] == false:
				SaveManager.save.doug_cg["doug_5"] = true
	if dialogue_label.message_id == 12: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")
		if SaveManager.save.doug_cg["doug_6"] == false:
				SaveManager.save.doug_cg["doug_6"] = true
	if dialogue_label.message_id == 16: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")		
		if SaveManager.save.doug_cg["doug_7"] == false:
				SaveManager.save.doug_cg["doug_7"] = true
	if dialogue_label.message_id == 17: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")

	if dialogue_label.message_id == 18: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")

	if dialogue_label.message_id == 19: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")

	if dialogue_label.message_id == 20: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")

	if dialogue_label.message_id == 21: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")				

	if dialogue_label.message_id == 25: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")		

	if dialogue_label.message_id == 26: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")		

	if dialogue_label.message_id == 27: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_6.png")		
		if SaveManager.save.doug_cg["doug_8"] == false:
				SaveManager.save.doug_cg["doug_8"] = true
	if dialogue_label.message_id == 29: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")		

	if dialogue_label.message_id == 30: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")		

	if dialogue_label.message_id == 34: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")

	if dialogue_label.message_id == 35:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")

	if dialogue_label.message_id == 38:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")	

	if dialogue_label.message_id == 39: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")	

	if dialogue_label.message_id == 42: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_7.png")
		if SaveManager.save.doug_cg["doug_9"] == false:
				SaveManager.save.doug_cg["doug_9"] = true
	if dialogue_label.message_id == 47: 
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_8.png")
		if SaveManager.save.doug_cg["doug_10"] == false:
				SaveManager.save.doug_cg["doug_10"] = true
	if dialogue_label.message_id == 50:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_7.png")

	if dialogue_label.message_id == 53:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_9.png")
		if SaveManager.save.doug_cg["doug_11"] == false:
				SaveManager.save.doug_cg["doug_11"] = true
	if dialogue_label.message_id == 55:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_10.png")
		if SaveManager.save.doug_cg["doug_12"] == false:
				SaveManager.save.doug_cg["doug_12"] = true
	if dialogue_label.message_id == 57:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_11.png")
		if SaveManager.save.doug_cg["doug_13"] == false:
				SaveManager.save.doug_cg["doug_13"] = true
	
	if dialogue_label.message_id == 59:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			SaveManager.save.bar["visited"] = false
			SaveManager.save.park["visited"] = false
			SaveManager.save.boutique["visited"] = false
			SaveManager.save.hospital["visited"] = false
			SaveManager.save.old_shop["visited"] = false
			SaveManager.save.same_day = false
			get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
#
## Called when the node enters the scene tree for the first time.
#func _ready():
#		#Repetition
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
