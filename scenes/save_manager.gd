extends Node

var save = Stats.new()
var settings = SettingsData.new()
const SAVE_PATH = "user://data/"
const SAVE_FILENAME = "data.res"
const SETTINGS_PATH = "user://data/settings.tres"

func _ready():
	check_dir(SAVE_PATH)

func check_dir(path):
	DirAccess.make_dir_absolute(path)
	
func save_game():
	ResourceSaver.save(save, SAVE_PATH + SAVE_FILENAME, ResourceSaver.FLAG_COMPRESS)

func load_game():
	if ResourceLoader.exists(SAVE_PATH + SAVE_FILENAME):
		save = ResourceLoader.load(SAVE_PATH + SAVE_FILENAME).duplicate(true)

func save_settings():
	ResourceSaver.save(settings, SETTINGS_PATH)

func load_settings():
	if ResourceLoader.exists(SETTINGS_PATH):
		settings = ResourceLoader.load(SETTINGS_PATH).duplicate(true)
