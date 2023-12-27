extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_1.png")
	if SaveManager.save.deckard_cg["deckard_59"] == false:
		SaveManager.save.deckard_cg["deckard_59"] = true

func _process(delta):
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_2.png")
		if SaveManager.save.deckard_cg["deckard_60"] == false:
			SaveManager.save.deckard_cg["deckard_60"] = true
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_3.png")
		if SaveManager.save.deckard_cg["deckard_61"] == false:
			SaveManager.save.deckard_cg["deckard_61"] = true
	if dialogue_label.message_id == 8:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_4.png")
		if SaveManager.save.deckard_cg["deckard_62"] == false:
			SaveManager.save.deckard_cg["deckard_62"] = true
	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_5.png")
		if SaveManager.save.deckard_cg["deckard_63"] == false:
			SaveManager.save.deckard_cg["deckard_63"] = true
	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_6.png")
		if SaveManager.save.deckard_cg["deckard_64"] == false:
			SaveManager.save.deckard_cg["deckard_64"] = true
	if dialogue_label.message_id == 13:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_7.png")
		if SaveManager.save.deckard_cg["deckard_65"] == false:
			SaveManager.save.deckard_cg["deckard_65"] = true
	if dialogue_label.message_id == 15:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_8.png")
		if SaveManager.save.deckard_cg["deckard_66"] == false:
			SaveManager.save.deckard_cg["deckard_66"] = true
	if dialogue_label.message_id == 17:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_9.png")
		if SaveManager.save.deckard_cg["deckard_67"] == false:
			SaveManager.save.deckard_cg["deckard_67"] = true
	if dialogue_label.message_id == 19:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_10.png")
		if SaveManager.save.deckard_cg["deckard_68"] == false:
			SaveManager.save.deckard_cg["deckard_68"] = true
	if dialogue_label.message_id == 24:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_11.png")
		if SaveManager.save.deckard_cg["deckard_69"] == false:
			SaveManager.save.deckard_cg["deckard_69"] = true
	if dialogue_label.message_id == 28:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_12.png")
		if SaveManager.save.deckard_cg["deckard_70"] == false:
			SaveManager.save.deckard_cg["deckard_70"] = true
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_14.png")
		if SaveManager.save.deckard_cg["deckard_71"] == false:
			SaveManager.save.deckard_cg["deckard_71"] = true
	if dialogue_label.message_id == 32:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_13.png")
		if SaveManager.save.deckard_cg["deckard_72"] == false:
			SaveManager.save.deckard_cg["deckard_72"] = true
	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_14.png")
		if SaveManager.save.deckard_cg["deckard_73"] == false:
			SaveManager.save.deckard_cg["deckard_73"] = true
	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_13.png")
		if SaveManager.save.deckard_cg["deckard_74"] == false:
			SaveManager.save.deckard_cg["deckard_74"] = true
	if dialogue_label.message_id == 35:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_14.png")
		if SaveManager.save.deckard_cg["deckard_75"] == false:
			SaveManager.save.deckard_cg["deckard_75"] = true
	if dialogue_label.message_id == 36:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_15.png")
		if SaveManager.save.deckard_cg["deckard_76"] == false:
			SaveManager.save.deckard_cg["deckard_76"] = true
	if dialogue_label.message_id == 40:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_16-17.png")
		if SaveManager.save.deckard_cg["deckard_77"] == false:
			SaveManager.save.deckard_cg["deckard_77"] = true
	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_16.png")
		if SaveManager.save.deckard_cg["deckard_78"] == false:
			SaveManager.save.deckard_cg["deckard_78"] = true
	if dialogue_label.message_id == 42:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_17.png")
		if SaveManager.save.deckard_cg["deckard_79"] == false:
			SaveManager.save.deckard_cg["deckard_79"] = true
	if dialogue_label.message_id == 44:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_19.png")
		if SaveManager.save.deckard_cg["deckard_80"] == false:
			SaveManager.save.deckard_cg["deckard_80"] = true
	if dialogue_label.message_id == 48:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_18.png")
		if SaveManager.save.deckard_cg["deckard_81"] == false:
			SaveManager.save.deckard_cg["deckard_81"] = true
	if dialogue_label.message_id == 49:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_19.png")
		if SaveManager.save.deckard_cg["deckard_82"] == false:
			SaveManager.save.deckard_cg["deckard_82"] = true
	if dialogue_label.message_id == 50:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_18.png")
		if SaveManager.save.deckard_cg["deckard_83"] == false:
			SaveManager.save.deckard_cg["deckard_83"] = true
	if dialogue_label.message_id == 51:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_19.png")
		if SaveManager.save.deckard_cg["deckard_84"] == false:
			SaveManager.save.deckard_cg["deckard_84"] = true
	if dialogue_label.message_id == 52:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_20.png")
		if SaveManager.save.deckard_cg["deckard_85"] == false:
			SaveManager.save.deckard_cg["deckard_85"] = true
	if dialogue_label.message_id == 54:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_19.png")
		if SaveManager.save.deckard_cg["deckard_86"] == false:
			SaveManager.save.deckard_cg["deckard_86"] = true
	if dialogue_label.message_id == 56:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_21.png")
		if SaveManager.save.deckard_cg["deckard_87"] == false:
			SaveManager.save.deckard_cg["deckard_87"] = true
	if dialogue_label.message_id == 58:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_22.png")
		if SaveManager.save.deckard_cg["deckard_88"] == false:
			SaveManager.save.deckard_cg["deckard_88"] = true
	if dialogue_label.message_id == 60:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_23.png")
		if SaveManager.save.deckard_cg["deckard_89"] == false:
			SaveManager.save.deckard_cg["deckard_89"] = true
	if dialogue_label.message_id == 62:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_24.png")
		if SaveManager.save.deckard_cg["deckard_90"] == false:
			SaveManager.save.deckard_cg["deckard_90"] = true
	if dialogue_label.message_id == 64:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_25.png")
		if SaveManager.save.deckard_cg["deckard_91"] == false:
			SaveManager.save.deckard_cg["deckard_91"] = true
	if dialogue_label.message_id == 66:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_26.png")
		if SaveManager.save.deckard_cg["deckard_92"] == false:
			SaveManager.save.deckard_cg["deckard_92"] = true
	if dialogue_label.message_id == 67:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
