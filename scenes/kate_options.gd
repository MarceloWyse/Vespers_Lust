extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogue_label.start_dialogue()
	dialogue_label.can_type = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_back_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
