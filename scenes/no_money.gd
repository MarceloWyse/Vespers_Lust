extends Control
@onready var scene_bg = $SceneBg

@onready var dialog_box = $DialogBox
@onready var deckard_option = $DeckardOption
@onready var progress_bar = $DeckardOption/VBoxContainer/Ass/ProgressBarControl/ProgressBar
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var deckard_option_timer = $DeckardOption/DeckardOptionTimer
var timer_started = false
# Called when the node enters the scene tree for the first time.
func _ready():
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

	if dialogue_label.message_id == 18 or dialogue_label.message_id == 24 \
	or dialogue_label.message_id == 29:
		get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _on_deckard_option_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/sanatorium_ending.tscn")

func _on_tits_pressed():
	dialogue_label.jump_to(14)
	deckard_option_timer.stop()
	deckard_option.hide()
	dialogue_label.can_type = true
	scene_bg.texture = load("res://assets/hospital_storyboard/no_money/hospital_scene_flashtits.png")

func _on_pussy_pressed():
	dialogue_label.jump_to(20)
	deckard_option_timer.stop()
	deckard_option.hide()
	dialogue_label.can_type = true
	scene_bg.texture = load("res://assets/hospital_storyboard/no_money/hospital_scene_flashcrotch.png")
	
func _on_ass_pressed():
	dialogue_label.jump_to(25)
	deckard_option_timer.stop()
	deckard_option.hide()
	dialogue_label.can_type = true
	scene_bg.texture = load("res://assets/hospital_storyboard/no_money/hospital_scene_flashass.png")
