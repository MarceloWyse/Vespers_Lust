extends Control

@onready var fade_out_trans = $FadeOutTrans
@onready var video_stream_player = $VideoStreamPlayer
@onready var transitions = $Transitions

func _on_quit_pressed():
	get_tree().quit()

func _on_cg_gallery_pressed():
	Events.change_scene_to_path.emit("res://scenes/image_gallery.tscn")

func _on_options_pressed():
	Events.change_scene_to_path.emit("res://scenes/settings.tscn")
	
func _on_new_game_pressed():
	SaveManager.save.player_status["hunger"] = 50
	SaveManager.save.player_status["money"] = 10
	SaveManager.save.player_status["lewdness"] = 0
	SaveManager.save.player_status["sanity"] = 100
	SaveManager.save.bar_values["str"] = 1
	SaveManager.save.bar_values["vit"] = 1
	SaveManager.save.bar_values["int"] = 1
	SaveManager.save.bar_values["spd"] = 1
	SaveManager.save.bar_values["cha"] = 1
	
	var my_tween = get_tree().create_tween()
	my_tween.tween_property(fade_out_trans, "modulate", Color(0, 0, 0), 1)
	await my_tween.finished

	Events.change_scene_to_path.emit("res://scenes/prologue.tscn")

func _on_load_pressed():
	SaveManager.load_game()
	Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")
	
func _on_video_stream_player_finished():
	video_stream_player.play()
