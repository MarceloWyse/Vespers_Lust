extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_1.png")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 4:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_2.png")
	if dialogue_label.message_id == 7:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_3.png")
	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_4.png")
	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_5.png")	
	if dialogue_label.message_id == 20:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_6.png")	
	if dialogue_label.message_id == 24:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_7.png")	
	if dialogue_label.message_id == 27:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_9.png")	
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_10.png")
	if dialogue_label.message_id == 32:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_10-11.png")		
	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_11.png")
	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_11-12.png")	
	if dialogue_label.message_id == 35:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_12.png")	
	if dialogue_label.message_id == 37:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_13.png")	
	if dialogue_label.message_id == 39:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_14.png")	
	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_15.png")	
	if dialogue_label.message_id == 44:
		scene_bg.texture = load("res://assets/hospital_storyboard/topless_dance/hospital_scene_lapdance_16.png")	

	if dialogue_label.message_id == 45:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
