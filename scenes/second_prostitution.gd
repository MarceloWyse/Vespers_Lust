extends Control
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

var scene_finished

func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_1.png")

func _process(delta):
	if dialogue_label.message_id == 4:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_2.png")
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_3.png")
	if dialogue_label.message_id == 8:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_4.png")
	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_5.png")
	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_6.png")
	if dialogue_label.message_id == 15:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_7.png")
	if dialogue_label.message_id == 17:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_8.png")	
	if dialogue_label.message_id == 22:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_9.png")
	if dialogue_label.message_id == 24:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_10.png")
	if dialogue_label.message_id == 26:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_11.png")
	if dialogue_label.message_id == 28:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_12.png")
	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_13.png")	
	if dialogue_label.message_id == 33:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_14.png")
	if dialogue_label.message_id == 37:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_15.png")
	if dialogue_label.message_id == 39:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_16.png")
	if dialogue_label.message_id == 42:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_17.png")
	if dialogue_label.message_id == 44:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_18.png")
	if dialogue_label.message_id == 46:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_19.png")
	if dialogue_label.message_id == 48:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_GD_20.png")
	
	if dialogue_label.message_id == 51:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			SaveManager.save.bar["visited"] = false
			SaveManager.save.park["visited"] = false
			SaveManager.save.boutique["visited"] = false
			SaveManager.save.hospital["visited"] = false
			SaveManager.save.old_shop["visited"] = false
			SaveManager.save.same_day = false
			get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
