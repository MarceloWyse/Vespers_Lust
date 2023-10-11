extends Control

@onready var page_1 = $Panel/Page1
@onready var page_2 = $Panel/Page2
@onready var page_3 = $Panel/Page3
@onready var image_viewer = $Panel/ImageViewer
@onready var texture_rect = $Panel/Page1/TextureRect
@onready var texture_rect_2 = $Panel/Page1/TextureRect2
const photo = preload("res://assets/img/locker.webp")
const pic2 = preload("res://assets/img/icon.svg")

func _on_page_1_but_pressed():
	page_1.visible = true
	page_3.visible = false
	page_2.visible = false

func _on_page_2_but_pressed():
	page_1.visible = false
	page_3.visible = false
	page_2.visible = true

func _on_page_3_but_pressed():
	page_3.visible = true
	page_2.visible = false
	page_1.visible = false

func _on_texture_rect_gui_input(_event):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		image_viewer.texture = texture_rect.texture
		image_viewer.show()

func _on_texture_rect_2_gui_input(_event):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if texture_rect_2.texture != photo:
			image_viewer.texture = texture_rect_2.texture
			image_viewer.show()
	
func _on_image_viewer_gui_input(_event):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT) or Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT):
		image_viewer.hide()
		image_viewer.texture = null

func _on_button_pressed():
	texture_rect_2.texture = pic2

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/start_menu.tscn")
