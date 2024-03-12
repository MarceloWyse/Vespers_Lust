extends Control

func _ready():
	SaveManager.save.events["first_event"] = true
	SaveManager.save.same_day = true

func _on_button_pressed():
	Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")
