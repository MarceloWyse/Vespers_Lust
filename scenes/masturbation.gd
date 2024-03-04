extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_image = $SceneImage
@onready var transitions = $Transitions
@onready var lewd_player = $LewdPanel/LewdPlayer
@onready var hunger_player = $HungerPanel/HungerPlayer

var scene_finished = false

#func _enter_tree():
#	if SaveManager.save.player_status["lewdness"] >= 100:
#		SaveManager.save.player_status["lewdness"] = 100

func _ready():
	#first time - fully clothed
	if not SaveManager.save.visited_activities["masturbation"]:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_1.png")
		transitions.fade_to_image()
		SaveManager.save.visited_activities["masturbation"] = true
		dialogue_label.start_dialogue()
		lewd_player.play("animate_status")
		hunger_player.play("hunger_animation")
		SaveManager.save.masturbation_counter += 1
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 2:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_1.png")
		transitions.fade_to_image()
		dialogue_label.jump_to(6)
		SaveManager.save.masturbation_counter += 1
		SaveManager.save.player_status["hunger"] += 20
		hunger_player.play("hunger_animation")
	
	elif SaveManager.save.masturbation_counter == 3:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_1.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(10)
		hunger_player.play("hunger_animation")
		SaveManager.save.player_status["hunger"] += 20
	
	elif SaveManager.save.masturbation_counter == 4:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_1.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(14)
		SaveManager.save.vesper["sexual"] = true
		hunger_player.play("hunger_animation")
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 5:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_2.png")
		transitions.fade_to_image()
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.masturbation_counter += 1
		hunger_player.play("hunger_animation")
		lewd_player.play("animate_status")
		dialogue_label.jump_to(18)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 6:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_2.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(22)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 7:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_2.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(26)
		SaveManager.save.player_status["hunger"] += 20


	elif SaveManager.save.masturbation_counter == 8:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_3.png")
		transitions.fade_to_image()
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(30)
		SaveManager.save.player_status["hunger"] += 20
	
	elif SaveManager.save.masturbation_counter == 9:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_3.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(34)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 10:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_3.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(38)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 11:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_4.png")
		transitions.fade_to_image()
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(42)
		SaveManager.save.player_status["hunger"] += 20


	elif SaveManager.save.masturbation_counter == 12:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_4.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(46)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 13:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_4.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(50)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 14:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_5.png")
		transitions.fade_to_image()
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(54)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 15:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_5.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(57)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 16:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_5.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(60)
		SaveManager.save.player_status["hunger"] += 20


	elif SaveManager.save.masturbation_counter == 17:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_6.png")
		transitions.fade_to_image()
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(63)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 18:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_6.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(66)
		SaveManager.save.player_status["hunger"] += 20


	elif SaveManager.save.masturbation_counter == 19:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_6.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(69)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 20:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_7.png")
		transitions.fade_to_image()
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(73)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 21:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_7.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(77)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 22:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_8.png")
		transitions.fade_to_image()
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(80)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 23:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_8.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(84)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 24:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_8.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(87)
		SaveManager.save.player_status["hunger"] += 20


	elif SaveManager.save.masturbation_counter == 25:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_9.png")
		transitions.fade_to_image()
		SaveManager.save.player_status["lewdness"] += 1
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(90)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 26:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_9.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(93)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 27:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_10.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(96)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 28:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_10.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(100)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 29:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_11.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(103)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 30:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_12.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1		
		dialogue_label.jump_to(106)
		SaveManager.save.player_status["hunger"] += 20


	elif SaveManager.save.masturbation_counter == 31:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_12.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1
		dialogue_label.jump_to(109)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 32:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_12.png")
		transitions.fade_to_image()
		if SaveManager.save.masturbation_locks["boobs"] == false:
			SaveManager.save.player_status["lewdness"] += 1
			SaveManager.save.masturbation_locks["boobs"] = true
#		SaveManager.save.masturbation_counter += 1
		dialogue_label.jump_to(113)
		SaveManager.save.player_status["hunger"] += 20
	
	elif SaveManager.save.masturbation_counter == 33:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_13.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1
		dialogue_label.jump_to(118)
		SaveManager.save.player_status["hunger"] += 20
		
	elif SaveManager.save.masturbation_counter == 34:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_13.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1
		dialogue_label.jump_to(123)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 35:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_13.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1
		dialogue_label.jump_to(127)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 36:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_13.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1
		dialogue_label.jump_to(130)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 37:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_14.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1
		dialogue_label.jump_to(134)
		SaveManager.save.player_status["hunger"] += 20

	elif SaveManager.save.masturbation_counter == 38:
		scene_image.texture = load("res://assets/thumbnails/masturbation/masturbation_14.png")
		transitions.fade_to_image()
		SaveManager.save.masturbation_counter += 1
		dialogue_label.jump_to(138)
		SaveManager.save.player_status["hunger"] += 20

func _process(delta):
	#end of first masturbation
	if dialogue_label.message_id == 5 \
	or dialogue_label.message_id == 9 \
	or dialogue_label.message_id == 13 \
	or dialogue_label.message_id == 17 \
	or dialogue_label.message_id == 21 \
	or dialogue_label.message_id == 25 \
	or dialogue_label.message_id == 29 \
	or dialogue_label.message_id == 33 \
	or dialogue_label.message_id == 37 \
	or dialogue_label.message_id == 41 \
	or dialogue_label.message_id == 45 \
	or dialogue_label.message_id == 49 \
	or dialogue_label.message_id == 53 \
	or dialogue_label.message_id == 56 \
	or dialogue_label.message_id == 59 \
	or dialogue_label.message_id == 62 \
	or dialogue_label.message_id == 65 \
	or dialogue_label.message_id == 68 \
	or dialogue_label.message_id == 72 \
	or dialogue_label.message_id == 76 \
	or dialogue_label.message_id == 79 \
	or dialogue_label.message_id == 83 \
	or dialogue_label.message_id == 86 \
	or dialogue_label.message_id == 89 \
	or dialogue_label.message_id == 92 \
	or dialogue_label.message_id == 95 \
	or dialogue_label.message_id == 99 \
	or dialogue_label.message_id == 102 \
	or dialogue_label.message_id == 105 \
	or dialogue_label.message_id == 108 \
	or dialogue_label.message_id == 111 \
	or dialogue_label.message_id == 117 \
	or dialogue_label.message_id == 122 \
	or dialogue_label.message_id == 126 \
	or dialogue_label.message_id == 129 \
	or dialogue_label.message_id == 133 \
	or dialogue_label.message_id == 137 \
	or dialogue_label.message_id == 141:
		scene_finished = true
	
	if dialogue_label.message_id == 119:
		if SaveManager.save.showed_boobs["deckard"]:
			dialogue_label.create_message("Vesper: I loved exposing my tits to Mr. Deckard, older men make me horny.")
		if SaveManager.save.showed_boobs["josh"]:
			dialogue_label.create_message("Vesper: I liked showing my boobs to Josh. He was the first to pinch my nipples.")				
	
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
	

