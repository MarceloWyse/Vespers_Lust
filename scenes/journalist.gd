extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel
@onready var scene_image = $SceneImage
@onready var transitions = $Transitions

var scene_finished = false

func _ready():
	SaveManager.save.activity_level["journalist"] += 8
	SaveManager.save.player_status["money"] += 10
	SaveManager.save.bar_values["cha"] += 2
	if not SaveManager.save.visited_activities["journalist"]:
		SaveManager.save.visited_activities["journalist"] = true
		scene_image.texture = load("res://assets/thumbnails/journalism/journalism_intro.png")
		transitions.fade_to_image()
		dialogue_label.start_dialogue()
		
	#journalist Grade E
	elif SaveManager.save.visited_activities["journalist"] \
	and SaveManager.save.activity_level["journalist"] >= 0 \
	and SaveManager.save.activity_level["journalist"] < 20:
		scene_image.texture = load("res://assets/thumbnails/journalism/journalism_gradeE.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(23)
	#Study Grade D
	elif SaveManager.save.visited_activities["journalist"] \
	and SaveManager.save.activity_level["journalist"] >= 20 \
	and SaveManager.save.activity_level["journalist"] < 40:
		scene_image.texture = load("res://assets/thumbnails/journalism/journalism_gradeD.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(27)
	#Study Grade C
	elif SaveManager.save.visited_activities["journalist"] \
	and SaveManager.save.activity_level["journalist"] >= 40 \
	and SaveManager.save.activity_level["journalist"] < 60:
		scene_image.texture = load("res://assets/thumbnails/journalism/journalism_gradeC.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(30)
	#Study Grade B
	elif SaveManager.save.visited_activities["journalist"] \
	and SaveManager.save.activity_level["journalist"] >= 60 \
	and SaveManager.save.activity_level["journalist"] < 80:
		scene_image.texture = load("res://assets/thumbnails/journalism/journalism_gradeB.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(33)
	#Study Grade A
	elif SaveManager.save.visited_activities["journalist"] \
	and SaveManager.save.activity_level["journalist"] >= 80:
		scene_image.texture = load("res://assets/thumbnails/journalism/journalism_gradeA.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(37)
	
func _process(delta):
	
	if dialogue_label.message_id == 4:
		scene_image.texture = load("res://assets/thumbnails/journalism/journalism_intro2.png")
	
	if dialogue_label.message_id == 23 \
	or dialogue_label.message_id == 26 \
	or dialogue_label.message_id == 29 \
	or dialogue_label.message_id == 32 \
	or dialogue_label.message_id == 36 \
	or dialogue_label.message_id == 39:
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
	SaveManager.save.same_day = false
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
