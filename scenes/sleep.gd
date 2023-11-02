extends Control

var scene_finished = false
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_texture = $SceneTexture
@onready var transitions = $Transitions

func _ready():
	if not SaveManager.save.visited_activities["sleep"]:
		scene_texture.texture = load("res://assets/thumbnails/SLEEP_vesper.png")
		transitions.fade_to_image()
		dialogue_label.start_dialogue()
		SaveManager.save.visited_activities["sleep"] = true
	elif SaveManager.save.visited_activities["sleep"]:
		scene_texture.texture = load("res://assets/thumbnails/thumb_SLEEP_2.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(10)

func _process(delta):
	if dialogue_label.message_id == 8 or dialogue_label.message_id == 13:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
