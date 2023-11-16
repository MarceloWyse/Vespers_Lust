extends Control
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var dialog_box = $DialogBox
@onready var options = $Options
@onready var blood_information = $Options/BloodInformation

func _ready():
	if SaveManager.save.lobo["information_available"]:
		blood_information.disabled = false
	
	options.hide()
	if not SaveManager.save.lobo["met_lobo"]:
		dialogue_label.start_dialogue()
		SaveManager.save.lobo["met_lobo"] = true
	else:
		dialogue_label.jump_to(54)
		dialogue_label.can_type = false

func _process(delta):
	if dialogue_label.message_id == 4:
		dialogue_label.jump_to(54)
		dialogue_label.can_type = false
	
	if dialogue_label.message_id == 38:
		SaveManager.save.lobo["information_available"] = true
		blood_information.disabled = false
		dialogue_label.jump_to(54)
		dialogue_label.can_type = false
	
	if dialogue_label.message_id == 54:
		options.show()
		
	if dialogue_label.message_id == 52:
		dialogue_label.jump_to(54)
		options.show()
		dialogue_label.can_type = false
	
func _on_talk_pressed():
	options.hide()
	dialogue_label.jump_to(5)
	dialogue_label.can_type = true

func _on_leave_him_pressed():
	get_tree().change_scene_to_file("res://scenes/bar.tscn")

func _on_blood_information_pressed():
	SaveManager.save.old_shop["available"] = true
	options.hide()
	dialogue_label.jump_to(40)
	dialogue_label.can_type = true
