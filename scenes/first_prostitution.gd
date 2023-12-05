extends Control

@onready var scene_bg = $SceneBg
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
var scene_finished
# Called when the node enters the scene tree for the first time.
func _ready():
#	SaveManager.save.first_prostitution = false
	
	if SaveManager.save.first_prostitution:
		dialogue_label.start_dialogue()
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_1.png")
		SaveManager.save.first_prostitution = false
	elif not SaveManager.save.first_prostitution:
		dialogue_label.jump_to(101)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if dialogue_label.message_id == 4:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_2.png")	
	
	if dialogue_label.message_id == 8:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_3.png")

	if dialogue_label.message_id == 10:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_4.png")	

	if dialogue_label.message_id == 12:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_5.png")		

	if dialogue_label.message_id == 15:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_6.png")	

	if dialogue_label.message_id == 17:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_7.png")	

	if dialogue_label.message_id == 19:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_6.png")	

	if dialogue_label.message_id == 21:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_8.png")	

	if dialogue_label.message_id == 24:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_9.png")	

	if dialogue_label.message_id == 27:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_10.png")

	if dialogue_label.message_id == 30:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_11.png")

	if dialogue_label.message_id == 37:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_12.png")	

	if dialogue_label.message_id == 40:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_13.png")	

	if dialogue_label.message_id == 48:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_14.png")	

	if dialogue_label.message_id == 51:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_15.png")	

	if dialogue_label.message_id == 55:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_16.png")

	if dialogue_label.message_id == 58:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_17.png")

	if dialogue_label.message_id == 60:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_18.png")	

	if dialogue_label.message_id == 65:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_19.png")	

	if dialogue_label.message_id == 70:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_20.png")	

	if dialogue_label.message_id == 76:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_21.png")	

	if dialogue_label.message_id == 79:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_22.png")	

	if dialogue_label.message_id == 83:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_23.png")
		
	if dialogue_label.message_id == 85:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_24.png")	

	if dialogue_label.message_id == 87:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_25.png")	

	if dialogue_label.message_id == 89:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_26.png")

	if dialogue_label.message_id == 91:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_27.png")

	if dialogue_label.message_id == 93:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_28.png")	

	if dialogue_label.message_id == 96:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_GE_29.png")	

	
	#Repetition
	if dialogue_label.message_id == 101:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_1.png")		

	if dialogue_label.message_id == 103:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_2.png")		

	if dialogue_label.message_id == 106:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_3.png")		

	if dialogue_label.message_id == 108:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4.png")

	if dialogue_label.message_id == 110:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-2.png")		

	if dialogue_label.message_id == 113:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")

	if dialogue_label.message_id == 117:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")		

	if dialogue_label.message_id == 118:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")
		
	if dialogue_label.message_id == 119:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")

	if dialogue_label.message_id == 120:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")

	if dialogue_label.message_id == 121:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")

	if dialogue_label.message_id == 122:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")				
		
	if dialogue_label.message_id == 126:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")		

	if dialogue_label.message_id == 127:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")		

	if dialogue_label.message_id == 128:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_6.png")		

	if dialogue_label.message_id == 130:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")		

	if dialogue_label.message_id == 131:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")		

	if dialogue_label.message_id == 135:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")

	if dialogue_label.message_id == 136:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")

	if dialogue_label.message_id == 139:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_4-5.png")	

	if dialogue_label.message_id == 140:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_5.png")	

	if dialogue_label.message_id == 143:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_7.png")

	if dialogue_label.message_id == 148:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_8.png")

	if dialogue_label.message_id == 151:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_7.png")

	if dialogue_label.message_id == 154:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_9.png")

	if dialogue_label.message_id == 156:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_10.png")

	if dialogue_label.message_id == 158:
		scene_bg.texture = load("res://assets/prostitution_storyboard/first/prostitution_repE_11.png")

	if dialogue_label.message_id == 99 or dialogue_label.message_id == 160:
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
