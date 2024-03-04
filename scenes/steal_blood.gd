extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var transitions = $Transitions
@onready var scene_bg = $SceneBg
var once_timer = false

func _ready():
#	SaveManager.save.deckard["stolen_blood"] = true
	transitions.show()
	transitions.fade_to_image()
	if not SaveManager.save.deckard["stolen_blood"]:
		dialogue_label.start_dialogue()
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_1.png")
		SaveManager.save.deckard["stolen_blood"] = true
	elif SaveManager.save.deckard["stolen_blood"] \
	and not SaveManager.save.deckard["deckard_repetition"]:
		SaveManager.save.deckard["deckard_repetition"] = true
		SaveManager.save.vesper["thief"] = true
		dialogue_label.jump_to(30)
	elif SaveManager.save.deckard["stolen_blood"] \
	and SaveManager.save.deckard["deckard_repetition"]:
		dialogue_label.jump_to(73)
		
func _process(delta):

	
	if dialogue_label.message_id == 2:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_2.png")

	if dialogue_label.message_id == 4:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_3.png")

	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_5.png")

	if dialogue_label.message_id == 8:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_6.png")

	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_7.png")

	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_8.png")

	if dialogue_label.message_id == 14:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_9.png")

	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_10.png")

	if dialogue_label.message_id == 18:
		scene_bg.texture = load("res://assets/hospital_storyboard/first_time_stealing/stealing_first_time_11.png")
	
	if dialogue_label.message_id == 28:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
	
	if dialogue_label.message_id == 30:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_0.png")
	if dialogue_label.message_id == 32:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_0_1.png")
	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_1.png")
	if dialogue_label.message_id == 36:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_2.png")
	if dialogue_label.message_id == 38:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_3.png")
	if dialogue_label.message_id == 40:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_4.png")
		dialogue_label.can_type = false
		if not once_timer:
			once_timer = true
			await get_tree().create_timer(2.4).timeout
			dialogue_label.jump_to(41)
		
	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_5.png")
		dialogue_label.can_type = true
	if dialogue_label.message_id == 42:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_6.png")
	if dialogue_label.message_id == 48:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_7.png")
	if dialogue_label.message_id == 50:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_8.png")
	if dialogue_label.message_id == 54:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_9.png")
	if dialogue_label.message_id == 56:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_10.png")	
	if dialogue_label.message_id == 58:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_11.png")
	if dialogue_label.message_id == 64:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_12.png")
	if dialogue_label.message_id == 69:
		scene_bg.texture = load("res://assets/hospital_storyboard/deckard_options.png")

	if dialogue_label.message_id == 71 or dialogue_label.message_id == 80:
		get_tree().change_scene_to_file("res://scenes/deckard_options.tscn")
	
	if dialogue_label.message_id == 73:
		scene_bg.texture = load("res://assets/hospital_storyboard/second_time_stealing/hospital_scene_5.png")

