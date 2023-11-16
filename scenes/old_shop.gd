extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg
@onready var v_box_container = $VBoxContainer
@onready var talk_btn = $VBoxContainer/TalkBtn
@onready var shop = $VBoxContainer/Shop
@onready var be_her_pet = $VBoxContainer/BeHerPet

func _ready():
	if SaveManager.save.old_shop["first_visit"]:
		dialogue_label.start_dialogue()
		SaveManager.save.old_shop["first_visit"] = false
		v_box_container.hide()
		SaveManager.save.old_shop["talk_act"] = true
	else:
		dialogue_label.jump_to(24)
		v_box_container.show()
		dialogue_label.can_type = false
	
func _process(delta):
	
	if dialogue_label.message_id == 24:
		dialogue_label.can_type = false
		v_box_container.show()
	
	if dialogue_label.message_id == 32:
		dialogue_label.jump_to(24)
		dialogue_label.can_type = false
		v_box_container.show()
	
	if dialogue_label.message_id == 55:
		dialogue_label.jump_to(24)
		dialogue_label.can_type = false
		v_box_container.show()
	
	if dialogue_label.message_id == 65:
		dialogue_label.jump_to(24)
		dialogue_label.can_type = false
		v_box_container.show()
	
	if SaveManager.save.old_shop["ask_for_blood"] and SaveManager.save.player_status["lewdness"] >= 60:
		be_her_pet.disabled = false
		be_her_pet.text = "Become her pet"
		SaveManager.save.old_shop["be_her_pet"] = true
	
	if SaveManager.save.old_shop["ask_for_blood"]:
		shop.disabled = false
		shop.text = "Shop"
	
func _on_talk_btn_pressed():
	if not SaveManager.save.old_shop["talk_1"]:
		v_box_container.hide()
		dialogue_label.jump_to(26)
		dialogue_label.can_type = true
		SaveManager.save.old_shop["talk_1"] = true
	
	elif SaveManager.save.old_shop["talk_1"] and not SaveManager.save.old_shop["talk_2"]:
		v_box_container.hide()
		dialogue_label.jump_to(34)
		dialogue_label.can_type = true
		SaveManager.save.old_shop["talk_2"] = true
	
	elif SaveManager.save.old_shop["talk_2"]:
		SaveManager.save.old_shop["ask_for_blood"] = true 
		v_box_container.hide()
		dialogue_label.jump_to(58)
		dialogue_label.can_type = true
		SaveManager.save.old_shop["shop"] = true

func _on_go_home_pressed():
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
