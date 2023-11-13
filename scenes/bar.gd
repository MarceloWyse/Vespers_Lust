extends Control
@onready var transitions = $Transitions
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var dialog_box = $DialogBox
@onready var v_box_container = $VBoxContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	SaveManager.save.bar["talk_act"] = true
	SaveManager.save.bar["drink"] = true
	transitions.show()
	transitions.fade_to_image()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 3:
		dialog_box.hide()
		v_box_container.show()

func _on_go_home_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _on_talk_btn_pressed():
	v_box_container.hide()
	dialog_box.show()
	dialogue_label.start_dialogue()
