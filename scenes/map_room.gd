extends Control

@onready var transitions = $Transitions

func _ready():
	SaveManager.save.same_day = true
	transitions.fade_to_image()

func _process(delta):
	pass

func _on_back_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")
