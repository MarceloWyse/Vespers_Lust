extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogue_label.start_dialogue()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 8:
		dialogue_label.can_type = false
		await get_tree().create_timer(4).timeout
		get_tree().change_scene_to_file("res://scenes/start_menu.tscn")
