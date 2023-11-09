extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_image = $SceneImage
@onready var transitions = $Transitions

var scene_finished = false

func _enter_tree():
	if SaveManager.save.player_status["lewdness"] >= 100:
		SaveManager.save.player_status["lewdness"] = 100

func _ready():
	#first time - fully clothed
	if not SaveManager.save.visited_activities["masturbation"]:
		scene_image.texture = load("res://assets/img/tenkousei134.jpg")
		transitions.fade_to_image()
		SaveManager.save.visited_activities["masturbation"] = true
		dialogue_label.start_dialogue()
		SaveManager.save.player_status["lewdness"] += 6
		SaveManager.save.player_status["hunger"] += 20

	#lewdness E - fully clothed
	elif SaveManager.save.player_status["lewdness"] > 0 \
	and SaveManager.save.player_status["lewdness"] < 20:
		scene_image.texture = load("res://assets/img/tenkousei133.jpg")
		transitions.fade_to_image()
		dialogue_label.jump_to(26)
		SaveManager.save.player_status["lewdness"] += 6
		SaveManager.save.player_status["hunger"] += 20
	#lewdness D - No pants, Clothed on top
	elif SaveManager.save.player_status["lewdness"] >= 20 \
	and SaveManager.save.player_status["lewdness"] < 40:
		scene_image.texture = load("res://assets/img/ref7.jpg")
		transitions.fade_to_image()
		dialogue_label.jump_to(36)
		SaveManager.save.player_status["lewdness"] += 6
		SaveManager.save.player_status["hunger"] += 20

	#Lewdness C: Underwear only
	elif SaveManager.save.player_status["lewdness"] >= 40 \
	and SaveManager.save.player_status["lewdness"] < 60:
		scene_image.texture = load("res://assets/img/ref6.jpg")
		transitions.fade_to_image()
		dialogue_label.jump_to(47)
		SaveManager.save.player_status["lewdness"] += 6
		SaveManager.save.player_status["hunger"] += 20
	
	#lewdness B - Not Prostitute
	elif SaveManager.save.player_status["lewdness"] >= 60 \
	and SaveManager.save.player_status["lewdness"] < 80 \
	and not SaveManager.save.prostitute:
		scene_image.texture = load("res://assets/img/ref8.jpg")
		transitions.fade_to_image()
		dialogue_label.jump_to(56)
		SaveManager.save.player_status["hunger"] += 10
	
	#Lewsdness B - Prostitute - Topless
	elif SaveManager.save.player_status["lewdness"] >= 60 \
	and SaveManager.save.player_status["lewdness"] < 80 \
	and SaveManager.save.prostitute:
		scene_image.texture = load("res://assets/img/topless_masturb.jpg")
		transitions.fade_to_image()
		dialogue_label.jump_to(62)
		SaveManager.save.player_status["lewdness"] += 6
		SaveManager.save.player_status["hunger"] += 20
	
	elif SaveManager.save.player_status["lewdness"] >= 80: 
#	\ and SaveManager.save.player_status["lewdness"] <= 100:
		scene_image.texture = load("res://assets/img/akane_naked.jpg")
		transitions.fade_to_image()
		dialogue_label.jump_to(70)
		SaveManager.save.player_status["lewdness"] += 6
		SaveManager.save.player_status["hunger"] += 20

func _process(delta):
	#end of first masturbation
	if dialogue_label.message_id == 24:
		scene_finished = true

	#end of masturbation E
	if dialogue_label.message_id == 34:
		scene_finished = true

	#end of masturbation D
	if dialogue_label.message_id == 46:
		scene_finished = true
	
	#end of masturbation C
	if dialogue_label.message_id == 54:
		scene_finished = true

	if dialogue_label.message_id == 60:
		scene_finished = true
	
	if dialogue_label.message_id == 69:
		scene_finished = true

	if dialogue_label.message_id == 77:
		scene_finished = true
	
	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			SaveManager.save.same_day = false
			get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
	

