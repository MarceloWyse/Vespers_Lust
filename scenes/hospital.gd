extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var transitions = $Transitions
@onready var dialog_box = $DialogBox
@onready var steal_blood_btn = $VBoxContainer/StealBloodBtn
@onready var talk_btn = $VBoxContainer/TalkBtn
@onready var home_btn = $VBoxContainer/HomeBtn
@onready var v_box_container = $VBoxContainer
@onready var nurse = $Nurse

func _ready():
	v_box_container.hide()
	SaveManager.save.hospital["talk_act"] = true
	transitions.fade_to_image()
	dialogue_label.start_dialogue()
	steal_blood_btn.disabled = SaveManager.save.hospital["steal_btn_disabled"] 

func _process(delta):
	if dialogue_label.message_id == 2:
		dialog_box.hide()
		dialogue_label.can_type = false
		talk_btn.show()
		steal_blood_btn.show()
		home_btn.show()
		v_box_container.show()
	
	if dialogue_label.message_id == 7:
		nurse.hide() 
	
	if dialogue_label.message_id == 15:
		nurse.hide() 
	
	if dialogue_label.message_id == 9 or dialogue_label.message_id == 16:
		dialog_box.hide()
		v_box_container.show()

func _on_home_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _on_talk_btn_pressed():
	dialog_box.show()
	v_box_container.hide()
	nurse.show()
	SaveManager.save.hospital["steal_btn_disabled"] = false
	steal_blood_btn.disabled = false
	SaveManager.save.hospital["steal_blood"] = true
	if not SaveManager.save.deckard["stolen_blood"]:
		dialogue_label.jump_to(4)
		dialogue_label.can_type = true
	else:
		dialogue_label.jump_to(10)
		dialogue_label.can_type = true
		
func _on_steal_blood_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/steal_blood.tscn")
