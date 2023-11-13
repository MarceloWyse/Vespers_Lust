extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var transitions = $Transitions
@onready var scene_bg = $SceneBg

func _ready():
	transitions.show()
	transitions.fade_to_image()
	if not SaveManager.save.deckard["stolen_blood"]:
		dialogue_label.start_dialogue()
		SaveManager.save.deckard["stolen_blood"] = true
	elif SaveManager.save.deckard["stolen_blood"] \
	and not SaveManager.save.deckard["deckard_repetition"]:
		SaveManager.save.deckard["deckard_repetition"] = true
		dialogue_label.jump_to(12)
	elif SaveManager.save.deckard["stolen_blood"] \
	and SaveManager.save.deckard["deckard_repetition"]:
		dialogue_label.jump_to(53)
		
func _process(delta):
	
	if dialogue_label.message_id == 10:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
	
	if dialogue_label.message_id == 14:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_1.png")
	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_2.png")
	if dialogue_label.message_id == 18:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_3.png")
	if dialogue_label.message_id == 20:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_4.png")
	if dialogue_label.message_id == 20:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_4.png")
		dialogue_label.can_type = false
		await get_tree().create_timer(2.4).timeout
		dialogue_label.jump_to(21)
		
	if dialogue_label.message_id == 21:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_5.png")
		dialogue_label.can_type = true
	if dialogue_label.message_id == 22:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_6.png")
	if dialogue_label.message_id == 28:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_7.png")
	if dialogue_label.message_id == 30:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_8.png")
	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_9.png")
	if dialogue_label.message_id == 36:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_10.png")	
	if dialogue_label.message_id == 38:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_11.png")
	if dialogue_label.message_id == 44:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_12.png")
	if dialogue_label.message_id == 49:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_13.png")
	if dialogue_label.message_id == 51 or dialogue_label.message_id == 60:
		get_tree().change_scene_to_file("res://scenes/deckard_options.tscn")
	if dialogue_label.message_id == 53:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_5.png")

