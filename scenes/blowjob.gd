extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_1.png")
	if SaveManager.save.deckard_cg["deckard_39"] == false:
		SaveManager.save.deckard_cg["deckard_39"] = true
func _process(delta):
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_2.png")
		if SaveManager.save.deckard_cg["deckard_40"] == false:
			SaveManager.save.deckard_cg["deckard_40"] = true
	if dialogue_label.message_id == 5:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_3.png")
		if SaveManager.save.deckard_cg["deckard_41"] == false:
			SaveManager.save.deckard_cg["deckard_41"] = true
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_4.png")
		if SaveManager.save.deckard_cg["deckard_42"] == false:
			SaveManager.save.deckard_cg["deckard_42"] = true
	if dialogue_label.message_id == 8:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_5.png")
		if SaveManager.save.deckard_cg["deckard_43"] == false:
			SaveManager.save.deckard_cg["deckard_43"] = true
	if dialogue_label.message_id == 9:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_6.png")
		if SaveManager.save.deckard_cg["deckard_44"] == false:
			SaveManager.save.deckard_cg["deckard_44"] = true
	if dialogue_label.message_id == 13:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_7.png")
		if SaveManager.save.deckard_cg["deckard_45"] == false:
			SaveManager.save.deckard_cg["deckard_45"] = true
	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_8.png")
		if SaveManager.save.deckard_cg["deckard_46"] == false:
			SaveManager.save.deckard_cg["deckard_46"] = true
	if dialogue_label.message_id == 18:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_9.png")
		if SaveManager.save.deckard_cg["deckard_47"] == false:
			SaveManager.save.deckard_cg["deckard_47"] = true
	if dialogue_label.message_id == 20:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_10.png")
		if SaveManager.save.deckard_cg["deckard_48"] == false:
			SaveManager.save.deckard_cg["deckard_48"] = true
	if dialogue_label.message_id == 24:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_11.png")
		if SaveManager.save.deckard_cg["deckard_49"] == false:
			SaveManager.save.deckard_cg["deckard_49"] = true
	if dialogue_label.message_id == 26:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_12.png")
		if SaveManager.save.deckard_cg["deckard_50"] == false:
			SaveManager.save.deckard_cg["deckard_50"] = true
	if dialogue_label.message_id == 27:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_13.png")
		if SaveManager.save.deckard_cg["deckard_51"] == false:
			SaveManager.save.deckard_cg["deckard_51"] = true
	if dialogue_label.message_id == 28:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_14.png")
		if SaveManager.save.deckard_cg["deckard_52"] == false:
			SaveManager.save.deckard_cg["deckard_52"] = true
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_15.png")
		if SaveManager.save.deckard_cg["deckard_53"] == false:
			SaveManager.save.deckard_cg["deckard_53"] = true
	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_16.png")
		if SaveManager.save.deckard_cg["deckard_54"] == false:
			SaveManager.save.deckard_cg["deckard_54"] = true
	if dialogue_label.message_id == 38:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_17.png")
		if SaveManager.save.deckard_cg["deckard_55"] == false:
			SaveManager.save.deckard_cg["deckard_55"] = true
	if dialogue_label.message_id == 44:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_18.png")
		if SaveManager.save.deckard_cg["deckard_56"] == false:
			SaveManager.save.deckard_cg["deckard_56"] = true
	if dialogue_label.message_id == 45:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_19.png")
		if SaveManager.save.deckard_cg["deckard_57"] == false:
			SaveManager.save.deckard_cg["deckard_57"] = true
	if dialogue_label.message_id == 50:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_20.png")
		if SaveManager.save.deckard_cg["deckard_58"] == false:
			SaveManager.save.deckard_cg["deckard_58"] = true
	if dialogue_label.message_id == 52:
		Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")
