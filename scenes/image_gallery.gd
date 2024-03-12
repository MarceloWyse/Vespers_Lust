extends Control

func _on_back_button_pressed():
	Events.change_scene_to_path.emit("res://scenes/start_menu.tscn")

func _on_prologue_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/prologue_cg.tscn")

func _on_deckard_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/deckard_cg.tscn")

func _on_doug_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/doug_cg.tscn")

func _on_prostitution_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/prostitution_cg.tscn")
