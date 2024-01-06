extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var transitions = $Transitions
var scene_finished = false
var random_program : int
var increased_status = false
@onready var scene_bg = $SceneBg

func _ready():
	transitions.fade_to_image()
	random_program = randi_range(1, 4)
	
	#Documentary
	if random_program == 1:
		dialogue_label.jump_to(1)
		scene_bg.texture = load("res://assets/thumbnails/relax/thumb_relax_documentary.png")
		if increased_status == false:
			SaveManager.save.bar_values["int"] += 2
			increased_status = true
	
	#Cartoons	
	elif random_program == 2:
		dialogue_label.jump_to(6)
		scene_bg.texture = load("res://assets/thumbnails/relax/thumb_relax_cartoon.png")
	
	#Horror Movies
	elif random_program == 3:
		scene_bg.texture = load("res://assets/thumbnails/relax/thumb_relax_terror.png")
		dialogue_label.jump_to(11)
		if increased_status == false:
			SaveManager.save.bar_values["cha"] += 2
			increased_status = true
	
	#Sex Movies
	elif random_program == 4:
		scene_bg.texture = load("res://assets/thumbnails/relax/thumb_relax_sex.png")
		dialogue_label.jump_to(17)
		if increased_status == false:
			SaveManager.save.player_status["lewdness"] += 2
			increased_status = true

func _process(delta):

	if dialogue_label.message_id == 4 or dialogue_label.message_id == 9 \
	or dialogue_label.message_id == 15 or dialogue_label.message_id == 20:
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
