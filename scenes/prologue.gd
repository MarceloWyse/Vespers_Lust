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
@onready var car_option_timer = $CarOption/CarOptionTimer
@onready var car_progress_bar = $CarOption/VBoxContainer/DontGo/CarBarControl/CarProgressBar
@onready var fire_option = $FireOption
@onready var fire_progress_bar = $FireOption/VBoxContainer/RunBtn/FireBarControl/FireProgressBar
@onready var fire_option_timer = $FireOption/FireOptionTimer
@onready var test_button = $TestButton
@onready var escape_options = $EscapeOptions
@onready var cellphone_btn = $EscapeOptions/VBoxContainer/CellphoneBtn
@onready var call_help_btn = $EscapeOptions/VBoxContainer/CallHelpBtn
@onready var give_up_btn = $EscapeOptions/VBoxContainer/GiveUpBtn
@onready var helenas_offer = $HelenasOffer
@onready var drive_option = $DriveOption
@onready var eat_food_option = $EatFoodOption
@onready var transition_test = $TransitionTest
@onready var fade_in_trans = $FadeInTrans
@onready var black_screen = $BlackScreen

var taxi_driver = preload("res://assets/img/taxi_driver.png")
var vesper = preload("res://assets/img/vesper_face.png")
var helena = preload("res://assets/img/Helena_bust.png")
var clive = preload("res://assets/img/Clive_bust.png")
var option_timer = false
var take_gun = false
var got_outside = false
var fired_gun = false
var during_choice = false
var cellphone_clicked = false
var call_help_clicked = false
var can_make_invisible = true

func _ready():
	fade_in_trans.show()
	var my_tween = get_tree().create_tween()
	my_tween.tween_property(fade_in_trans, "modulate", Color(0, 0, 0, 0), 2)
	await my_tween.finished
	dialogue_label.jump_to(75)
#	dialogue_label.start_dialogue()

