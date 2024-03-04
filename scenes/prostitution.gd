extends Control
@onready var special_events_panel = $SpecialEventsPanel

func _ready():
#	SaveManager.save.vesper["prostitute"] = true
	
	if SaveManager.save.vesper["prostitute"]:
		return
	if SaveManager.save.visited_activities["prostitution"] == false:
		get_tree().change_scene_to_file("res://scenes/become_a_prostitute.tscn")
	elif not SaveManager.save.vesper["sexual"] and \
	SaveManager.save.visited_activities["prostitution"]:
		get_tree().change_scene_to_file("res://scenes/become_a_prostitute.tscn")
	elif SaveManager.save.vesper["sexual"] and \
	SaveManager.save.visited_activities["prostitution"] and \
	SaveManager.save.first_prostitution:
		get_tree().change_scene_to_file("res://scenes/first_prostitution.tscn")


#	elif not SaveManager.save.third_prostitution and \
#	SaveManager.save.player_status["lewdness"] >= 40 \
#	and SaveManager.save.player_status["lewdness"] < 60:
#		SaveManager.save.player_status["lewdness"] += 6
#		get_tree().change_scene_to_file("res://scenes/third_prostitution.tscn")
#	elif SaveManager.save.third_prostitution and \
#	SaveManager.save.player_status["lewdness"] >= 40 \
#	and SaveManager.save.player_status["lewdness"] < 60:
#		SaveManager.save.player_status["lewdness"] += 6
#		get_tree().change_scene_to_file("res://scenes/third_prostitution.tscn")
#	elif not SaveManager.save.fourth_prostitution and \
#	SaveManager.save.player_status["lewdness"] >= 60 \
#	and SaveManager.save.player_status["lewdness"] < 80:
#		SaveManager.save.prostitute = true
#		SaveManager.save.player_status["lewdness"] += 6
#		get_tree().change_scene_to_file("res://scenes/fourth_prostitution.tscn")
#	elif SaveManager.save.fourth_prostitution and \
#	SaveManager.save.player_status["lewdness"] >= 60 \
#	and SaveManager.save.player_status["lewdness"] < 80:
#		SaveManager.save.player_status["lewdness"] += 6
#		get_tree().change_scene_to_file("res://scenes/fourth_prostitution.tscn")
#	elif not SaveManager.save.fifth_prostitution and \
#	SaveManager.save.player_status["lewdness"] >= 80 \
#	and SaveManager.save.player_status["lewdness"] < 100:
#		SaveManager.save.player_status["lewdness"] += 6
#		get_tree().change_scene_to_file("res://scenes/fifth_prostitution.tscn")
#	elif SaveManager.save.fifth_prostitution and \
#	SaveManager.save.player_status["lewdness"] >= 80 \
#	and SaveManager.save.player_status["lewdness"] < 100:
#		SaveManager.save.player_status["lewdness"] += 6
#		get_tree().change_scene_to_file("res://scenes/fifth_prostitution.tscn")
#	elif not SaveManager.save.sixth_prostitution \
#	and SaveManager.save.player_status["lewdness"] >= 100:
#		get_tree().change_scene_to_file("res://scenes/sixth_prostitution.tscn")
#	elif SaveManager.save.sixth_prostitution \
#	and SaveManager.save.player_status["lewdness"] >= 100:
#		get_tree().change_scene_to_file("res://scenes/sixth_prostitution.tscn")

func _on_random_client_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/random_client.tscn")

func _on_the_stranger_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/first_prostitution.tscn")

func _on_spanking_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/doug_spanking.tscn")

func _on_josh_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/second_prostitution.tscn")

func _on_tits_out_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/prostitute_topless.tscn")

func _on_bald_btn_pressed():
	pass # Replace with function body.

func _on_doug_fucks_btn_pressed():
	pass # Replace with function body.


func _on_frederick_btn_pressed():
	pass # Replace with function body.


func _on_niko_btn_pressed():
	pass # Replace with function body.


func _on_kate_btn_pressed():
	pass # Replace with function body.


func _on_special_events_btn_pressed():
	special_events_panel.visible = !special_events_panel.visible



