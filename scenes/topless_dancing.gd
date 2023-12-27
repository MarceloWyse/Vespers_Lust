extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_1.png")
	if SaveManager.save.deckard_cg["deckard_22"] == false:
		SaveManager.save.deckard_cg["deckard_22"] = true
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 4:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_2.png")
		if SaveManager.save.deckard_cg["deckard_23"] == false:
			SaveManager.save.deckard_cg["deckard_23"] = true
	if dialogue_label.message_id == 7:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_3.png")
		if SaveManager.save.deckard_cg["deckard_24"] == false:
			SaveManager.save.deckard_cg["deckard_24"] = true
	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_4.png")
		if SaveManager.save.deckard_cg["deckard_25"] == false:
			SaveManager.save.deckard_cg["deckard_25"] = true	
	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_5.png")	
		if SaveManager.save.deckard_cg["deckard_26"] == false:
			SaveManager.save.deckard_cg["deckard_26"] = true	
	if dialogue_label.message_id == 20:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_6.png")	
		if SaveManager.save.deckard_cg["deckard_27"] == false:
			SaveManager.save.deckard_cg["deckard_27"] = true	
	if dialogue_label.message_id == 24:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_7.png")	
		if SaveManager.save.deckard_cg["deckard_28"] == false:
			SaveManager.save.deckard_cg["deckard_28"] = true	
	if dialogue_label.message_id == 27:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_9.png")	
		if SaveManager.save.deckard_cg["deckard_29"] == false:
			SaveManager.save.deckard_cg["deckard_29"] = true	
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_10.png")
		if SaveManager.save.deckard_cg["deckard_30"] == false:
			SaveManager.save.deckard_cg["deckard_30"] = true	
	if dialogue_label.message_id == 32:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_10-11.png")		
		if SaveManager.save.deckard_cg["deckard_31"] == false:
			SaveManager.save.deckard_cg["deckard_31"] = true	
	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_11.png")
		if SaveManager.save.deckard_cg["deckard_32"] == false:
			SaveManager.save.deckard_cg["deckard_32"] = true		
	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_11-12.png")	
		if SaveManager.save.deckard_cg["deckard_33"] == false:
			SaveManager.save.deckard_cg["deckard_33"] = true
	if dialogue_label.message_id == 35:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_12.png")
		if SaveManager.save.deckard_cg["deckard_34"] == false:
			SaveManager.save.deckard_cg["deckard_34"] = true	
	if dialogue_label.message_id == 37:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_13.png")	
		if SaveManager.save.deckard_cg["deckard_35"] == false:
			SaveManager.save.deckard_cg["deckard_35"] = true
	if dialogue_label.message_id == 39:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_14.png")	
		if SaveManager.save.deckard_cg["deckard_36"] == false:
			SaveManager.save.deckard_cg["deckard_36"] = true
	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_15.png")	
		if SaveManager.save.deckard_cg["deckard_37"] == false:
			SaveManager.save.deckard_cg["deckard_37"] = true
	if dialogue_label.message_id == 44:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_16.png")	
		if SaveManager.save.deckard_cg["deckard_38"] == false:
			SaveManager.save.deckard_cg["deckard_38"] = true
	if dialogue_label.message_id == 45:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
