extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogue_label.start_dialogue()

func _process(delta):
	pass