func _process(delta):
	
	if can_make_invisible:
		if Input.is_action_just_pressed("right_click"):
			dialog_box.visible = !dialog_box.visible

	if not during_choice:
		if not dialog_box.visible:
			dialogue_label.can_type = false
		else:
			dialogue_label.can_type = true
	
	if dialogue_label.message_id == 0:
		scene_texture.texture = load("res://assets/thumbnails/thumb_grimshire.png")
	
	if dialogue_label.message_id == 3:
		scene_texture.texture = load("res://assets/thumbnails/thumb_desk_02.png")

	if dialogue_label.message_id == 4:
		scene_texture.texture = load("res://assets/thumbnails/thumb_board_03.png")
	
	if dialogue_label.message_id == 8:
		scene_texture.texture = load("res://assets/thumbnails/thumb_corpse_04.png")
	
	if dialogue_label.message_id == 12:
		scene_texture.texture = load("res://assets/thumbnails/thumb_helena_photo_05.png")
		
	if dialogue_label.message_id == 17:
		scene_texture.texture = load("res://assets/thumbnails/thumb_helena_suitcase_06.png")
		
	if dialogue_label.message_id == 19:
		scene_texture.texture = load("res://assets/thumbnails/thumb_mayor_07.png")

	if dialogue_label.message_id == 24:
		scene_texture.texture = load("res://assets/thumbnails/thumb_board_08.png")

	if dialogue_label.message_id == 25:
		show_speaker("???", vesper)

	if dialogue_label.message_id == 26:
		hide_names()

	if dialogue_label.message_id == 27:
		scene_texture.texture = load("res://assets/thumbnails/thumb_missing_09.png")

	if dialogue_label.message_id == 37:
		scene_texture.texture = load("res://assets/thumbnails/thumb_party_10.png")
	
	if dialogue_label.message_id == 45:
		scene_texture.texture = load("res://assets/thumbnails/thumb_letter_11.png")
		
	if dialogue_label.message_id == 53:
		scene_texture.texture = load("res://assets/thumbnails/thumb_helena_room_12.png")
		
	if dialogue_label.message_id == 55:
		show_speaker("???", vesper)
		
	if dialogue_label.message_id == 59:
		during_choice = true
		scene_texture.texture = load("res://assets/img/revolver_scene_block.png")
		gun_option.show()
		if option_timer == false:
			dialogue_label.can_type = false 
			gun_option_timer.start()
			option_timer = true
		progress_bar.value = gun_option_timer.time_left
	
	if dialogue_label.message_id == 62:
		option_timer = false
		scene_texture.texture = null
		scene_texture.texture = load("res://assets/thumbnails/thumb_taxi_13.png")
		name_panel.hide()
		char_portrait.hide()
	
	if dialogue_label.message_id == 66:
		scene_texture.texture = load("res://assets/thumbnails/thumb_bridge_14.png")
	
	if dialogue_label.message_id == 69:
		name_panel.show()
		char_portrait.show()
	
	if dialogue_label.message_id == 72:
		name_panel.hide()
		char_portrait.hide()
	
	if dialogue_label.message_id == 75:
		name_panel.show()
		char_portrait.show()
	
	if dialogue_label.message_id == 76:
		name_panel.hide()
		char_portrait.hide()

	if dialogue_label.message_id == 80:
		scene_texture.texture = load("res://assets/thumbnails/thumb_raccoon_15.png")
	
	if dialogue_label.message_id == 81:
		name_panel.show()
		char_portrait.show()
		
	if dialogue_label.message_id == 82:
		scene_texture.texture = load("res://assets/thumbnails/thumb_1PM_16.png")
		name_panel.hide()
		char_portrait.hide()

	if dialogue_label.message_id == 84:
		name_panel.show()
		char_portrait.show()
		
	if dialogue_label.message_id == 87:
		black_screen.show()
		name_panel.hide()
		char_portrait.hide()
		
	if dialogue_label.message_id == 92:
		name_panel.show()
		char_portrait.show()
	
	if dialogue_label.message_id == 93:
		scene_texture.texture = load("res://assets/thumbnails/thumb_taxidriver_17.png")
		name_label.text = "Taxi Driver"
		char_portrait.texture = taxi_driver
		var my_tween = create_tween()
		my_tween.tween_property(black_screen, "modulate", Color(0, 0, 0, 0), 1)
		await my_tween.finished
		
	
	if dialogue_label.message_id == 94:
		name_label.text = "???"
		char_portrait.texture = vesper
	
	if dialogue_label.message_id == 95:
		name_panel.hide()
		char_portrait.hide()
	
	if dialogue_label.message_id == 99:
		name_panel.show()
		char_portrait.show()
	
	if dialogue_label.message_id == 100:
		name_label.text = "Taxi Driver"
		char_portrait.texture = taxi_driver
		
	if dialogue_label.message_id == 101:
		name_label.text = "???"
		char_portrait.texture = vesper

	if dialogue_label.message_id == 102:
		hide_names()
		
	if dialogue_label.message_id == 103:
		show_speaker("taxi_driver", taxi_driver)

	if dialogue_label.message_id == 104:
		show_speaker("???", vesper)
	
	if dialogue_label.message_id == 105:
		show_speaker("taxi_driver", taxi_driver)
		
	if dialogue_label.message_id == 106:
		show_speaker("???", vesper)
	
	if dialogue_label.message_id == 107:
		show_speaker("taxi_driver", taxi_driver)
	
	if dialogue_label.message_id == 109:
		show_speaker("???", vesper)
	
	if dialogue_label.message_id == 110:
		show_speaker("taxi_driver", taxi_driver)
	
	if dialogue_label.message_id == 111:
		show_speaker("???", vesper)
	
	if dialogue_label.message_id == 112:
		show_speaker("taxi_driver", taxi_driver)
	
	if dialogue_label.message_id == 113:
		show_speaker("vesper", vesper)
		
	if dialogue_label.message_id == 114:
		show_speaker("taxi_driver", taxi_driver)

	if dialogue_label.message_id == 115:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 117:
		show_speaker("taxi_driver", taxi_driver)

	if dialogue_label.message_id == 119:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 120:
		show_speaker("taxi_driver", taxi_driver)
		
	if dialogue_label.message_id == 121:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 122:
		show_speaker("taxi_driver", taxi_driver)
	
	if dialogue_label.message_id == 123:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 124:
		show_speaker("taxi_driver", taxi_driver)
	
	if dialogue_label.message_id == 125:
		hide_names()
	
	if dialogue_label.message_id == 129:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 130:
		hide_names()
	
	if dialogue_label.message_id == 134:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 135:
		during_choice = true
		car_option.show()
		if option_timer == false:
			dialogue_label.can_type = false 
			car_option_timer.start()
			option_timer = true
		car_progress_bar.value = car_option_timer.time_left
	
	if dialogue_label.message_id == 139:
		during_choice = false
		hide_names()
	
	if dialogue_label.message_id == 144:
		show_speaker("vesper", vesper)
		if take_gun:
			dialogue_label.create_message("instinctively you grab your gun as hard as you can.")
		else:
			dialogue_label.create_message("A thought races into your mind: 'Vesper, as long as you stay in the car it doesn't matter you haven't brought your gun'")
	
	if dialogue_label.message_id == 145:
		hide_names()
	
	if dialogue_label.message_id == 149:
		show_speaker("vesper", vesper)
		
	if dialogue_label.message_id == 150:
		hide_names()
		
	if dialogue_label.message_id == 154:
		dialogue_label.jump_to(211)
	
	if dialogue_label.message_id == 156:
		dialogue_label.jump_to(140)
	
	if dialogue_label.message_id == 160:
		hide_names()
	
	if dialogue_label.message_id == 161:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 162:
		hide_names()
	
	if dialogue_label.message_id == 168:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 169:
		hide_names()
		
	if dialogue_label.message_id == 174:
		during_choice = true
		fire_option.show()
		if option_timer == false:
			dialogue_label.can_type = false 
			fire_option_timer.start()
			option_timer = true
		fire_progress_bar.value = fire_option_timer.time_left

	if dialogue_label.message_id == 178:
		dialogue_label.jump_to(211)
	
	if dialogue_label.message_id == 179:
		hide_names()
	
	if dialogue_label.message_id == 182:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 183:
		hide_names()
	
	if dialogue_label.message_id == 187:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 189:
		hide_names()
	
	if dialogue_label.message_id == 191:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 192:
		hide_names()
	
	if dialogue_label.message_id == 197:
		name_label.text = "???"
		name_panel.show()
	
	if dialogue_label.message_id == 198:
		hide_names()
	
	if dialogue_label.message_id == 200:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 201:
		name_label.text = "???"
		name_panel.show()
		char_portrait.hide()
	
	if dialogue_label.message_id == 202:
		hide_names()
	
	if dialogue_label.message_id == 210:
		dialogue_label.jump_to(211)
	
	#Kidnapped Day 1:
	if dialogue_label.message_id == 213:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 214:
		hide_names()
	
	if dialogue_label.message_id == 217:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 218:
		hide_names()

	if dialogue_label.message_id == 220:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 221:
		hide_names()
	
	if dialogue_label.message_id == 230:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 231:
		show_speaker("?", clive)
	
	if dialogue_label.message_id == 232:
		show_speaker("?", helena)
	
	if dialogue_label.message_id == 233:
		show_speaker("?", clive)
		
	if dialogue_label.message_id == 234:
		show_speaker("?", helena)

	if dialogue_label.message_id == 235:
		show_speaker("?", clive)
		
	if dialogue_label.message_id == 236:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 237:
		show_speaker("?", clive)

	if dialogue_label.message_id == 238:
		show_speaker("?", helena)

	if dialogue_label.message_id == 239:
		hide_names()

	if dialogue_label.message_id == 240:
		show_speaker("?", helena)

	if dialogue_label.message_id == 241:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 242:
		show_speaker("?", helena)
	
	if dialogue_label.message_id == 243:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 244:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 245:
		hide_names()
	
	if dialogue_label.message_id == 246:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 247:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 248:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 249:
		hide_names()
	
	if dialogue_label.message_id == 252:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 254:
		show_speaker("?", clive)
		
	if dialogue_label.message_id == 255:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 257:
		show_speaker("?", clive)

	if dialogue_label.message_id == 258:
		hide_names()

	if dialogue_label.message_id == 260:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 261:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 265:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 266:
		show_speaker("vesper", vesper)
		
	if dialogue_label.message_id == 267:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 268:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 270:
		hide_names()
	
	if dialogue_label.message_id == 271:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 273:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 274:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 275:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 276:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 278:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 279:
		hide_names()
	
	if dialogue_label.message_id == 280:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 281:
		hide_names()

	if dialogue_label.message_id == 282:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 283:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 284:
		show_speaker("vesper", vesper)
		
	if dialogue_label.message_id == 285:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 288:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 289:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 290:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 291:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 292:
		hide_names()
	
	if dialogue_label.message_id == 293:
		show_speaker("helena", helena)
		
	if dialogue_label.message_id == 297:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 298:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 299:
		hide_names()
	
	if dialogue_label.message_id == 301:
		dialogue_label.jump_to(302)
		
	if dialogue_label.message_id == 304:
		escape_options.show()
		dialogue_label.can_type = false
		during_choice = true	
		show_give_up_btn()
	
	if dialogue_label.message_id == 307:
		dialogue_label.jump_to(304)
		
	if dialogue_label.message_id == 312:
		show_speaker("?", clive)
	
	if dialogue_label.message_id == 313:
		hide_names()
	
	if dialogue_label.message_id == 314:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 315:
		show_speaker("?", clive)

	if dialogue_label.message_id == 317:
		hide_names()

	if dialogue_label.message_id == 318:
		show_speaker("?", clive)
	
	if dialogue_label.message_id == 319:
		hide_names()

	if dialogue_label.message_id == 321:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 322:
		show_speaker("?", clive)
	
	if dialogue_label.message_id == 323:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 324:
		hide_names()
	
	if dialogue_label.message_id == 327:
		show_speaker("?", clive)	

	if dialogue_label.message_id == 328:
		hide_names()	

	if dialogue_label.message_id == 329:
		show_speaker("helena", helena)
		
	if dialogue_label.message_id == 330:
		hide_names()

	if dialogue_label.message_id == 331:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 339:
		during_choice = true
		dialogue_label.can_type = false
		helenas_offer.show()
		
	if dialogue_label.message_id == 343:
		dialogue_label.can_type = false
		can_make_invisible = false
		await get_tree().create_timer(12).timeout
		get_tree().change_scene_to_file("res://scenes/start_menu.tscn")
	
	if dialogue_label.message_id == 354:
		hide_names()
	
	if dialogue_label.message_id == 366:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 367:
		hide_names()

	if dialogue_label.message_id == 368:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 369:
		hide_names()	
	
	if dialogue_label.message_id == 370:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 371:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 372:
		hide_names()
	
	if dialogue_label.message_id == 375:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 377:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 378:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 379:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 380:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 383:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 384:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 387:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 388:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 389:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 390:
		show_speaker("helena", helena)
		
	if dialogue_label.message_id == 391:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 392:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 393:
		show_speaker("vesper", vesper)
		
	if dialogue_label.message_id == 394:
		show_speaker("helena", helena)
		
	if dialogue_label.message_id == 396:
		hide_names()

	if dialogue_label.message_id == 398:
		show_speaker("helena", helena)
	
	if dialogue_label.message_id == 400:
		hide_names()

	if dialogue_label.message_id == 401:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 402:
		hide_names()

	if dialogue_label.message_id == 403:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 404:
		hide_names()

	if dialogue_label.message_id == 406:
		show_speaker("???", clive)

	if dialogue_label.message_id == 407:
		hide_names()
	
	if dialogue_label.message_id == 408:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 410:
		hide_names()

	if dialogue_label.message_id == 411:
		show_speaker("???", clive)

	if dialogue_label.message_id == 412:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 414:
		hide_names()
		
	if dialogue_label.message_id == 416:
		show_speaker("clive", clive)

	if dialogue_label.message_id == 417:
		hide_names()
		
	if dialogue_label.message_id == 419:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 420:
		hide_names()

	if dialogue_label.message_id == 421:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 422:
		hide_names()

	if dialogue_label.message_id == 423:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 424:
		hide_names()

	if dialogue_label.message_id == 425:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 426:
		hide_names()

	if dialogue_label.message_id == 427:
		show_speaker("helena", helena)

	if dialogue_label.message_id == 428:
		hide_names()

	if dialogue_label.message_id == 429:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 430:
		hide_names()

	if dialogue_label.message_id == 431:
		drive_option.show()
		hide_names()
		during_choice = true
		dialogue_label.can_type = false
	
	if dialogue_label.message_id == 438:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 441:
		dialogue_label.jump_to(442)
	
	if dialogue_label.message_id == 442:
		hide_names()

	if dialogue_label.message_id == 448:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 451:
		hide_names()

	if dialogue_label.message_id == 452:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 454:
		hide_names()
		eat_food_option.show()
		during_choice = true
		dialogue_label.can_type = false
	
	if dialogue_label.message_id == 457:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 459:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 458:
		dialogue_label.jump_to(462)

	if dialogue_label.message_id == 461:
		dialogue_label.jump_to(462)
		
	if dialogue_label.message_id == 473:
		hide_names()

	if dialogue_label.message_id == 474:
		show_speaker("vesper", vesper)

	if dialogue_label.message_id == 475:
		hide_names()

	if dialogue_label.message_id == 476:
		show_speaker("vesper", vesper)
	
	if dialogue_label.message_id == 477:
		dialogue_label.can_type = false
		await get_tree().create_timer(2).timeout
		var my_tween = get_tree().create_tween()
		my_tween.tween_property(transition_test, "modulate", Color(0, 0, 0), 2)
		await get_tree().create_timer(3).timeout
