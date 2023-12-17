extends Control

@onready var page_1_btn = $PrologueLabel/Page1Btn
@onready var page_2_btn = $PrologueLabel/Page2Btn
@onready var page_1 = $Page1
@onready var page_2 = $Page2
@onready var image_viewer = $ImageViewer
@onready var prologue_rect_1 = $Page1/PrologueRect1
@onready var prologue_rect_2 = $Page1/PrologueRect2
@onready var prologue_rect_3 = $Page1/PrologueRect3
@onready var prologue_rect_4 = $Page1/PrologueRect4
@onready var prologue_rect_5 = $Page1/PrologueRect5
@onready var prologue_rect_6 = $Page1/PrologueRect6
@onready var prologue_rect_7 = $Page1/PrologueRect7
@onready var prologue_rect_8 = $Page1/PrologueRect8
@onready var prologue_rect_9 = $Page1/PrologueRect9
@onready var prologue_rect_10 = $Page1/PrologueRect10
@onready var prologue_rect_10_11 = $Page1/PrologueRect10_11
@onready var prologue_rect_11 = $Page1/PrologueRect11
@onready var prologue_rect_12 = $Page1/PrologueRect12
@onready var prologue_rect_12_13 = $Page1/PrologueRect12_13
@onready var prologue_rect_13 = $Page1/PrologueRect13
@onready var prologue_rect_14 = $Page1/PrologueRect14
@onready var prologue_rect_15 = $Page1/PrologueRect15
@onready var prologue_rect_16 = $Page1/PrologueRect16
@onready var prologue_rect_17 = $Page1/PrologueRect17
@onready var prologue_rect_18 = $Page1/PrologueRect18
@onready var prologue_rect_19 = $Page1/PrologueRect19
@onready var prologue_rect_20 = $Page1/PrologueRect20
@onready var prologue_rect_21 = $Page1/PrologueRect21
@onready var prologue_rect_22 = $Page1/PrologueRect22
@onready var prologue_rect_23 = $Page1/PrologueRect23
@onready var prologue_rect_24 = $Page2/PrologueRect24
@onready var prologue_rect_25 = $Page2/PrologueRect25
@onready var prologue_rect_26 = $Page2/PrologueRect26
@onready var prologue_rect_26_27 = $Page2/PrologueRect26_27
@onready var prologue_rect_27 = $Page2/PrologueRect27
@onready var prologue_rect_28 = $Page2/PrologueRect28
@onready var prologue_rect_29 = $Page2/PrologueRect29
@onready var prologue_rect_30 = $Page2/PrologueRect30


func _ready():
	unlock_prologue()
	
func _on_image_viewer_gui_input(event):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		image_viewer.hide()
		image_viewer.texture = null

func _on_prologue_rect_1_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_1"]:
			image_viewer.texture = prologue_rect_1.texture
			image_viewer.show()

func _on_prologue_rect_2_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_2"]:
			image_viewer.texture = prologue_rect_2.texture
			image_viewer.show()

func _on_prologue_rect_3_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_3"]:
			image_viewer.texture = prologue_rect_3.texture
			image_viewer.show()

func _on_prologue_rect_4_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_4"]:
			image_viewer.texture = prologue_rect_4.texture
			image_viewer.show()

func _on_prologue_rect_5_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_5"]:
			image_viewer.texture = prologue_rect_5.texture
			image_viewer.show()


func _on_prologue_rect_6_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_6"]:
			image_viewer.texture = prologue_rect_6.texture
			image_viewer.show()


func _on_prologue_rect_7_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_7"]:
			image_viewer.texture = prologue_rect_7.texture
			image_viewer.show()


func _on_prologue_rect_8_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_8"]:
			image_viewer.texture = prologue_rect_8.texture
			image_viewer.show()


func _on_prologue_rect_9_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_9"]:
			image_viewer.texture = prologue_rect_9.texture
			image_viewer.show()


func _on_prologue_rect_10_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_10"]:
			image_viewer.texture = prologue_rect_10.texture
			image_viewer.show()

func _on_prologue_rect_10_11_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_10_11"]:
			image_viewer.texture = prologue_rect_10_11.texture
			image_viewer.show()

func _on_prologue_rect_11_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_11"]:
			image_viewer.texture = prologue_rect_11.texture
			image_viewer.show()


