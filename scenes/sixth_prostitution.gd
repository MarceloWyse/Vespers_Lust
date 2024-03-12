extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
var scene_finished
# Called when the node enters the scene tree for the first time.
func _ready():
	if not SaveManager.save.sixth_prostitution:
		SaveManager.save.sixth_prostitution = true
		SaveManager.save.anal_whore = true
		dialogue_label.start_dialogue()
	elif SaveManager.save.sixth_prostitution:
		dialogue_label.jump_to(1)

func _process(delta):
	if dialogue_label.message_id == 2 or dialogue_label.message_id == 2:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			Events.change_scene_to_packed.emit(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			Events.change_scene_to_packed.emit(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			SaveManager.save.bar["visited"] = false
			SaveManager.save.park["visited"] = false
			SaveManager.save.boutique["visited"] = false
			SaveManager.save.hospital["visited"] = false
			SaveManager.save.old_shop["visited"] = false
			SaveManager.save.same_day = false
			Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
