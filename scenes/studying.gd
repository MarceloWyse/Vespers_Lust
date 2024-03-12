extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_image = $SceneImage
@onready var transitions = $Transitions

var scene_finished = false
# Called when the node enters the scene tree for the first time.
func _ready():
	#First Study
	if not SaveManager.save.visited_activities["studying"]:
		SaveManager.save.visited_activities["studying"] = true
		scene_image.texture = load("res://assets/thumbnails/study/thumb_study_intro.png")
		transitions.fade_to_image()
		dialogue_label.start_dialogue()
	#Study Grade E
	elif SaveManager.save.visited_activities["studying"] \
	and SaveManager.save.bar_values["int"] >= 0 \
	and SaveManager.save.bar_values["int"] < 20:
		scene_image.texture = load("res://assets/thumbnails/study/thumb_study_gradeE.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(5)
	#Study Grade D
	elif SaveManager.save.visited_activities["studying"] \
	and SaveManager.save.bar_values["int"] >= 20 \
	and SaveManager.save.bar_values["int"] < 40:
		scene_image.texture = load("res://assets/thumbnails/study/thumb_study_gradeD.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(7)
	#Study Grade C
	elif SaveManager.save.visited_activities["studying"] \
	and SaveManager.save.bar_values["int"] >= 40 \
	and SaveManager.save.bar_values["int"] < 60:
		scene_image.texture = load("res://assets/thumbnails/study/thumb_study_gradeC.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(9)
	#Study Grade B
	elif SaveManager.save.visited_activities["studying"] \
	and SaveManager.save.bar_values["int"] >= 60 \
	and SaveManager.save.bar_values["int"] < 80:
		scene_image.texture = load("res://assets/thumbnails/study/thumb_study_gradeB.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(11)
	#Study Grade A
	elif SaveManager.save.visited_activities["studying"] \
	and SaveManager.save.bar_values["int"] >= 80:
		scene_image.texture = load("res://assets/thumbnails/study/thumb_study_gradeA.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(13)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 4 \
	or dialogue_label.message_id == 6 \
	or dialogue_label.message_id == 8 \
	or dialogue_label.message_id == 10 \
	or dialogue_label.message_id == 12 \
	or dialogue_label.message_id == 14:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			Events.change_scene_to_packed.emit(SceneTracker.scene_2)
		elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			Events.change_scene_to_packed.emit(SceneTracker.scene_3)
		elif SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			SaveManager.save.bar["visited"] = false
			SaveManager.save.park["visited"] = false
			SaveManager.save.boutique["visited"] = false
			SaveManager.save.hospital["visited"] = false
			SaveManager.save.old_shop["visited"] = false
			SaveManager.save.same_day = false
			Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")
			
func _exit_tree():
	SaveManager.save.bar_values["int"] += 5
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
