extends Control
@onready var label = $DialogueBox/Label
@onready var char_portrait_2 = $DialogueBox/CharPortrait2

@onready var char_portrait_1 = $DialogueBox/CharPortrait1
@onready var dialogue_label = $DialogueLabel as DialogueLabel
@onready var texture_rect = $TextureRect
@onready var dialogue_box = $DialogueBox
@onready var dialogue_label_2 = $DialogueBox/DialogueLabel2
var take_the_gun = false
# Called when the node enters the scene tree for the first time.
func _ready():
#	dialogue_label.start_dialogue()
	char_portrait_2.hide()
	dialogue_label.jump_to(60)
	dialogue_label_2.set_process(false)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 3:
		texture_rect.texture = load("res://assets/img/newspaper.jpg")
	if dialogue_label.message_id == 6:
		texture_rect.texture = load("res://assets/img/dark_alley.jpg")
	if dialogue_label.message_id == 8:
		texture_rect.texture = load("res://assets/img/police_office.jpg")
	if dialogue_label.message_id == 9:
		texture_rect.texture = load("res://assets/img/lifeless.jpg")
	if dialogue_label.message_id == 10:
		texture_rect.texture = load("res://assets/img/coroner.jpg")
	if dialogue_label.message_id == 11:
		texture_rect.texture = load("res://assets/img/pile_of_papers.jpg")
	if dialogue_label.message_id == 14:
		texture_rect.texture = load("res://assets/img/helena.webp")
	if dialogue_label.message_id == 18:
		texture_rect.texture = load("res://assets/img/helena_leaving.webp")
	if dialogue_label.message_id == 20:
		texture_rect.texture = load("res://assets/img/mayor_arrested.webp")
	if dialogue_label.message_id == 22:
		texture_rect.texture = load("res://assets/img/helena_crowd.jpeg")
	if dialogue_label.message_id == 23:
		texture_rect.texture = load("res://assets/img/helenas_mom.webp")
	if dialogue_label.message_id == 25:
		texture_rect.texture = load("res://assets/img/black_screen.png")
	if dialogue_label.message_id == 27:
		texture_rect.texture = load("res://assets/img/missing.jpg")
	if dialogue_label.message_id == 29:
		texture_rect.texture = load("res://assets/img/black_screen.png")
	if dialogue_label.message_id == 31:
		texture_rect.texture = load("res://assets/img/investigating.jpg")
	if dialogue_label.message_id == 33:
		texture_rect.texture = load("res://assets/img/party.webp")
	if dialogue_label.message_id == 35:
		texture_rect.texture = load("res://assets/img/luxurious_room.webp")
	if dialogue_label.message_id == 38:
		texture_rect.texture = load("res://assets/img/letter.png")
	if dialogue_label.message_id == 41:
		texture_rect.texture = load("res://assets/img/black_screen.png")
	if dialogue_label.message_id == 46:
		dialogue_box.show()
		dialogue_label_2.set_process(true)
		dialogue_label_2.start_dialogue()
		dialogue_label.message_id = 0
		dialogue_label.set_process(false)

	if dialogue_label_2.message_id == 4:
		texture_rect.texture = load("res://assets/img/revolver_scene_block.png")
		dialogue_box.hide()
		$GunButton.show()
		$GunButton2.show()
		dialogue_label_2.set_process(false)
	
	if dialogue_label_2.message_id == 7 and take_the_gun:
		dialogue_label_2.jump_to(9)
		
	if dialogue_label_2.message_id == 9:
		dialogue_box.hide()
		dialogue_label_2.set_process(false)
		dialogue_label_2.message_id = 0
		dialogue_label.set_process(true)
		dialogue_label.jump_to(48)
		texture_rect.texture = load("res://assets/img/taxi_night.jpg")
	
	if dialogue_label.message_id == 52:
		texture_rect.texture = load("res://assets/img/bridge_night.jpg")
	
	if dialogue_label.message_id == 54:
		dialogue_box.show()
		dialogue_label_2.set_process(true)
		dialogue_label_2.jump_to(10)
		dialogue_label.message_id = 0
		dialogue_label.set_process(false)
	
	if dialogue_label_2.message_id == 12:
		label.text = ""
		char_portrait_1.texture = null
	
	if dialogue_label_2.message_id == 16:
		label.text = "Vesper:"
		char_portrait_1.texture = load("res://assets/img/vesper test.png")
	
	if dialogue_label_2.message_id == 17:
		label.text = ""
		char_portrait_1.texture = null
	
	if dialogue_label_2.message_id == 21:
		texture_rect.texture = load("res://assets/img/raccoon_night.jpg")
		label.text = "Vesper:"
		char_portrait_1.texture = load("res://assets/img/vesper test.png")
	
	if dialogue_label_2.message_id == 23:
		texture_rect.texture = load("res://assets/img/bridge_night.jpg")
	
	if dialogue_label_2.message_id == 24:
		texture_rect.texture = load("res://assets/img/bridge_night.jpg")
		label.text = "Vesper:"
		char_portrait_1.texture = load("res://assets/img/vesper test.png")
	
	if dialogue_label_2.message_id == 26:
		dialogue_box.hide()
		dialogue_label_2.set_process(false)
		dialogue_label_2.message_id = 0
		dialogue_label.set_process(true)
		dialogue_label.jump_to(55)
		texture_rect.texture = load("res://assets/img/taxi_night.jpg")
		
	if dialogue_label.message_id == 60:
		dialogue_box.show()
		dialogue_label_2.set_process(true)
		dialogue_label_2.jump_to(27)
		dialogue_label.message_id = 0
		dialogue_label.set_process(false)
		
	if dialogue_label_2.message_id == 28:
		char_portrait_1.hide()
		label.text = "Taxi Driver:"
		char_portrait_2.show()
	
	if dialogue_label_2.message_id == 29:
		label.text = "Vesper:"
		char_portrait_2.hide()
		char_portrait_1.show()
		char_portrait_1.texture = load("res://assets/img/vesper test.png")
	
	if dialogue_label_2.message_id == 30:
		char_portrait_1.hide()
		label.hide()
		
	if dialogue_label_2.message_id == 34:
		char_portrait_1.show()
		label.show()
	
	if dialogue_label_2.message_id == 35:
		char_portrait_1.hide()
		label.text = "Taxi Driver"
		char_portrait_2.show()
		
	if dialogue_label_2.message_id == 36:
		char_portrait_1.show()
		label.text = "Vesper"
		char_portrait_2.hide()
		
	if dialogue_label_2.message_id == 37:
		label.hide()
		char_portrait_1.hide()
		
	
	
	
		
func _on_gun_button_pressed():
	take_the_gun = true
	dialogue_label_2.message_id = 4
	dialogue_label_2.set_process(true)
	dialogue_box.show()
	dialogue_label_2.next_message()
	$GunButton.hide()
	$GunButton2.hide()

func _on_gun_button_2_pressed():
	take_the_gun = false
	dialogue_label_2.set_process(true)
	dialogue_box.show()
	dialogue_label_2.message_id = 6
	dialogue_label_2.next_message()
	$GunButton.hide()
	$GunButton2.hide()	
