extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_image = $SceneImage

var scene_finished = false
# Called when the node enters the scene tree for the first time.
func _ready():
	#first time 
	if not SaveManager.save.visited_activities["masturbation"]:
		scene_image.texture = load("res://assets/img/tenkousei134.jpg")
		dialogue_label.start_dialogue()
		SaveManager.save.player_status["lewdness"] += 2
		SaveManager.save.player_status["hunger"] += 20
	#lewdness E
	elif SaveManager.save.player_status["lewdness"] > 0 \
	and SaveManager.save.player_status["lewdness"] < 20:
		scene_image.texture = load("res://assets/img/tenkousei134.jpg")
		dialogue_label.jump_to(26)
		SaveManager.save.player_status["lewdness"] += 2
		SaveManager.save.player_status["hunger"] += 20
	#lewdness D
	elif SaveManager.save.player_status["lewdness"] >= 20 \
	and SaveManager.save.player_status["lewdness"] < 40:
		scene_image.texture = load("res://assets/img/ref7.jpg")
		dialogue_label.jump_to(36)
		SaveManager.save.player_status["lewdness"] += 2
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
		
	if dialogue_label.message_id == 52:
		if SaveManager.save.player_status["lewdness"] < 59:
			dialogue_label.create_message("Your lewdness level continues to rise.")
		else:
			dialogue_label.create_message("Your lewdness level continues to rise.")

	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _exit_tree():
	SaveManager.save.visited_activities["masturbation"] = true
	SaveManager.save.player_status["lewdness"] += 10
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null
	

