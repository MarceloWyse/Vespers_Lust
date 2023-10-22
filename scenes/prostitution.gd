extends Control
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel

var scene_finished = false

func _ready():
	if SaveManager.save.visited_activities["prostitution"] == false:
		dialogue_label.start_dialogue()
		SaveManager.save.visited_activities["prostitution"] = true
	elif not SaveManager.save.visited_activities["masturbation"] and \
	SaveManager.save.visited_activities["prostitution"]:
		dialogue_label.jump_to(12)
	elif SaveManager.save.visited_activities["masturbation"] and \
	SaveManager.save.visited_activities["prostitution"] and \
	SaveManager.save.first_prostitution:
		dialogue_label.jump_to(21)
		SaveManager.save.first_prostitution = false
		SaveManager.save.player_status["lewdness"] += 3
	elif not SaveManager.save.first_prostitution and \
	SaveManager.save.player_status["lewdness"] > 0 \
	and SaveManager.save.player_status["lewdness"] < 20:
		dialogue_label.jump_to(83)
		SaveManager.save.player_status["lewdness"] += 3
			
func _process(delta):
	
	if dialogue_label.message_id == 11:
		scene_finished = true
	
	if dialogue_label.message_id == 19:
		scene_finished = true
	
	if dialogue_label.message_id == 81:
		scene_finished = true
	
	if dialogue_label.message_id == 89:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
