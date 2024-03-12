extends Control

@onready var dialog_box = $DialogBox
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var name_label = $DialogBox/NamePanel/NameLabel
@onready var name_panel = $DialogBox/NamePanel
@onready var char_portrait = $DialogBox/CharPortrait
@onready var gun_option_timer = $GunOption/GunOptionTimer
@onready var progress_bar = $GunOption/VBoxContainer/DontTakeGun/ProgressBarControl/ProgressBar
@onready var scene_texture = $SceneTexture
@onready var gun_option = $GunOption
@onready var car_option = $CarOption
@onready var fire_option = $FireOption
@onready var fire_progress_bar = $FireOption/VBoxContainer/RunBtn/FireBarControl/FireProgressBar
@onready var fire_option_timer = $FireOption/FireOptionTimer
@onready var black_screen = $BlackScreen
@onready var transitions = $Transitions
@onready var skip_timer = $SkipTimer
@onready var skipping_label = $SkippingPanel/SkippingLabel
@onready var skipping_panel = $SkippingPanel

var reset_timer = false
var taxi_driver = preload("res://assets/img/taxi_driver.png")
var vesper = preload("res://assets/img/vesper_face.png")
var helena = preload("res://assets/img/Helena_bust.png")
var clive = preload("res://assets/img/Clive_bust.png")
var option_timer = false
var got_outside = false
var fired_gun = false
var during_choice = false
var cellphone_clicked = false
var call_help_clicked = false
var can_make_invisible = true

func _ready():
#	SaveManager.save.prologue["took_gun"] = false
#	SaveManager.save.prologue["took_gun"] = true
	if Events.battle_ended:
		dialogue_label.jump_to(145)
	else:
		dialogue_label.start_dialogue()
#		dialogue_label.jump_to(110)
	transitions.fade_to_image()

func _process(delta):
	
	if reset_timer == false:
		if Input.is_action_pressed("skip_scene"):
			skipping_panel.show()
			reset_timer = true
			skip_timer.start()
	
	if Input.is_action_just_released("skip_scene"):
		skipping_panel.hide()
		reset_timer = false
		skip_timer.stop()

	if reset_timer == true:
		skipping_label.text = "Skipping in: %d" %int(skip_timer.time_left)
	
	if can_make_invisible:
		if Input.is_action_just_pressed("right_click"):
			dialog_box.visible = !dialog_box.visible

	if not during_choice:
		if not dialog_box.visible:
			dialogue_label.can_type = false
		else:
			dialogue_label.can_type = true

	if dialogue_label.message_id == 0:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_1.png")
		if SaveManager.save.prologue_cg["prologue_1"] == false:
			SaveManager.save.prologue_cg["prologue_1"] = true
		
	if dialogue_label.message_id == 8:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_2.png")
		if SaveManager.save.prologue_cg["prologue_2"] == false:
			SaveManager.save.prologue_cg["prologue_2"] = true
		
	if dialogue_label.message_id == 10:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_3.png")
		if SaveManager.save.prologue_cg["prologue_3"] == false:
			SaveManager.save.prologue_cg["prologue_3"] = true
	
	if dialogue_label.message_id == 14:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_4.png")
		if SaveManager.save.prologue_cg["prologue_4"] == false:
			SaveManager.save.prologue_cg["prologue_4"] = true

	if dialogue_label.message_id == 17:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_5.png")
		if SaveManager.save.prologue_cg["prologue_5"] == false:
			SaveManager.save.prologue_cg["prologue_5"] = true
	
	if dialogue_label.message_id == 19:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_6.png")
		if SaveManager.save.prologue_cg["prologue_6"] == false:
			SaveManager.save.prologue_cg["prologue_6"] = true
	
	if dialogue_label.message_id == 21:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_7.png")
		if SaveManager.save.prologue_cg["prologue_7"] == false:
			SaveManager.save.prologue_cg["prologue_7"] = true

	if dialogue_label.message_id == 23:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_8.png")
		if SaveManager.save.prologue_cg["prologue_8"] == false:
			SaveManager.save.prologue_cg["prologue_8"] = true
	
	if dialogue_label.message_id == 26:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_9.png")
		if SaveManager.save.prologue_cg["prologue_9"] == false:
			SaveManager.save.prologue_cg["prologue_9"] = true

	if dialogue_label.message_id == 33:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_10.png")
		if SaveManager.save.prologue_cg["prologue_10"] == false:
			SaveManager.save.prologue_cg["prologue_10"] = true

	if dialogue_label.message_id == 36:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_11.png")
		if SaveManager.save.prologue_cg["prologue_11"] == false:
			SaveManager.save.prologue_cg["prologue_11"] = true
			
	if dialogue_label.message_id == 39:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_12.png")
		if SaveManager.save.prologue_cg["prologue_12"] == false:
			SaveManager.save.prologue_cg["prologue_12"] = true

	if dialogue_label.message_id == 41:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_13.png")
		if SaveManager.save.prologue_cg["prologue_13"] == false:
			SaveManager.save.prologue_cg["prologue_13"] = true

	#Take Gun option
	if dialogue_label.message_id == 52:
		during_choice = true
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_14.png")
		gun_option.show()
		if option_timer == false:
			dialogue_label.can_type = false 
			gun_option_timer.start()
			option_timer = true
		progress_bar.value = gun_option_timer.time_left
		if SaveManager.save.prologue_cg["prologue_14"] == false:
			SaveManager.save.prologue_cg["prologue_14"] = true
	
	if dialogue_label.message_id == 55:
		option_timer = false
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_15.png")
		if SaveManager.save.prologue_cg["prologue_15"] == false:
			SaveManager.save.prologue_cg["prologue_15"] = true	
	
	if dialogue_label.message_id == 58:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_16.png")
		if SaveManager.save.prologue_cg["prologue_16"] == false:
			SaveManager.save.prologue_cg["prologue_16"] = true

	if dialogue_label.message_id == 72:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_17.png")
		if SaveManager.save.prologue_cg["prologue_17"] == false:
			SaveManager.save.prologue_cg["prologue_17"] = true

	if dialogue_label.message_id == 74:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_18.png")
		if SaveManager.save.prologue_cg["prologue_18"] == false:
			SaveManager.save.prologue_cg["prologue_18"] = true

	if dialogue_label.message_id == 77:
		scene_texture.texture = null
		black_screen.show()
