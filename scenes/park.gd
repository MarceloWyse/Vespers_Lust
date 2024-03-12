extends Control

@onready var transitions = $Transitions

# Called when the node enters the scene tree for the first time.
func _ready():
	SaveManager.save.park["hunt"] = true
	transitions.show()
	transitions.fade_to_image()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_go_home_btn_pressed():
	Events.change_scene_to_path.emit("res://scenes/player_hub.tscn")
