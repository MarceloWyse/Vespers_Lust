extends Control

@onready var dialogue_label = $DialogBox/DialogueLabel as DialogueLabel
@onready var scene_bg = $SceneBg

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogue_label.start_dialogue()
	scene_bg.texture = load("res://assets/endings/sanatorium/hospital_cops_ending_1.png")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if dialogue_label.message_id == 3:
		scene_bg.texture = load("res://assets/endings/sanatorium/hospital_cops_ending_2.png")
	if dialogue_label.message_id == 6:
		scene_bg.texture = load("res://assets/endings/sanatorium/hospital_cops_ending_3.png")
	
	if dialogue_label.message_id == 7:
		dialogue_label.can_type = false
		await get_tree().create_timer(4).timeout
		Events.change_scene_to_path.emit("res://scenes/start_menu.tscn")