#		await my_tween.finished
#		print("oie")
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

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
	take_gun = true
	dialogue_label.can_type = true
	gun_option.hide()
	dialogue_label.create_message("What good is a gun stashed at home anyway?")
	dialogue_label.create_message_ahead("Going unarmed to the middle of nowhere to meet god knows whom? No, thanks.")
	dialogue_label.jump_to(60)
	
func _on_dont_take_gun_pressed():
	during_choice = false
	gun_option_timer.stop()
	take_gun = false
	dialogue_label.can_type = true
	gun_option.hide()
	dialogue_label.create_message("I guess I could get in trouble carrying this around, I should leave it at home.")
	dialogue_label.create_message_ahead("I don’t have a register for this, plus, I barely know how to use it.")
	dialogue_label.jump_to(60)
	
func _on_gun_option_timer_timeout():
	during_choice = false
	take_gun = false
	dialogue_label.can_type = true
	gun_option.hide()
	dialogue_label.create_message("I don't know what to do...")
	dialogue_label.create_message_ahead("If this person is friendly, showing up with a gun is a bad idea. I guess I'll leave it at home.")
	dialogue_label.jump_to(60)
	
func _on_got_outside_pressed():
	during_choice = false
	car_option_timer.stop()
	got_outside = true
	option_timer = false
	dialogue_label.can_type = true
	car_option.hide()
	if take_gun == true:
		dialogue_label.jump_to(157)
	else:
		dialogue_label.jump_to(179)

