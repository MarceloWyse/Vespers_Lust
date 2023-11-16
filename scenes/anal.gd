extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_1.png")
		
func _process(delta):
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_2.png")
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_3.png")
	if dialogue_label.message_id == 8:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_4.png")
	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_5.png")
	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_6.png")
	if dialogue_label.message_id == 13:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_7.png")
	if dialogue_label.message_id == 15:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_8.png")
	if dialogue_label.message_id == 17:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_9.png")
	if dialogue_label.message_id == 19:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_10.png")
	if dialogue_label.message_id == 24:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_11.png")
	if dialogue_label.message_id == 28:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_12.png")
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_13.png")
