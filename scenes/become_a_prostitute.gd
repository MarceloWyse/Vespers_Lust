extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

var scene_finished

func _ready():
	if 	SaveManager.save.visited_activities["prostitution"] == false:
		scene_bg.texture = load("res://assets/prostitution_storyboard/denial/prostitution_1stime_1.png")
		if SaveManager.save.prostitution_cg["prostitution_1"] == false:
			SaveManager.save.prostitution_cg["prostitution_1"] = true
		dialogue_label.start_dialogue()
		SaveManager.save.visited_activities["prostitution"] = true
		
	elif not SaveManager.save.visited_activities["masturbation"] and \
	SaveManager.save.visited_activities["prostitution"]:
		dialogue_label.jump_to(13)

func _process(delta):
	
	if dialogue_label.message_id == 5:
		scene_bg.texture = load("res://assets/prostitution_storyboard/denial/prostitution_1stime_2.png")
		if SaveManager.save.prostitution_cg["prostitution_2"] == false:
			SaveManager.save.prostitution_cg["prostitution_2"] = true	
	if dialogue_label.message_id == 7:
		scene_bg.texture = load("res://assets/prostitution_storyboard/denial/prostitution_1stime_3.png")
		if SaveManager.save.prostitution_cg["prostitution_3"] == false:
			SaveManager.save.prostitution_cg["prostitution_3"] = true
	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/prostitution_storyboard/denial/prostitution_2ndtime_3.png")
		if SaveManager.save.prostitution_cg["prostitution_4"] == false:
			SaveManager.save.prostitution_cg["prostitution_4"] = true
	if dialogue_label.message_id == 13:
		scene_bg.texture = load("res://assets/prostitution_storyboard/denial/prostitution_1stime_1.png")

	if dialogue_label.message_id == 16:
		scene_bg.texture = load("res://assets/prostitution_storyboard/denial/prostitution_2ndtime_2.png")
		if SaveManager.save.prostitution_cg["prostitution_5"] == false:
			SaveManager.save.prostitution_cg["prostitution_5"] = true
	if dialogue_label.message_id == 18:
		scene_bg.texture = load("res://assets/prostitution_storyboard/denial/prostitution_2ndtime_1.png")
		if SaveManager.save.prostitution_cg["prostitution_6"] == false:
			SaveManager.save.prostitution_cg["prostitution_6"] = true
	if dialogue_label.message_id == 21:
		scene_bg.texture = load("res://assets/prostitution_storyboard/denial/prostitution_2ndtime_3.png")

	if dialogue_label.message_id == 11 or dialogue_label.message_id == 24:
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