func _on_dont_go_pressed():
	during_choice = false
	car_option_timer.stop()
	got_outside = false
	option_timer = false
	dialogue_label.can_type = true
	car_option.hide()
	dialogue_label.jump_to(137)
	
func _on_car_option_timer_timeout():
	during_choice = false
	got_outside = false
	option_timer = false
	dialogue_label.can_type = true
	car_option.hide()
	hide_names()
	dialogue_label.jump_to(155)

func _on_fire_option_timer_timeout():
	during_choice = false
	fired_gun = false 
	option_timer = false
	dialogue_label.can_type = true
	fire_option.hide()
	hide_names()
	dialogue_label.create_message("You hesitate for a second. When you realize, it's upon you.")
	dialogue_label.create_message_ahead("A looming dark-haired man. Choking the hell out of you.")
	dialogue_label.create_message_ahead_ahead("You kick your legs around hopelessly trying to break free, while he gives you a smirk as you descend into darkness.")
	dialogue_label.jump_to(175)

func _on_fire_btn_pressed():
	during_choice = false
	fire_option_timer.stop()
	fired_gun = true 
	option_timer = false
	dialogue_label.can_type = true
	fire_option.hide()
	hide_names()
	dialogue_label.create_message("You fire desperately, unloading your entire magazine, not knowing if you hit anything.")
	dialogue_label.create_message_ahead("You’re disoriented by the smoke and temporarily deaf from the gun’s noise.")
	dialogue_label.create_message_ahead_ahead("When you open your eyes you realize it is too late, it is upon you. It knocks you down to the floor and you lose consciousness.")
	dialogue_label.jump_to(175)

