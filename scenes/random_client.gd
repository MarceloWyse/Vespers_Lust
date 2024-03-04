extends Control

@onready var scene_bg = $SceneBg
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var animated_icon = $DialogBox/AnimatedIcon


var scene_finished = false
# Called when the node enters the scene tree for the first time.
func _ready():
	
	if SaveManager.save.player_status["lewdness"] > 0 \
	and SaveManager.save.player_status["lewdness"] <= 15:
		dialogue_label.start_dialogue()
	elif SaveManager.save.player_status["lewdness"] > 15 \
	and SaveManager.save.player_status["lewdness"] <= 29:
		dialogue_label.jump_to(5)
	elif SaveManager.save.player_status["lewdness"] > 29 \
	and SaveManager.save.player_status["lewdness"] <= 44:
		dialogue_label.jump_to(10)
	elif SaveManager.save.player_status["lewdness"] > 44 \
	and SaveManager.save.player_status["lewdness"] <= 64:
		dialogue_label.jump_to(17)
	elif SaveManager.save.player_status["lewdness"] > 64 \
	and SaveManager.save.player_status["lewdness"] <= 79:
		dialogue_label.jump_to(25)
	elif SaveManager.save.player_status["lewdness"] > 79 \
	and SaveManager.save.player_status["lewdness"] <= 89:
		dialogue_label.jump_to(34)
	elif SaveManager.save.player_status["lewdness"] > 89:
		dialogue_label.jump_to(39)

func _process(delta):

	if dialogue_label.message_id == 0:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (1).png")		
	
	if dialogue_label.message_id == 2:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (2).png")
		
	if dialogue_label.message_id == 5:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (3).png")

	if dialogue_label.message_id == 7:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (4).png")

	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (5).png")

	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (6).png")

	if dialogue_label.message_id == 14:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (7).png")

	if dialogue_label.message_id == 17:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (8).png")

	if dialogue_label.message_id == 20:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (9).png")

	if dialogue_label.message_id == 22:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (10).png")

	if dialogue_label.message_id == 22:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (10).png")

	if dialogue_label.message_id == 25:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (11).png")

	if dialogue_label.message_id == 29:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (12).png")

	if dialogue_label.message_id == 31:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (13).png")

	if dialogue_label.message_id == 34:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (14).png")

	if dialogue_label.message_id == 36:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (15).png")

	if dialogue_label.message_id == 39:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (18).png")

	if dialogue_label.message_id == 41:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (16).png")

	if dialogue_label.message_id == 43:
		scene_bg.texture = load("res://assets/prostitution_storyboard/random_clients/random_client (17).png")


	if dialogue_label.message_id == 4 or dialogue_label.message_id == 9 \
	or dialogue_label.message_id == 16 or dialogue_label.message_id == 24 \
	or dialogue_label.message_id == 33 or dialogue_label.message_id == 38 \
	or dialogue_label.message_id == 45:
		scene_finished = true
	
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
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null

func _on_dialogue_label_message_finished():
	animated_icon.show()
	animated_icon.play("default")

func _on_dialogue_label_message_next():
	animated_icon.hide()
