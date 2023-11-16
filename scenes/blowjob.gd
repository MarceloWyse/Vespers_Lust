extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_1.png")

func _process(delta):
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_2.png")
	if dialogue_label.message_id == 5:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_3.png")
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_4.png")
	if dialogue_label.message_id == 8:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_5.png")
	if dialogue_label.message_id == 9:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_6.png")
	if dialogue_label.message_id == 13:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_7.png")
	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_8.png")
	if dialogue_label.message_id == 18:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_9.png")
	if dialogue_label.message_id == 20:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_10.png")
	if dialogue_label.message_id == 24:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_11.png")
	if dialogue_label.message_id == 26:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_12.png")
	if dialogue_label.message_id == 27:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_13.png")
	if dialogue_label.message_id == 28:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_14.png")
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_15.png")
	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_16.png")
	if dialogue_label.message_id == 38:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_17.png")
	if dialogue_label.message_id == 44:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_18.png")
	if dialogue_label.message_id == 45:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_19.png")
	if dialogue_label.message_id == 50:
		scene_bg.texture = load("res://assets/hospital_storyboard/blowjob/hospital_scene_blowjob_20.png")
	if dialogue_label.message_id == 52:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
