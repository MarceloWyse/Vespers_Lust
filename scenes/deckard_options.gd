extends Control

@onready var deckard_option_timer = $DeckardOption/DeckardOptionTimer
@onready var progress_bar = $DeckardOption/VBoxContainer/Anal/ProgressBarControl/ProgressBar
@onready var lap_dance = $DeckardOption/VBoxContainer/LapDance
@onready var handjob = $DeckardOption/VBoxContainer/Handjob
@onready var braless_dance = $DeckardOption/VBoxContainer/BralessDance
@onready var blowjob = $DeckardOption/VBoxContainer/Blowjob
@onready var anal = $DeckardOption/VBoxContainer/Anal
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg
@onready var deckard_option = $DeckardOption
@onready var dialog_box = $DialogBox

func _ready():
	
	dialog_box.hide()
	dialogue_label.can_type = false
	
	if SaveManager.save.player_status["lewdness"] >= 20:
		lap_dance.disabled = false
		lap_dance.text = "A Lap Dance wouldn't hurt"
	if SaveManager.save.player_status["lewdness"] >= 40 and SaveManager.save.deckard["lapdance"]:
		handjob.disabled = false
		handjob.text = "What if I touch it?"
	if SaveManager.save.player_status["lewdness"] >= 60 and SaveManager.save.deckard["handjob"]:
		braless_dance.disabled = false
		braless_dance.text = "I wanna try dancing again"
	if SaveManager.save.player_status["lewdness"] >= 80 and SaveManager.save.deckard["titsout"]:
		blowjob.disabled = false
		blowjob.text = "I wonder how it tastes"
	if SaveManager.save.player_status["lewdness"] >= 100 and SaveManager.save.deckard["blowjob"]:
		anal.disabled = false
		anal.text = "I can't hold out much longer"
	
	deckard_option_timer.start()

func _process(delta):
	progress_bar.value = deckard_option_timer.time_left
	if dialogue_label.message_id == 3:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
	
func _on_deckard_option_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/sanatorium_ending.tscn")

func _on_lap_dance_pressed():
	SaveManager.save.deckard["lapdance"] = true
	get_tree().change_scene_to_file("res://scenes/lapdance.tscn")

func _on_handjob_pressed():
	SaveManager.save.deckard["handjob"] = true
	get_tree().change_scene_to_file("res://scenes/handjob.tscn")
	
func _on_braless_dance_pressed():
	SaveManager.save.deckard["titsout"] = true
	get_tree().change_scene_to_file("res://scenes/topless_dancing.tscn")

func _on_blowjob_pressed():
	SaveManager.save.deckard["blowjob"] = true
	get_tree().change_scene_to_file("res://scenes/blowjob.tscn")

func _on_anal_pressed():
	SaveManager.save.deckard["anal"] = true
	get_tree().change_scene_to_file("res://scenes/anal.tscn")

func _on_money_pressed():
	deckard_option_timer.stop()
	if SaveManager.save.player_status["money"] <= 300:
		get_tree().change_scene_to_file("res://scenes/no_money.tscn")
	else:
		dialog_box.show()
		dialogue_label.can_type = true
		dialogue_label.start_dialogue()
		SaveManager.save.player_status["money"] = 0
		scene_bg.texture = load("res://assets/hospital_storyboard/hospital_scene_14.png")
		deckard_option.hide()

