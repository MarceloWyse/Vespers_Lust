extends Control
@onready var scene_bg = $SceneBg

@onready var dialog_box = $DialogBox
@onready var deckard_option = $DeckardOption
@onready var progress_bar = $DeckardOption/VBoxContainer/Ass/ProgressBarControl/ProgressBar
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var deckard_option_timer = $DeckardOption/DeckardOptionTimer
@onready var ass = $DeckardOption/VBoxContainer/Ass
@onready var pussy = $DeckardOption/VBoxContainer/Pussy

var timer_started = false
var quick_tits = false
# Called when the node enters the scene tree for the first time.
func _ready():
	SaveManager.save.deckard["showed_tits"] = true
	SaveManager.save.deckard["showed_butt"] = true
	SaveManager.save.player_status["lewdness"] = 60
	
	if SaveManager.save.deckard["showed_tits"] and SaveManager.save.player_status["lewdness"] >= 20:
		ass.disabled = false
		
	if SaveManager.save.deckard["showed_butt"] and SaveManager.save.player_status["lewdness"] >= 40:
		pussy.disabled = false
	dialog_box.show()
	deckard_option.hide()
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/hospital_storyboard/no_money/hospital_scene_nomoney.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 11:
		deckard_option.show()
		dialogue_label.can_type = false
		if not timer_started:
			deckard_option_timer.start()
			timer_started = true 
		progress_bar.value = deckard_option_timer.time_left

	if dialogue_label.message_id == 21:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_9.png")

	if dialogue_label.message_id == 22:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_2.png")

	if dialogue_label.message_id == 26:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_2_3.png")


	if dialogue_label.message_id == 38:
		if not quick_tits:
			quick_tits = true
			dialogue_label.can_type = false
			scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_3.png")
			await get_tree().create_timer(0.5).timeout
			dialogue_label.jump_to(39)
	
	if dialogue_label.message_id == 39:
		dialogue_label.can_type = true
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_1.png")

	if dialogue_label.message_id == 48:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_4.png")

	if dialogue_label.message_id == 54:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_5.png")

	if dialogue_label.message_id == 74:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_7.png")

	if dialogue_label.message_id == 83:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_6.png")

	if dialogue_label.message_id == 89:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_9.png")

	if dialogue_label.message_id == 102:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_8.png")

	if dialogue_label.message_id == 102:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_8.png")


	#Showing Ass
	if dialogue_label.message_id == 117:
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_9.png")

	if dialogue_label.message_id == 122:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_1_2.png")

	if dialogue_label.message_id == 125:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_2.png")

	if dialogue_label.message_id == 144:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_3.png")

	if dialogue_label.message_id == 144:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_3.png")

	if dialogue_label.message_id == 155:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_4.png")

	if dialogue_label.message_id == 160:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_5.png")

	if dialogue_label.message_id == 169:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_7.png")

	if dialogue_label.message_id == 170:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_6.png")

	if dialogue_label.message_id == 172:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_7.png")

	if dialogue_label.message_id == 173:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_6.png")

	if dialogue_label.message_id == 174:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_7.png")

	if dialogue_label.message_id == 175:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_6.png")

	if dialogue_label.message_id == 176:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_7.png")

	if dialogue_label.message_id == 177:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_6.png")

	if dialogue_label.message_id == 178:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_7.png")

	if dialogue_label.message_id == 179:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_6.png")

	if dialogue_label.message_id == 180:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_8.png")

	if dialogue_label.message_id == 187:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_9.png")

	if dialogue_label.message_id == 189:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_11.png")

	if dialogue_label.message_id == 190:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_10.png")

	if dialogue_label.message_id == 191:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_11.png")

	if dialogue_label.message_id == 192:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_10.png")

	if dialogue_label.message_id == 193:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_11.png")

	if dialogue_label.message_id == 194:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_10.png")

	if dialogue_label.message_id == 195:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_12.png")

	if dialogue_label.message_id == 202:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_13.png")

	if dialogue_label.message_id == 207:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_14.png")

	if dialogue_label.message_id == 210:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_15.png")

	if dialogue_label.message_id == 212:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_16.png")
	
	if dialogue_label.message_id == 214:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_17.png")

	if dialogue_label.message_id == 227:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_1.png")

	if dialogue_label.message_id == 235:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_2.png")

	if dialogue_label.message_id == 239:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_3.png")

	if dialogue_label.message_id == 249:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_4.png")

	if dialogue_label.message_id == 253:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_3.png")

	if dialogue_label.message_id == 261:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_5.png")

	if dialogue_label.message_id == 264:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_7.png")

	if dialogue_label.message_id == 266:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_6.png")

	if dialogue_label.message_id == 269:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_9.png")

	if dialogue_label.message_id == 270:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_9.png")

	if dialogue_label.message_id == 276:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_11.png")

	if dialogue_label.message_id == 280:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_12.png")

	if dialogue_label.message_id == 293:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_11.png")

	if dialogue_label.message_id == 303:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_13.png")

	if dialogue_label.message_id == 308:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_13_2.png")

	if dialogue_label.message_id == 312:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_14.png")

	if dialogue_label.message_id == 317:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_15.png")

	if dialogue_label.message_id == 327:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_16.png")

	if dialogue_label.message_id == 329:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_17.png")

	if dialogue_label.message_id == 332:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_18.png")

	if dialogue_label.message_id == 334:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_19.png")

	if dialogue_label.message_id == 343:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_20.png")

	if dialogue_label.message_id == 348:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_21.png")

	if dialogue_label.message_id == 354:
		scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_pussy/flashing_scene_pussy_22.png")

	if dialogue_label.message_id == 105 or dialogue_label.message_id == 221 \
	or dialogue_label.message_id == 357:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _on_deckard_option_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/sanatorium_ending.tscn")

func _on_tits_pressed():
	SaveManager.save.player_status["lewdness"] += 10
	dialogue_label.jump_to(14)
	deckard_option_timer.stop()
	deckard_option.hide()
	dialogue_label.can_type = true
	SaveManager.save.deckard["showed_tits"] = true
	scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_tits/flashing_scene_tits_1.png")

func _on_pussy_pressed():
	dialogue_label.jump_to(223)
	deckard_option_timer.stop()
	deckard_option.hide()
	dialogue_label.can_type = true
	scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_9.png")
	
func _on_ass_pressed():
	dialogue_label.jump_to(107)
	deckard_option_timer.stop()
	deckard_option.hide()
	dialogue_label.can_type = true
	SaveManager.save.deckard["showed_butt"] = true
	scene_bg.texture = load("res://assets/hospital_storyboard/no_money/show_ass/flashing_scene_ass_1.png")
