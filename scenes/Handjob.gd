extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_1.png")

func _process(delta):
	if dialogue_label.message_id == 2:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_2.png")
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_3.png")
	if dialogue_label.message_id == 10:
			scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_4.png")
	if dialogue_label.message_id == 22:
			scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_5.png")
	if dialogue_label.message_id == 29:
			scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_6.png")
	if dialogue_label.message_id == 32:
			scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_7.png")
	if dialogue_label.message_id == 41:
			scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_8.png")
	if dialogue_label.message_id == 48:
			scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_9.png")
	if dialogue_label.message_id == 57:
			scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_10.png")
	if dialogue_label.message_id == 61:
			scene_bg.texture = load("res://assets/hospital_storyboard/handjob/hospital_scene_handjob_11.png")	
	if dialogue_label.message_id == 64:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