#		name_panel.hide()
#		char_portrait.hide()
#
	if dialogue_label.message_id == 89:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_19.png")
		if SaveManager.save.prologue_cg["prologue_19"] == false:
			SaveManager.save.prologue_cg["prologue_19"] = true
		var my_tween = create_tween()
		my_tween.tween_property(black_screen, "modulate", Color(0, 0, 0, 0), 1)
		await my_tween.finished

	if dialogue_label.message_id == 92:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_20.png")
		if SaveManager.save.prologue_cg["prologue_20"] == false:
			SaveManager.save.prologue_cg["prologue_20"] = true

	if dialogue_label.message_id == 96:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_21.png")
		if SaveManager.save.prologue_cg["prologue_21"] == false:
			SaveManager.save.prologue_cg["prologue_21"] = true

	if dialogue_label.message_id == 125:
		during_choice = true
		car_option.show()
		dialogue_label.can_type = false
	
	if dialogue_label.message_id == 127:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_25.png")
		if SaveManager.save.prologue_cg["prologue_25"] == false:
			SaveManager.save.prologue_cg["prologue_25"] = true

	if dialogue_label.message_id == 130:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_26.png")
		if SaveManager.save.prologue_cg["prologue_26"] == false:
			SaveManager.save.prologue_cg["prologue_26"] = true

	if dialogue_label.message_id == 134:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_27.png")
		if SaveManager.save.prologue_cg["prologue_27"] == false:
			SaveManager.save.prologue_cg["prologue_27"] = true

	if dialogue_label.message_id == 136:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_28.png")
		if SaveManager.save.prologue_cg["prologue_28"] == false:
			SaveManager.save.prologue_cg["prologue_28"] = true

	if dialogue_label.message_id == 143:
		during_choice = true
		fire_option.show()
		if option_timer == false:
			dialogue_label.can_type = false 
			fire_option_timer.start()
			option_timer = true
		fire_progress_bar.value = fire_option_timer.time_left
	
	if dialogue_label.message_id == 145:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_29.png")
		if SaveManager.save.prologue_cg["prologue_29"] == false:
			SaveManager.save.prologue_cg["prologue_29"] = true

	if dialogue_label.message_id == 148:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_32.png")
		if SaveManager.save.prologue_cg["prologue_32"] == false:
			SaveManager.save.prologue_cg["prologue_32"] = true

	if dialogue_label.message_id == 150:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_31.png")
		if SaveManager.save.prologue_cg["prologue_31"] == false:
			SaveManager.save.prologue_cg["prologue_31"] = true

	if dialogue_label.message_id == 153:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_32.png")
		if SaveManager.save.prologue_cg["prologue_32"] == false:
			SaveManager.save.prologue_cg["prologue_32"] = true	

	if dialogue_label.message_id == 155:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_28.png")
		if SaveManager.save.prologue_cg["prologue_28"] == false:
			SaveManager.save.prologue_cg["prologue_28"] = true

	if dialogue_label.message_id == 157:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_32.png")
		if SaveManager.save.prologue_cg["prologue_32"] == false:
			SaveManager.save.prologue_cg["prologue_32"] = true

	if dialogue_label.message_id == 159:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_25.png")
		if SaveManager.save.prologue_cg["prologue_25"] == false:
			SaveManager.save.prologue_cg["prologue_25"] = true

	if dialogue_label.message_id == 163:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_26.png")
		if SaveManager.save.prologue_cg["prologue_26"] == false:
			SaveManager.save.prologue_cg["prologue_26"] = true
	
	if dialogue_label.message_id == 166:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_27.png")
		if SaveManager.save.prologue_cg["prologue_27"] == false:
			SaveManager.save.prologue_cg["prologue_27"] = true

	if dialogue_label.message_id == 168:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_30.png")
		if SaveManager.save.prologue_cg["prologue_30"] == false:
			SaveManager.save.prologue_cg["prologue_30"] = true

	if dialogue_label.message_id == 173:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_31.png")
		if SaveManager.save.prologue_cg["prologue_31"] == false:
			SaveManager.save.prologue_cg["prologue_31"] = true

	if dialogue_label.message_id == 177:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_32.png")
		if SaveManager.save.prologue_cg["prologue_32"] == false:
			SaveManager.save.prologue_cg["prologue_32"] = true

	if dialogue_label.message_id == 179:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_22.png")
		if SaveManager.save.prologue_cg["prologue_22"] == false:
			SaveManager.save.prologue_cg["prologue_22"] = true
	
	if dialogue_label.message_id == 188:
		if SaveManager.save.prologue["took_gun"]:
			dialogue_label.create_message_ahead_1("Instinctively you grab your gun as hard as you can.")
		else:
			dialogue_label.create_message_ahead_1("Vesper: I have to calm down. As long as I stay in the car I’m safe.")

	if dialogue_label.message_id == 193:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_23.png")
		if SaveManager.save.prologue_cg["prologue_23"] == false:
			SaveManager.save.prologue_cg["prologue_23"] = true

	if dialogue_label.message_id == 194:
		scene_texture.texture = load("res://assets/thumbnails/prologue/prologue_24.png")
		if SaveManager.save.prologue_cg["prologue_24"] == false:
			SaveManager.save.prologue_cg["prologue_24"] = true

	if dialogue_label.message_id == 197 \
	or dialogue_label.message_id == 149 \
	or dialogue_label.message_id == 154 \
	or dialogue_label.message_id == 158 \
	or dialogue_label.message_id == 178 \
	or dialogue_label.message_id == 197:
		var my_tween = get_tree().create_tween()
		dialog_box.hide()
		my_tween.tween_property($FadeOutTrans, "modulate", Color(0, 0, 0), 2)
		await my_tween.finished
		Events.change_scene_to_path.emit("res://scenes/prologue_part_2.tscn")

