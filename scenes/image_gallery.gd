extends Control

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/start_menu.tscn")

func _on_prologue_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/prologue_cg.tscn")