func _on_run_btn_pressed():
	during_choice = false
	fire_option_timer.stop()
	fired_gun = true 
	option_timer = false
	dialogue_label.can_type = true
	fire_option.hide()
	hide_names()
	dialogue_label.create_message("You turn and run at full speed towards the car. You know it’s futile, it is coming and it won’t stop until it gets you.")
	dialogue_label.create_message_ahead("When you turn to see if it’s still following you, you realize that was a mistake. It isn’t following you, it’s right in front of you!")
	dialogue_label.create_message_ahead_ahead("Your scream is muffled by its hand, it bites your neck, and as you lose consciousness, you have a faint memory of having seen him before.")
	dialogue_label.jump_to(175)

func _on_test_button_mouse_exited():
	test_button.release_focus()

func _on_cellphone_btn_pressed():
	dialogue_label.can_type = true
	escape_options.hide()
	during_choice = false
	cellphone_btn.hide()
	cellphone_clicked = true
	dialogue_label.create_message("You see your cell phone on top of a table and try to reach for it.")
	dialogue_label.create_message_ahead("It’s impossible, the ropes won’t budge. You’re too weak to do anything.")
	dialogue_label.jump_to(305)
	
func _on_call_help_btn_pressed():
	escape_options.hide()
	dialogue_label.can_type = true
	during_choice = false	
	call_help_btn.hide()
	call_help_clicked = true
	dialogue_label.create_message("You try to shout, but words barely come out of your mouth.")
	dialogue_label.create_message_ahead("It's pointless. No matter how much you try, your voice doesn't seem to come out.")
	dialogue_label.jump_to(305)

func show_give_up_btn():
	if cellphone_clicked and call_help_clicked:
		give_up_btn.show()

func _on_give_up_btn_pressed():
	during_choice = false
	dialogue_label.can_type = true
	escape_options.hide()
	dialogue_label.jump_to(308)

func _on_accept_offer_btn_pressed():
	during_choice = false
	dialogue_label.can_type = true
	helenas_offer.hide()
	dialogue_label.jump_to(345)

func _on_refuse_offer_btn_pressed():
	during_choice = false
	dialogue_label.can_type = true
	helenas_offer.hide()
	dialogue_label.jump_to(341)

func _on_drive_btn_pressed():
	drive_option.hide()
	during_choice = false
	dialogue_label.can_type = true
	dialogue_label.jump_to(433)

func _on_eat_btn_pressed():
	eat_food_option.hide()
	during_choice = false
	dialogue_label.can_type = true
	dialogue_label.jump_to(456)

func _on_dont_eat_btn_pressed():
	eat_food_option.hide()
	during_choice = false
	dialogue_label.can_type = true
	dialogue_label.jump_to(459)
