extends Control

var scene_finished = false
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_texture = $SceneTexture
@onready var transitions = $Transitions

func _ready():
	if not SaveManager.save.visited_activities["running"]:
		scene_texture.texture = load("res://assets/thumbnails/run/run_intro.png")
		transitions.fade_to_image()
		dialogue_label.start_dialogue()
		SaveManager.save.visited_activities["running"] = true
	elif SaveManager.save.visited_activities["running"]:
		scene_texture.texture = load("res://assets/thumbnails/run/run_thumb3.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(14)

func _process(delta):
	if dialogue_label.message_id == 12 or dialogue_label.message_id == 17:
		scene_finished = true
	
	if dialogue_label.message_id == 6:
		scene_texture.texture = load("res://assets/thumbnails/run/run_thumb2.png")
	
	if dialogue_label.message_id == 9:
		scene_texture.texture = load("res://assets/thumbnails/run/run_thumb1.png")
	
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
	SaveManager.save.bar_values["spd"] += 1
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
