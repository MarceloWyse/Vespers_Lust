extends Control

@onready var transitions = $Transitions
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var name_label = $DialogBox/NamePanel/NameLabel
@onready var name_panel = $DialogBox/NamePanel
@onready var dialog_box = $DialogBox
@onready var v_box_container = $VBoxContainer

func _ready():
	SaveManager.save.boutique["talk"] = true
	SaveManager.save.boutique["shop"] = true
	transitions.show()
	transitions.fade_to_image()
	dialog_box.show()
	dialogue_label.start_dialogue()
	dialogue_label.can_type = false

func _process(delta):
	if dialogue_label.message_id == 5:
		v_box_container.show()
		name_panel.hide()
		dialog_box.hide()
		dialogue_label.can_type = false

func _on_go_home_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _on_talk_btn_pressed():
	v_box_container.hide()
	dialog_box.show()
	dialogue_label.jump_to(3)
	name_label.text = "Dahlia"
	name_panel.show()
	dialogue_label.can_type = true