func _on_prologue_rect_12_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_12"]:
			image_viewer.texture = prologue_rect_12.texture
			image_viewer.show()

func _on_prologue_rect_12_13_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_12_13"]:
			image_viewer.texture = prologue_rect_12_13.texture
			image_viewer.show()

func _on_prologue_rect_13_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_13"]:
			image_viewer.texture = prologue_rect_13.texture
			image_viewer.show()


func _on_prologue_rect_14_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_14"]:
			image_viewer.texture = prologue_rect_14.texture
			image_viewer.show()


func _on_prologue_rect_15_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_15"]:
			image_viewer.texture = prologue_rect_15.texture
			image_viewer.show()


func _on_prologue_rect_16_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_16"]:
			image_viewer.texture = prologue_rect_16.texture
			image_viewer.show()


func _on_prologue_rect_17_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_17"]:
			image_viewer.texture = prologue_rect_17.texture
			image_viewer.show()


func _on_prologue_rect_18_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_18"]:
			image_viewer.texture = prologue_rect_18.texture
			image_viewer.show()


func _on_prologue_rect_19_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_19"]:
			image_viewer.texture = prologue_rect_19.texture
			image_viewer.show()

func _on_prologue_rect_20_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_20"]:
			image_viewer.texture = prologue_rect_20.texture
			image_viewer.show()

func _on_prologue_rect_21_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_21"]:
			image_viewer.texture = prologue_rect_21.texture
			image_viewer.show()

func _on_prologue_rect_22_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_22"]:
			image_viewer.texture = prologue_rect_22.texture
			image_viewer.show()

func _on_prologue_rect_23_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_23"]:
			image_viewer.texture = prologue_rect_23.texture
			image_viewer.show()

func _on_prologue_rect_24_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_24"]:
			image_viewer.texture = prologue_rect_24.texture
			image_viewer.show()

func _on_prologue_rect_25_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_25"]:
			image_viewer.texture = prologue_rect_25.texture
			image_viewer.show()

func _on_prologue_rect_26_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_26"]:
			image_viewer.texture = prologue_rect_26.texture
			image_viewer.show()

func _on_prologue_rect_26_27_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_26_27"]:
			image_viewer.texture = prologue_rect_20.texture
			image_viewer.show()

func _on_prologue_rect_27_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_27"]:
			image_viewer.texture = prologue_rect_27.texture
			image_viewer.show()

func _on_prologue_rect_28_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_28"]:
			image_viewer.texture = prologue_rect_28.texture
			image_viewer.show()

func _on_prologue_rect_29_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_29"]:
			image_viewer.texture = prologue_rect_29.texture
			image_viewer.show()

func _on_prologue_rect_30_gui_input(event):
	if Input.is_action_just_pressed("left_click"):
		if SaveManager.save.prologue_cg["prologue_30"]:
			image_viewer.texture = prologue_rect_30.texture
			image_viewer.show()

