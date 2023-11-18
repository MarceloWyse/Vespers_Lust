extends Control

func _ready():
	if SaveManager.save.visited_activities["prostitution"] == false:
		get_tree().change_scene_to_file("res://scenes/become_a_prostitute.tscn")
	elif not SaveManager.save.visited_activities["masturbation"] and \
	SaveManager.save.visited_activities["prostitution"]:
		get_tree().change_scene_to_file("res://scenes/become_a_prostitute.tscn")
	elif SaveManager.save.visited_activities["masturbation"] and \
	SaveManager.save.visited_activities["prostitution"] and \
	SaveManager.save.first_prostitution:
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/first_prostitution.tscn")
	elif not SaveManager.save.first_prostitution and \
	SaveManager.save.player_status["lewdness"] > 0 \
	and SaveManager.save.player_status["lewdness"] < 20:
		SaveManager.save.player_status["lewdness"] += 6		
		get_tree().change_scene_to_file("res://scenes/first_prostitution.tscn")
	elif not SaveManager.save.second_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 20 \
	and SaveManager.save.player_status["lewdness"] < 40:
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/second_prostitution.tscn")
	elif SaveManager.save.second_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 20 \
	and SaveManager.save.player_status["lewdness"] < 40:
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/second_prostitution.tscn")
	elif not SaveManager.save.third_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 40 \
	and SaveManager.save.player_status["lewdness"] < 60:
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/third_prostitution.tscn")
	elif SaveManager.save.third_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 40 \
	and SaveManager.save.player_status["lewdness"] < 60:
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/third_prostitution.tscn")
	elif not SaveManager.save.fourth_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 60 \
	and SaveManager.save.player_status["lewdness"] < 80:
		SaveManager.save.prostitute = true
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/fourth_prostitution.tscn")
	elif SaveManager.save.fourth_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 60 \
	and SaveManager.save.player_status["lewdness"] < 80:
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/fourth_prostitution.tscn")
	elif not SaveManager.save.fifth_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 80 \
	and SaveManager.save.player_status["lewdness"] < 100:
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/fifth_prostitution.tscn")
	elif SaveManager.save.fifth_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 80 \
	and SaveManager.save.player_status["lewdness"] < 100:
		SaveManager.save.player_status["lewdness"] += 6
		get_tree().change_scene_to_file("res://scenes/fifth_prostitution.tscn")
	elif not SaveManager.save.sixth_prostitution \
	and SaveManager.save.player_status["lewdness"] >= 100:
		get_tree().change_scene_to_file("res://scenes/sixth_prostitution.tscn")
	elif SaveManager.save.sixth_prostitution \
	and SaveManager.save.player_status["lewdness"] >= 100:
		get_tree().change_scene_to_file("res://scenes/sixth_prostitution.tscn")
