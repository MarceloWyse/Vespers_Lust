extends Control

@onready var animation_player = $AnimationPlayer

func fade_to_image():
	animation_player.play("fade_to_image")
	await animation_player.animation_finished
