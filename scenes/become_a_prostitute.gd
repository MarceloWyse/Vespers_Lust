extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel

var scene_finished

func _ready():
	if 	SaveManager.save.visited_activities["prostitution"] == false:
		dialogue_label.start_dialogue()
		SaveManager.save.visited_activities["prostitution"] = true
		
	elif not SaveManager.save.visited_activities["masturbation"] and \
	SaveManager.save.visited_activities["prostitution"]:
		dialogue_label.jump_to(12)

func _process(delta):
	
	if dialogue_label.message_id == 11 or dialogue_label.message_id == 19:
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
