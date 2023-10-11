extends Control

@onready var dialogue_label = $Panel/DialogueLabel as DialogueLabel

func _ready():
	dialogue_label.start_dialogue()

func _process(delta):
	if Input.is_action_just_pressed("next_scene"):
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			get_tree().change_scene_to_file("res://scenes/player_hud.tscn")
	
func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null

func _on_panel_gui_input(event):
	if event.is_action_pressed("left_click"):
		dialogue_label.next_message()


		
