extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	SaveManager.save.events["first_event"] = true
	SaveManager.save.same_day = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print("hi")
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
