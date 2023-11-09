extends Control
@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel

var scene_finished = false
@onready var choice_fred = $ChoiceFred
@onready var transitions = $Transitions

func _ready():
#	dialogue_label.jump_to(385)
	if SaveManager.save.visited_activities["prostitution"] == false:
		dialogue_label.start_dialogue()
		SaveManager.save.visited_activities["prostitution"] = true
	elif not SaveManager.save.visited_activities["masturbation"] and \
	SaveManager.save.visited_activities["prostitution"]:
		dialogue_label.jump_to(12)
	elif SaveManager.save.visited_activities["masturbation"] and \
	SaveManager.save.visited_activities["prostitution"] and \
	SaveManager.save.first_prostitution:
		dialogue_label.jump_to(21)
		SaveManager.save.first_prostitution = false
		SaveManager.save.player_status["lewdness"] += 6
	elif not SaveManager.save.first_prostitution and \
	SaveManager.save.player_status["lewdness"] > 0 \
	and SaveManager.save.player_status["lewdness"] < 20:
		dialogue_label.jump_to(83)
		SaveManager.save.player_status["lewdness"] += 6
	elif not SaveManager.save.second_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 20 \
	and SaveManager.save.player_status["lewdness"] < 40:
		SaveManager.save.second_prostitution = true
		dialogue_label.jump_to(91)
		SaveManager.save.player_status["lewdness"] += 6
	elif SaveManager.save.second_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 20 \
	and SaveManager.save.player_status["lewdness"] < 40:
		dialogue_label.jump_to(137)
		SaveManager.save.player_status["lewdness"] += 6
	elif not SaveManager.save.third_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 40 \
	and SaveManager.save.player_status["lewdness"] < 60:
		SaveManager.save.third_prostitution = true
		dialogue_label.jump_to(143)
		SaveManager.save.player_status["lewdness"] += 6
	elif SaveManager.save.third_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 40 \
	and SaveManager.save.player_status["lewdness"] < 60:
		dialogue_label.jump_to(218)
		SaveManager.save.player_status["lewdness"] += 6
	elif not SaveManager.save.fourth_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 60 \
	and SaveManager.save.player_status["lewdness"] < 80:
		SaveManager.save.prostitute = true
		SaveManager.save.fourth_prostitution = true
		dialogue_label.jump_to(223)
		SaveManager.save.player_status["lewdness"] += 6
	elif SaveManager.save.fourth_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 60 \
	and SaveManager.save.player_status["lewdness"] < 80:
		dialogue_label.jump_to(381)
		SaveManager.save.player_status["lewdness"] += 6
	elif not SaveManager.save.fifth_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 80 \
	and SaveManager.save.player_status["lewdness"] < 100:
		SaveManager.save.fifth_prostitution = true
		dialogue_label.jump_to(385)
		SaveManager.save.player_status["lewdness"] += 6
	elif SaveManager.save.fifth_prostitution and \
	SaveManager.save.player_status["lewdness"] >= 80 \
	and SaveManager.save.player_status["lewdness"] < 100:
		dialogue_label.jump_to(498)
		SaveManager.save.player_status["lewdness"] += 6
	elif SaveManager.save.player_status["lewdness"] >= 100:
		SaveManager.save.anal_whore = true
		dialogue_label.jump_to(502)

func _process(delta):
	
	if dialogue_label.message_id == 11:
		scene_finished = true
	
	if dialogue_label.message_id == 19:
		scene_finished = true
	
	if dialogue_label.message_id == 81:
		scene_finished = true
	
	if dialogue_label.message_id == 89:
		scene_finished = true

	if dialogue_label.message_id == 135:
		scene_finished = true
	
	if dialogue_label.message_id == 141:
		scene_finished = true
		
	if dialogue_label.message_id == 216:
		scene_finished = true
		
	if dialogue_label.message_id == 221:
		scene_finished = true
	
	if dialogue_label.message_id == 365:
		dialogue_label.can_type = false
		choice_fred.show()
	
	#End of Kill Fred
	if dialogue_label.message_id == 370:
		scene_finished = true
	
	if dialogue_label.message_id == 379:
		scene_finished = true

	if dialogue_label.message_id == 384:
		scene_finished = true

	if dialogue_label.message_id == 496:
		scene_finished = true

	if dialogue_label.message_id == 501:
		scene_finished = true

	if dialogue_label.message_id == 507:
		scene_finished = true

	if scene_finished:
		if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_2)
		if SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
			get_tree().change_scene_to_packed(SceneTracker.scene_3)
		if SceneTracker.scene_3 == null:
			SaveManager.save.day += 1
			SaveManager.save.same_day = false
			get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _exit_tree():
	if SceneTracker.scene_1 == null and SceneTracker.scene_2 != null:
		SceneTracker.scene_2 = null
	elif SceneTracker.scene_2 == null and SceneTracker.scene_3 != null:
		SceneTracker.scene_3 = null

func _on_kill_fred_pressed():
	choice_fred.hide()
	dialogue_label.can_type = true
	dialogue_label.jump_to(367)
	SaveManager.save.killed_fred = true
	
func _on_spare_fred_pressed():
	choice_fred.hide()
	dialogue_label.can_type = true
	dialogue_label.jump_to(372)
	SaveManager.save.killed_fred = false
