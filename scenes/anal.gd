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
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_14.png")
	if dialogue_label.message_id == 32:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_13.png")
	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_14.png")
	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_13.png")
	if dialogue_label.message_id == 35:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_14.png")
	if dialogue_label.message_id == 36:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_15.png")
	if dialogue_label.message_id == 40:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_16-17.png")
	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_16.png")
	if dialogue_label.message_id == 42:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_17.png")
	if dialogue_label.message_id == 44:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_19.png")
	if dialogue_label.message_id == 48:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_18.png")
	if dialogue_label.message_id == 49:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_19.png")
	if dialogue_label.message_id == 50:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_18.png")
	if dialogue_label.message_id == 51:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_19.png")
	if dialogue_label.message_id == 52:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_20.png")
	if dialogue_label.message_id == 54:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_19.png")
	if dialogue_label.message_id == 56:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_21.png")
	if dialogue_label.message_id == 58:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_22.png")
	if dialogue_label.message_id == 60:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_23.png")
	if dialogue_label.message_id == 62:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_24.png")
	if dialogue_label.message_id == 64:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_25.png")
	if dialogue_label.message_id == 66:
		scene_bg.texture = load("res://assets/hospital_storyboard/anal/hospital_scene_anal_26.png")
	if dialogue_label.message_id == 67:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
