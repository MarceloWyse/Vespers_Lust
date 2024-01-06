extends Control
@onready var dialogue_label = $DialogBox/DialogueLabel
@onready var transitions = $Transitions
@onready var scene_image = $SceneImage

var scene_finished = false

func _ready():
	SaveManager.save.activity_level["bartending"] += 8
	if not SaveManager.save.visited_activities["bartender"]:
		SaveManager.save.visited_activities["bartender"] = true
		scene_image.texture = load("res://assets/thumbnails/bartender/bar intro.png")
		transitions.fade_to_image()
		dialogue_label.start_dialogue()
		
	#Bartender Grade E
	elif SaveManager.save.visited_activities["bartender"] \
	and SaveManager.save.activity_level["bartending"] >= 0 \
	and SaveManager.save.activity_level["bartending"] < 20:
		scene_image.texture = load("res://assets/thumbnails/bartender/bartender_gradeE.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(7)
	#Study Grade D
	elif SaveManager.save.visited_activities["bartender"] \
	and SaveManager.save.activity_level["bartending"] >= 20 \
	and SaveManager.save.activity_level["bartending"] < 40:
		scene_image.texture = load("res://assets/thumbnails/bartender/bartender_gradeD.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(10)
	#Study Grade C
	elif SaveManager.save.visited_activities["bartender"] \
	and SaveManager.save.activity_level["bartending"] >= 40 \
	and SaveManager.save.activity_level["bartending"] < 60:
		scene_image.texture = load("res://assets/thumbnails/bartender/bartender_gradeC.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(13)
	#Study Grade B
	elif SaveManager.save.visited_activities["bartender"] \
	and SaveManager.save.activity_level["bartending"] >= 60 \
	and SaveManager.save.activity_level["bartending"] < 80:
		scene_image.texture = load("res://assets/thumbnails/bartender/bartender_gradeB.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(16)
	#Study Grade A
	elif SaveManager.save.visited_activities["bartender"] \
	and SaveManager.save.activity_level["bartending"] >= 80:
		scene_image.texture = load("res://assets/thumbnails/bartender/bartender_gradeA.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(19)
	
func _process(delta):
	
	if dialogue_label.message_id == 6 \
	or dialogue_label.message_id == 9 \
	or dialogue_label.message_id == 12 \
	or dialogue_label.message_id == 15 \
	or dialogue_label.message_id == 18 \
	or dialogue_label.message_id == 21:
		scene_finished = true
	
	
	if scene_finished == true:
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