func unlock_prologue():
	if SaveManager.save.prologue_cg["prologue_1"] == true:
		prologue_rect_1.texture = load("res://assets/thumbnails/prologue/prologue1.png")
	if SaveManager.save.prologue_cg["prologue_2"] == true:
		prologue_rect_2.texture = load("res://assets/thumbnails/prologue/prologue2.png")
	if SaveManager.save.prologue_cg["prologue_3"] == true:
		prologue_rect_3.texture = load("res://assets/thumbnails/prologue/prologue3.png")
	if SaveManager.save.prologue_cg["prologue_4"] == true:
		prologue_rect_4.texture = load("res://assets/thumbnails/prologue/prologue4.png")
	if SaveManager.save.prologue_cg["prologue_5"] == true:
		prologue_rect_5.texture = load("res://assets/thumbnails/prologue/prologue5.png")
	if SaveManager.save.prologue_cg["prologue_6"] == true:
		prologue_rect_6.texture = load("res://assets/thumbnails/prologue/prologue6.png")
	if SaveManager.save.prologue_cg["prologue_7"] == true:
		prologue_rect_7.texture = load("res://assets/thumbnails/prologue/prologue7.png")
	if SaveManager.save.prologue_cg["prologue_8"] == true:
		prologue_rect_8.texture = load("res://assets/thumbnails/prologue/prologue8.png")
	if SaveManager.save.prologue_cg["prologue_9"] == true:
		prologue_rect_9.texture = load("res://assets/thumbnails/prologue/prologue9.png")
	if SaveManager.save.prologue_cg["prologue_10"] == true:
		prologue_rect_10.texture = load("res://assets/thumbnails/prologue/prologue10.png")
	if SaveManager.save.prologue_cg["prologue_10_11"] == true:
		prologue_rect_10_11.texture = load("res://assets/thumbnails/prologue/prologue10_11.png")
	if SaveManager.save.prologue_cg["prologue_11"] == true:
		prologue_rect_11.texture = load("res://assets/thumbnails/prologue/prologue11.png")
	if SaveManager.save.prologue_cg["prologue_12"] == true:
		prologue_rect_12.texture = load("res://assets/thumbnails/prologue/prologue12.png")
	if SaveManager.save.prologue_cg["prologue_12_13"] == true:
		prologue_rect_12_13.texture = load("res://assets/thumbnails/prologue/prologue12_13.png")
	if SaveManager.save.prologue_cg["prologue_13"] == true:
		prologue_rect_13.texture = load("res://assets/thumbnails/prologue/prologue13.png")
	if SaveManager.save.prologue_cg["prologue_14"] == true:
		prologue_rect_14.texture = load("res://assets/thumbnails/prologue/prologue14.png")
	if SaveManager.save.prologue_cg["prologue_15"] == true:
		prologue_rect_15.texture = load("res://assets/thumbnails/prologue/prologue15.png")
	if SaveManager.save.prologue_cg["prologue_16"] == true:
		prologue_rect_16.texture = load("res://assets/thumbnails/prologue/prologue16.png")
	if SaveManager.save.prologue_cg["prologue_17"] == true:
		prologue_rect_17.texture = load("res://assets/thumbnails/prologue/prologue17.png")
	if SaveManager.save.prologue_cg["prologue_18"] == true:
		prologue_rect_18.texture = load("res://assets/thumbnails/prologue/prologue18.png")
	if SaveManager.save.prologue_cg["prologue_19"] == true:
		prologue_rect_19.texture = load("res://assets/thumbnails/prologue/prologue19.png")
	if SaveManager.save.prologue_cg["prologue_20"] == true:
		prologue_rect_20.texture = load("res://assets/thumbnails/prologue/prologue20.png")
	if SaveManager.save.prologue_cg["prologue_21"] == true:
		prologue_rect_21.texture = load("res://assets/thumbnails/prologue/prologue21.png")
	if SaveManager.save.prologue_cg["prologue_22"] == true:
		prologue_rect_22.texture = load("res://assets/thumbnails/prologue/prologue22.png")
	if SaveManager.save.prologue_cg["prologue_23"] == true:
		prologue_rect_23.texture = load("res://assets/thumbnails/prologue/prologue23.png")
	if SaveManager.save.prologue_cg["prologue_24"] == true:
		prologue_rect_24.texture = load("res://assets/thumbnails/prologue/prologue24.png")
	if SaveManager.save.prologue_cg["prologue_25"] == true:
		prologue_rect_25.texture = load("res://assets/thumbnails/prologue/prologue25.png")
	if SaveManager.save.prologue_cg["prologue_26"] == true:
		prologue_rect_26.texture = load("res://assets/thumbnails/prologue/prologue26.png")
	if SaveManager.save.prologue_cg["prologue_26_27"] == true:
		prologue_rect_26_27.texture = load("res://assets/thumbnails/prologue/prologue26_27.png")
	if SaveManager.save.prologue_cg["prologue_27"] == true:
		prologue_rect_27.texture = load("res://assets/thumbnails/prologue/prologue27.png")
	if SaveManager.save.prologue_cg["prologue_28"] == true:
		prologue_rect_28.texture = load("res://assets/thumbnails/prologue/prologue28.png")
	if SaveManager.save.prologue_cg["prologue_29"] == true:
		prologue_rect_29.texture = load("res://assets/thumbnails/prologue/prologue29.png")
	if SaveManager.save.prologue_cg["prologue_30"] == true:
		prologue_rect_30.texture = load("res://assets/thumbnails/prologue/prologue30.png")

func _on_back_btn_pressed():
	get_tree().change_scene_to_file("res://scenes/image_gallery.tscn")

func _on_page_1_btn_pressed():
	page_1.show()
	page_2.hide()

func _on_page_2_btn_pressed():
	page_2.show()
	page_1.hide()


