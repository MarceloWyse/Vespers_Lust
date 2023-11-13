extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_15.png")
	
func _process(delta):
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_16.png")
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_17.png")		
	if dialogue_label.message_id == 9:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_18.png")
	if dialogue_label.message_id == 11:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_19.png")
	if dialogue_label.message_id == 21:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_20.png")
	if dialogue_label.message_id == 23:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_21.png")
	if dialogue_label.message_id == 26:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_22.png")
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_23.png")
	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_24.png")
		
	if dialogue_label.message_id == 40:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