func show_speaker(character : String, texture : Texture):
	var char_name
	if character.contains("taxi"):
		char_name = "Taxi Driver"
	elif character.contains("vesper"):
		char_name = "Vesper"
	elif character.contains("clive"):
		char_name = "Clive"
	elif character.contains("helena"):
		char_name = "Helena"
	elif character.contains("?"):
		char_name = "???"
	name_label.text = "%s" %char_name
	char_portrait.texture = texture
	name_panel.show()
	char_portrait.show()

func hide_names():
	name_panel.hide()
	char_portrait.hide()
	
func _on_take_gun_pressed():
	during_choice = false
	gun_option_timer.stop()
	SaveManager.save.prologue["took_gun"] = true
	dialogue_label.can_type = true
	gun_option.hide()
	dialogue_label.create_message_ahead_1("What good is a gun stashed at home anyway?")
	dialogue_label.create_message_ahead_2("Going unarmed to the middle of nowhere to meet god knows whom? No, thanks.")
	dialogue_label.jump_to(53)
	
func _on_dont_take_gun_pressed():
	during_choice = false
	gun_option_timer.stop()
	SaveManager.save.prologue["took_gun"] = false
	dialogue_label.can_type = true
	gun_option.hide()
	dialogue_label.create_message_ahead_1("I guess I could get in trouble carrying this around, I should leave it at home.")
	dialogue_label.create_message_ahead_2("I don’t have a registration for this, plus, I barely know how to use it.")
	dialogue_label.jump_to(53)
	
func _on_gun_option_timer_timeout():
	during_choice = false
	SaveManager.save.prologue["took_gun"] = false
	dialogue_label.can_type = true
	gun_option.hide()
	dialogue_label.create_message_ahead_1("I don't know what to do...")
	dialogue_label.create_message_ahead_2("If this person is friendly, showing up with a gun is a bad idea. I guess I'll leave it at home.")
	dialogue_label.jump_to(53)
	
func _on_got_outside_pressed():
	during_choice = false
	got_outside = true
	dialogue_label.can_type = true
	car_option.hide()
	if SaveManager.save.prologue["took_gun"] == true:
		dialogue_label.jump_to(127)
	else:
		dialogue_label.jump_to(159)

func _on_dont_go_pressed():
	during_choice = false
	got_outside = false
	dialogue_label.can_type = true
	car_option.hide()
	dialogue_label.jump_to(179)

func _on_fire_option_timer_timeout():
	during_choice = false
	fired_gun = false 
	option_timer = false
	dialogue_label.can_type = true
	fire_option.hide()
	dialogue_label.jump_to(155)

func _on_fire_btn_pressed():
	during_choice = false
	fire_option_timer.stop()
	option_timer = false
	dialogue_label.can_type = true
	fire_option.hide()
	Events.change_scene_to_path.emit("res://scenes/prologue_battle.tscn")

func _on_run_btn_pressed():
	during_choice = false
	fire_option_timer.stop()
	option_timer = false
	dialogue_label.can_type = true
	fire_option.hide()
	dialogue_label.jump_to(150)

func _on_skip_timer_timeout():
	Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")
