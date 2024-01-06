extends Control

@onready var scene_bg = $SceneBG
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
var scene_finished
# Called when the node enters the scene tree for the first time.
func _ready():
	if not SaveManager.save.fifth_prostitution:
		SaveManager.save.fifth_prostitution = true
		dialogue_label.start_dialogue()
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_1.png")
	elif SaveManager.save.fifth_prostitution:
		dialogue_label.jump_to(113)

func _process(delta):
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_2.png")

	if dialogue_label.message_id == 7:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_3.png")

	if dialogue_label.message_id == 19:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_4.png")

	if dialogue_label.message_id == 21:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_5.png")

	if dialogue_label.message_id == 23:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_6.png")

	if dialogue_label.message_id == 25:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_7.png")

	if dialogue_label.message_id == 32:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_8.png")

	if dialogue_label.message_id == 39:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_9.png")

	if dialogue_label.message_id == 45:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_10.png")
		
	if dialogue_label.message_id == 47:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_11.png")		

	if dialogue_label.message_id == 49:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_12.png")

	if dialogue_label.message_id == 56:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_13.png")

	if dialogue_label.message_id == 58:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_14.png")

	if dialogue_label.message_id == 60:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_15.png")

	if dialogue_label.message_id == 62:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_16.png")

	if dialogue_label.message_id == 64:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_17.png")

	if dialogue_label.message_id == 70:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_18.png")

	if dialogue_label.message_id == 78:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_19.png")

	if dialogue_label.message_id == 82:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_21.png")

	if dialogue_label.message_id == 83:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_20.png")

	if dialogue_label.message_id == 84:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_21.png")

	if dialogue_label.message_id == 85:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_20.png")

	if dialogue_label.message_id == 86:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_21.png")

	if dialogue_label.message_id == 87:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_20.png")

	if dialogue_label.message_id == 88:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_21.png")

	if dialogue_label.message_id == 89:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_22.png")

	if dialogue_label.message_id == 95:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_24.png")

	if dialogue_label.message_id == 96:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_23.png")

	if dialogue_label.message_id == 97:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_24.png")

	if dialogue_label.message_id == 98:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_23.png")

	if dialogue_label.message_id == 99:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_24.png")

	if dialogue_label.message_id == 100:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_25.png")

	if dialogue_label.message_id == 104:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_26.png")
		
	if dialogue_label.message_id == 105:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_27.png")

	if dialogue_label.message_id == 106:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_26.png")

	if dialogue_label.message_id == 107:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_27.png")
	
	if dialogue_label.message_id == 108:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_26.png")
	
	if dialogue_label.message_id == 109:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_27.png")
	
	if dialogue_label.message_id == 110:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_29.png")
		
	if dialogue_label.message_id == 111:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_30.png")
	
	if dialogue_label.message_id == 112:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_29.png")
	
	if dialogue_label.message_id == 113:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_31.png")

	if dialogue_label.message_id == 117:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_32.png")

	if dialogue_label.message_id == 128:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_33.png")

	if dialogue_label.message_id == 131:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/prostitution_GA_34.png")
	
	if dialogue_label.message_id == 137:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/crack_house/prostitution_repA (1).png")		

	if dialogue_label.message_id == 142:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/crack_house/prostitution_repA (2).png")

	if dialogue_label.message_id == 145:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/crack_house/prostitution_repA (3).png")

	if dialogue_label.message_id == 148:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/crack_house/prostitution_repA (4).png")

	if dialogue_label.message_id == 137:
		scene_bg.texture = load("res://assets/prostitution_storyboard/fifth/crack_house/prostitution_repA (1).png")

	
	
	if dialogue_label.message_id == 135 or dialogue_label.message_id == 538:
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
