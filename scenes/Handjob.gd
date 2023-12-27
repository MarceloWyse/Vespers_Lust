extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_1.png")
	if SaveManager.save.deckard_cg["deckard_11"] == false:
		SaveManager.save.deckard_cg["deckard_11"] = true
func _process(delta):
	if dialogue_label.message_id == 2:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_2.png")
		if SaveManager.save.deckard_cg["deckard_12"] == false:
			SaveManager.save.deckard_cg["deckard_12"] = true
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_3.png")
		if SaveManager.save.deckard_cg["deckard_13"] == false:
			SaveManager.save.deckard_cg["deckard_13"] = true	
	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_4.png")
		if SaveManager.save.deckard_cg["deckard_14"] == false:
			SaveManager.save.deckard_cg["deckard_14"] = true
	if dialogue_label.message_id == 22:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_5.png")
		if SaveManager.save.deckard_cg["deckard_15"] == false:
			SaveManager.save.deckard_cg["deckard_15"] = true	
	if dialogue_label.message_id == 29:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_6.png")
		if SaveManager.save.deckard_cg["deckard_16"] == false:
			SaveManager.save.deckard_cg["deckard_16"] = true	
	if dialogue_label.message_id == 32:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_7.png")
		if SaveManager.save.deckard_cg["deckard_17"] == false:
			SaveManager.save.deckard_cg["deckard_17"] = true	
	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_8.png")
		if SaveManager.save.deckard_cg["deckard_18"] == false:
			SaveManager.save.deckard_cg["deckard_18"] = true	
	if dialogue_label.message_id == 48:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_9.png")
		if SaveManager.save.deckard_cg["deckard_19"] == false:
			SaveManager.save.deckard_cg["deckard_19"] = true	
	if dialogue_label.message_id == 57:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_10.png")
		if SaveManager.save.deckard_cg["deckard_20"] == false:
			SaveManager.save.deckard_cg["deckard_20"] = true	
	if dialogue_label.message_id == 61:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_11.png")	
		if SaveManager.save.deckard_cg["deckard_21"] == false:
			SaveManager.save.deckard_cg["deckard_21"] = true	
	if dialogue_label.message_id == 64:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
