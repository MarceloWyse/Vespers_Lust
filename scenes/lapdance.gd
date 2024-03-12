extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

func _ready():
	SaveManager.save.player_status["lewdness"] += 5
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_15.png")
	if SaveManager.save.deckard_cg["deckard_1"] == false:
		SaveManager.save.deckard_cg["deckard_1"] = true
	
func _process(delta):
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_16.png")
		if SaveManager.save.deckard_cg["deckard_2"] == false:
			SaveManager.save.deckard_cg["deckard_2"] = true
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_17.png")
		if SaveManager.save.deckard_cg["deckard_3"] == false:
			SaveManager.save.deckard_cg["deckard_3"] = true		
	if dialogue_label.message_id == 9:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_18.png")
		if SaveManager.save.deckard_cg["deckard_4"] == false:
			SaveManager.save.deckard_cg["deckard_4"] = true
	if dialogue_label.message_id == 11:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_19.png")
		if SaveManager.save.deckard_cg["deckard_5"] == false:
			SaveManager.save.deckard_cg["deckard_5"] = true
	if dialogue_label.message_id == 21:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_20.png")
		if SaveManager.save.deckard_cg["deckard_6"] == false:
			SaveManager.save.deckard_cg["deckard_6"] = true
	if dialogue_label.message_id == 23:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_21.png")
		if SaveManager.save.deckard_cg["deckard_7"] == false:
			SaveManager.save.deckard_cg["deckard_7"] = true
	if dialogue_label.message_id == 26:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_22.png")
		if SaveManager.save.deckard_cg["deckard_8"] == false:
			SaveManager.save.deckard_cg["deckard_8"] = true
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_23.png")
		if SaveManager.save.deckard_cg["deckard_9"] == false:
			SaveManager.save.deckard_cg["deckard_9"] = true
	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/hospital_storyboard/shy_lapdance/hospital_scene_24.png")
		if SaveManager.save.deckard_cg["deckard_10"] == false:
			SaveManager.save.deckard_cg["deckard_10"] = true
	if dialogue_label.message_id == 39:
		Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")
