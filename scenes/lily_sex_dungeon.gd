extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel

func _ready():
	if SaveManager.save.lily["intro_dungeon"]:
		dialogue_label.start_dialogue()
		SaveManager.save.lily["intro_dungeon"] = false
	else:
		dialogue_label.jump_to(32)
		dialogue_label.can_type = false
		
func _process(delta):
	pass

func _on_intro_pressed():
	dialogue_label.can_type = true
	Events.change_scene_to_path.emit("res://scenes/intro_lesson.tscn")
