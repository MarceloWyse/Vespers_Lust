extends Control

@onready var top = $Vesper/Top
@onready var bottom = $Vesper/Bottom
@onready var tank_top = $Clothes/TankTop
@onready var lace_panties = $Clothes/LacePanties
@onready var blouse = $Clothes/Blouse

# Called when the node enters the scene tree for the first time.
func _ready():
	SaveManager.save.same_day = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	top.texture = SaveManager.save.clothing["top"]
	bottom.texture = SaveManager.save.clothing["bottom"]

func _on_back_to_hub_pressed():
	get_tree().change_scene_to_file("res://scenes/player_hub.tscn")

func _on_clickable_1_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		SaveManager.save.clothing["top"] = tank_top.texture
	if Input.is_action_just_pressed("right_click"):
		SaveManager.save.clothing["top"] = null		

func _on_clickable_2_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		SaveManager.save.clothing["bottom"] = lace_panties.texture
	if Input.is_action_just_pressed("right_click"):
		SaveManager.save.clothing["bottom"] = null		

func _on_clickable_3_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		SaveManager.save.clothing["top"] = blouse.texture
	if Input.is_action_just_pressed("right_click"):
		SaveManager.save.clothing["top"] = null	
