extends Control
@onready var special_events_panel = $SpecialEventsPanel

func _ready():
#	SaveManager.save.vesper["prostitute"] = true
	
	if SaveManager.save.vesper["prostitute"]:
		return
	if SaveManager.save.visited_activities["prostitution"] == false:
		Events.change_scene_to_path.emit("res://scenes/become_a_prostitute.tscn")
	elif not SaveManager.save.vesper["sexual"] and \
	SaveManager.save.visited_activities["prostitution"]:
		Events.change_scene_to_path.emit("res://scenes/become_a_prostitute.tscn")
	elif SaveManager.save.vesper["sexual"] and \
	SaveManager.save.visited_activities["prostitution"] and \
	SaveManager.save.first_prostitution:
		Events.change_scene_to_path.emit("res://scenes/first_prostitution.tscn")

func _on_random_client_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/random_client.tscn")

func _on_the_stranger_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/first_prostitution.tscn")

func _on_spanking_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/doug_spanking.tscn")

func _on_josh_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/meeting_josh.tscn")

func _on_tits_out_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/prostitute_topless.tscn")

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
