extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel
@onready var scene_bg = $SceneBg
var scene_finished = false
# Called when the node enters the scene tree for the first time.
func _ready():
	dialogue_label.start_dialogue()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 0:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_repD_0.png")
		if SaveManager.save.prostitution_cg["prostitution_36"] == false:
			SaveManager.save.prostitution_cg["prostitution_36"] = true
	if dialogue_label.message_id == 7:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_repD_0-1.png")
		if SaveManager.save.prostitution_cg["prostitution_37"] == false:
			SaveManager.save.prostitution_cg["prostitution_37"] = true
	if dialogue_label.message_id == 15:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_repD_1.png")
		if SaveManager.save.prostitution_cg["prostitution_38"] == false:
			SaveManager.save.prostitution_cg["prostitution_38"] = true
	if dialogue_label.message_id == 22:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_repD_2.png")
		if SaveManager.save.prostitution_cg["prostitution_39"] == false:
			SaveManager.save.prostitution_cg["prostitution_39"] = true
	if dialogue_label.message_id == 23:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_repD_3.png")
		if SaveManager.save.prostitution_cg["prostitution_40"] == false:
			SaveManager.save.prostitution_cg["prostitution_40"] = true
	if dialogue_label.message_id == 30:
		scene_bg.texture = load("res://assets/prostitution_storyboard/second/prostitution_repD_4.png")
		if SaveManager.save.prostitution_cg["prostitution_41"] == false:
			SaveManager.save.prostitution_cg["prostitution_41"] = true

	if dialogue_label.message_id == 31:
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
