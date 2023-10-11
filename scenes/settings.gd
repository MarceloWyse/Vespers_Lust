extends Control

@onready var master_bar = $Panel/CenterContainer/GridContainer/MasterBar
@onready var master_value = $Panel/CenterContainer/GridContainer/MasterValue
@onready var music_value = $Panel/CenterContainer/GridContainer/MusicValue
@onready var music_h_bar = $Panel/CenterContainer/GridContainer/MusicHBar
@onready var sound_value = $Panel/CenterContainer/GridContainer/SoundValue
@onready var screen_mode_label = $Panel/CenterContainer/GridContainer/ScreenModeLabel
@onready var resolution_options = $Panel/CenterContainer/GridContainer/ResolutionOptions
@onready var ghost_bar = $Panel/CenterContainer/GridContainer/MasterBar/GhostBar
@onready var sound_h_bar = $Panel/CenterContainer/GridContainer/SoundHBar
@onready var screen_check_button = $Panel/CenterContainer/GridContainer/ScreenCheckButton

func _enter_tree():
	SaveManager.load_settings()

func _ready():
	master_bar.value = SaveManager.settings.master_bar_value
	music_h_bar.value = SaveManager.settings.music_bar_value
	sound_h_bar.value = SaveManager.settings.sound_bar_value
	screen_mode_label.text = SaveManager.settings.screen_mode_text
	screen_check_button.button_pressed = SaveManager.settings.screen_mode
	resolution_options.select(SaveManager.settings.resolution_value)

func _on_screen_check_button_toggled(button_pressed):

	if button_pressed == true:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)
		screen_mode_label.text = "Fullscreen"

	else:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		screen_mode_label.text = "Window"
		DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_RESIZE_DISABLED, true)
	
	SaveManager.settings.screen_mode = button_pressed
	SaveManager.settings.screen_mode_text = screen_mode_label.text

func volume(bus_index, value):
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(value))
	
#	in case I need to set the slider to the current bus db in another scene
#	value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))

func _on_master_bar_value_changed(value = SaveManager.settings.master_bar_value):
#	master_value.text = str(value + 99)
#	ghost_bar.value = value + 99
	var display_value = round(value * 100)
	master_value.text = str(display_value) 
	volume(0, value)
	SaveManager.settings.master_bar_value = value
 
func _on_music_h_bar_value_changed(value = SaveManager.settings.music_bar_value):
	var display_value = round(value * 100)
	music_value.text = str(display_value) 
	volume(1, value)
	SaveManager.settings.music_bar_value = value

func _on_sound_h_bar_value_changed(value = SaveManager.settings.sound_bar_value):
	var display_value = round(value * 100)
	sound_value.text = str(display_value)
	volume(2, value)
	SaveManager.settings.sound_bar_value = value

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/start_menu.tscn")

func _on_hidden():
	SaveManager.save_settings()

func _on_tree_exited():
	SaveManager.save_settings()

func _on_resolution_options_item_selected(index = SaveManager.settings.resolution_value):
	if index == 0:
		DisplayServer.window_set_size(Vector2(1920,1080))
	if index == 1:
		DisplayServer.window_set_size(Vector2(1600,900))
	if index == 2:
		DisplayServer.window_set_size(Vector2(1440,900))
	if index == 3:
		DisplayServer.window_set_size(Vector2(1366,768))
	if index == 4:
		DisplayServer.window_set_size(Vector2(1280,800))
	if index == 5:
		DisplayServer.window_set_size(Vector2(1024,768))
	SaveManager.settings.resolution_value = index
