extends Control
@onready var dialog_box = $DialogBox

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_texture = $SceneTexture
@onready var transitions = $Transitions
var reset_timer = false
var option_timer = false
var fired_gun = Events.battle_ended
var during_choice = false
var cellphone_clicked = false
var call_help_clicked = false
var can_make_invisible = true

func _ready():
	dialog_box.hide()
	dialogue_label.can_type = false
	await get_tree().create_timer(2).timeout
	dialog_box.show()
	dialogue_label.start_dialogue()
#	await get_tree().create_timer(2).timeout	


func _process(delta):
	if dialogue_label.message_id == 1 or dialogue_label.message_id == 2:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_33.png")
		transitions.fade_to_image()
	
	if dialogue_label.message_id == 5:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_34.png")

	if dialogue_label.message_id == 15:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_35.png")

	if dialogue_label.message_id == 21:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_36.png")

	if dialogue_label.message_id == 29:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_37.png")
#func _on_cellphone_btn_pressed():
#	dialogue_label.can_type = true
#	escape_options.hide()
#	during_choice = false
#	cellphone_btn.hide()
#	cellphone_clicked = true
#	dialogue_label.create_message("You see your cell phone on top of a table and try to reach for it.")
#	dialogue_label.create_message_ahead("It’s impossible, the ropes won’t budge. You’re too weak to do anything.")
#	dialogue_label.jump_to(305)
#
#func _on_call_help_btn_pressed():
#	escape_options.hide()
#	dialogue_label.can_type = true
#	during_choice = false	
#	call_help_btn.hide()
#	call_help_clicked = true
#	dialogue_label.create_message("You try to shout, but words barely come out of your mouth.")
#	dialogue_label.create_message_ahead("It's pointless. No matter how much you try, your voice doesn't seem to come out.")
#	dialogue_label.jump_to(305)
#
#func show_give_up_btn():
#	if cellphone_clicked and call_help_clicked:
#		give_up_btn.show()
#
#func _on_give_up_btn_pressed():
#	during_choice = false
#	dialogue_label.can_type = true
#	escape_options.hide()
#	dialogue_label.jump_to(308)
#
#func _on_accept_offer_btn_pressed():
#	during_choice = false
#	dialogue_label.can_type = true
#	helenas_offer.hide()
#	dialogue_label.jump_to(345)
#
#func _on_refuse_offer_btn_pressed():
#	during_choice = false
#	dialogue_label.can_type = true
#	helenas_offer.hide()
#	dialogue_label.jump_to(341)
#
#func _on_drive_btn_pressed():
#	drive_option.hide()
#	during_choice = false
#	dialogue_label.can_type = true
#	dialogue_label.jump_to(433)
#
#func _on_eat_btn_pressed():
#	eat_food_option.hide()
#	during_choice = false
#	dialogue_label.can_type = true
#	dialogue_label.jump_to(456)
#
#func _on_dont_eat_btn_pressed():
#	eat_food_option.hide()
#	during_choice = false
#	dialogue_label.can_type = true
#	dialogue_label.jump_to(459)

#	if dialogue_label.message_id == 304:
#		escape_options.show()
#		dialogue_label.can_type = false
#		during_choice = true	
#		show_give_up_btn()
#
#	if dialogue_label.message_id == 339:
#		during_choice = true
#		dialogue_label.can_type = false
#		helenas_offer.show()
#
#	if dialogue_label.message_id == 343:
#		dialogue_label.can_type = false
#		can_make_invisible = false
#		await get_tree().create_timer(12).timeout
#		Events.change_scene_to_path.emit("res://scenes/start_menu.tscn")
##
#	if dialogue_label.message_id == 431:
#		drive_option.show()
#		hide_names()
#		during_choice = true
#		dialogue_label.can_type = false
#
#
#	if dialogue_label.message_id == 454:
#		hide_names()
#		eat_food_option.show()
#		during_choice = true
#		dialogue_label.can_type = false
#
#
#	if dialogue_label.message_id == 477:
#		dialogue_label.can_type = false
##		await get_tree().create_timer(2).timeout
##		var my_tween = get_tree().create_tween()
##		my_tween.tween_property(transition_test, "modulate", Color(0, 0, 0), 2)
#		await get_tree().create_timer(3).timeout
##		await my_tween.finished
##		print("oie")
#		Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")


func _on_dialogue_label_message_finished():
	if dialogue_label.message_id == 0:
		dialogue_label.can_type = true
